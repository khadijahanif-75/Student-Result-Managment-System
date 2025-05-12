import sqlite3
from datetime import datetime
import socket
import json
from tkinter import messagebox

class AuditLogger:
    def __init__(self):
        self.conn = sqlite3.connect('rms.db')
        self.current_user = None
        
    def set_current_user(self, email):
        """Set the currently logged in user"""
        self.current_user = email
        
    def get_ip_address(self):
        """Get the current machine's IP address"""
        try:
            hostname = socket.gethostname()
            ip_address = socket.gethostbyname(hostname)
            return ip_address
        except:
            return "N/A"
        
    def log_action(self, action_type, table_affected, record_id=None, old_values=None, new_values=None):
        """
        Log an action to the audit log
        
        Parameters:
        - action_type: CREATE, UPDATE, DELETE, LOGIN, LOGOUT, etc.
        - table_affected: Which table was affected
        - record_id: The ID of the affected record
        - old_values: Dictionary of values before change (for updates)
        - new_values: Dictionary of values after change (for updates/creates)
        """
        try:
            cursor = self.conn.cursor()
            
            # Convert dictionaries to JSON strings if provided
            old_json = json.dumps(old_values) if old_values else None
            new_json = json.dumps(new_values) if new_values else None
            
            cursor.execute("""
                INSERT INTO audit_log 
                (user_email, action_type, table_affected, record_id, old_values, new_values, ip_address)
                VALUES (?, ?, ?, ?, ?, ?, ?)
            """, (
                self.current_user,
                action_type,
                table_affected,
                str(record_id) if record_id else None,
                old_json,
                new_json,
                self.get_ip_address()
            ))
            
            self.conn.commit()
        except Exception as e:
            # Don't crash the application if logging fails
            print(f"Failed to log action: {str(e)}")
            
    def get_logs(self, limit=100, filters=None):
        """
        Retrieve audit logs with optional filtering
        
        Parameters:
        - limit: Maximum number of logs to return
        - filters: Dictionary of filter conditions (e.g., {'user_email': 'admin@example.com'})
        
        Returns: List of log entries as dictionaries
        """
        try:
            cursor = self.conn.cursor()
            query = "SELECT * FROM audit_log"
            params = []
            
            if filters:
                conditions = []
                for key, value in filters.items():
                    conditions.append(f"{key} = ?")
                    params.append(value)
                if conditions:
                    query += " WHERE " + " AND ".join(conditions)
            
            query += " ORDER BY timestamp DESC LIMIT ?"
            params.append(limit)
            
            cursor.execute(query, params)
            columns = [column[0] for column in cursor.description]
            logs = []
            
            for row in cursor.fetchall():
                log = dict(zip(columns, row))
                # Parse JSON fields if they exist
                if log.get('old_values'):
                    log['old_values'] = json.loads(log['old_values'])
                if log.get('new_values'):
                    log['new_values'] = json.loads(log['new_values'])
                logs.append(log)
                
            return logs
        except Exception as e:
            messagebox.showerror("Error", f"Failed to retrieve logs: {str(e)}")
            return []
            
    def __del__(self):
        self.conn.close()

# Global logger instance
audit_logger = AuditLogger()