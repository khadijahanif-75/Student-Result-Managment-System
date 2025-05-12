import sqlite3
from datetime import datetime
import socket
import json
from tkinter import *
from tkinter import ttk,messagebox
from audit_logger import audit_logger


class AuditLoggerClass:
    def __init__(self, root):
        self.root = root
        self.root.title("Audit Logs")
        self.root.geometry("1200x480+80+170")
        self.root.config(bg="white")
        self.root.focus_force()

        # Title
        title = Label(self.root, text="System Audit Logs", font=("goudy old style", 20, "bold"), bg="orange", fg="#262626").place(x=10, y=15, width=1180, height=50)

        # Filter frame
        filter_frame = Frame(self.root, bg="white")
        filter_frame.place(x=10, y=80, width=1180, height=60)

        # Filter controls
        lbl_user = Label(filter_frame, text="User Email:", font=("goudy old style", 15, "bold"), bg="white")
        lbl_user.grid(row=0, column=0, padx=5, pady=5)
        self.entry_user = Entry(filter_frame, font=("goudy old style", 12))
        self.entry_user.grid(row=0, column=1, padx=5, pady=5)

        lbl_action = Label(filter_frame, text="Action Type:", font=("goudy old style", 15, "bold"), bg="white")
        lbl_action.grid(row=0, column=2, padx=5, pady=5)
        self.entry_action = ttk.Combobox(filter_frame, font=("goudy old style", 14), state= "readonly",
                                    values=["ALL", "CREATE", "UPDATE", "DELETE", "LOGIN", "LOGOUT", "BACKUP", "RESTORE"])
        self.entry_action.set("ALL")
        self.entry_action.current(0)
        self.entry_action.grid(row=0, column=3, padx=5, pady=5)

        btn_filter = Button(filter_frame, text="Apply Filters", font=("goudy old style", 15, "bold"), 
                        bg="#03a9f4", fg="white", command=self.load_audit_logs)
        btn_filter.grid(row=0, column=4, padx=5, pady=5)

        btn_clear = Button(filter_frame, text="Clear Filters", font=("goudy old style", 15, "bold"), 
                        bg="gray", fg="white", command=self.clear_audit_filters)
        btn_clear.grid(row=0, column=5, padx=5, pady=5)

    # Treeview for logs
        log_frame = Frame(self.root,bd=2,relief=RIDGE,bg="lightyellow")
        log_frame.place(x=10, y=150, width=1180, height=320)

        scroll_y = Scrollbar(log_frame, orient=VERTICAL)
        scroll_x = Scrollbar(log_frame, orient=HORIZONTAL)

        self.log_table = ttk.Treeview(log_frame, columns=(
            "id", "timestamp", "user_email", "action_type", "table_affected", "record_id", "ip_address"
        ), yscrollcommand=scroll_y.set, xscrollcommand=scroll_x.set)

        scroll_x.pack(side=BOTTOM, fill=X)
        scroll_y.pack(side=RIGHT, fill=Y)
        
        scroll_x.config(command=self.log_table.xview)
        scroll_y.config(command=self.log_table.yview)

        self.log_table.heading("id", text="Log ID")
        self.log_table.heading("timestamp", text="Timestamp")
        self.log_table.heading("user_email", text="User Email")
        self.log_table.heading("action_type", text="Action")
        self.log_table.heading("table_affected", text="Table")
        self.log_table.heading("record_id", text="Record ID")
        self.log_table.heading("ip_address", text="IP Address")

        self.log_table["show"] = "headings"

        self.log_table.column("id", width=50)
        self.log_table.column("timestamp", width=150)
        self.log_table.column("user_email", width=150)
        self.log_table.column("action_type", width=100)
        self.log_table.column("table_affected", width=100)
        self.log_table.column("record_id", width=80)
        self.log_table.column("ip_address", width=120)

        self.log_table.pack(fill=BOTH, expand=1)
        self.log_table.bind("<Double-1>", self.show_log_details)

        # Load initial logs
        self.load_audit_logs()

    def load_audit_logs(self):
        """Load audit logs with current filters"""
        filters = {}
        
        user_filter = self.entry_user.get()
        if user_filter:
            filters['user_email'] = user_filter
            
        action_filter = self.entry_action.get()
        if action_filter and action_filter != "ALL":
            filters['action_type'] = action_filter
            
        logs = audit_logger.get_logs(limit=500, filters=filters)
        
        self.log_table.delete(*self.log_table.get_children())
        for log in logs:
            self.log_table.insert('', END, values=(
                log['id'],
                log['timestamp'],
                log['user_email'],
                log['action_type'],
                log['table_affected'],
                log['record_id'],
                log['ip_address']
            ))

    def clear_audit_filters(self):
        """Clear all audit log filters"""
        self.entry_user.delete(0, END)
        self.entry_action.set("ALL")
        self.load_audit_logs()

    def show_log_details(self, event):
        """Show details of a log entry"""
        item = self.log_table.focus()
        if item:
            log_id = self.log_table.item(item)['values'][0]
            logs = audit_logger.get_logs(filters={'id': log_id})
            if logs:
                log = logs[0]
                details = f"Timestamp: {log['timestamp']}\n"
                details += f"User: {log['user_email']}\n"
                details += f"Action: {log['action_type']}\n"
                details += f"Table: {log['table_affected']}\n"
                details += f"Record ID: {log['record_id']}\n"
                details += f"IP Address: {log['ip_address']}\n\n"
                
                if log.get('old_values'):
                    details += "Old Values:\n"
                    for key, value in log['old_values'].items():
                        details += f"  {key}: {value}\n"
                    details += "\n"
                    
                if log.get('new_values'):
                    details += "New Values:\n"
                    for key, value in log['new_values'].items():
                        details += f"  {key}: {value}\n"
                    
                messagebox.showinfo("Log Details", details, parent=self.root)




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

if __name__=="__main__":
    root = Tk()
    audit_logger = AuditLoggerClass(root)
    root.mainloop()