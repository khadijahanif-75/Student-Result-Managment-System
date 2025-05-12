from tkinter import *
from PIL import Image, ImageTk
from tkinter import ttk, messagebox
import sqlite3
from audit_logger import audit_logger

class StudentClass:
    def __init__(self, root):
        self.root = root
        self.root.title("Student Result Management System")
        self.root.geometry("1200x480+80+170")
        self.root.config(bg="white")
        self.root.focus_force()

        # Title
        Label(self.root, text="Manage Student Details", font=("goudy old style", 20, "bold"), bg="#033054", fg="white").place(x=10, y=15, width=1180, height=35)

        # Variables
        self.var_roll = StringVar()
        self.var_name = StringVar()
        self.var_email = StringVar()
        self.var_gender = StringVar()
        self.var_dob = StringVar()
        self.var_contact = StringVar()
        self.var_course = StringVar()
        self.var_adate = StringVar()
        self.var_state = StringVar()
        self.var_city = StringVar()
        self.var_pin = StringVar()

        # Widgets column1
        Label(self.root, text="Roll Number", font=("goudy old style", 15, "bold"), bg="white").place(x=10, y=60)
        Label(self.root, text="Name", font=("goudy old style", 15, "bold"), bg="white").place(x=10, y=100)
        Label(self.root, text="Email", font=("goudy old style", 15, "bold"), bg="white").place(x=10, y=140)
        Label(self.root, text="Gender", font=("goudy old style", 15, "bold"), bg="white").place(x=10, y=180)
        Label(self.root, text="State", font=("goudy old style", 15, "bold"), bg="white").place(x=360, y=180)
        Label(self.root, text="City", font=("goudy old style", 15, "bold"), bg="white").place(x=10, y=220)
        Label(self.root, text="Pin", font=("goudy old style", 15, "bold"), bg="white").place(x=270, y=220)
        Label(self.root, text="Address", font=("goudy old style", 15, "bold"), bg="white").place(x=10, y=265)
        Label(self.root, text="Enrolled Courses", font=("goudy old style", 15, "bold"), bg="white").place(x=430, y=220)

        # Widgets column2
        Label(self.root, text="D.O.B", font=("goudy old style", 15, "bold"), bg="white").place(x=360, y=60)
        Label(self.root, text="Contact", font=("goudy old style", 15, "bold"), bg="white").place(x=360, y=100)
        Label(self.root, text="Admission", font=("goudy old style", 15, "bold"), bg="white").place(x=360, y=140)

        # Entry fields
        self.txt_roll = Entry(self.root, textvariable=self.var_roll, font=("goudy old style", 15, "bold"), bg="lightyellow")
        self.txt_roll.place(x=150, y=60, width=200)
        self.txt_name = Entry(self.root, textvariable=self.var_name, font=("goudy old style", 15, "bold"), bg="lightyellow")
        self.txt_name.place(x=150, y=100, width=200)
        self.txt_email = Entry(self.root, textvariable=self.var_email, font=("goudy old style", 15, "bold"), bg="lightyellow")
        self.txt_email.place(x=150, y=140, width=200)
        self.txt_gender = ttk.Combobox(self.root, textvariable=self.var_gender, values=("Select","Male","Female","Other"), state='readonly', justify=CENTER, font=("goudy old style", 15, "bold"))
        self.txt_gender.place(x=150, y=180, width=200)
        self.txt_gender.current(0)

        self.txt_state = Entry(self.root, textvariable=self.var_state, font=("goudy old style", 15, "bold"), bg="lightyellow")
        self.txt_state.place(x=480, y=180, width=200)
        self.txt_city = Entry(self.root, textvariable=self.var_city, font=("goudy old style", 15, "bold"), bg="lightyellow")
        self.txt_city.place(x=150, y=220, width=120)
        self.txt_pin = Entry(self.root, textvariable=self.var_pin, font=("goudy old style", 15, "bold"), bg="lightyellow")
        self.txt_pin.place(x=310, y=220, width=110)

        self.txt_dob = Entry(self.root, textvariable=self.var_dob, font=("goudy old style", 15, "bold"), bg="lightyellow")
        self.txt_dob.place(x=480, y=60, width=200)
        self.txt_contact = Entry(self.root, textvariable=self.var_contact, font=("goudy old style", 15, "bold"), bg="lightyellow")
        self.txt_contact.place(x=480, y=100, width=200)
        self.txt_admission = Entry(self.root, textvariable=self.var_adate, font=("goudy old style", 15, "bold"), bg="lightyellow")
        self.txt_admission.place(x=480, y=140, width=200)

        # Enrolled courses listbox
        self.course_listbox = Listbox(self.root, selectmode=MULTIPLE, font=("goudy old style", 12), bg="lightyellow")
        self.course_listbox.place(x=433, y=260, width=250, height=100)

        Button(self.root, text="Add", font=("goudy old style", 10, "bold"), bg="#4caf50", fg="white", command=self.add_courses).place(x=580, y=225, width=47, height=23)
        Button(self.root, text="Remove", font=("goudy old style", 10, "bold"), bg="#f44336", fg="white", command=self.remove_courses).place(x=630, y=225, width=55, height=23)

        self.txt_address = Text(self.root, font=("goudy old style", 15, "bold"), bg="lightyellow")
        self.txt_address.place(x=150, y=260, width=270, height=100)

        Button(self.root, text="Save", font=("goudy old style", 15, "bold"), bg="#2196f3", fg="white", cursor="hand2", command=self.add).place(x=150, y=400, width=110, height=40)
        Button(self.root, text="Update", font=("goudy old style", 15, "bold"), bg="#4caf50", fg="white", cursor="hand2", command=self.update).place(x=270, y=400, width=110, height=40)
        Button(self.root, text="Delete", font=("goudy old style", 15, "bold"), bg="#f44336", fg="white", cursor="hand2", command=self.delete).place(x=390, y=400, width=110, height=40)
        Button(self.root, text="Clear", font=("goudy old style", 15, "bold"), bg="#607d8b", fg="white", cursor="hand2", command=self.clear).place(x=510, y=400, width=110, height=40)

        # Search panel
        self.var_search = StringVar()
        Label(self.root, text="Roll No", font=("goudy old style",15,"bold"),bg="white").place(x=720,y=60)
        Entry(self.root, textvariable=self.var_search, font=("goudy old style",15,"bold"),bg="lightyellow").place(x=870,y=60,width=180)
        Button(self.root, text="Search", font=("goudy old style",15,"bold"),bg="#03a9f4",fg="white",cursor="hand2", command=self.search).place(x=1070,y=58,width=120,height=28)

        # Table frame
        cframe = Frame(self.root, bd=2, relief=RIDGE, bg="lightyellow")
        cframe.place(x=720, y=100, width=470, height=220)
        scroll_y = Scrollbar(cframe, orient=VERTICAL)
        scroll_x = Scrollbar(cframe, orient=HORIZONTAL)
        scroll_y.pack(side=RIGHT, fill=Y)
        scroll_x.pack(side=BOTTOM, fill=X)
        self.CourseTable = ttk.Treeview(cframe, columns=("roll","name","email","gender","dob","contact","admission","course","state","city","pin","address"), yscrollcommand=scroll_y.set, xscrollcommand=scroll_x.set)
        scroll_y.config(command=self.CourseTable.yview)
        scroll_x.config(command=self.CourseTable.xview)
        for col,label,width in [("roll","Roll No",100),("name","Name",100),("email","Email",100),("gender","Gender",100),("dob","D.O.B",100),("contact","Contact",100),("admission","Admission",100),("course","Course",100),("state","State",100),("city","City",100),("pin","Pin",100),("address","Address",200)]:
            self.CourseTable.heading(col, text=label)
            self.CourseTable.column(col, width=width)
        self.CourseTable["show"] = "headings"
        self.CourseTable.pack(fill=BOTH, expand=1)
        self.CourseTable.bind("<ButtonRelease-1>", self.get_data)
        self.show()
        self.fetch_course()

    def add_courses(self):
        if not self.var_roll.get():
            messagebox.showerror("Error","Please select or create student first", parent=self.root)
            return
        top = Toplevel(self.root)
        top.title("Add Courses")
        top.geometry("400x600")
        top.grab_set()

        canvas = Canvas(top)
        vscroll = Scrollbar(top, orient=VERTICAL, command=canvas.yview)
        canvas.configure(yscrollcommand=vscroll.set)
        vscroll.pack(side=RIGHT, fill=Y)
        canvas.pack(side=LEFT, fill=BOTH, expand=True)
        scroll_frame = Frame(canvas)
        canvas.create_window((0,0), window=scroll_frame, anchor='nw')
        scroll_frame.bind("<Configure>", lambda e: canvas.configure(scrollregion=canvas.bbox("all")))

        con = sqlite3.connect("rms.db")
        cur = con.cursor()
        cur.execute("SELECT cid,name FROM course")
        courses = cur.fetchall()
        cur.execute("SELECT c.cid FROM course c JOIN enrollment e ON c.cid=e.course_id WHERE e.student_roll=?", (self.var_roll.get(),))
        enrolled = [r[0] for r in cur.fetchall()]

        self.course_vars = []
        for cid,name in courses:
            var = IntVar(value=1 if cid in enrolled else 0)
            cb = Checkbutton(scroll_frame, text=name, variable=var, onvalue=1, offvalue=0)
            cb.pack(anchor='w')
            self.course_vars.append((cid,var))

        Button(top, text="Save", command=lambda:self.save_courses(top), bg="green", fg="white", font=("times new roman",12,"bold")).place(x=320, y=5)

    def save_courses(self, top):
        con = sqlite3.connect("rms.db")
        cur = con.cursor()
        cur.execute("DELETE FROM enrollment WHERE student_roll=?", (self.var_roll.get(),))
        for cid,var in self.course_vars:
            if var.get()==1:
                cur.execute("INSERT INTO enrollment (student_roll,course_id,enrollment_date) VALUES (?,?,date('now'))", (self.var_roll.get(),cid))
        con.commit()
        con.close()
        self.load_enrolled_courses()
        top.destroy()

    def clear(self):
        self.var_roll.set("")
        self.var_name.set("")
        self.var_email.set("")
        self.var_gender.set("Select")
        self.var_dob.set("")
        self.var_contact.set("")
        self.var_adate.set("")
        self.var_state.set("")
        self.var_city.set("")
        self.var_pin.set("")
        self.txt_address.delete("1.0", END)
        self.course_listbox.delete(0, END)
        self.txt_roll.config(state=NORMAL)
        self.var_search.set("")

    def delete(self):
        con=sqlite3.connect(database="rms.db")
        cur=con.cursor()
        if not self.var_roll.get():
            messagebox.showerror("Error","Roll No is required", parent=self.root)
            return
        cur.execute("select * from student where roll = ?",(self.var_roll.get(),))
        row=cur.fetchone()
        if not row:
            messagebox.showerror("Error","Select Student from list", parent=self.root)
            return
        op=messagebox.askyesno("Confirm","Do you really want to delete?",parent=self.root)
        if op:
            cur.execute("delete from student where roll = ?",(self.var_roll.get(),))
            con.commit()
            audit_logger.log_action("DELETE","student",self.var_roll.get(),None,None)
            messagebox.showinfo("Delete","Student Deleted Successfully",parent=self.root)
            self.clear()

    def get_data(self, event):
        self.txt_roll.config(state='readonly')
        r=self.CourseTable.focus()
        row=self.CourseTable.item(r)['values']
        (self.var_roll.set(row[0]),self.var_name.set(row[1]),self.var_email.set(row[2]),self.var_gender.set(row[3]),
         self.var_dob.set(row[4]),self.var_contact.set(row[5]),self.var_adate.set(row[6]),
         self.var_state.set(row[8]),self.var_city.set(row[9]),self.var_pin.set(row[10]))
        self.txt_address.delete("1.0",END)
        self.txt_address.insert(END,row[11])
        self.load_enrolled_courses()

    def add(self):
        con=sqlite3.connect(database="rms.db")
        cur=con.cursor()
        if not self.var_roll.get():
            messagebox.showerror("Error","Roll No. is required", parent=self.root)
            return
        cur.execute("select * from student where roll = ?",(self.var_roll.get(),))
        if cur.fetchone():
            messagebox.showerror("Error","Roll No already present", parent=self.root)
            return
        cur.execute("insert into student (roll,name,email,gender,dob,contact,admission,course,state,city,pin,address) values(?,?,?,?,?,?,?,?,?,?,?,?)",(
            self.var_roll.get(),self.var_name.get(),self.var_email.get(),self.var_gender.get(),self.var_dob.get(),
            self.var_contact.get(),self.var_adate.get(),self.var_course.get(),self.var_state.get(),
            self.var_city.get(),self.var_pin.get(),self.txt_address.get("1.0",END)))
        con.commit()
        audit_logger.log_action("CREATE","student",self.var_roll.get(),None,None)
        messagebox.showinfo("Success","Student added successfully.",parent=self.root)
        self.show()

    def update(self):
        con=sqlite3.connect(database="rms.db")
        cur=con.cursor()
        if not self.var_roll.get():
            messagebox.showerror("Error","Roll No. is required", parent=self.root)
            return
        cur.execute("update student set name=?,email=?,gender=?,dob=?,contact=?,admission=?,course=?,state=?,city=?,pin=?,address=? where roll=?",(
            self.var_name.get(),self.var_email.get(),self.var_gender.get(),self.var_dob.get(),self.var_contact.get(),
            self.var_adate.get(),self.var_course.get(),self.var_state.get(),self.var_city.get(),
            self.var_pin.get(),self.txt_address.get("1.0",END),self.var_roll.get()))
        con.commit()
        audit_logger.log_action("UPDATE","student",self.var_roll.get(),None,None)
        messagebox.showinfo("Success","Student updated successfully.",parent=self.root)
        self.show()

    def show(self):
        con=sqlite3.connect(database="rms.db")
        cur=con.cursor()

        cur.execute("select * from student")
        
        rows=cur.fetchall()
        self.CourseTable.delete(*self.CourseTable.get_children())
        for row in rows:
            self.CourseTable.insert('',END,values=row)

    def fetch_course(self):
        con=sqlite3.connect(database="rms.db")
        cur=con.cursor()
        cur.execute("select name from course")
        rows=cur.fetchall()
        self.course_list = [r[0] for r in rows]

    def load_enrolled_courses(self):
        if not self.var_roll.get(): return
        self.course_listbox.delete(0,END)
        con=sqlite3.connect("rms.db")
        cur=con.cursor()
        cur.execute("select c.name from enrollment e join course c on e.course_id=c.cid where e.student_roll=?",(self.var_roll.get(),))
        for r in cur.fetchall(): self.course_listbox.insert(END,r[0])

    def remove_courses(self):
        sels=self.course_listbox.curselection()
        if not sels: return
        con=sqlite3.connect("rms.db")
        cur=con.cursor()
        for i in sels:
            name=self.course_listbox.get(i)
            cur.execute("delete from enrollment where student_roll=? and course_id in (select cid from course where name=?)",(self.var_roll.get(),name))
        con.commit()
        self.load_enrolled_courses()

    def search(self):
        con=sqlite3.connect("rms.db")
        cur=con.cursor()
        if not self.var_search.get():
            messagebox.showerror("Error","Roll No. is required",parent=self.root)
            return
        cur.execute("select * from student where roll=?",(self.var_search.get(),))
        row=cur.fetchone()
        if row:
            self.CourseTable.delete(*self.CourseTable.get_children())
            self.CourseTable.insert('',END,values=row)
        else:
            messagebox.showerror("Error","No record found",parent=self.root)

if __name__ == "__main__":
    root = Tk()
    obj = StudentClass(root)
    root.mainloop()
