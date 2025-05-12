BEGIN TRANSACTION;
CREATE TABLE audit_log(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        timestamp DATETIME DEFAULT CURRENT_TIMESTAMP,
        user_email TEXT,
        action_type TEXT,
        table_affected TEXT,
        record_id TEXT,
        old_values TEXT,
        new_values TEXT,
        ip_address TEXT DEFAULT 'N/A'
      );
CREATE TABLE course(
        cid INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT NOT NULL,
        duration TEXT NOT NULL,
        charges TEXT NOT NULL,
        description TEXT
      );
CREATE TABLE employee(
        eid INTEGER PRIMARY KEY AUTOINCREMENT,
        f_name TEXT NOT NULL,
        l_name TEXT NOT NULL,
        contact TEXT,
        email TEXT NOT NULL UNIQUE,
        password TEXT NOT NULL
      );
CREATE TABLE enrollment(
        enroll_id INTEGER PRIMARY KEY AUTOINCREMENT,
        student_roll INTEGER NOT NULL,
        course_id INTEGER NOT NULL,
        enrollment_date TEXT DEFAULT (date('now')),
        FOREIGN KEY(student_roll) REFERENCES student(roll) ON DELETE CASCADE,
        FOREIGN KEY(course_id) REFERENCES course(cid) ON DELETE CASCADE
      );
CREATE TABLE result(
        rid INTEGER PRIMARY KEY AUTOINCREMENT,
        enroll_id INTEGER NOT NULL,
        marks_ob INTEGER NOT NULL,
        full_marks INTEGER NOT NULL,
        per REAL GENERATED ALWAYS AS (marks_ob * 1.0 / full_marks * 100) VIRTUAL,
        FOREIGN KEY(enroll_id) REFERENCES enrollment(enroll_id) ON DELETE CASCADE
      );
CREATE TABLE student(
        roll INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT NOT NULL,
        email TEXT NOT NULL UNIQUE,
        gender TEXT,
        dob TEXT,
        contact TEXT,
        admission TEXT,
        course TEXT,
        state TEXT,
        city TEXT,
        pin TEXT,
        address TEXT,
        employee_id INTEGER,
        FOREIGN KEY(employee_id) REFERENCES employee(eid) ON DELETE SET NULL
      );
CREATE INDEX idx_students_by_employee ON student(employee_id);
CREATE INDEX idx_audit_table ON audit_log(table_affected);
DELETE FROM "sqlite_sequence";
COMMIT;
