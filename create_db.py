import sqlite3

def create_db():
    # Connect (or create) the SQLite database file
    con = sqlite3.connect(database="rms.db")
    cur = con.cursor()

    # Temporarily disable foreign keys while dropping
    cur.execute("PRAGMA foreign_keys = OFF;")

    # Drop tables if they exist
    cur.execute("DROP TABLE IF EXISTS result;")
    cur.execute("DROP TABLE IF EXISTS enrollment;")
    cur.execute("DROP TABLE IF EXISTS student;")
    cur.execute("DROP TABLE IF EXISTS course;")
    cur.execute("DROP TABLE IF EXISTS employee;")
    cur.execute("DROP TABLE IF EXISTS audit_log;")

    # Re-enable foreign keys
    cur.execute("PRAGMA foreign_keys = ON;")

    # 1) Courses
    cur.execute("""
    CREATE TABLE course (
      cid         INTEGER PRIMARY KEY AUTOINCREMENT,
      name        TEXT    NOT NULL,
      duration    TEXT    NOT NULL,
      charges     TEXT    NOT NULL,
      description TEXT
    );
    """)

   

    # 2) Employees (system users)
    cur.execute("""
    CREATE TABLE employee (
      eid       INTEGER PRIMARY KEY AUTOINCREMENT,
      f_name    TEXT    NOT NULL,
      l_name    TEXT    NOT NULL,
      contact   TEXT,
      email     TEXT    NOT NULL UNIQUE,
      question  TEXT    NOT NULL,
      answer    TEXT    NOT NULL,
      password  TEXT    NOT NULL
    );
    """)

    # 3) Students
    cur.execute("""
    CREATE TABLE student (
      roll         INTEGER PRIMARY KEY AUTOINCREMENT,
      name         TEXT    NOT NULL,
      email        TEXT    NOT NULL UNIQUE,
      gender       TEXT,
      dob          TEXT,
      contact      TEXT,
      admission    TEXT,
      course       TEXT,
      state        TEXT,
      city         TEXT,
      pin          TEXT,
      address      TEXT,
      employee_id  INTEGER,
      FOREIGN KEY(employee_id) REFERENCES employee(eid) ON DELETE SET NULL
    );
    """)
    # Index for student->employee lookups
    cur.execute("CREATE INDEX IF NOT EXISTS idx_students_by_employee ON student(employee_id);")

    # 4) Enrollments (junction student ↔ course)
    cur.execute("""
    CREATE TABLE enrollment (
      enroll_id       INTEGER PRIMARY KEY AUTOINCREMENT,
      student_roll    INTEGER NOT NULL,
      course_id       INTEGER NOT NULL,
      enrollment_date TEXT    NOT NULL DEFAULT (date('now')),
      FOREIGN KEY(student_roll) REFERENCES student(roll)   ON DELETE CASCADE,
      FOREIGN KEY(course_id)    REFERENCES course(cid)    ON DELETE CASCADE
    );
    """)
    cur.execute("CREATE INDEX IF NOT EXISTS idx_enroll_student ON enrollment(student_roll);")
    cur.execute("CREATE INDEX IF NOT EXISTS idx_enroll_course  ON enrollment(course_id);")

    # 5) Results 
    cur.execute("""
    CREATE TABLE result (
      rid         INTEGER PRIMARY KEY AUTOINCREMENT,
      enroll_id   INTEGER NOT NULL,
      marks_ob    INTEGER NOT NULL,
      full_marks  INTEGER NOT NULL,
      per         REAL NOT NULL,
      FOREIGN KEY(enroll_id) REFERENCES enrollment(enroll_id) ON DELETE CASCADE
    );
    """)
    cur.execute("CREATE INDEX IF NOT EXISTS idx_result_enroll ON result(enroll_id);")

    # 6) Audit log, tied to employee
    cur.execute("""
    CREATE TABLE audit_log (
      id               INTEGER PRIMARY KEY AUTOINCREMENT,
      timestamp        TEXT    NOT NULL DEFAULT (datetime('now')),
      user_email       TEXT,
      performed_by_eid INTEGER,
      action_type      TEXT,
      table_affected   TEXT,
      record_id        TEXT,
      old_values       JSON,
      new_values       JSON,
      ip_address       TEXT    NOT NULL DEFAULT 'N/A',
      FOREIGN KEY(performed_by_eid) REFERENCES employee(eid) ON DELETE SET NULL
    );
    """)
    cur.execute("CREATE INDEX IF NOT EXISTS idx_audit_table ON audit_log(table_affected);")
    cur.execute("CREATE INDEX IF NOT EXISTS idx_audit_user  ON audit_log(performed_by_eid);")

    # Commit and close
    con.commit()
    con.close()

if __name__ == "__main__":
    create_db()
