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
INSERT INTO "audit_log" VALUES(6,'2025-05-06 17:37:05',NULL,NULL,'LOGIN_FAILED','employee',NULL,NULL,'{"email": "khadija@gmail.com"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(7,'2025-05-06 17:37:13','khadija@gmail.com',NULL,'LOGIN','employee','1',NULL,'{"email": "khadija@gmail.com"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(8,'2025-05-12 11:58:54',NULL,NULL,'CREATE','course','Data Science',NULL,'{"name": "Data Science", "duration": "4 Years", "charges": "800000", "description": "Data Science Course Details:\n- Duration: 4 Years\n- Fees: 800000\n\nProgram Overview:\nOur Data Science course provides comprehensive education through a structured 4 Years curriculum designed for optimal learning outcomes.\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(9,'2025-05-12 11:59:07',NULL,NULL,'CREATE','course','Computer Science',NULL,'{"name": "Computer Science", "duration": "4 Years", "charges": "800000", "description": "Course: Computer Science\nDuration: 4 Years\nFees: 800000\n\nDescription:\nThis program offers in-depth training in Computer Science over 4 Years. Students will gain both theoretical knowledge and practical skills applicable in real-world scenarios.\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(10,'2025-05-12 11:59:20',NULL,NULL,'CREATE','course','Software Engineering',NULL,'{"name": "Software Engineering", "duration": "4 Years", "charges": "800000", "description": "Course: Software Engineering\nDuration: 4 Years\nFees: 800000\n\nDescription:\nThis program offers in-depth training in Software Engineering over 4 Years. Students will gain both theoretical knowledge and practical skills applicable in real-world scenarios.\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(11,'2025-05-12 11:59:47',NULL,NULL,'CREATE','course','Artificial Intelligence',NULL,'{"name": "Artificial Intelligence", "duration": "2 Years", "charges": "400000", "description": "Course: Artificial Intelligence\nDuration: 2 Years\nFees: 400000\n\nDescription:\nThis program offers in-depth training in Artificial Intelligence over 2 Years. Students will gain both theoretical knowledge and practical skills applicable in real-world scenarios.\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(12,'2025-05-12 12:01:36',NULL,NULL,'CREATE','student','1002',NULL,NULL,'192.168.18.18');
INSERT INTO "audit_log" VALUES(13,'2025-05-12 12:01:59',NULL,NULL,'CREATE','result','1002-Data Science',NULL,'{"enroll_id": 2, "marks_ob": "993", "full_marks": "1000", "per": "99.3"}','192.168.18.18');
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
INSERT INTO "course" VALUES(2,'Data Science','4 Years','800000','Data Science Course Details:
- Duration: 4 Years
- Fees: 800000

Program Overview:
Our Data Science course provides comprehensive education through a structured 4 Years curriculum designed for optimal learning outcomes.
');
INSERT INTO "course" VALUES(3,'Computer Science','4 Years','800000','Course: Computer Science
Duration: 4 Years
Fees: 800000

Description:
This program offers in-depth training in Computer Science over 4 Years. Students will gain both theoretical knowledge and practical skills applicable in real-world scenarios.
');
INSERT INTO "course" VALUES(4,'Software Engineering','4 Years','800000','Course: Software Engineering
Duration: 4 Years
Fees: 800000

Description:
This program offers in-depth training in Software Engineering over 4 Years. Students will gain both theoretical knowledge and practical skills applicable in real-world scenarios.
');
INSERT INTO "course" VALUES(5,'Artificial Intelligence','2 Years','400000','Course: Artificial Intelligence
Duration: 2 Years
Fees: 400000

Description:
This program offers in-depth training in Artificial Intelligence over 2 Years. Students will gain both theoretical knowledge and practical skills applicable in real-world scenarios.
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
INSERT INTO "enrollment" VALUES(2,1002,2,'2025-05-12');
INSERT INTO "enrollment" VALUES(3,1002,3,'2025-05-12');
CREATE TABLE result (
      rid         INTEGER PRIMARY KEY AUTOINCREMENT,
      enroll_id   INTEGER NOT NULL,
      marks_ob    INTEGER NOT NULL,
      full_marks  INTEGER NOT NULL,
      per         REAL NOT NULL,
      FOREIGN KEY(enroll_id) REFERENCES enrollment(enroll_id) ON DELETE CASCADE
    );
INSERT INTO "result" VALUES(1,1,998,1000,99.8);
INSERT INTO "result" VALUES(2,2,993,1000,99.3);
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
INSERT INTO "student" VALUES(1002,'Khadija Hanif','khadija1234@gmail.com','Female','25-04-20006','031386375892','24-07-2024','','Punjab','Sheikhupura','39360','357 Canal View Park, Housing Colony, Sheikhupura
',NULL);
CREATE INDEX idx_students_by_employee ON student(employee_id);
CREATE INDEX idx_enroll_student ON enrollment(student_roll);
CREATE INDEX idx_enroll_course  ON enrollment(course_id);
CREATE INDEX idx_result_enroll ON result(enroll_id);
CREATE INDEX idx_audit_table ON audit_log(table_affected);
CREATE INDEX idx_audit_user  ON audit_log(performed_by_eid);
DELETE FROM "sqlite_sequence";
INSERT INTO "sqlite_sequence" VALUES('employee',1);
INSERT INTO "sqlite_sequence" VALUES('audit_log',13);
INSERT INTO "sqlite_sequence" VALUES('course',5);
INSERT INTO "sqlite_sequence" VALUES('enrollment',3);
INSERT INTO "sqlite_sequence" VALUES('student',1002);
INSERT INTO "sqlite_sequence" VALUES('result',2);
COMMIT;
