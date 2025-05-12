from tkinter import *
from tkinter import ttk, messagebox
from PIL import Image, ImageTk
import sqlite3
from audit_logger import audit_logger

class ReportClass:
    def __init__(self, root):
        self.root = root
        self.root.title("Student Result Management System")
        self.root.geometry("1200x480+80+170")
        self.root.config(bg="white")
        self.root.focus_force()

        #===========title========
        title=Label(self.root,text="View Student Result", font=("goudy old style",20,"bold"),bg="orange", fg="#262626").place(x=10,y=15,width=1180,height=50)

        #================search==========
        self.var_search = StringVar()
        self.var_course = StringVar()
        self.var_id = ""

        # Roll Number Search
        lbl_search_roll=Label(self.root, text="Enter Roll No:", font=("goudy old style",15,"bold"),bg="white").place(x=50,y=100)
        self.txt_search_roll=Entry(self.root, textvariable=self.var_search, font=("goudy old style",15),bg="lightyellow")
        self.txt_search_roll.place(x=200,y=100,width=150)

        btn_search=Button(self.root, text="Search", font=("goudy old style",15,"bold"),bg="#03a9f4", fg="white", cursor="hand2",command=self.search_student).place(x=370,y=98,width=100,height=30)

        # Course Selection (initially disabled)
        lbl_select_course=Label(self.root, text="Select Course:", font=("goudy old style",15,"bold"),bg="white").place(x=50,y=150)
        self.cmb_course=ttk.Combobox(self.root, textvariable=self.var_course, font=("goudy old style",15), state='disabled')
        self.cmb_course.place(x=200,y=150,width=300)
        
        btn_view_result=Button(self.root, text="View Result", font=("goudy old style",15,"bold"),bg="#4caf50", fg="white", cursor="hand2",command=self.show_result).place(x=520,y=148,width=120,height=30)

        #========================labels===================
        lbl_roll=Label(self.root, text="Roll No", font=("goudy old style",15,"bold"),bg="white",bd=2,relief=GROOVE).place(x=150,y=230,width=150,height=50)
        lbl_name=Label(self.root, text="Name", font=("goudy old style",15,"bold"),bg="white",bd=2,relief=GROOVE).place(x=300,y=230,width=150,height=50)
        lbl_course=Label(self.root, text="Course", font=("goudy old style",15,"bold"),bg="white",bd=2,relief=GROOVE).place(x=450,y=230,width=150,height=50)
        lbl_marks=Label(self.root, text="Marks Obtained", font=("goudy old style",15,"bold"),bg="white",bd=2,relief=GROOVE).place(x=600,y=230,width=150,height=50)
        lbl_full=Label(self.root, text="Total Marks", font=("goudy old style",15,"bold"),bg="white",bd=2,relief=GROOVE).place(x=750,y=230,width=150,height=50)
        lbl_per=Label(self.root, text="Percentage", font=("goudy old style",15,"bold"),bg="white",bd=2,relief=GROOVE).place(x=900,y=230,width=150,height=50)

        self.roll=Label(self.root, font=("goudy old style",15,"bold"),bg="white",bd=2,relief=GROOVE)
        self.roll.place(x=150,y=280,width=150,height=50)
        self.name=Label(self.root, font=("goudy old style",15,"bold"),bg="white",bd=2,relief=GROOVE)
        self.name.place(x=300,y=280,width=150,height=50)
        self.course=Label(self.root, font=("goudy old style",15,"bold"),bg="white",bd=2,relief=GROOVE)
        self.course.place(x=450,y=280,width=150,height=50)
        self.marks=Label(self.root, font=("goudy old style",15,"bold"),bg="white",bd=2,relief=GROOVE)
        self.marks.place(x=600,y=280,width=150,height=50)
        self.full=Label(self.root, font=("goudy old style",15,"bold"),bg="white",bd=2,relief=GROOVE)
        self.full.place(x=750,y=280,width=150,height=50)
        self.per=Label(self.root, font=("goudy old style",15,"bold"),bg="white",bd=2,relief=GROOVE)
        self.per.place(x=900,y=280,width=150,height=50)

        #========delete button=======
        # btn_delete=Button(self.root, text="Delete", font=("goudy old style",15,"bold"),bg="red",fg="white",cursor="hand2",command=self.delete).place(x=500,y=350,width=150,height=35)
        btn_clear=Button(self.root, text="Clear", font=("goudy old style",15,"bold"),bg="red",fg="white",cursor="hand2",command=self.clear_result_fields).place(x=500,y=350,width=150,height=35)


    def search_student(self):
        """Search for student and populate course list"""
        if self.var_search.get()=="":
            messagebox.showerror("Error","Roll No. is required", parent=self.root)
            return

        con=sqlite3.connect(database="rms.db")
        cur=con.cursor()
        try:
            # Get student details
            cur.execute("SELECT name FROM student WHERE roll=?", (self.var_search.get(),))
            student = cur.fetchone()
            
            if not student:
                messagebox.showerror("Error","Student not found", parent=self.root)
                self.clear_fields()
                return
            
            self.name.config(text=student[0])
            self.roll.config(text=self.var_search.get())
            
            # Get enrolled courses with results
            cur.execute("""SELECT c.name 
                         FROM enrollment e 
                         JOIN course c ON e.course_id = c.cid
                         WHERE e.student_roll = ?""", (self.var_search.get(),))
            courses = [row[0] for row in cur.fetchall()]
            
            if not courses:
                messagebox.showinfo("Info","Student is not enrolled in any courses", parent=self.root)
                self.clear_fields()
                return
            
            # Enable and populate course combobox
            self.cmb_course['values'] = courses
            self.cmb_course['state'] = 'readonly'
            self.cmb_course.set(courses[0])
            
        except Exception as ex:
            messagebox.showerror("Error", f"Error due to {str(ex)}")
        finally:
            con.close()

    def show_result(self):
        """Show result for selected course"""
        if not self.var_search.get():
            messagebox.showerror("Error","Please search for student first", parent=self.root)
            return
            
        if not self.var_course.get():
            messagebox.showerror("Error","Please select a course", parent=self.root)
            return

        con=sqlite3.connect(database="rms.db")
        cur=con.cursor()
        try:
            # Get the specific result
            cur.execute("""SELECT r.rid, r.marks_ob, r.full_marks, r.per
                         FROM result r
                         JOIN enrollment e ON r.enroll_id = e.enroll_id
                         JOIN course c ON e.course_id = c.cid
                         WHERE e.student_roll = ? AND c.name = ?""", 
                       (self.var_search.get(), self.var_course.get()))
            
            result = cur.fetchone()
            
            if not result:
                messagebox.showinfo("Info","No result found for selected course", parent=self.root)
                self.clear_result_fields()
                return
                
            self.var_id = result[0]
            self.marks.config(text=result[1])
            self.full.config(text=result[2])
            self.per.config(text=f"{result[3]}%")
            self.course.config(text=self.var_course.get())
            
        except Exception as ex:
            messagebox.showerror("Error", f"Error due to {str(ex)}")
        finally:
            con.close()

    def clear_fields(self):
        """Clear all fields"""
        self.var_id = ""
        self.var_course.set("")
        self.cmb_course['values'] = []
        self.cmb_course['state'] = 'disabled'
        self.clear_result_fields()

    def clear_result_fields(self):
        """Clear only the result display fields"""
        self.roll.config(text="")
        self.name.config(text="")
        self.course.config(text="")
        self.marks.config(text="")
        self.full.config(text="")
        self.per.config(text="")

    # def delete(self):
    #     """Delete the currently displayed result"""
    #     if not self.var_id:
    #         messagebox.showerror("Error","No result selected to delete", parent=self.root)
    #         return
            
    #     op=messagebox.askyesno("Confirm","Delete this result?", parent=self.root)
    #     if op == True:
    #         con=sqlite3.connect(database="rms.db")
    #         cur=con.cursor()
    #         try:
    #             # Get the values before deleting for audit log
    #             cur.execute("SELECT marks_ob, full_marks, per FROM result WHERE rid=?", (self.var_id,))
    #             result = cur.fetchone()
    #             deleted_values = {
    #                 'marks_ob': result[0],
    #                 'full_marks': result[1],
    #                 'percentage': result[2]
    #             } if result else {}
                
    #             cur.execute("DELETE FROM result WHERE rid=?", (self.var_id,))
    #             con.commit()
    #             messagebox.showinfo("Success","Result deleted successfully", parent=self.root)
    #             self.clear_fields()

    #             # Log the deletion
    #             audit_logger.log_action(
    #                         "DELETE", 
    #                         "result", 
    #                         self.var_id,
    #                         deleted_values,
    #                         None
    #                     )
                
    #         except Exception as ex:
    #             messagebox.showerror("Error", f"Error due to {str(ex)}")
    #         finally:
    #             con.close()

if __name__=="__main__":
    root = Tk()
    obj = ReportClass(root)
    root.mainloop()