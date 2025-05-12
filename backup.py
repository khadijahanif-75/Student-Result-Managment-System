import os
import shutil
import sqlite3
from tkinter import *
from tkinter import ttk, messagebox, filedialog
from datetime import datetime
from audit_logger import audit_logger

class BackupSystem:
    def __init__(self, root):
        self.root = root
        self.backup_dir = "backups"
        os.makedirs(self.backup_dir, exist_ok=True)
        
    def create_backup(self):
        try:
            # Create timestamp for backup filename
            timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
            backup_file = os.path.join(self.backup_dir, f"rms_backup_{timestamp}.db")
            
            # Create the backup
            shutil.copy2("rms.db", backup_file)
            
            # Also create a SQL dump
            dump_file = os.path.join(self.backup_dir, f"rms_dump_{timestamp}.sql")
            self.create_sql_dump(dump_file)
            
            messagebox.showinfo("Success", f"Backup created successfully!\n\n"
                                f"Database copy: {backup_file}\n"
                                f"SQL dump: {dump_file}", parent=self.root)
            return True
        
            audit_logger.log_action(
                "BACKUP",
                "system",
                None,
                None,
                {"backup_file": backup_file, "dump_file": dump_file}
            )
            
        except Exception as e:
            messagebox.showerror("Error", f"Failed to create backup: {str(e)}", parent=self.root)
            return False

    def restore_backup(self):
        try:
            # Ask user to select backup file
            file_path = filedialog.askopenfilename(
                initialdir=self.backup_dir,
                title="Select Backup File",
                filetypes=(("Database files", "*.db"), ("SQL files", "*.sql"), ("All files", "*.*"))
            )
            
            if not file_path:
                return False  # User cancelled
            
            # Confirm restoration
            if not messagebox.askyesno("Confirm", "This will overwrite your current database. Continue?", parent=self.root):
                return False
            
            if file_path.endswith('.sql'):
                # Restore from SQL dump
                self.restore_from_sql(file_path)
            else:
                # Restore from database copy
                shutil.copy2(file_path, "rms.db")
            
            messagebox.showinfo("Success", "Database restored successfully!", parent=self.root)
            return True
        
            audit_logger.log_action(
                "RESTORE", 
                "system", 
                None,
                None,
                {"restore_file": file_path}
            )
            
        except Exception as e:
            messagebox.showerror("Error", f"Failed to restore backup: {str(e)}", parent=self.root)
            return False

    def create_sql_dump(self, dump_file):
        """Create a SQL dump of the database"""
        conn = sqlite3.connect('rms.db')
        with open(dump_file, 'w') as f:
            for line in conn.iterdump():
                f.write(f'{line}\n')
        conn.close()

    def restore_from_sql(self, sql_file):
        """Restore database from SQL dump"""
        # Create a temporary database
        temp_db = "temp_restore.db"
        if os.path.exists(temp_db):
            os.remove(temp_db)
        
        conn = sqlite3.connect(temp_db)
        cursor = conn.cursor()
        
        # Read and execute the SQL file
        with open(sql_file, 'r') as f:
            sql_script = f.read()
        
        try:
            cursor.executescript(sql_script)
            conn.commit()
            
            # Verify the temporary database
            tables = cursor.execute("SELECT name FROM sqlite_master WHERE type='table';").fetchall()
            if not tables:
                raise ValueError("Restored database has no tables - backup may be corrupt")
            
            # If verification passed, replace the current database
            conn.close()
            os.remove("rms.db")
            os.rename(temp_db, "rms.db")
            
        except Exception as e:
            conn.close()
            if os.path.exists(temp_db):
                os.remove(temp_db)
            raise e

    def list_backups(self):
        """List available backups in the backup directory"""
        backups = []
        if os.path.exists(self.backup_dir):
            for file in os.listdir(self.backup_dir):
                if file.startswith("rms_backup_") and file.endswith(".db"):
                    backups.append(os.path.join(self.backup_dir, file))
        return sorted(backups, reverse=True)

    def auto_backup(self):
        """Create automatic daily backup if one doesn't exist for today"""
        try:
            today = datetime.now().strftime("%Y%m%d")
            existing_backups = self.list_backups()
            
            # Check if backup exists for today
            needs_backup = True
            for backup in existing_backups:
                if today in os.path.basename(backup):
                    needs_backup = False
                    break
            
            if needs_backup:
                self.create_backup()
                return True
            return False
        except:
            return False