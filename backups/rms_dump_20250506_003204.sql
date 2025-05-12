BEGIN TRANSACTION;
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
INSERT INTO "audit_log" VALUES(1,'2025-05-05 19:29:36',NULL,NULL,'REGISTER','employee','khadija@gmail.com',NULL,'{"f_name": "Khadija", "l_name": "Hanif", "contact": "038152637273", "email": "khadija@gmail.com", "question": "Your Car Plate", "answer": "728"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(2,'2025-05-05 19:29:57','khadija@gmail.com',NULL,'LOGIN','employee','1',NULL,'{"email": "khadija@gmail.com"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(3,'2025-05-05 19:30:16',NULL,NULL,'CREATE','course','Python',NULL,'{"name": "Python", "duration": "6 months", "charges": "80000", "description": "Python Course Details:\n- Duration: 6 months\n- Fees: 80000\n\nProgram Overview:\nOur Python course provides comprehensive education through a structured 6 months curriculum designed for optimal learning outcomes.\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(4,'2025-05-05 19:31:38',NULL,NULL,'CREATE','student','1001',NULL,NULL,'192.168.18.18');
INSERT INTO "audit_log" VALUES(5,'2025-05-05 19:31:49',NULL,NULL,'CREATE','result','1001-Python',NULL,'{"enroll_id": 1, "marks_ob": "998", "full_marks": "1000", "per": "99.8"}','192.168.18.18');
CREATE TABLE course (
      cid         INTEGER PRIMARY KEY AUTOINCREMENT,
      name        TEXT    NOT NULL,
      duration    TEXT    NOT NULL,
      charges     TEXT    NOT NULL,
      description TEXT
    );
INSERT INTO "course" VALUES(1,'Python','6 months','80000','Python Course Details:
- Duration: 6 months
- Fees: 80000

Program Overview:
Our Python course provides comprehensive education through a structured 6 months curriculum designed for optimal learning outcomes.
');
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
INSERT INTO "employee" VALUES(1,'Khadija','Hanif','038152637273','khadija@gmail.com','Your Car Plate','728','khad123');
CREATE TABLE enrollment (
      enroll_id       INTEGER PRIMARY KEY AUTOINCREMENT,
      student_roll    INTEGER NOT NULL,
      course_id       INTEGER NOT NULL,
      enrollment_date TEXT    NOT NULL DEFAULT (date('now')),
      FOREIGN KEY(student_roll) REFERENCES student(roll)   ON DELETE CASCADE,
      FOREIGN KEY(course_id)    REFERENCES course(cid)    ON DELETE CASCADE
    );
INSERT INTO "enrollment" VALUES(1,1001,1,'2025-05-05');
CREATE TABLE result (
      rid         INTEGER PRIMARY KEY AUTOINCREMENT,
      enroll_id   INTEGER NOT NULL,
      marks_ob    INTEGER NOT NULL,
      full_marks  INTEGER NOT NULL,
      per         REAL NOT NULL,
      FOREIGN KEY(enroll_id) REFERENCES enrollment(enroll_id) ON DELETE CASCADE
    );
INSERT INTO "result" VALUES(1,1,998,1000,99.8);
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
INSERT INTO "student" VALUES(1001,'Yahya Hanif','yahya321@example.com','Male','24-02-2002','018863656578','15-05-2023','','Punjab','Lahore','54000','876 D-lock, Wapda Town, Phase 2, Lahore
',NULL);
CREATE INDEX idx_students_by_employee ON student(employee_id);
CREATE INDEX idx_enroll_student ON enrollment(student_roll);
CREATE INDEX idx_enroll_course  ON enrollment(course_id);
CREATE INDEX idx_result_enroll ON result(enroll_id);
CREATE INDEX idx_audit_table ON audit_log(table_affected);
CREATE INDEX idx_audit_user  ON audit_log(performed_by_eid);
DELETE FROM "sqlite_sequence";
INSERT INTO "sqlite_sequence" VALUES('employee',1);
INSERT INTO "sqlite_sequence" VALUES('audit_log',5);
INSERT INTO "sqlite_sequence" VALUES('course',1);
INSERT INTO "sqlite_sequence" VALUES('enrollment',1);
INSERT INTO "sqlite_sequence" VALUES('student',1001);
INSERT INTO "sqlite_sequence" VALUES('result',1);
COMMIT;
