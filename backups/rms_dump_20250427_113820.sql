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
INSERT INTO "audit_log" VALUES(1,'2025-04-26 08:17:45',NULL,'LOGIN_FAILED','employee',NULL,NULL,'{"email": "khadija@gmail.com"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(2,'2025-04-26 08:17:49',NULL,'LOGIN_FAILED','employee',NULL,NULL,'{"email": "khadija@gmail.com"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(3,'2025-04-26 08:18:08',NULL,'LOGIN_FAILED','employee',NULL,NULL,'{"email": "hafsa@gmail.com"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(4,'2025-04-26 08:18:21','khadija@gmail.com','LOGIN','employee','1',NULL,'{"email": "khadija@gmail.com"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(5,'2025-04-26 08:18:38',NULL,'UPDATE','course','Java','{"name": "Java", "duration": "6 Months", "charges": "30000", "description": "abc\n"}','{"duration": "6 Months", "charges": "30000", "description": "A programming language\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(6,'2025-04-26 16:50:15',NULL,'UPDATE','course','Applied Statistics','{"name": "Applied Statistics", "duration": "6 Months", "charges": "40000", "description": "abc\n"}','{"duration": "6 Months", "charges": "40000", "description": "A comprehensive study of advanced topics, statistics, and applied delivered over 6 Months.\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(7,'2025-04-26 16:50:47',NULL,'UPDATE','course','Database','{"name": "Database", "duration": "6 Months", "charges": "40000", "description": "abc\n"}','{"duration": "6 Months", "charges": "40000", "description": "Students will master practical applications, database, and core concepts in this 6 Months Database program.\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(8,'2025-04-26 17:08:04',NULL,'UPDATE','course','Data Warehousing','{"name": "Data Warehousing", "duration": "6 Months", "charges": "40000", "description": "abc\n"}','{"duration": "6 Months", "charges": "40000", "description": "This 6 Months program in Data Warehousing covers fundamental concepts and advanced topics.\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(9,'2025-04-26 17:08:16',NULL,'UPDATE','course','Data Visualization','{"name": "Data Visualization", "duration": "6 Months", "charges": "40000", "description": "abc\n"}','{"duration": "6 Months", "charges": "40000", "description": "The Data Visualization course (6 Months) offers hands-on training and theoretical foundations.\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(10,'2025-04-26 17:08:27',NULL,'UPDATE','course','Java','{"name": "Java", "duration": "6 Months", "charges": "30000", "description": "A programming language\n"}','{"duration": "6 Months", "charges": "30000", "description": "Enroll in our Java program (6 Months) for professional development. Fees: 30000.\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(11,'2025-04-26 17:08:38',NULL,'UPDATE','course','Big Data','{"name": "Big Data", "duration": "6 Months", "charges": "40000", "description": "abc\n"}','{"duration": "6 Months", "charges": "40000", "description": "The Big Data course (6 Months) offers hands-on training and theoretical foundations.\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(12,'2025-04-26 17:08:48',NULL,'UPDATE','course','Functional English','{"name": "Functional English", "duration": "6 Months", "charges": "40000", "description": "abc\n"}','{"duration": "6 Months", "charges": "40000", "description": "The Functional English course (6 Months) offers hands-on training and theoretical foundations.\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(13,'2025-04-26 17:09:03',NULL,'UPDATE','course','Calculus','{"name": "Calculus", "duration": "6 Months", "charges": "40000", "description": "abc\n"}','{"duration": "12 Months", "charges": "60000", "description": "The Calculus course (12 Months) offers hands-on training and theoretical foundations.\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(14,'2025-04-26 17:11:26',NULL,'UPDATE','course','Calculus','{"name": "Calculus", "duration": "12 Months", "charges": "60000", "description": "The Calculus course (12 Months) offers hands-on training and theoretical foundations.\n"}','{"duration": "12 Months", "charges": "60000", "description": "Course: Calculus\nDuration: 12 Months\nFees: 60000\n\nDescription:\nThis program offers in-depth training in Calculus over 12 Months. Students will gain both theoretical knowledge and practical skills applicable in real-world scenarios.\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(15,'2025-04-26 17:49:25',NULL,'UPDATE','student','1003',NULL,'{"name": "Hafsa Hanif", "email": "hafsa@example.com", "gender": "Female", "dob": "13-01-2003", "contact": "+9239753772", "admission": "01-01-2024", "course": "Data Warehousing", "state": "Punjab", "city": "Lahore", "pin": "54000", "address": "xyz\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(16,'2025-04-26 17:49:28',NULL,'CREATE','student','1003',NULL,'{"roll": "1003", "name": "Hafsa Hanif", "email": "hafsa@example.com", "gender": "Female", "dob": "13-01-2003", "contact": "+9239753772", "admission": "01-01-2024", "course": "Data Warehousing", "state": "Punjab", "city": "Lahore", "pin": "54000", "address": "xyz\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(17,'2025-04-26 17:49:40',NULL,'UPDATE','student','1001','{"name": "Khadija Hanif", "email": "khad@example.com", "gender": "Female", "dob": "25-04-2006", "contact": "92308656772", "admission": "01-01-2024", "course": "Python", "state": "Punjab", "city": "Lahore", "pin": "54000", "address": "xyz\n\n"}','{"name": "Khadija Hanif", "email": "khadija@example.com", "gender": "Female", "dob": "25-04-2006", "contact": "92308656772", "admission": "01-01-2024", "course": "Python", "state": "Punjab", "city": "Lahore", "pin": "54000", "address": "xyz\n\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(18,'2025-04-26 18:30:22',NULL,'CREATE','course','Machine Learning',NULL,'{"name": "Machine Learning", "duration": "1.5 Years", "charges": "100000", "description": "Machine Learning Course Details:\n- Duration: 1.5 Years\n- Fees: 100000\n\nProgram Overview:\nOur Machine Learning course provides comprehensive education through a structured 1.5 Years curriculum designed for optimal learning outcomes.\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(19,'2025-04-26 18:30:54',NULL,'CREATE','course','Bussiness Intelligence',NULL,'{"name": "Bussiness Intelligence", "duration": "9 Months", "charges": "70000", "description": "Bussiness Intelligence Course Details:\n- Duration: 9 Months\n- Fees: 70000\n\nProgram Overview:\nOur Bussiness Intelligence course provides comprehensive education through a structured 9 Months curriculum designed for optimal learning outcomes.\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(20,'2025-04-26 18:31:04',NULL,'UPDATE','course','Java','{"name": "Java", "duration": "6 Months", "charges": "30000", "description": "Enroll in our Java program (6 Months) for professional development. Fees: 30000.\n"}','{"duration": "6 Months", "charges": "30000", "description": "Java Course Details:\n- Duration: 6 Months\n- Fees: 30000\n\nProgram Overview:\nOur Java course provides comprehensive education through a structured 6 Months curriculum designed for optimal learning outcomes.\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(21,'2025-04-26 18:32:03',NULL,'REGISTER','employee','yahya@gmail.com',NULL,'{"f_name": "Muhammad Yahya ", "l_name": "Hanif", "contact": "03164789274", "email": "yahya@gmail.com", "question": "Your First School", "answer": "Punjab School"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(22,'2025-04-26 18:32:23','yahya@gmail.com','LOGIN','employee','3',NULL,'{"email": "yahya@gmail.com"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(23,'2025-04-26 18:35:30',NULL,'CREATE','student','1004',NULL,'{"roll": "1004", "name": "Ayesha Asif", "email": "ayesha@gmail.com", "gender": "Female", "dob": "14-02-2003", "contact": "03182649589", "admission": "02-07-2024", "course": "Computer Science", "state": "KPK", "city": "Quetta", "pin": "87800", "address": "House no.679, St.23, Gullberg, Quetta\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(24,'2025-04-26 18:38:17',NULL,'UPDATE','student','1001','{"name": "Khadija Hanif", "email": "khadija@example.com", "gender": "Female", "dob": "25-04-2006", "contact": "92308656772", "admission": "01-01-2024", "course": "Python", "state": "Punjab", "city": "Lahore", "pin": "54000", "address": "xyz\n\n\n"}','{"name": "Khadija Hanif", "email": "khadija@example.com", "gender": "Female", "dob": "25-04-2006", "contact": "92308656772", "admission": "01-01-2024", "course": "Python", "state": "Punjab", "city": "Sheikhupura", "pin": "39350", "address": "845 Canal View Park, Housing Colony, Sheikhupura\n\n\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(25,'2025-04-26 18:38:41',NULL,'UPDATE','student','1002','{"name": "Yahya Hanif", "email": "yahya@example.com", "gender": "Male", "dob": "24-02-2000", "contact": "44082367638", "admission": "01-01-2024", "course": "Java", "state": "Punjab", "city": "Lahore", "pin": "54000", "address": "abc\n"}','{"name": "Yahya Hanif", "email": "yahya@example.com", "gender": "Male", "dob": "24-02-2000", "contact": "44082367638", "admission": "01-01-2024", "course": "Java", "state": "Punjab", "city": "Lahore", "pin": "54000", "address": "240 Nishtar Block, Allama Iqbal Town, Lahore\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(26,'2025-04-26 18:38:59',NULL,'UPDATE','student','1003','{"name": "Hafsa Hanif", "email": "hafsa@example.com", "gender": "Female", "dob": "13-01-2003", "contact": "+9239753772", "admission": "01-01-2024", "course": "Data Warehousing", "state": "Punjab", "city": "Lahore", "pin": "54000", "address": "xyz\n"}','{"name": "Hafsa Hanif", "email": "hafsa@example.com", "gender": "Female", "dob": "13-01-2003", "contact": "9239753772", "admission": "01-01-2024", "course": "Data Warehousing", "state": "Punjab", "city": "Lahore", "pin": "54000", "address": "94 D-Block, Wapda Town, Lahore\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(27,'2025-04-26 18:39:15',NULL,'UPDATE','student','1003','{"name": "Hafsa Hanif", "email": "hafsa@example.com", "gender": "Female", "dob": "13-01-2003", "contact": "9239753772", "admission": "01-01-2024", "course": "Data Warehousing", "state": "Punjab", "city": "Lahore", "pin": "54000", "address": "94 D-Block, Wapda Town, Lahore\n\n"}','{"name": "Hafsa Hanif", "email": "hafsa@example.com", "gender": "Female", "dob": "13-01-2003", "contact": "9239753772", "admission": "01-01-2024", "course": "Data Warehousing", "state": "Punjab", "city": "Lahore", "pin": "54000", "address": "House no. 94, D-Block, Wapda Town, Lahore\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(28,'2025-04-26 18:44:44',NULL,'UPDATE','student','1001','{"name": "Khadija Hanif", "email": "khadija@example.com", "gender": "Female", "dob": "25-04-2006", "contact": "92308656772", "admission": "01-01-2024", "course": "Python", "state": "Punjab", "city": "Sheikhupura", "pin": "39350", "address": "845 Canal View Park, Housing Colony, Sheikhupura\n\n\n\n"}','{"name": "Khadija Hanif", "email": "khadija@example.com", "gender": "Female", "dob": "25-04-2006", "contact": "92308656772", "admission": "2024", "course": "Python", "state": "Punjab", "city": "Sheikhupura", "pin": "39350", "address": "845 Canal View Park, Housing Colony, Sheikhupura\n\n\n\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(29,'2025-04-26 18:44:52',NULL,'UPDATE','student','1003','{"name": "Hafsa Hanif", "email": "hafsa@example.com", "gender": "Female", "dob": "13-01-2003", "contact": "9239753772", "admission": "01-01-2024", "course": "Data Warehousing", "state": "Punjab", "city": "Lahore", "pin": "54000", "address": "House no. 94, D-Block, Wapda Town, Lahore\n\n"}','{"name": "Hafsa Hanif", "email": "hafsa@example.com", "gender": "Female", "dob": "13-01-2003", "contact": "9239753772", "admission": "2020", "course": "Data Warehousing", "state": "Punjab", "city": "Lahore", "pin": "54000", "address": "House no. 94, D-Block, Wapda Town, Lahore\n\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(30,'2025-04-26 18:45:01',NULL,'UPDATE','student','1002','{"name": "Yahya Hanif", "email": "yahya@example.com", "gender": "Male", "dob": "24-02-2000", "contact": "44082367638", "admission": "01-01-2024", "course": "Java", "state": "Punjab", "city": "Lahore", "pin": "54000", "address": "240 Nishtar Block, Allama Iqbal Town, Lahore\n\n"}','{"name": "Yahya Hanif", "email": "yahya@example.com", "gender": "Male", "dob": "24-02-2000", "contact": "44082367638", "admission": "2023", "course": "Java", "state": "Punjab", "city": "Lahore", "pin": "54000", "address": "240 Nishtar Block, Allama Iqbal Town, Lahore\n\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(31,'2025-04-26 18:45:17',NULL,'UPDATE','student','1004','{"name": "Ayesha Asif", "email": "ayesha@gmail.com", "gender": "Female", "dob": "14-02-2003", "contact": "03182649589", "admission": "02-07-2024", "course": "Computer Science", "state": "KPK", "city": "Quetta", "pin": "87800", "address": "House no.679, St.23, Gullberg, Quetta\n"}','{"name": "Ayesha Asif", "email": "ayesha@gmail.com", "gender": "Female", "dob": "14-02-2003", "contact": "3182649589", "admission": "2022", "course": "Computer Science", "state": "KPK", "city": "Quetta", "pin": "87800", "address": "House no.679, St.23, Gullberg, Quetta\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(32,'2025-04-26 18:47:57',NULL,'CREATE','student','1005',NULL,'{"roll": "1005", "name": "Iqra Sheikh", "email": "iqra.sheikh60@example.com", "gender": "Female", "dob": "31/01/1999", "contact": "3897580606", "admission": "2025", "course": "Database", "state": "Islamabad Capital Territory", "city": "Islamabad", "pin": "59319", "address": "39747 Johnson Expressway Suite 295, Islamabad, Islamabad Capital Territory\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(33,'2025-04-26 18:49:21',NULL,'CREATE','course','SQL',NULL,'{"name": "SQL", "duration": "2 Months", "charges": "20000", "description": "Course: SQL\nDuration: 2 Months\nFees: 20000\n\nDescription:\nThis program offers in-depth training in SQL over 2 Months. Students will gain both theoretical knowledge and practical skills applicable in real-world scenarios.\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(34,'2025-04-26 18:49:43',NULL,'CREATE','course','Artificial Intelligence',NULL,'{"name": "Artificial Intelligence", "duration": "5 Months", "charges": "70000", "description": "Course: Artificial Intelligence\nDuration: 5 Months\nFees: 70000\n\nDescription:\nThis program offers in-depth training in Artificial Intelligence over 5 Months. Students will gain both theoretical knowledge and practical skills applicable in real-world scenarios.\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(35,'2025-04-26 18:50:52',NULL,'CREATE','course','
Cloud computing',NULL,'{"name": "\nCloud computing", "duration": "7 Months", "charges": "40000", "description": "\nCloud computing Course Details:\n- Duration: 7 Months\n- Fees: 40000\n\nProgram Overview:\nOur \nCloud computing course provides comprehensive education through a structured 7 Months curriculum designed for optimal learning outcomes.\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(36,'2025-04-26 18:51:35',NULL,'CREATE','course','Information security',NULL,'{"name": "Information security", "duration": "8 Months", "charges": "70000", "description": "Information security Course Details:\n- Duration: 8 Months\n- Fees: 70000\n\nProgram Overview:\nOur Information security course provides comprehensive education through a structured 8 Months curriculum designed for optimal learning outcomes.\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(37,'2025-04-26 18:52:14',NULL,'UPDATE','course','Applied Physics','{"name": "Applied Physics", "duration": "6 Months", "charges": "30000", "description": "abc\n"}','{"duration": "6 Months", "charges": "10000", "description": "Applied Physics Course Details:\n- Duration: 6 Months\n- Fees: 10000\n\nProgram Overview:\nOur Applied Physics course provides comprehensive education through a structured 6 Months curriculum designed for optimal learning outcomes.\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(38,'2025-04-26 18:52:25',NULL,'UPDATE','course','Computer Science','{"name": "Computer Science", "duration": "6 Months", "charges": "30000", "description": "abc\n"}','{"duration": "6 Months", "charges": "300000", "description": "Course: Computer Science\nDuration: 6 Months\nFees: 300000\n\nDescription:\nThis program offers in-depth training in Computer Science over 6 Months. Students will gain both theoretical knowledge and practical skills applicable in real-world scenarios.\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(39,'2025-04-26 18:52:33',NULL,'UPDATE','course','MERN','{"name": "MERN", "duration": "6 Months", "charges": "30000", "description": "abc\n"}','{"duration": "6 Months", "charges": "30000", "description": "MERN Course Details:\n- Duration: 6 Months\n- Fees: 30000\n\nProgram Overview:\nOur MERN course provides comprehensive education through a structured 6 Months curriculum designed for optimal learning outcomes.\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(40,'2025-04-26 18:52:44',NULL,'UPDATE','course','Web Development','{"name": "Web Development", "duration": "6 Months", "charges": "30000", "description": "abc\n"}','{"duration": "6 Months", "charges": "30000", "description": "Course: Web Development\nDuration: 6 Months\nFees: 30000\n\nDescription:\nThis program offers in-depth training in Web Development over 6 Months. Students will gain both theoretical knowledge and practical skills applicable in real-world scenarios.\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(41,'2025-04-26 18:52:54',NULL,'UPDATE','course','Larval','{"name": "Larval", "duration": "3 Months", "charges": "40000", "description": "abc\n"}','{"duration": "3 Months", "charges": "60000", "description": "Course: Larval\nDuration: 3 Months\nFees: 60000\n\nDescription:\nThis program offers in-depth training in Larval over 3 Months. Students will gain both theoretical knowledge and practical skills applicable in real-world scenarios.\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(42,'2025-04-26 18:53:13',NULL,'UPDATE','course','
Cloud computing','{"name": "\nCloud computing", "duration": "7 Months", "charges": "40000", "description": "\nCloud computing Course Details:\n- Duration: 7 Months\n- Fees: 40000\n\nProgram Overview:\nOur \nCloud computing course provides comprehensive education through a structured 7 Months curriculum designed for optimal learning outcomes.\n"}','{"duration": "7 Months", "charges": "40000", "description": "\nCloud computing Course Details:\n- Duration: 7 Months\n- Fees: 40000\nProgram Overview:\nOur Cloud computing course provides comprehensive education through a structured 7 Months curriculum designed for optimal learning outcomes.\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(43,'2025-04-26 18:53:26',NULL,'UPDATE','course','Artificial Intelligence','{"name": "Artificial Intelligence", "duration": "5 Months", "charges": "70000", "description": "Course: Artificial Intelligence\nDuration: 5 Months\nFees: 70000\n\nDescription:\nThis program offers in-depth training in Artificial Intelligence over 5 Months. Students will gain both theoretical knowledge and practical skills applicable in real-world scenarios.\n"}','{"duration": "5 Months", "charges": "70000", "description": "Artificial Intelligence Course Details:\n- Duration: 5 Months\n- Fees: 70000\n\nProgram Overview:\nOur Artificial Intelligence course provides comprehensive education through a structured 5 Months curriculum designed for optimal learning outcomes.\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(44,'2025-04-26 18:54:33',NULL,'CREATE','course','Deep learning',NULL,'{"name": "Deep learning", "duration": "8 Months", "charges": "35000", "description": "Course: Deep learning\nDuration: 8 Months\nFees: 35000\n\nDescription:\nThis program offers in-depth training in Deep learning over 8 Months. Students will gain both theoretical knowledge and practical skills applicable in real-world scenarios.\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(45,'2025-04-26 18:55:34',NULL,'CREATE','result','1004-Computer Science',NULL,'{"roll": "1004", "name": "Ayesha Asif", "course": "Computer Science", "marks_ob": "890", "full_marks": "1000", "percentage": "89.0"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(46,'2025-04-26 18:55:48',NULL,'CREATE','result','1005-Database',NULL,'{"roll": "1005", "name": "Iqra Sheikh", "course": "Database", "marks_ob": "900", "full_marks": "1000", "percentage": "90.0"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(47,'2025-04-26 18:58:28',NULL,'CREATE','student','1006',NULL,'{"roll": "1006", "name": "Ali Malik", "email": "ali.malik24@example.com", "gender": "Male", "dob": "01-01-1999", "contact": "03481884782", "admission": "2020", "course": "Big Data", "state": "Blochistan", "city": "Quetta", "pin": "27156", "address": "694 Nicholson Parkway, Quetta, Balochistan\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(48,'2025-04-26 18:59:53',NULL,'CREATE','student','1007',NULL,'{"roll": "1007", "name": "Dua Farooq", "email": "dua.farooq55@example.com", "gender": "Male", "dob": "13-07-2006", "contact": "034818873782", "admission": "2023", "course": "Data Visualization", "state": "Khyber Pakhtunkhwa", "city": "Abbottabad", "pin": "89579", "address": "266 Gentry Alley, Abbottabad, Khyber Pakhtunkhwa\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(49,'2025-04-26 19:00:09',NULL,'UPDATE','student','1004','{"name": "Ayesha Asif", "email": "ayesha@gmail.com", "gender": "Female", "dob": "14-02-2003", "contact": "3182649589", "admission": "2022", "course": "Computer Science", "state": "KPK", "city": "Quetta", "pin": "87800", "address": "House no.679, St.23, Gullberg, Quetta\n\n"}','{"name": "Ayesha Asif", "email": "ayesha@example.com", "gender": "Female", "dob": "14-02-2003", "contact": "3182649589", "admission": "2022", "course": "Computer Science", "state": "KPK", "city": "Quetta", "pin": "87800", "address": "House no.679, St.23, Gullberg, Quetta\n\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(50,'2025-04-26 19:00:33',NULL,'DELETE','course','
Cloud computing','{"name": "\nCloud computing", "duration": "7 Months", "charges": "40000", "description": "\nCloud computing Course Details:\n- Duration: 7 Months\n- Fees: 40000\nProgram Overview:\nOur Cloud computing course provides comprehensive education through a structured 7 Months curriculum designed for optimal learning outcomes.\n"}',NULL,'192.168.18.18');
INSERT INTO "audit_log" VALUES(51,'2025-04-26 19:00:51',NULL,'CREATE','course','Cloud Computing',NULL,'{"name": "Cloud Computing", "duration": "4 Months", "charges": "60000", "description": "Cloud Computing Course Details:\n- Duration: 4 Months\n- Fees: 60000\n\nProgram Overview:\nOur Cloud Computing course provides comprehensive education through a structured 4 Months curriculum designed for optimal learning outcomes.\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(52,'2025-04-27 06:07:24',NULL,'UPDATE','student','1001','{"name": "Khadija Hanif", "email": "khadija@example.com", "gender": "Female", "dob": "25-04-2006", "contact": "92308656772", "admission": "2024", "course": "Python", "state": "Punjab", "city": "Sheikhupura", "pin": "39350", "address": "845 Canal View Park, Housing Colony, Sheikhupura\n\n\n\n\n"}','{"name": "Khadija Hanif", "email": "khadija@example.com", "gender": "Female", "dob": "25-04-2006", "contact": "92308656772", "admission": "2024", "course": "", "state": "Punjab", "city": "Sheikhupura", "pin": "39350", "address": "845 Canal View Park, Housing Colony, Sheikhupura\n\n\n\n\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(53,'2025-04-27 06:17:23',NULL,'UPDATE','student','1002','{"name": "Yahya Hanif", "email": "yahya@example.com", "gender": "Male", "dob": "24-02-2000", "contact": "44082367638", "admission": "2023", "course": "Java", "state": "Punjab", "city": "Lahore", "pin": "54000", "address": "240 Nishtar Block, Allama Iqbal Town, Lahore\n\n\n"}','{"name": "Yahya Hanif", "email": "yahya@example.com", "gender": "Male", "dob": "24-02-2000", "contact": "44082367638", "admission": "2023", "course": "", "state": "Punjab", "city": "Lahore", "pin": "54000", "address": "240 Nishtar Block, Allama Iqbal Town, Lahore\n\n\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(54,'2025-04-27 06:18:25',NULL,'UPDATE','student','1007','{"name": "Dua Farooq", "email": "dua.farooq55@example.com", "gender": "Male", "dob": "13-07-2006", "contact": "034818873782", "admission": "2023", "course": "Data Visualization", "state": "Khyber Pakhtunkhwa", "city": "Abbottabad", "pin": "89579", "address": "266 Gentry Alley, Abbottabad, Khyber Pakhtunkhwa\n"}','{"name": "Dua Farooq", "email": "dua.farooq55@example.com", "gender": "Male", "dob": "13-07-2006", "contact": "34818873782", "admission": "2023", "course": "", "state": "Khyber Pakhtunkhwa", "city": "Abbottabad", "pin": "89579", "address": "266 Gentry Alley, Abbottabad, Khyber Pakhtunkhwa\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(55,'2025-04-27 06:18:42',NULL,'UPDATE','student','1007','{"name": "Dua Farooq", "email": "dua.farooq55@example.com", "gender": "Male", "dob": "13-07-2006", "contact": "34818873782", "admission": "2023", "course": "", "state": "Khyber Pakhtunkhwa", "city": "Abbottabad", "pin": "89579", "address": "266 Gentry Alley, Abbottabad, Khyber Pakhtunkhwa\n\n"}','{"name": "Dua Farooq", "email": "dua.farooq55@example.com", "gender": "Female", "dob": "13-07-2006", "contact": "34818873782", "admission": "2023", "course": "", "state": "Khyber Pakhtunkhwa", "city": "Abbottabad", "pin": "89579", "address": "266 Gentry Alley, Abbottabad, Khyber Pakhtunkhwa\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(56,'2025-04-27 06:19:31',NULL,'UPDATE','student','1003','{"name": "Hafsa Hanif", "email": "hafsa@example.com", "gender": "Female", "dob": "13-01-2003", "contact": "9239753772", "admission": "2020", "course": "Data Warehousing", "state": "Punjab", "city": "Lahore", "pin": "54000", "address": "House no. 94, D-Block, Wapda Town, Lahore\n\n\n"}','{"name": "Hafsa Hanif", "email": "hafsa@example.com", "gender": "Female", "dob": "13-01-2003", "contact": "9239753772", "admission": "2020", "course": "", "state": "Punjab", "city": "Lahore", "pin": "54000", "address": "House no. 94, D-Block, Wapda Town, Lahore\n\n\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(57,'2025-04-27 06:22:39',NULL,'UPDATE','student','1004','{"name": "Ayesha Asif", "email": "ayesha@example.com", "gender": "Female", "dob": "14-02-2003", "contact": "3182649589", "admission": "2022", "course": "Computer Science", "state": "KPK", "city": "Quetta", "pin": "87800", "address": "House no.679, St.23, Gullberg, Quetta\n\n\n"}','{"name": "Ayesha Asif", "email": "ayesha@example.com", "gender": "Female", "dob": "14-02-2003", "contact": "3182649589", "admission": "2022", "course": "Select", "state": "KPK", "city": "Quetta", "pin": "87800", "address": "House no.679, St.23, Gullberg, Quetta\n\n\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(58,'2025-04-27 06:22:48',NULL,'UPDATE','student','1005','{"name": "Iqra Sheikh", "email": "iqra.sheikh60@example.com", "gender": "Female", "dob": "31/01/1999", "contact": "3897580606", "admission": "2025", "course": "Database", "state": "Islamabad Capital Territory", "city": "Islamabad", "pin": "59319", "address": "39747 Johnson Expressway Suite 295, Islamabad, Islamabad Capital Territory\n"}','{"name": "Iqra Sheikh", "email": "iqra.sheikh60@example.com", "gender": "Female", "dob": "31/01/1999", "contact": "3897580606", "admission": "2025", "course": "Select", "state": "Islamabad Capital Territory", "city": "Islamabad", "pin": "59319", "address": "39747 Johnson Expressway Suite 295, Islamabad, Islamabad Capital Territory\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(59,'2025-04-27 06:22:57',NULL,'UPDATE','student','1006','{"name": "Ali Malik", "email": "ali.malik24@example.com", "gender": "Male", "dob": "01-01-1999", "contact": "03481884782", "admission": "2020", "course": "Big Data", "state": "Blochistan", "city": "Quetta", "pin": "27156", "address": "694 Nicholson Parkway, Quetta, Balochistan\n"}','{"name": "Ali Malik", "email": "ali.malik24@example.com", "gender": "Male", "dob": "01-01-1999", "contact": "3481884782", "admission": "2020", "course": "Select", "state": "Blochistan", "city": "Quetta", "pin": "27156", "address": "694 Nicholson Parkway, Quetta, Balochistan\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(60,'2025-04-27 06:33:30',NULL,'UPDATE','student','1001','{"name": "Khadija Hanif", "email": "khadija@example.com", "gender": "Female", "dob": "25-04-2006", "contact": "92308656772", "admission": "2024", "course": "", "state": "Punjab", "city": "Sheikhupura", "pin": "39350", "address": "845 Canal View Park, Housing Colony, Sheikhupura\n\n\n\n\n\n"}','{"name": "Khadija Hanif", "email": "khadija@example.com", "gender": "Female", "dob": "25-04-2006", "contact": "92308656772", "admission": "2024", "course": "", "state": "Punjab", "city": "Sheikhupura", "pin": "39350", "address": "845 Canal View Park, Housing Colony, Sheikhupura\n\n\n\n\n\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(61,'2025-04-27 06:33:49',NULL,'CREATE','result','1001-Big Data',NULL,'{"enroll_id": 3, "marks_ob": "987", "full_marks": "1000", "per": "98.7"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(62,'2025-04-27 06:35:04','yahya@gmail.com','LOGIN','employee','3',NULL,'{"email": "yahya@gmail.com"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(63,'2025-04-27 06:35:33',NULL,'UPDATE','course','NLP',NULL,'{"duration": "1 Year", "charges": "65000", "description": "NLP Course Details:\n- Duration: 1 Year\n- Fees: 65000\n\nProgram Overview:\nOur NLP course provides comprehensive education through a structured 1 Year curriculum designed for optimal learning outcomes.\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(64,'2025-04-27 06:35:36',NULL,'CREATE','course','NLP',NULL,'{"name": "NLP", "duration": "1 Year", "charges": "65000", "description": "NLP Course Details:\n- Duration: 1 Year\n- Fees: 65000\n\nProgram Overview:\nOur NLP course provides comprehensive education through a structured 1 Year curriculum designed for optimal learning outcomes.\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(65,'2025-04-27 06:37:23',NULL,'CREATE','student','1008',NULL,'{"roll": "1008", "name": "Umer Naveed", "email": "umer@example.com", "gender": "Male", "dob": "20-01-2010", "contact": "0392653780", "admission": "2025", "course": "", "state": "Punjab", "city": "Lahore", "pin": "59560", "address": "House 875, St 5, Township, Lahore\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(66,'2025-04-27 06:37:44',NULL,'CREATE','result','1008-NLP',NULL,'{"enroll_id": 11, "marks_ob": "489", "full_marks": "500", "per": "97.8"}','192.168.18.18');
CREATE TABLE course(cid INTEGER PRIMARY KEY AUTOINCREMENT, name text, duration text, charges text, description text);
INSERT INTO "course" VALUES(2,'Java','6 Months','30000','Java Course Details:
- Duration: 6 Months
- Fees: 30000

Program Overview:
Our Java course provides comprehensive education through a structured 6 Months curriculum designed for optimal learning outcomes.
');
INSERT INTO "course" VALUES(4,'Database','6 Months','40000','Students will master practical applications, database, and core concepts in this 6 Months Database program.
');
INSERT INTO "course" VALUES(5,'Data Warehousing','6 Months','40000','This 6 Months program in Data Warehousing covers fundamental concepts and advanced topics.
');
INSERT INTO "course" VALUES(6,'Data Visualization','6 Months','40000','The Data Visualization course (6 Months) offers hands-on training and theoretical foundations.
');
INSERT INTO "course" VALUES(7,'Big Data','6 Months','40000','The Big Data course (6 Months) offers hands-on training and theoretical foundations.
');
INSERT INTO "course" VALUES(8,'Functional English','6 Months','40000','The Functional English course (6 Months) offers hands-on training and theoretical foundations.
');
INSERT INTO "course" VALUES(9,'Calculus','12 Months','60000','Course: Calculus
Duration: 12 Months
Fees: 60000

Description:
This program offers in-depth training in Calculus over 12 Months. Students will gain both theoretical knowledge and practical skills applicable in real-world scenarios.
');
INSERT INTO "course" VALUES(11,'Applied Statistics','6 Months','40000','A comprehensive study of advanced topics, statistics, and applied delivered over 6 Months.
');
INSERT INTO "course" VALUES(12,'Applied Physics','6 Months','10000','Applied Physics Course Details:
- Duration: 6 Months
- Fees: 10000

Program Overview:
Our Applied Physics course provides comprehensive education through a structured 6 Months curriculum designed for optimal learning outcomes.
');
INSERT INTO "course" VALUES(13,'Computer Science','6 Months','300000','Course: Computer Science
Duration: 6 Months
Fees: 300000

Description:
This program offers in-depth training in Computer Science over 6 Months. Students will gain both theoretical knowledge and practical skills applicable in real-world scenarios.
');
INSERT INTO "course" VALUES(14,'MERN','6 Months','30000','MERN Course Details:
- Duration: 6 Months
- Fees: 30000

Program Overview:
Our MERN course provides comprehensive education through a structured 6 Months curriculum designed for optimal learning outcomes.
');
INSERT INTO "course" VALUES(15,'Web Development','6 Months','30000','Course: Web Development
Duration: 6 Months
Fees: 30000

Description:
This program offers in-depth training in Web Development over 6 Months. Students will gain both theoretical knowledge and practical skills applicable in real-world scenarios.
');
INSERT INTO "course" VALUES(16,'Larval','3 Months','60000','Course: Larval
Duration: 3 Months
Fees: 60000

Description:
This program offers in-depth training in Larval over 3 Months. Students will gain both theoretical knowledge and practical skills applicable in real-world scenarios.
');
INSERT INTO "course" VALUES(17,'Machine Learning','1.5 Years','100000','Machine Learning Course Details:
- Duration: 1.5 Years
- Fees: 100000

Program Overview:
Our Machine Learning course provides comprehensive education through a structured 1.5 Years curriculum designed for optimal learning outcomes.
');
INSERT INTO "course" VALUES(18,'Bussiness Intelligence','9 Months','70000','Bussiness Intelligence Course Details:
- Duration: 9 Months
- Fees: 70000

Program Overview:
Our Bussiness Intelligence course provides comprehensive education through a structured 9 Months curriculum designed for optimal learning outcomes.
');
INSERT INTO "course" VALUES(19,'SQL','2 Months','20000','Course: SQL
Duration: 2 Months
Fees: 20000

Description:
This program offers in-depth training in SQL over 2 Months. Students will gain both theoretical knowledge and practical skills applicable in real-world scenarios.
');
INSERT INTO "course" VALUES(20,'Artificial Intelligence','5 Months','70000','Artificial Intelligence Course Details:
- Duration: 5 Months
- Fees: 70000

Program Overview:
Our Artificial Intelligence course provides comprehensive education through a structured 5 Months curriculum designed for optimal learning outcomes.
');
INSERT INTO "course" VALUES(22,'Information security','8 Months','70000','Information security Course Details:
- Duration: 8 Months
- Fees: 70000

Program Overview:
Our Information security course provides comprehensive education through a structured 8 Months curriculum designed for optimal learning outcomes.
');
INSERT INTO "course" VALUES(23,'Deep learning','8 Months','35000','Course: Deep learning
Duration: 8 Months
Fees: 35000

Description:
This program offers in-depth training in Deep learning over 8 Months. Students will gain both theoretical knowledge and practical skills applicable in real-world scenarios.
');
INSERT INTO "course" VALUES(24,'Cloud Computing','4 Months','60000','Cloud Computing Course Details:
- Duration: 4 Months
- Fees: 60000

Program Overview:
Our Cloud Computing course provides comprehensive education through a structured 4 Months curriculum designed for optimal learning outcomes.
');
INSERT INTO "course" VALUES(25,'NLP','1 Year','65000','NLP Course Details:
- Duration: 1 Year
- Fees: 65000

Program Overview:
Our NLP course provides comprehensive education through a structured 1 Year curriculum designed for optimal learning outcomes.
');
CREATE TABLE employee(eid INTEGER PRIMARY KEY AUTOINCREMENT,f_name text,l_name text, contact text, email text, question text, answer text, password text);
INSERT INTO "employee" VALUES(1,'Khadija','Hanif','0312456789','khadija@gmail.com','Your Birth Place','Lahore','12345');
INSERT INTO "employee" VALUES(2,'Hafsa','','0314357890','hafsa@gmail.com','Your Car Plate','kj728','1234567');
INSERT INTO "employee" VALUES(3,'Muhammad Yahya ','Hanif','03164789274','yahya@gmail.com','Your First School','Punjab School','yahya123');
CREATE TABLE enrollment(
        enroll_id INTEGER PRIMARY KEY AUTOINCREMENT,
        student_roll INTEGER NOT NULL,
        course_id INTEGER NOT NULL,
        enrollment_date TEXT DEFAULT (date('now')),
        FOREIGN KEY(student_roll) REFERENCES student(roll),
        FOREIGN KEY(course_id) REFERENCES course(cid)
      );
INSERT INTO "enrollment" VALUES(1,1001,2,'2025-04-27');
INSERT INTO "enrollment" VALUES(2,1001,4,'2025-04-27');
INSERT INTO "enrollment" VALUES(3,1001,7,'2025-04-27');
INSERT INTO "enrollment" VALUES(4,1001,9,'2025-04-27');
INSERT INTO "enrollment" VALUES(5,1001,14,'2025-04-27');
INSERT INTO "enrollment" VALUES(6,1008,2,'2025-04-27');
INSERT INTO "enrollment" VALUES(7,1008,6,'2025-04-27');
INSERT INTO "enrollment" VALUES(8,1008,7,'2025-04-27');
INSERT INTO "enrollment" VALUES(9,1008,14,'2025-04-27');
INSERT INTO "enrollment" VALUES(10,1008,19,'2025-04-27');
INSERT INTO "enrollment" VALUES(11,1008,25,'2025-04-27');
CREATE TABLE result(
        rid INTEGER PRIMARY KEY AUTOINCREMENT,
        enroll_id INTEGER NOT NULL,
        marks_ob INTEGER NOT NULL,
        full_marks INTEGER NOT NULL,
        per REAL NOT NULL,
        FOREIGN KEY(enroll_id) REFERENCES enrollment(enroll_id)
      );
INSERT INTO "result" VALUES(1,3,987,1000,98.7);
INSERT INTO "result" VALUES(2,11,489,500,97.8);
CREATE TABLE student(roll INTEGER PRIMARY KEY AUTOINCREMENT, name text,  email text, gender text,  dob text,  contact text,  admission text,  course text,  state text,  city text,  pin text,  address text);
INSERT INTO "student" VALUES(1001,'Khadija Hanif','khadija@example.com','Female','25-04-2006','92308656772','2024','','Punjab','Sheikhupura','39350','845 Canal View Park, Housing Colony, Sheikhupura






');
INSERT INTO "student" VALUES(1002,'Yahya Hanif','yahya@example.com','Male','24-02-2000','44082367638','2023','','Punjab','Lahore','54000','240 Nishtar Block, Allama Iqbal Town, Lahore



');
INSERT INTO "student" VALUES(1003,'Hafsa Hanif','hafsa@example.com','Female','13-01-2003','9239753772','2020','','Punjab','Lahore','54000','House no. 94, D-Block, Wapda Town, Lahore



');
INSERT INTO "student" VALUES(1004,'Ayesha Asif','ayesha@example.com','Female','14-02-2003','3182649589','2022','Select','KPK','Quetta','87800','House no.679, St.23, Gullberg, Quetta



');
INSERT INTO "student" VALUES(1005,'Iqra Sheikh','iqra.sheikh60@example.com','Female','31/01/1999','3897580606','2025','Select','Islamabad Capital Territory','Islamabad','59319','39747 Johnson Expressway Suite 295, Islamabad, Islamabad Capital Territory

');
INSERT INTO "student" VALUES(1006,'Ali Malik','ali.malik24@example.com','Male','01-01-1999','3481884782','2020','Select','Blochistan','Quetta','27156','694 Nicholson Parkway, Quetta, Balochistan

');
INSERT INTO "student" VALUES(1007,'Dua Farooq','dua.farooq55@example.com','Female','13-07-2006','34818873782','2023','','Khyber Pakhtunkhwa','Abbottabad','89579','266 Gentry Alley, Abbottabad, Khyber Pakhtunkhwa

');
INSERT INTO "student" VALUES(1008,'Umer Naveed','umer@example.com','Male','20-01-2010','0392653780','2025','','Punjab','Lahore','59560','House 875, St 5, Township, Lahore
');
DELETE FROM "sqlite_sequence";
INSERT INTO "sqlite_sequence" VALUES('course',25);
INSERT INTO "sqlite_sequence" VALUES('student',1008);
INSERT INTO "sqlite_sequence" VALUES('employee',3);
INSERT INTO "sqlite_sequence" VALUES('audit_log',66);
INSERT INTO "sqlite_sequence" VALUES('enrollment',11);
INSERT INTO "sqlite_sequence" VALUES('result',2);
COMMIT;
