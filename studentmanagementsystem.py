import os
from tkinter import *
from PIL import Image,ImageTk,ImageDraw
from tkinter import ttk,messagebox
from datetime import *
import time
from math import *
import sqlite3
from course import CourseClass
from student import StudentClass
from result import ResultClass
from report import ReportClass
from audit_logs import AuditLoggerClass
from backup import BackupSystem
from audit_logger import audit_logger

class RMS:
    def __init__(self, root):
        self.root = root
        self.root.title("Student Result Management System")
        self.root.geometry("1350x700+0+0")
        self.root.config(bg="white")

        #==========icon==========
        self.logo_dash=ImageTk.PhotoImage(file="images/logo_p.png")
        
        #===========title========
        title=Label(self.root,text="Student Result Management System", padx=10,compound=LEFT, image=self.logo_dash, font=("goudy old style",20,"bold"),bg="#033054", fg="white").place(x=0,y=0,relwidth=1,height=50)

        #========Menu===========
        M_Frame = LabelFrame(self.root,text="Menu", font = ("times new roman", 15),bg="white")
        M_Frame.place(x=10, y=70, width=1340, height=80)

        #===========Buttons=============
        btn_course = Button(M_Frame, text = "Course", font=("goudy old style", 15, "bold"), bg="#0b5377", fg="white", cursor="hand2", command=self.add_course).place(x=15,y=5,width=129,height=40)
        btn_student = Button(M_Frame, text = "Student", font=("goudy old style", 15, "bold"), bg="#0b5377", fg="white", cursor="hand2", command=self.add_student).place(x=154,y=5,width=129,height=40)
        btn_result = Button(M_Frame, text = "Result", font=("goudy old style", 15, "bold"), bg="#0b5377", fg="white", cursor="hand2", command=self.add_result).place(x=293,y=5,width=129,height=40)
        btn_view = Button(M_Frame, text = "View Student Result", font=("goudy old style", 15, "bold"), bg="#0b5377", fg="white", cursor="hand2", command=self.add_report).place(x=432,y=5,width=185,height=40)

        btn_logout = Button(M_Frame, text = "Logout", font=("goudy old style", 15, "bold"), bg="#0b5377", fg="white", cursor="hand2", command=self.logout).place(x=1054,y=5,width=129,height=40)
        btn_exit = Button(M_Frame, text = "Exit", font=("goudy old style", 15, "bold"), bg="#0b5377", fg="white", cursor="hand2",command=self.exit_).place(x=1193,y=5,width=129,height=40)

        btn_backup = Button(M_Frame, text="Backup", font=("goudy old style", 15, "bold"), bg="#0b5377", fg="white", cursor="hand2", command=self.backup_database).place(x=776,y=5,width=129,height=40)
        btn_restore = Button(M_Frame, text="Restore", font=("goudy old style", 15, "bold"), bg="#0b5377", fg="white", cursor="hand2", command=self.restore_database).place(x=915,y=5,width=129,height=40)

        btn_audit = Button(M_Frame, text="Audit Logs", font=("goudy old style", 15, "bold"), bg="#0b5377", fg="white", cursor="hand2", command=self.show_audit_logs).place(x=627,y=5,width=139,height=40)



        #===========content_window=======
        self.bg_img=Image.open("images/bg.png")
        self.bg_img=self.bg_img.resize((920,350),Image.Resampling.LANCZOS)   #updated pillow image resampling code
        self.bg_img=ImageTk.PhotoImage(self.bg_img)

        self.lbl_bg=Label(self.root, image=self.bg_img).place(x=400,y=180,width=920,height=350)

        #===========update_details==============
        self.lbl_student=Label(self.root, text="Total Students\n [ 0 ]",font = ("goudy old style", 20),bd=10,relief=RIDGE,bg="#e43b06",fg="white")
        self.lbl_student.place(x=400,y=530,width=300,height=100)

        self.lbl_course=Label(self.root, text="Total Courses\n [ 0 ]",font = ("goudy old style", 20),bd=10,relief=RIDGE,bg="#0676ad",fg="white")
        self.lbl_course.place(x=710,y=530,width=300,height=100)

        self.lbl_result=Label(self.root, text="Total Results\n [ 0 ]",font = ("goudy old style", 20),bd=10,relief=RIDGE,bg="#038074",fg="white")
        self.lbl_result.place(x=1020,y=530,width=300,height=100)

        #==========Clock============
        self.lbl=Label(self.root,text="\nAnalog Clock", font=("Book Antiqua",25,"bold"),fg="white",compound=BOTTOM,bg="#081923",bd=0)
        self.lbl.place(x=10,y=180,height=450,width=350)

        self.working()
        #===========footer========
        footer=Label(self.root,text="SRMS-Student Result Management System\nContact Us for any Issue: 92846xxxxxx",font=("goudy old style",12),bg="#262626", fg="white").pack(side=BOTTOM, fill=X)
        self.update_details()
#=================================
    def update_details(self):
        con=sqlite3.connect(database="rms.db")
        cur=con.cursor()
        try:
            cur.execute("select * from course")
            cr=cur.fetchall()
            self.lbl_course.config(text=f"Total Courses\n[{str(len(cr))}]")

            cur.execute("select * from student")
            cr=cur.fetchall()
            self.lbl_student.config(text=f"Total Students\n[{str(len(cr))}]")

            cur.execute("select * from result")
            cr=cur.fetchall()
            self.lbl_result.config(text=f"Total Results\n[{str(len(cr))}]")

            self.lbl_course.after(200,self.update_details)


        except Exception as ex:
            messagebox.showerror("Error", f"Error due to {str(ex)}")

    def clock_image(self,hrs,mins,secs):
        clock=Image.new("RGB",(400,400),(8,25,35))
        draw=ImageDraw.Draw(clock)
        #=====Clock Image============
        bg=Image.open("images/c.png")
        bg=bg.resize((300,300),Image.Resampling.LANCZOS)
        clock.paste(bg,(50,50))

        #======== x1,y1,x2,y2 =======
        origin=200,200
        #============hour line Image==========
        draw.line((origin,200+50*sin(radians(hrs)),200-50*cos(radians(hrs))),fill="#DF005E",width=4)
        #============minute line Image==========
        draw.line((origin,200+80*sin(radians(mins)),200-80*cos(radians(mins))),fill="white",width=3)
        #============second line Image==========
        draw.line((origin,200+100*sin(radians(secs)),200-100*cos(radians(secs))),fill="yellow",width=2)

        #===========elipse image==========
        draw.ellipse((195,195,210,210),fill="#1AD5D5")
        #========for saving image=========
        clock.save("images/clock_new.png")

        #=================time setting===========
    def working(self):
        now = datetime.now().time()
        h, m, s = now.hour, now.minute, now.second

        hrs = (h % 12 + m / 60.0) * 30
        mins = m * 6
        secs = s * 6

        self.clock_image(hrs, mins, secs)
        self.img = ImageTk.PhotoImage(file="images/clock_new.png")
        self.lbl.config(image=self.img)
        self.lbl.after(1000, self.working)


    def add_course(self):
        self.new_win=Toplevel(self.root)
        self.new_obj=CourseClass(self.new_win)

    def add_student(self):
        self.new_win=Toplevel(self.root)
        self.new_obj=StudentClass(self.new_win)

    def add_result(self):
        self.new_win=Toplevel(self.root)
        self.new_obj=ResultClass(self.new_win)

    def add_report(self):
        self.new_win=Toplevel(self.root)
        self.new_obj=ReportClass(self.new_win)

    def logout(self):
        op=messagebox.askyesno("Confirm","Do you really want to logout?",parent=self.root)
        if op==True:
            self.root.destroy()
            os.system("python login.py")

    def exit_(self):
        op=messagebox.askyesno("Confirm","Do you really want to Exit?",parent=self.root)
        if op==True:
            self.root.destroy()

    def backup_database(self):
        backup = BackupSystem(self.root)
        backup.create_backup()

    def restore_database(self):
        backup = BackupSystem(self.root)
        backup.restore_backup()

    #=================audit logs=================
    def show_audit_logs(self):
        self.new_win = Toplevel(self.root)
        self.new_obj= AuditLoggerClass(self.new_win)

if __name__=="__main__":
    root = Tk()
    obj = RMS(root)
    root.mainloop()