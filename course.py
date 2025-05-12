from tkinter import *
from PIL import Image, ImageTk
from tkinter import ttk, messagebox
import sqlite3
from description_generator import DescriptionGenerator
from audit_logger import audit_logger

class CourseClass:
    def __init__(self, root):
        self.root = root
        self.root.title("Student Result Management System")
        self.root.geometry("1200x480+80+170")
        self.root.config(bg="white")
        self.root.focus_force()

        #===========title========
        title=Label(self.root,text="Manage Course Details", font=("goudy old style",20,"bold"),bg="#033054", fg="white").place(x=10,y=15,width=1180,height=35)

        #============variables==========
        self.var_course = StringVar()
        self.var_duration = StringVar()
        self.var_charges = StringVar()

        #=========widgets===============
        self.lbl_courseName=Label(self.root, text="Course Name", font=("goudy old style",15,"bold"),bg = "white").place(x=10,y=60)
        self.lbl_duration=Label(self.root, text="Duration", font=("goudy old style",15,"bold"),bg = "white").place(x=10,y=100)
        self.lbl_charges=Label(self.root, text="Charges", font=("goudy old style",15,"bold"),bg = "white").place(x=10,y=140)
        self.lbl_description=Label(self.root, text="Description", font=("goudy old style",15,"bold"),bg = "white").place(x=10,y=180)


        #==============Entry Fields=============
        self.txt_courseName=Entry(self.root, textvariable=self.var_course, font=("goudy old style",15,"bold"),bg = "lightyellow")
        self.txt_courseName.place(x=150,y=60, width = 200)

        self.txt_duration=Entry(self.root, textvariable=self.var_duration, font=("goudy old style",15,"bold"),bg = "lightyellow")
        self.txt_duration.place(x=150,y=100, width = 200)

        self.txt_charges=Entry(self.root, textvariable=self.var_charges, font=("goudy old style",15,"bold"),bg = "lightyellow")
        self.txt_charges.place(x=150,y=140, width = 200)

        self.txt_description=Text(self.root, font=("goudy old style",15,"bold"),bg = "lightyellow")
        self.txt_description.place(x=150,y=180, width = 500, height=140)

        #===========buttons=============
        self.btn_generate_desc = Button(self.root, text="Generate", font=("goudy old style", 13, "bold"), bg="orange", fg="white", cursor="hand2",command=self.generate_description)
        self.btn_generate_desc.place(x=550, y=330, width=100, height=30)

        self.btn_add=Button(self.root, text="Save", font=("goudy old style", 15, "bold"),bg="#2196f3", fg="white", cursor="hand2", command=self.add)
        self.btn_add.place(x=150, y=400, width=110, height=40)

        self.btn_update=Button(self.root, text = "Update", font=("goudy old style", 15,"bold"),bg="#4caf50", fg="white", cursor="hand2", command=self.update)
        self.btn_update.place(x=270, y=400, width=110, height=40)

        self.btn_delete=Button(self.root, text = "Delete", font=("goudy old style", 15,"bold"),bg="#f44336", fg="white", cursor="hand2",command=self.delete)
        self.btn_delete.place(x=390, y=400, width=110, height=40)

        self.btn_clear=Button(self.root, text = "Clear", font=("goudy old style", 15,"bold"),bg="#607d8b", fg="white", cursor="hand2",command=self.clear)
        self.btn_clear.place(x=510, y=400, width=110, height=40)

        

        #============Search Panel=========
        self.var_search = StringVar()
        lbl_search_courseName=Label(self.root, text="Course Name", font=("goudy old style",15,"bold"),bg = "white").place(x=720,y=60)
        txt_search_courseName=Entry(self.root, textvariable=self.var_search, font=("goudy old style",15,"bold"),bg = "lightyellow").place(x=870,y=60, width = 180)
        btn_search=Button(self.root, text = "Search", font=("goudy old style", 15,"bold"),bg="#03a9f4", fg="white", cursor="hand2",command=self.search).place(x=1070, y=58, width=120, height=28)

        #===========content=============
        self.C_Frame=Frame(self.root,bd=2,relief=RIDGE,bg="lightyellow")
        self.C_Frame.place(x=720,y=100,width=470,height=220)

        scroll_y=Scrollbar(self.C_Frame, orient=VERTICAL)
        scroll_x=Scrollbar(self.C_Frame, orient=HORIZONTAL)

        
        self.CourseTable=ttk.Treeview(self.C_Frame, columns=("cid", "name", "duration","charges", "description"),xscrollcommand=scroll_x, yscrollcommand=scroll_y)
        scroll_x.pack(side=BOTTOM,fill=X)
        scroll_y.pack(side=RIGHT,fill=Y)

        scroll_x.config(command=self.CourseTable.xview)
        scroll_y.config(command=self.CourseTable.yview)
        
        self.CourseTable.heading("cid", text="Course ID")   
        self.CourseTable.heading("name", text="Name")  
        self.CourseTable.heading("duration", text="Duration")  
        self.CourseTable.heading("charges", text="Charges")  
        self.CourseTable.heading("description", text="Description") 
        self.CourseTable["show"]= "headings"

        self.CourseTable.column("cid", width=100)   
        self.CourseTable.column("name", width=100)  
        self.CourseTable.column("duration", width=100)  
        self.CourseTable.column("charges", width=100)  
        self.CourseTable.column("description", width=150) 
        self.CourseTable.pack(fill=BOTH,expand=1)
        self.CourseTable.bind("<ButtonRelease-1>",self.get_data)
        self.show()

    #====================================================
    
    def clear(self):
        self.show()
        self.var_course.set("")
        self.var_duration.set("")
        self.var_charges.set("")
        self.var_search.set("")
        self.txt_description.delete('1.0',END)

        self.txt_courseName.config(state=NORMAL)
    

    def delete(self):
        con=sqlite3.connect(database="rms.db")
        cur=con.cursor()
        try:
            if self.var_course.get()=="":
                messagebox.showerror("Error","Course name is required", parent=self.root)
            else:
                # Get the record being deleted
                cur.execute("select * from course where name = ?",(self.var_course.get(),))
                row=cur.fetchone()
                if row==None:
                    messagebox.showerror("Error","Select Course from list", parent=self.root)   
                else:
                    deleted_values = {
                        "name": row[1],
                        "duration": row[2],
                        "charges": row[3],
                        "description": row[4]
                    }
                    
                    op=messagebox.askyesno("Confirm","Do you really want to delete?",parent=self.root)
                    if op == True:
                        cur.execute("delete from course where name = ?",(self.var_course.get(),))
                        con.commit()
                        
                        # Log the deletion
                        audit_logger.log_action(
                            "DELETE", 
                            "course", 
                            self.var_course.get(),
                            deleted_values,
                            None
                        )
                        
                        messagebox.showinfo("Delete","Course Deleted Successfully",parent=self.root)
                        self.clear()

        except Exception as ex:
            messagebox.showerror("Error", f"Error due to {str(ex)}")

    
    def get_data(self, event):
        self.txt_courseName.config(state='readonly')
        r=self.CourseTable.focus()
        content=self.CourseTable.item(r)
        row=content["values"]
        #print(row)
        self.var_course.set(row[1])
        self.var_duration.set(row[2])
        self.var_charges.set(row[3])
        self.txt_description.delete('1.0',END)
        self.txt_description.insert(END,row[4])

    def add(self):
        con=sqlite3.connect(database="rms.db")
        cur=con.cursor()
        try:
            if self.var_course.get()=="":
                messagebox.showerror("Error","Course name is required", parent=self.root)
            else:

                cur.execute("select * from course where name = ?",(self.var_course.get(),))

                row=cur.fetchone()
                if row!=None:
                    messagebox.showerror("Error","Course name already present", parent=self.root)   
                else:
                    course_data = {
                        "name": self.var_course.get(),
                        "duration": self.var_duration.get(),
                        "charges": self.var_charges.get(),
                        "description": self.txt_description.get("1.0",END)
                    }
                    
                    cur.execute("insert into course (name, duration, charges, description) values(?,?,?,?)",(
                        course_data["name"],
                        course_data["duration"],
                        course_data["charges"],
                        course_data["description"]
                    ))
                    
                    con.commit()
                    
                    # Log the creation
                    audit_logger.log_action(
                        "CREATE", 
                        "course", 
                        self.var_course.get(),
                        None,
                        course_data
                    )
                    
                    messagebox.showinfo("Success","Course added successfully.",parent=self.root)
                    self.show()

        except Exception as ex:
            messagebox.showerror("Error", f"Error due to {str(ex)}")

    def update(self):
        con=sqlite3.connect(database="rms.db")
        cur=con.cursor()
        try:
            if self.var_course.get()=="":
                messagebox.showerror("Error","Course name is required", parent=self.root)
            else:
                # Get old values first
                cur.execute("select * from course where name = ?",(self.var_course.get(),))
                old_row = cur.fetchone()
                old_values = {
                    "name": old_row[1],
                    "duration": old_row[2],
                    "charges": old_row[3],
                    "description": old_row[4]
                } if old_row else None
                
                new_values = {
                    "duration": self.var_duration.get(),
                    "charges": self.var_charges.get(),
                    "description": self.txt_description.get("1.0",END)
                }
                
                cur.execute("update course set duration=?, charges=?, description=? where name=?",(
                    new_values["duration"],
                    new_values["charges"],
                    new_values["description"],
                    self.var_course.get()
                ))
                
                con.commit()
                
                # Log the update
                audit_logger.log_action(
                    "UPDATE", 
                    "course", 
                    self.var_course.get(),
                    old_values,
                    new_values
                )
                
                messagebox.showinfo("Success","Course updated successfully.",parent=self.root)
                self.show()

        except Exception as ex:
            messagebox.showerror("Error", f"Error due to {str(ex)}")

    def show(self):
        con=sqlite3.connect(database="rms.db")
        cur=con.cursor()
        try:
            
            cur.execute("select * from course")

            rows=cur.fetchall()
            self.CourseTable.delete(*self.CourseTable.get_children())
            for row in rows:
                self.CourseTable.insert('',END,values=row)

        except Exception as ex:
            messagebox.showerror("Error", f"Error due to {str(ex)}")

    def search(self):
        con=sqlite3.connect(database="rms.db")
        cur=con.cursor()
        try:
            if self.var_search.get()=="":
                messagebox.showerror("Error","Course Name is required", parent=self.root)
            else:
                cur.execute(f"select * from course where name LIKE '%{self.var_search.get()}%'")
                rows=cur.fetchall()
                self.CourseTable.delete(*self.CourseTable.get_children())
                for row in rows:
                    self.CourseTable.insert('',END,values=row)

        except Exception as ex:
            messagebox.showerror("Error", f"Error due to {str(ex)}")

    

#======================================================

    def generate_description(self):
        """Generate a course description using the template generator"""
        if not self.var_course.get() or not self.var_duration.get():
            messagebox.showerror("Error", "Course name and duration are required to generate description", parent=self.root)
            return
        
        # Get current description if exists
        current_desc = self.txt_description.get("1.0", END).strip()
        if current_desc:
            if not messagebox.askyesno("Confirm", "This will overwrite your current description. Continue?", parent=self.root):
                return
        
        # Create generator instance
        generator = DescriptionGenerator()
        
        # Generate description (use 'detailed' style if charges are specified)
        style = 'detailed' if self.var_charges.get() else 'default'
        generated_desc = generator.generate(
            course_name=self.var_course.get(),
            duration=self.var_duration.get(),
            charges=self.var_charges.get(),
            style=style
        )
        
        # Update the description field
        self.txt_description.delete("1.0", END)
        self.txt_description.insert(END, generated_desc)





if __name__=="__main__":
    root = Tk()
    obj = CourseClass(root)
    root.mainloop()