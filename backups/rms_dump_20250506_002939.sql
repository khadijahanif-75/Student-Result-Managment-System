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
CREATE TABLE course (
      cid         INTEGER PRIMARY KEY AUTOINCREMENT,
      name        TEXT    NOT NULL,
      duration    TEXT    NOT NULL,
      charges     TEXT    NOT NULL,
      description TEXT
    );
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
CREATE TABLE result (
      rid         INTEGER PRIMARY KEY AUTOINCREMENT,
      enroll_id   INTEGER NOT NULL,
      marks_ob    INTEGER NOT NULL,
      full_marks  INTEGER NOT NULL,
      per         REAL NOT NULL,
      FOREIGN KEY(enroll_id) REFERENCES enrollment(enroll_id) ON DELETE CASCADE
    );
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
CREATE INDEX idx_students_by_employee ON student(employee_id);
CREATE INDEX idx_enroll_student ON enrollment(student_roll);
CREATE INDEX idx_enroll_course  ON enrollment(course_id);
CREATE INDEX idx_result_enroll ON result(enroll_id);
CREATE INDEX idx_audit_table ON audit_log(table_affected);
CREATE INDEX idx_audit_user  ON audit_log(performed_by_eid);
DELETE FROM "sqlite_sequence";
INSERT INTO "sqlite_sequence" VALUES('employee',1);
INSERT INTO "sqlite_sequence" VALUES('audit_log',1);
COMMIT;
