import os
from tkinter import *
from tkinter import ttk, messagebox
from PIL import Image, ImageTk
import sqlite3
from audit_logger import audit_logger

class Register:
    def __init__(self, root):
        self.root = root
        self.root.title("Registeration Window")
        self.root.geometry("1350x700+0+0")
        self.root.config(bg="white")

        # =========Bg Image=========
        self.bg = ImageTk.PhotoImage(file="images/b2.jpg")
        bg = Label(self.root, image=self.bg).place(x=250, y=0, relwidth=1, relheight=1)

        # =========Left Image=========
        self.left = ImageTk.PhotoImage(file="images/side.png")
        bg = Label(self.root, image=self.left).place(x=80, y=100, width=400, height=500)

        # ========Registeration frame===========
        Frame1 = Frame(self.root, bg="white")
        Frame1.place(x=480, y=100, width=700, height=500)

        # ===========title========
        title = Label(Frame1, text="REGISTER HERE", font=("times new roman", 20, "bold"), bg="white", fg="green").place(x=50, y=30)

        # ============Row 1=============
        # ===========first name========
        f_name = Label(Frame1, text="First Name", font=("times new roman", 15, "bold"), bg="white", fg="gray").place(x=50, y=100)
        self.txt_fname = Entry(Frame1, font=("times new roman", 15), bg="lightgray")
        self.txt_fname.place(x=50, y=130, width=250)

        # ===========last name========
        l_name = Label(Frame1, text="Last Name", font=("times new roman", 15, "bold"), bg="white", fg="gray").place(x=370, y=100)
        self.txt_l_name = Entry(Frame1, font=("times new roman", 15), bg="lightgray")
        self.txt_l_name.place(x=370, y=130, width=250)

        # ===========contact========
        contact = Label(Frame1, text="Contact No.", font=("times new roman", 15, "bold"), bg="white", fg="gray").place(x=50, y=170)
        self.txt_contact = Entry(Frame1, font=("times new roman", 15), bg="lightgray")
        self.txt_contact.place(x=50, y=200, width=250)

        # ===========Email========
        email = Label(Frame1, text="Email", font=("times new roman", 15, "bold"), bg="white", fg="gray").place(x=370, y=170)
        self.txt_email = Entry(Frame1, font=("times new roman", 15), bg="lightgray")
        self.txt_email.place(x=370, y=200, width=250)

        # ===========security question========
        question = Label(Frame1, text="Security Question", font=("times new roman", 15, "bold"), bg="white", fg="gray").place(x=50, y=240)
        self.cmb_quest = ttk.Combobox(Frame1, font=("times new roman", 15), state="readonly", justify="center")

        self.cmb_quest['values'] = ("Select", "Your Car Plate", "Your First School", "Your Bestfriend Name", "Your Birth Place", "Your Pet Name")
        self.cmb_quest.place(x=50, y=270, width=250)
        self.cmb_quest.current(0)

        # ===========answer========
        answer = Label(Frame1, text="Answer", font=("times new roman", 15, "bold"), bg="white", fg="gray").place(x=370, y=240)
        self.txt_answer = Entry(Frame1, font=("times new roman", 15), bg="lightgray")
        self.txt_answer.place(x=370, y=270, width=250)

        # ===========password========
        password = Label(Frame1, text="Password", font=("times new roman", 15, "bold"), bg="white", fg="gray").place(x=50, y=310)
        self.txt_password = Entry(Frame1, font=("times new roman", 15), bg="lightgray")
        self.txt_password.place(x=50, y=340, width=250)

        # ===========confirm password========
        cpassword = Label(Frame1, text="Confirm Password", font=("times new roman", 15, "bold"), bg="white", fg="gray").place(x=370, y=310)
        self.txt_cpassword = Entry(Frame1, font=("times new roman", 15), bg="lightgray")
        self.txt_cpassword.place(x=370, y=340, width=250)

        # ==========checkbox for terms========
        self.var_chk = IntVar()
        chk = Checkbutton(Frame1, text="I Agree to Terms & Condition", variable=self.var_chk, onvalue=1, offvalue=0, bg="white", font=("times new roman", 12)).place(x=50, y=380)

        # ===========Buttons=============
        self.btn_img = ImageTk.PhotoImage(file="images/register.png")
        btn_register = Button(Frame1, image=self.btn_img, bd=0, cursor="hand2", command=self.register_data).place(x=50, y=420)

        btn_login = Button(self.root, text="Sign In", font=("times new roman", 20), command=self.login_window, bd=0, cursor="hand2").place(x=195, y=460, width=180)

    def login_window(self):
        self.root.destroy()
        os.system("python login.py")

    def clear(self):
        self.txt_fname.delete(0, END)
        self.txt_l_name.delete(0, END)
        self.txt_email.delete(0, END)
        self.txt_answer.delete(0, END)
        self.txt_contact.delete(0, END)
        self.txt_password.delete(0, END)
        self.txt_cpassword.delete(0, END)
        self.cmb_quest.current(0)

    def register_data(self):
        if self.txt_fname.get() == "" or self.txt_contact.get() == "" or self.txt_email.get() == "" or self.cmb_quest.get() == "Select" or self.txt_answer.get() == "" or self.txt_password.get() == "" or self.txt_cpassword.get() == "":
            messagebox.showerror("Error", "All fields are required", parent=self.root)
        elif self.txt_password.get() != self.txt_cpassword.get():
            messagebox.showerror("Error", "Password and Confirm Password should be same.")
        elif self.var_chk.get() == 0:
            messagebox.showerror("Error", "Please agree to terms & Conditions.")
        else:
            try:
                con = sqlite3.connect(database="rms.db")
                cur = con.cursor()
                cur.execute("select * from employee where email=?", (self.txt_email.get(),))
                row = cur.fetchone()
                if row != None:
                    messagebox.showerror("Error", "User already exists. Please try with another email")
                else:
                    employee_data = {
                        "f_name": self.txt_fname.get(),
                        "l_name": self.txt_l_name.get(),
                        "contact": self.txt_contact.get(),
                        "email": self.txt_email.get(),
                        "question": self.cmb_quest.get(),
                        "answer": self.txt_answer.get()
                    }
                    
                    cur.execute("insert into employee (f_name,l_name, contact,email,question,answer,password) values(?,?,?,?,?,?,?)",
                                (
                                    employee_data["f_name"],
                                    employee_data["l_name"],
                                    employee_data["contact"],
                                    employee_data["email"],
                                    employee_data["question"],
                                    employee_data["answer"],
                                    self.txt_password.get()
                                ))

                    con.commit()
                    
                    # Log the registration
                    audit_logger.log_action(
                        "REGISTER", 
                        "employee", 
                        self.txt_email.get(),
                        None,
                        employee_data
                    )
                    
                    messagebox.showinfo("Success", "Registered successfully.")
                    self.clear()
                    self.login_window()

            except Exception as es:
                messagebox.showerror("Error", f"Error due to {str(es)}", parent=self.root)

root = Tk()
obj = Register(root)
root.mainloop()
