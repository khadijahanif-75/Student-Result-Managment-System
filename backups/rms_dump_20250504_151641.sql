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
INSERT INTO "audit_log" VALUES(1,'2025-05-04 10:14:13',NULL,NULL,'REGISTER','employee','khad321@gmail.com',NULL,'{"f_name": "Khadija", "l_name": "Hanif", "contact": "83896278390", "email": "khad321@gmail.com", "question": "Your Car Plate", "answer": "728"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(2,'2025-05-04 10:14:57','khad321@gmail.com',NULL,'LOGIN','employee','1',NULL,'{"email": "khad321@gmail.com"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(3,'2025-05-04 10:15:12',NULL,NULL,'CREATE','course','Python',NULL,'{"name": "Python", "duration": "6 Months", "charges": "50000", "description": "Course: Python\nDuration: 6 Months\nFees: 50000\n\nDescription:\nThis program offers in-depth training in Python over 6 Months. Students will gain both theoretical knowledge and practical skills applicable in real-world scenarios.\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(4,'2025-05-04 10:16:16',NULL,NULL,'CREATE','student','1001',NULL,NULL,'192.168.18.18');
INSERT INTO "audit_log" VALUES(5,'2025-05-04 10:16:27',NULL,NULL,'CREATE','result','1001-Python',NULL,'{"enroll_id": 1, "marks_ob": "998", "full_marks": "1000", "per": "99.8"}','192.168.18.18');
CREATE TABLE course (
      cid         INTEGER PRIMARY KEY AUTOINCREMENT,
      name        TEXT    NOT NULL,
      duration    TEXT    NOT NULL,
      charges     TEXT    NOT NULL,
      description TEXT
    );
INSERT INTO "course" VALUES(1,'Python','6 Months','50000','Course: Python
Duration: 6 Months
Fees: 50000

Description:
This program offers in-depth training in Python over 6 Months. Students will gain both theoretical knowledge and practical skills applicable in real-world scenarios.
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
INSERT INTO "employee" VALUES(1,'Khadija','Hanif','83896278390','khad321@gmail.com','Your Car Plate','728','khad123');
CREATE TABLE enrollment (
      enroll_id       INTEGER PRIMARY KEY AUTOINCREMENT,
      student_roll    INTEGER NOT NULL,
      course_id       INTEGER NOT NULL,
      enrollment_date TEXT    NOT NULL DEFAULT (date('now')),
      FOREIGN KEY(student_roll) REFERENCES student(roll)   ON DELETE CASCADE,
      FOREIGN KEY(course_id)    REFERENCES course(cid)    ON DELETE CASCADE
    );
INSERT INTO "enrollment" VALUES(1,1001,1,'2025-05-04');
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
INSERT INTO "student" VALUES(1001,'Yahya Hanif','yahya234@example.com','Male','24-02-2002','2367238901','12-04-2023','','Punjab','Lahore','54000','80 B-Block, Wapda Town, Lahore
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
