BEGIN TRANSACTION;
CREATE TABLE audit_log(
        id             INTEGER PRIMARY KEY AUTOINCREMENT,
        timestamp      DATETIME DEFAULT CURRENT_TIMESTAMP,
        user_email     TEXT,
        action_type    TEXT,
        table_affected TEXT,
        record_id      TEXT,
        old_values     TEXT,
        new_values     TEXT,
        ip_address     TEXT    DEFAULT 'N/A'
      );
INSERT INTO "audit_log" VALUES(1,'2025-05-04 09:41:53',NULL,'CREATE','course','Python',NULL,'{"name": "Python", "duration": "6 Months", "charges": "50000", "description": "Python Course Details:\n- Duration: 6 Months\n- Fees: 50000\n\nProgram Overview:\nOur Python course provides comprehensive education through a structured 6 Months curriculum designed for optimal learning outcomes.\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(2,'2025-05-04 09:43:08',NULL,'CREATE','student','1001',NULL,NULL,'192.168.18.18');
INSERT INTO "audit_log" VALUES(3,'2025-05-04 09:43:19',NULL,'CREATE','result','1001-Python',NULL,'{"enroll_id": 1, "marks_ob": "998", "full_marks": "1000", "per": "99.8"}','192.168.18.18');
CREATE TABLE course(
        cid INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT        NOT NULL,
        duration TEXT    NOT NULL,
        charges TEXT     NOT NULL,
        description TEXT
      );
INSERT INTO "course" VALUES(1,'Python','6 Months','50000','Python Course Details:
- Duration: 6 Months
- Fees: 50000

Program Overview:
Our Python course provides comprehensive education through a structured 6 Months curriculum designed for optimal learning outcomes.
');
CREATE TABLE employee(
        eid       INTEGER PRIMARY KEY AUTOINCREMENT,
        f_name    TEXT    NOT NULL,
        l_name    TEXT    NOT NULL,
        contact   TEXT,
        email     TEXT    NOT NULL UNIQUE,
        question TEXT NOT NULL,
        answer TEXT NOT NULL,
        password  TEXT    NOT NULL
      );
CREATE TABLE enrollment(
        enroll_id       INTEGER PRIMARY KEY AUTOINCREMENT,
        student_roll    INTEGER NOT NULL,
        course_id       INTEGER NOT NULL,
        enrollment_date TEXT    DEFAULT (date('now')),
        FOREIGN KEY(student_roll) REFERENCES student(roll) ON DELETE CASCADE,
        FOREIGN KEY(course_id)    REFERENCES course(cid)  ON DELETE CASCADE
      );
INSERT INTO "enrollment" VALUES(1,1001,1,'2025-05-04');
CREATE TABLE result(
        rid         INTEGER PRIMARY KEY AUTOINCREMENT,
        enroll_id   INTEGER NOT NULL,
        marks_ob    INTEGER NOT NULL,
        full_marks  INTEGER NOT NULL,
        per         REAL NOT NULL,
        FOREIGN KEY(enroll_id) REFERENCES enrollment(enroll_id) ON DELETE CASCADE
      );
INSERT INTO "result" VALUES(1,1,998,1000,99.8);
CREATE TABLE student(
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
INSERT INTO "student" VALUES(1001,'Yahya Hanif','yahya123@example.com','Male','24-02-2001','03282647627','12-02-2023','','Punjab','Lahore','54000','81 D-Block, Allama Iqbal Town, Lahore
',NULL);
CREATE INDEX idx_students_by_employee ON student(employee_id);
CREATE INDEX idx_audit_table ON audit_log(table_affected);
DELETE FROM "sqlite_sequence";
INSERT INTO "sqlite_sequence" VALUES('course',1);
INSERT INTO "sqlite_sequence" VALUES('audit_log',3);
INSERT INTO "sqlite_sequence" VALUES('enrollment',1);
INSERT INTO "sqlite_sequence" VALUES('student',1001);
INSERT INTO "sqlite_sequence" VALUES('result',1);
COMMIT;
