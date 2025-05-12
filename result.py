from tkinter import *
from PIL import Image, ImageTk
from tkinter import ttk, messagebox
import sqlite3
from audit_logger import audit_logger

class ResultClass:
    def __init__(self, root):
        self.root = root
        self.root.title("Student Result Management System")
        self.root.geometry("1200x480+80+170")
        self.root.config(bg="white")
        self.root.focus_force()

        #=========== title =========
        title = Label(
            self.root,
            text="Add Student Result",
            font=("goudy old style",20,"bold"),
            bg="orange", fg="#262626"
        ).place(x=10,y=15,width=1180,height=50)

        #======== variables ==========
        self.var_roll = StringVar()
        self.var_name = StringVar()
        self.var_course = StringVar()
        self.var_marks = StringVar()
        self.var_full_marks = StringVar()

        self.roll_list = []
        self.fetch_roll()

        #============= widgets ==========
        Label(self.root, text="Select Student", font=("goudy old style",20,"bold"), bg="white").place(x=50,y=100)
        Label(self.root, text="Name",           font=("goudy old style",20,"bold"), bg="white").place(x=50,y=160)
        Label(self.root, text="Course",         font=("goudy old style",20,"bold"), bg="white").place(x=50,y=220)
        Label(self.root, text="Marks Obtained", font=("goudy old style",20,"bold"), bg="white").place(x=50,y=280)
        Label(self.root, text="Full Marks",     font=("goudy old style",20,"bold"), bg="white").place(x=50,y=340)

        self.txt_student = ttk.Combobox(
            self.root, textvariable=self.var_roll,
            font=("goudy old style",15,"bold"),
            values=self.roll_list, state='readonly', justify=CENTER
        )
        self.txt_student.place(x=280,y=100, width=200)
        self.txt_student.set("Select")

        Button(
            self.root, text="Search",
            font=("goudy old style",15,"bold"),
            bg="#03a9f4", fg="white", cursor="hand2",
            command=self.search
        ).place(x=500,y=100, width=100, height=28)

        Entry(self.root, textvariable=self.var_name, font=("goudy old style",20,"bold"),
              bg="lightyellow", state='readonly'
        ).place(x=280,y=160, width=320)

        self.txt_course = ttk.Combobox(
            self.root, textvariable=self.var_course,
            font=("goudy old style",20,"bold"), state='readonly'
        )
        self.txt_course.place(x=280,y=220, width=320)

        Entry(self.root, textvariable=self.var_marks,     font=("goudy old style",20,"bold"),bg="lightyellow").place(x=280,y=280, width=320)
        Entry(self.root, textvariable=self.var_full_marks,font=("goudy old style",20,"bold"),bg="lightyellow").place(x=280,y=340, width=320)

        #=========== buttons ===========
        Button(
            self.root, text="Submit",
            font=('times new roman',15), bg="lightgreen",
            activebackground="lightgreen", cursor="hand2",
            command=self.add
        ).place(x=300,y=420, width=120, height=35)
        Button(
            self.root, text="Clear",
            font=('times new roman',15), bg="lightgray",
            activebackground="lightgray", cursor="hand2",
            command=self.clear
        ).place(x=430,y=420, width=120, height=35)

        #========== background image ==========
        self.bg_img = Image.open("images/result.jpg")
        self.bg_img = self.bg_img.resize((500,300), Image.Resampling.LANCZOS)
        self.bg_img = ImageTk.PhotoImage(self.bg_img)
        Label(self.root, image=self.bg_img).place(x=640,y=110)

    # --------------------------------------------------
    def fetch_roll(self):
        con = sqlite3.connect(database="rms.db")
        cur = con.cursor()
        try:
            cur.execute("SELECT roll FROM student")
            for (r,) in cur.fetchall():
                self.roll_list.append(r)
        except Exception as ex:
            messagebox.showerror("Error", f"Error due to {str(ex)}")
        finally:
            con.close()

    def search(self):
        con = sqlite3.connect(database="rms.db")
        cur = con.cursor()
        try:
            if self.var_roll.get() in ("", "Select"):
                messagebox.showerror("Error","Roll No. is required", parent=self.root)
                return

            # Get student name
            cur.execute("SELECT name FROM student WHERE roll = ?", (self.var_roll.get(),))
            row = cur.fetchone()
            if not row:
                messagebox.showerror("Error","No record found", parent=self.root)
                return

            self.var_name.set(row[0])

            # Get enrolled courses
            cur.execute("""
              SELECT c.cid, c.name
                FROM course c
                JOIN enrollment e ON c.cid = e.course_id
               WHERE e.student_roll = ?
            """, (self.var_roll.get(),))
            courses = cur.fetchall()

            names = [c[1] for c in courses]
            self.txt_course['values'] = names
            if names:
                self.var_course.set(names[0])
            else:
                self.var_course.set("")
                messagebox.showwarning("Warning","Student is not enrolled in any courses", parent=self.root)
        except Exception as ex:
            messagebox.showerror("Error", f"Error due to {str(ex)}")
        finally:
            con.close()

    def add(self):
        con = sqlite3.connect(database="rms.db")
        cur = con.cursor()
        try:
            if not self.var_name.get() or not self.var_course.get():
                messagebox.showerror("Error","Student and course record are required", parent=self.root)
                return

            # lookup enroll_id
            cur.execute("""
              SELECT e.enroll_id
                FROM enrollment e
                JOIN course c ON e.course_id = c.cid
               WHERE e.student_roll=? AND c.name=?
            """, (self.var_roll.get(), self.var_course.get()))
            enroll_row = cur.fetchone()
            if not enroll_row:
                messagebox.showerror("Error","Enrollment not found", parent=self.root)
                return
            enroll_id = enroll_row[0]

            # ensure no duplicate result
            cur.execute("SELECT * FROM result WHERE enroll_id = ?", (enroll_id,))
            if cur.fetchone():
                messagebox.showerror("Error","Result already present", parent=self.root)
                return

            per = (int(self.var_marks.get()) * 100) / int(self.var_full_marks.get())
            cur.execute("""
              INSERT INTO result (enroll_id, marks_ob, full_marks, per)
                   VALUES (?,?,?,?)
            """, (enroll_id, self.var_marks.get(), self.var_full_marks.get(), per))
            con.commit()

            # audit log
            result_data = {
                "enroll_id": enroll_id,
                "marks_ob": self.var_marks.get(),
                "full_marks": self.var_full_marks.get(),
                "per": str(per)
            }
            audit_logger.log_action(
                "CREATE",
                "result",
                f"{self.var_roll.get()}-{self.var_course.get()}",
                None,
                result_data
            )

            messagebox.showinfo("Success","Result added successfully.", parent=self.root)
        except Exception as ex:
            messagebox.showerror("Error", f"Error due to {str(ex)}")
        finally:
            con.close()

    def clear(self):
        self.var_roll.set("Select")
        self.var_name.set("")
        self.var_course.set("")
        self.var_marks.set("")
        self.var_full_marks.set("")


        


if __name__=="__main__":
    root = Tk()
    obj = ResultClass(root)
    root.mainloop()
