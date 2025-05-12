import os
from tkinter import *
from tkinter import ttk, messagebox
from PIL import Image, ImageTk, ImageDraw
from datetime import *
import time
from math import *
import sqlite3
from backup import BackupSystem
from audit_logger import audit_logger

class LoginWindow:
    def __init__(self, root):
        self.root = root
        self.root.title("LOGIN SYSTEM")
        self.root.geometry("1350x700+0+0")
        self.root.config(bg="#021e2f")

        #===========Background colors===========
        self.left_lbl = Label(self.root, bg="#08A3D2", bd=0)
        self.left_lbl.place(x=0, y=0, relheight=1, width=600)

        self.right_lbl = Label(self.root, bg="#031F3C", bd=0)
        self.right_lbl.place(x=600, y=0, relheight=1, relwidth=1)

        #===========Frames=============
        login_frame = Frame(self.root, bg="white")
        login_frame.place(x=250, y=100, width=800, height=500)

        title = Label(login_frame, text="LOGIN HERE", font=("times new roman", 30, "bold"), bg="white", fg="#08A3D2").place(x=250, y=50)

        #===========email==============
        email = Label(login_frame, text="EMAIL ADDRESS", font=("times new roman", 18, "bold"), bg="white", fg="gray").place(x=250, y=150)
        self.txt_email = Entry(login_frame, font=("times new roman", 15), bg="lightgray")
        self.txt_email.place(x=250, y=180, width=350, height=35)

        #==========password===============
        password = Label(login_frame, text="PASSWORD", font=("times new roman", 18, "bold"), bg="white", fg="gray").place(x=250, y=250)
        self.txt_password = Entry(login_frame, font=("times new roman", 15), bg="lightgray")
        self.txt_password.place(x=250, y=280, width=350, height=35)

        btn_reg = Button(login_frame, text="Register New Account", font=("times new roman", 14), command=self.register_window, bg="white", bd=0, fg="#B00857", cursor="hand2").place(x=250, y=330)
        btn_forget = Button(login_frame, text="Forget Password?", font=("times new roman", 14), command=self.forget_password_window, bg="white", bd=0, fg="red", cursor="hand2").place(x=450, y=330)

        btn_login = Button(login_frame, text="Login", command=self.login, font=("times new roman", 20, "bold"), fg="white", bg="#B00857", cursor="hand2").place(x=250, y=380, width=180, height=40)

        #==========Clock==========
        self.lbl = Label(self.root, text="\nAnalog Clock", font=("Book Antiqua", 25, "bold"), fg="white", compound=BOTTOM, bg="#081923", bd=0)
        self.lbl.place(x=90, y=120, height=450, width=350)

        self.working()
        self.check_auto_backup()

    def reset(self):
        self.cmb_quest.current(0)
        self.txt_new_pass.delete(0, END)
        self.txt_answer.delete(0, END)
        self.txt_password.delete(0, END)
        self.txt_email.delete(0, END)

    def forget_password(self):
        if self.cmb_quest.get() == "Select" or self.txt_answer.get() == "" or self.txt_new_pass.get() == "":
            messagebox.showerror("Error", "All fields are required.", parent=self.root2)
        else:
            try:
                con = sqlite3.connect(database="rms.db")
                cur = con.cursor()
                cur.execute("select * from employee where email=? and question=? and answer=?", (self.txt_email.get(), self.cmb_quest.get(), self.txt_answer.get()))
                row = cur.fetchone()
                if row is None:
                    messagebox.showerror("Error", "Please select correct Security Question / Enter Answer", parent=self.root2)
                else:
                    cur.execute("update employee set password=? where email=?", (self.txt_new_pass.get(), self.txt_email.get()))
                    con.commit()
                    con.close()
                    messagebox.showinfo("Success", "Your password has been reset.", parent=self.root2)
                    self.reset()
                    self.root2.destroy()
            except Exception as es:
                messagebox.showerror("Error", f"Error due to: {str(es)}", parent=self.root2)

    def forget_password_window(self):
        if self.txt_email.get() == "":
            messagebox.showerror("Error", "Please enter your email address", parent=self.root)
        else:
            try:
                con = sqlite3.connect(database="rms.db")
                cur = con.cursor()
                cur.execute("select * from employee where email=?", (self.txt_email.get(),))
                row = cur.fetchone()
                if row is None:
                    messagebox.showerror("Error", "Please enter a valid email address", parent=self.root)
                else:
                    con.close()
                    self.root2 = Toplevel()
                    self.root2.title("FORGET PASSWORD")
                    self.root2.geometry("350x415+495+150")
                    self.root2.focus_force()
                    self.root2.grab_set()
                    self.root2.config(bg="white")

                    t = Label(self.root2, text="Forget Password", font=("times new roman", 20, "bold"), bg="white", fg="red").place(x=0, y=10, relwidth=1)

                    question = Label(self.root2, text="Security Question", font=("times new roman", 15, "bold"), bg="white", fg="gray").place(x=50, y=100)
                    self.cmb_quest = ttk.Combobox(self.root2, font=("times new roman", 15), state="readonly", justify="center")
                    self.cmb_quest['values'] = ("Select", "Your Car Plate", "Your First School", "Your Bestfriend Name", "Your Birth Place", "Your Pet Name")
                    self.cmb_quest.place(x=50, y=130, width=250)
                    self.cmb_quest.current(0)

                    answer = Label(self.root2, text="Answer", font=("times new roman", 15, "bold"), bg="white", fg="gray").place(x=50, y=180)
                    self.txt_answer = Entry(self.root2, font=("times new roman", 15), bg="lightgray")
                    self.txt_answer.place(x=50, y=210, width=250)

                    new_pass = Label(self.root2, text="New Password", font=("times new roman", 15, "bold"), bg="white", fg="gray").place(x=50, y=260)
                    self.txt_new_pass = Entry(self.root2, font=("times new roman", 15), bg="lightgray")
                    self.txt_new_pass.place(x=50, y=290, width=250)

                    btn_change_password = Button(self.root2, text="Reset Password", command=self.forget_password, bg="green", fg="white", font=("times new roman", 15, "bold")).place(x=90, y=340)
            except Exception as es:
                messagebox.showerror("Error", f"Error due to: {str(es)}", parent=self.root)

    def register_window(self):
        self.root.destroy()
        import register

    def login(self):
        if self.txt_email.get() == "" or self.txt_password.get() == "":
            messagebox.showerror("Error", "All fields are required", parent=self.root)
        else:
            try:
                con = sqlite3.connect(database="rms.db")
                cur = con.cursor()
                cur.execute("select * from employee where email=? and password=?", (self.txt_email.get(), self.txt_password.get()))
                row = cur.fetchone()
                if row is None:
                    # Log failed login attempt
                    audit_logger.log_action(
                        "LOGIN_FAILED", 
                        "employee", 
                        None,
                        None,
                        {"email": self.txt_email.get()}
                    )
                    messagebox.showerror("Error", "Invalid username or password", parent=self.root)
                else:
                    # Set current user and log successful login
                    audit_logger.set_current_user(self.txt_email.get())
                    audit_logger.log_action(
                        "LOGIN", 
                        "employee", 
                        row[0],
                        None,
                        {"email": self.txt_email.get()}
                    )
                    messagebox.showinfo("Success", f"Welcome {self.txt_email.get()}", parent=self.root)
                    self.root.destroy()
                    os.system("python studentmanagementsystem.py")
                con.close()
            except Exception as es:
                messagebox.showerror("Error", f"Error due to: {str(es)}", parent=self.root)

    def clock_image(self, hrs, mins, secs):
        clock = Image.new("RGB", (400, 400), (8, 25, 35))
        draw = ImageDraw.Draw(clock)

        bg = Image.open("images/c.png")
        bg = bg.resize((300, 300), Image.Resampling.LANCZOS)
        clock.paste(bg, (50, 50))

        origin = 200, 200
        draw.line((origin, 200 + 50 * sin(radians(hrs)), 200 - 50 * cos(radians(hrs))), fill="#DF005E", width=4)
        draw.line((origin, 200 + 80 * sin(radians(mins)), 200 - 80 * cos(radians(mins))), fill="white", width=3)
        draw.line((origin, 200 + 100 * sin(radians(secs)), 200 - 100 * cos(radians(secs))), fill="yellow", width=2)
        draw.ellipse((195, 195, 210, 210), fill="#1AD5D5")

        clock.save("images/clock_new.png")

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

    def check_auto_backup(self):
        """Check if we need to create an automatic backup"""
        backup = BackupSystem(self.root)
        backup.auto_backup()


root = Tk()
obj = LoginWindow(root)
root.mainloop()