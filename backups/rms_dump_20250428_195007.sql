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
INSERT INTO "audit_log" VALUES(67,'2025-04-27 06:39:14',NULL,'UPDATE','student','1004','{"name": "Ayesha Asif", "email": "ayesha@example.com", "gender": "Female", "dob": "14-02-2003", "contact": "3182649589", "admission": "2022", "course": "Select", "state": "KPK", "city": "Quetta", "pin": "87800", "address": "House no.679, St.23, Gullberg, Quetta\n\n\n\n"}','{"name": "Ayesha Asif", "email": "ayesha@example.com", "gender": "Female", "dob": "14-02-2003", "contact": "3182649589", "admission": "2022", "course": "", "state": "KPK", "city": "Quetta", "pin": "87800", "address": "House no.679, St.23, Gullberg, Quetta\n\n\n\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(68,'2025-04-27 06:39:26',NULL,'UPDATE','student','1002','{"name": "Yahya Hanif", "email": "yahya@example.com", "gender": "Male", "dob": "24-02-2000", "contact": "44082367638", "admission": "2023", "course": "", "state": "Punjab", "city": "Lahore", "pin": "54000", "address": "240 Nishtar Block, Allama Iqbal Town, Lahore\n\n\n\n"}','{"name": "Yahya Hanif", "email": "yahya@example.com", "gender": "Male", "dob": "24-02-2000", "contact": "44082367638", "admission": "2023", "course": "", "state": "Punjab", "city": "Lahore", "pin": "54000", "address": "240 Nishtar Block, Allama Iqbal Town, Lahore\n\n\n\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(69,'2025-04-27 06:39:36',NULL,'UPDATE','student','1003','{"name": "Hafsa Hanif", "email": "hafsa@example.com", "gender": "Female", "dob": "13-01-2003", "contact": "9239753772", "admission": "2020", "course": "", "state": "Punjab", "city": "Lahore", "pin": "54000", "address": "House no. 94, D-Block, Wapda Town, Lahore\n\n\n\n"}','{"name": "Hafsa Hanif", "email": "hafsa@example.com", "gender": "Female", "dob": "13-01-2003", "contact": "9239753772", "admission": "2020", "course": "", "state": "Punjab", "city": "Lahore", "pin": "54000", "address": "House no. 94, D-Block, Wapda Town, Lahore\n\n\n\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(70,'2025-04-27 06:39:46',NULL,'UPDATE','student','1005','{"name": "Iqra Sheikh", "email": "iqra.sheikh60@example.com", "gender": "Female", "dob": "31/01/1999", "contact": "3897580606", "admission": "2025", "course": "Select", "state": "Islamabad Capital Territory", "city": "Islamabad", "pin": "59319", "address": "39747 Johnson Expressway Suite 295, Islamabad, Islamabad Capital Territory\n\n"}','{"name": "Iqra Sheikh", "email": "iqra.sheikh60@example.com", "gender": "Female", "dob": "31/01/1999", "contact": "3897580606", "admission": "2025", "course": "", "state": "Islamabad Capital Territory", "city": "Islamabad", "pin": "59319", "address": "39747 Johnson Expressway Suite 295, Islamabad, Islamabad Capital Territory\n\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(71,'2025-04-27 06:39:56',NULL,'UPDATE','student','1006','{"name": "Ali Malik", "email": "ali.malik24@example.com", "gender": "Male", "dob": "01-01-1999", "contact": "3481884782", "admission": "2020", "course": "Select", "state": "Blochistan", "city": "Quetta", "pin": "27156", "address": "694 Nicholson Parkway, Quetta, Balochistan\n\n"}','{"name": "Ali Malik", "email": "ali.malik24@example.com", "gender": "Male", "dob": "01-01-1999", "contact": "3481884782", "admission": "2020", "course": "", "state": "Blochistan", "city": "Quetta", "pin": "27156", "address": "694 Nicholson Parkway, Quetta, Balochistan\n\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(72,'2025-04-27 06:40:07',NULL,'UPDATE','student','1007','{"name": "Dua Farooq", "email": "dua.farooq55@example.com", "gender": "Female", "dob": "13-07-2006", "contact": "34818873782", "admission": "2023", "course": "", "state": "Khyber Pakhtunkhwa", "city": "Abbottabad", "pin": "89579", "address": "266 Gentry Alley, Abbottabad, Khyber Pakhtunkhwa\n\n"}','{"name": "Dua Farooq", "email": "dua.farooq55@example.com", "gender": "Female", "dob": "13-07-2006", "contact": "34818873782", "admission": "2023", "course": "", "state": "Khyber Pakhtunkhwa", "city": "Abbottabad", "pin": "89579", "address": "266 Gentry Alley, Abbottabad, Khyber Pakhtunkhwa\n\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(73,'2025-04-27 07:26:55',NULL,'UPDATE','student','1009',NULL,'{"name": "Usman Chaudhary", "email": "usman.chaudhry45@example.com", "gender": "Male", "dob": "03-06-2003", "contact": "0396384008", "admission": "2020", "course": "", "state": "Sindh", "city": "Hyderabad", "pin": "10672", "address": "8599 Spencer Street Suite 942, Hyderabad, Sindh\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(74,'2025-04-27 07:26:58',NULL,'CREATE','student','1009',NULL,'{"roll": "1009", "name": "Usman Chaudhary", "email": "usman.chaudhry45@example.com", "gender": "Male", "dob": "03-06-2003", "contact": "0396384008", "admission": "2020", "course": "", "state": "Sindh", "city": "Hyderabad", "pin": "10672", "address": "8599 Spencer Street Suite 942, Hyderabad, Sindh\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(75,'2025-04-27 07:28:46',NULL,'CREATE','student','1010',NULL,'{"roll": "1010", "name": "Laiba Hussain", "email": "laiba.hussain@example.com", "gender": "Female", "dob": "05-05-1999", "contact": "0344979201", "admission": "2023", "course": "Select", "state": "Sindh", "city": "Hyderabad", "pin": "10672", "address": "823 Odom Squares, Hyderabad, Sindh\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(76,'2025-04-27 07:30:36',NULL,'CREATE','student','1011',NULL,'{"roll": "1011", "name": "Khadija Mir", "email": "khadija.mir36@example.com", "gender": "Female", "dob": "27-05-1998", "contact": "03437599738", "admission": "2024", "course": "", "state": "Punjab", "city": "Faisalabad", "pin": "72447", "address": "3025 Bailey Cove Suite 344, Faisalabad, Punjab\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(77,'2025-04-27 07:31:18',NULL,'CREATE','student','1012',NULL,'{"roll": "1012", "name": "Ali Butt", "email": "khadija.mir36@example.com", "gender": "Female", "dob": "27-07-1998", "contact": "03437575884", "admission": "2024", "course": "", "state": "Punjab", "city": "Faisalabad", "pin": "72447", "address": "3025  D-Block, Gulberg , Faisalabad, Punjab\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(78,'2025-04-27 07:31:41',NULL,'UPDATE','student','1012','{"name": "Ali Butt", "email": "khadija.mir36@example.com", "gender": "Female", "dob": "27-07-1998", "contact": "03437575884", "admission": "2024", "course": "", "state": "Punjab", "city": "Faisalabad", "pin": "72447", "address": "3025  D-Block, Gulberg , Faisalabad, Punjab\n"}','{"name": "Ali Butt", "email": "ali36@example.com", "gender": "Male", "dob": "27-07-1998", "contact": "3437575884", "admission": "2024", "course": "", "state": "Punjab", "city": "Faisalabad", "pin": "72447", "address": "3025  D-Block, Gulberg , Faisalabad, Punjab\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(79,'2025-04-27 07:33:19',NULL,'CREATE','student','1013',NULL,'{"roll": "1013", "name": "Imran Chaudhary", "email": "imran.chaudhry46@example.com", "gender": "Select", "dob": "05-09-1999", "contact": "03859037289", "admission": "2025", "course": "Select", "state": "Khyber Pakhtunkhwa", "city": "Abbottabad", "pin": "12833", "address": "98863 Ryan Extension, Abbottabad, Khyber Pakhtunkhwa\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(80,'2025-04-27 07:34:57',NULL,'CREATE','student','1014',NULL,'{"roll": "1014", "name": "Muhammad Saad", "email": "saad75@example.com", "gender": "Male", "dob": "10-03-2006", "contact": "03164759742", "admission": "2023", "course": "Select", "state": "Punjab", "city": "Sheikhupura", "pin": "39350", "address": "89 New Gulberg, Housing Colony, Sheikhupura\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(81,'2025-04-27 07:36:02',NULL,'CREATE','student','1015',NULL,'{"roll": "1015", "name": "Muhammad Asif", "email": "asif346@example.com", "gender": "Male", "dob": "14-01-1996", "contact": "03165858608", "admission": "2020", "course": "Select", "state": "Punjab", "city": "Gujranwala", "pin": "134586", "address": "89 Satellite Town, Gujranwala\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(82,'2025-04-27 07:37:07',NULL,'CREATE','student','1016',NULL,'{"roll": "1016", "name": "Omer Farooq", "email": "omer.farooq14@example.com", "gender": "Male", "dob": "14-01-1996", "contact": "03165858608", "admission": "2022", "course": "Select", "state": "Blochistan", "city": "Quetta", "pin": "58651", "address": "636 Jaclyn Bypass, Quetta, Balochistan\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(83,'2025-04-27 07:38:29',NULL,'UPDATE','student','1017',NULL,'{"name": "Usman Malik", "email": "usman.malik49@example.com", "gender": "Select", "dob": "02-06-2007", "contact": "03468047592", "admission": "2022", "course": "Select", "state": "Islamabad Capital Territory", "city": "Islamabad", "pin": "44958", "address": "240 Heather Harbor Suite 938, Islamabad, Islamabad Capital Territory\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(84,'2025-04-27 07:38:32',NULL,'CREATE','student','1017',NULL,'{"roll": "1017", "name": "Usman Malik", "email": "usman.malik49@example.com", "gender": "Select", "dob": "02-06-2007", "contact": "03468047592", "admission": "2022", "course": "Select", "state": "Islamabad Capital Territory", "city": "Islamabad", "pin": "44958", "address": "240 Heather Harbor Suite 938, Islamabad, Islamabad Capital Territory\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(85,'2025-04-27 07:39:28',NULL,'CREATE','student','1018',NULL,'{"roll": "1018", "name": "Iqra Ahmed", "email": "iqra.ahmed82@example.com", "gender": "Female", "dob": "02-06-2007", "contact": "03468047592", "admission": "2022", "course": "Select", "state": "Sindh", "city": "Karachi", "pin": "44987", "address": "05337 Cynthia Light, Karachi, Sindh\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(86,'2025-04-27 07:39:37',NULL,'UPDATE','student','1017','{"name": "Usman Malik", "email": "usman.malik49@example.com", "gender": "Select", "dob": "02-06-2007", "contact": "03468047592", "admission": "2022", "course": "Select", "state": "Islamabad Capital Territory", "city": "Islamabad", "pin": "44958", "address": "240 Heather Harbor Suite 938, Islamabad, Islamabad Capital Territory\n"}','{"name": "Usman Malik", "email": "usman.malik49@example.com", "gender": "Male", "dob": "02-06-2007", "contact": "3468047592", "admission": "2022", "course": "Select", "state": "Islamabad Capital Territory", "city": "Islamabad", "pin": "44958", "address": "240 Heather Harbor Suite 938, Islamabad, Islamabad Capital Territory\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(87,'2025-04-27 07:41:08',NULL,'CREATE','student','1019',NULL,'{"roll": "1019", "name": "Bilal Malik", "email": "bilal.malik38@example.com", "gender": "Male", "dob": "05-07-2002", "contact": "0395686037", "admission": "2023", "course": "Select", "state": "Punjab", "city": "Multan", "pin": "51364", "address": "88713 Alejandra Ford, Multan, Punjab\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(88,'2025-04-27 07:41:44',NULL,'CREATE','student','1020',NULL,'{"roll": "1020", "name": "Saad Iqbal", "email": "bilal.malik38@example.com", "gender": "Male", "dob": "05-06-2009", "contact": "037907580", "admission": "2024", "course": "Select", "state": "Punjab", "city": "Multan", "pin": "51364", "address": "88713 Alejandra Ford, Multan, Punjab\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(89,'2025-04-27 07:41:56',NULL,'UPDATE','student','1013','{"name": "Imran Chaudhary", "email": "imran.chaudhry46@example.com", "gender": "Select", "dob": "05-09-1999", "contact": "03859037289", "admission": "2025", "course": "Select", "state": "Khyber Pakhtunkhwa", "city": "Abbottabad", "pin": "12833", "address": "98863 Ryan Extension, Abbottabad, Khyber Pakhtunkhwa\n"}','{"name": "Imran Chaudhary", "email": "imran.chaudhry46@example.com", "gender": "Male", "dob": "05-09-1999", "contact": "3859037289", "admission": "2025", "course": "Select", "state": "Khyber Pakhtunkhwa", "city": "Abbottabad", "pin": "12833", "address": "98863 Ryan Extension, Abbottabad, Khyber Pakhtunkhwa\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(90,'2025-04-27 07:42:53',NULL,'CREATE','result','1004-Larval',NULL,'{"enroll_id": 12, "marks_ob": "989", "full_marks": "1000", "per": "98.9"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(91,'2025-04-27 07:43:02',NULL,'CREATE','result','1004-Cloud Computing',NULL,'{"enroll_id": 14, "marks_ob": "909", "full_marks": "950", "per": "95.6842105263158"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(92,'2025-04-27 09:11:30',NULL,'CREATE','student','1021',NULL,'{"roll": "1021", "name": "Ali Butt", "email": "ali.butt9@example.com", "gender": "Select", "dob": "03-08-2005", "contact": "03846589273", "admission": "2023", "course": "", "state": "Punjab", "city": "Lahore", "pin": "83516", "address": "33095 Terrance Harbors, Lahore, Punjab\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(93,'2025-04-27 09:11:37',NULL,'UPDATE','student','1021','{"name": "Ali Butt", "email": "ali.butt9@example.com", "gender": "Select", "dob": "03-08-2005", "contact": "03846589273", "admission": "2023", "course": "", "state": "Punjab", "city": "Lahore", "pin": "83516", "address": "33095 Terrance Harbors, Lahore, Punjab\n"}','{"name": "Ali Butt", "email": "ali.butt9@example.com", "gender": "Male", "dob": "03-08-2005", "contact": "03846589273", "admission": "2023", "course": "", "state": "Punjab", "city": "Lahore", "pin": "83516", "address": "33095 Terrance Harbors, Lahore, Punjab\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(94,'2025-04-27 09:11:53',NULL,'UPDATE','student','1020','{"name": "Saad Iqbal", "email": "bilal.malik38@example.com", "gender": "Male", "dob": "05-06-2009", "contact": "037907580", "admission": "2024", "course": "Select", "state": "Punjab", "city": "Multan", "pin": "51364", "address": "88713 Alejandra Ford, Multan, Punjab\n"}','{"name": "Saad Iqbal", "email": "saadiqbal38@example.com", "gender": "Male", "dob": "05-06-2009", "contact": "37907580", "admission": "2024", "course": "", "state": "Punjab", "city": "Multan", "pin": "51364", "address": "88713 Alejandra Ford, Multan, Punjab\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(95,'2025-04-27 09:13:08',NULL,'CREATE','student','1022',NULL,'{"roll": "1022", "name": "Hina Iqbal", "email": "hina.iqbal78@example.com", "gender": "Female", "dob": "03-05-2001", "contact": "037595768986", "admission": "2021", "course": "Select", "state": "Punjab", "city": "Multan", "pin": "39446", "address": "091 Christopher Crescent, Multan, Punjab\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(96,'2025-04-27 09:15:53',NULL,'CREATE','student','1023',NULL,'{"roll": "1023", "name": "Saad Hussain", "email": "saad.hussain23@example.com", "gender": "Male", "dob": "04-07-2012", "contact": "03847867989", "admission": "2023", "course": "Select", "state": "Punjab", "city": "Rawalpindi", "pin": "36509", "address": "1219 Charles Mews Apt. 551, Rawalpindi, Punjab\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(97,'2025-04-27 09:17:27',NULL,'CREATE','student','1024',NULL,'{"roll": "1024", "name": "Rabia Ahmed", "email": "rabia.ahmed53@example.com", "gender": "Select", "dob": "08-11-2003", "contact": "03668796757", "admission": "2020", "course": "Select", "state": "Islamabad Capital Territory", "city": "Islamabad", "pin": "93475", "address": "31868 Walker Spur, Islamabad, Islamabad Capital Territory\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(98,'2025-04-27 09:17:54',NULL,'UPDATE','student','1024','{"name": "Rabia Ahmed", "email": "rabia.ahmed53@example.com", "gender": "Select", "dob": "08-11-2003", "contact": "03668796757", "admission": "2020", "course": "Select", "state": "Islamabad Capital Territory", "city": "Islamabad", "pin": "93475", "address": "31868 Walker Spur, Islamabad, Islamabad Capital Territory\n"}','{"name": "Rabia Ahmed", "email": "rabia.ahmed53@example.com", "gender": "Female", "dob": "08-11-2003", "contact": "03668796757", "admission": "2020", "course": "Select", "state": "Islamabad Capital Territory", "city": "Islamabad", "pin": "93475", "address": "31868 Walker Spur, Islamabad, Islamabad Capital Territory\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(99,'2025-04-27 09:19:29',NULL,'CREATE','student','1025',NULL,'{"roll": "1025", "name": "Laiba Sheikh", "email": "laiba.sheikh45@example.com", "gender": "Female", "dob": "08-11-2003", "contact": "03668796757", "admission": "2020", "course": "Select", "state": "Punjab", "city": "Rawalpindi", "pin": "86475", "address": "1149 Green Drive Suite 702, Rawalpindi, Punjab\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(100,'2025-04-27 09:20:46',NULL,'CREATE','student','1026',NULL,'{"roll": "1026", "name": "Khadija Sheikh", "email": "khadija.sheikh11@example.com", "gender": "Female", "dob": "25-12-2000", "contact": "03566578657", "admission": "2021", "course": "Select", "state": "Punjab", "city": "Lahore", "pin": "52509", "address": "393 Hector Cape Suite 660, Lahore, Punjab\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(101,'2025-04-27 09:22:41',NULL,'CREATE','student','1027',NULL,'{"roll": "1027", "name": "Nadia Butt", "email": "nadia.butt60@example.com", "gender": "Female", "dob": "04-11-2009", "contact": "0377765778", "admission": "2024", "course": "Select", "state": "Balochistan", "city": "Quetta", "pin": "16642", "address": "57792 Evans Knoll Suite 178, Quetta, Balochistan\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(102,'2025-04-27 09:23:58',NULL,'CREATE','student','1028',NULL,'{"roll": "1028", "name": "Saad Ahmed", "email": "saad.ahmed67@example.com", "gender": "Male", "dob": "10-03-2007", "contact": "0388766578", "admission": "2023", "course": "Select", "state": "Sindh", "city": "Sukkur", "pin": "29901", "address": "39803 Ramirez Way, Sukkur, Sindh\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(103,'2025-04-27 09:25:35',NULL,'CREATE','student','1029',NULL,'{"roll": "1029", "name": "Sana Hussain", "email": "sana.hussain67@example.com", "gender": "Female", "dob": "01-02-1999", "contact": "0365676879", "admission": "2022", "course": "Select", "state": "Punjab", "city": "Lahore", "pin": "28034", "address": "2388 Rachel Rapid Suite 979, Lahore, Punjab\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(104,'2025-04-27 09:27:14',NULL,'CREATE','student','1030',NULL,'{"roll": "1030", "name": "Sana Irfan", "email": "sanairfan098@example.com", "gender": "Female", "dob": "31-05-1998", "contact": "03564657689", "admission": "2019", "course": "Select", "state": "Punjab", "city": "Kasur", "pin": "34786", "address": "2388 Kaliyan, Kasur, Punjab\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(105,'2025-04-27 09:35:45',NULL,'CREATE','student','1031',NULL,'{"roll": "1031", "name": "Habiba Asif", "email": "habiasif543@example.com", "gender": "Female", "dob": "07-09-2000", "contact": "0397865787", "admission": "2022", "course": "", "state": "Punjab", "city": "Gujranwala", "pin": "257458", "address": "3456 Peoples Colony, Gujranwala, Punjab\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(106,'2025-04-27 09:36:41',NULL,'CREATE','result','1001-Java',NULL,'{"enroll_id": 1, "marks_ob": "345", "full_marks": "500", "per": "69.0"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(107,'2025-04-27 09:38:34',NULL,'CREATE','result','1001-Database',NULL,'{"enroll_id": 2, "marks_ob": "989", "full_marks": "1000", "per": "98.9"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(108,'2025-04-27 09:38:57',NULL,'CREATE','result','1001-Calculus',NULL,'{"enroll_id": 4, "marks_ob": "876", "full_marks": "900", "per": "97.33333333333333"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(109,'2025-04-27 09:39:09',NULL,'CREATE','result','1001-MERN',NULL,'{"enroll_id": 5, "marks_ob": "907", "full_marks": "1000", "per": "90.7"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(110,'2025-04-27 09:39:16',NULL,'CREATE','result','1002-Data Warehousing',NULL,'{"enroll_id": 15, "marks_ob": "907", "full_marks": "1000", "per": "90.7"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(111,'2025-04-27 09:39:28',NULL,'CREATE','result','1002-Big Data',NULL,'{"enroll_id": 16, "marks_ob": "577", "full_marks": "600", "per": "96.16666666666667"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(112,'2025-04-27 09:39:40',NULL,'CREATE','result','1002-Applied Physics',NULL,'{"enroll_id": 17, "marks_ob": "984", "full_marks": "1000", "per": "98.4"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(113,'2025-04-27 09:41:34',NULL,'CREATE','result','1003-Big Data',NULL,'{"enroll_id": 18, "marks_ob": "984", "full_marks": "1000", "per": "98.4"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(114,'2025-04-27 09:41:44',NULL,'CREATE','result','1003-Applied Statistics',NULL,'{"enroll_id": 19, "marks_ob": "890", "full_marks": "1000", "per": "89.0"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(115,'2025-04-27 09:41:53',NULL,'CREATE','result','1003-Larval',NULL,'{"enroll_id": 20, "marks_ob": "890", "full_marks": "1000", "per": "89.0"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(116,'2025-04-27 09:42:20',NULL,'DELETE','result',NULL,'{"marks_ob": 890, "full_marks": 1000, "percentage": 89.0}',NULL,'192.168.18.18');
INSERT INTO "audit_log" VALUES(117,'2025-04-27 09:47:14',NULL,'CREATE','result','1004-SQL',NULL,'{"enroll_id": 13, "marks_ob": "567", "full_marks": "600", "per": "94.5"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(118,'2025-04-27 09:47:24',NULL,'CREATE','result','1005-Cloud Computing',NULL,'{"enroll_id": 23, "marks_ob": "567", "full_marks": "600", "per": "94.5"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(119,'2025-04-27 09:47:30',NULL,'CREATE','result','1006-Functional English',NULL,'{"enroll_id": 24, "marks_ob": "567", "full_marks": "600", "per": "94.5"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(120,'2025-04-27 09:47:36',NULL,'CREATE','result','1007-Database',NULL,'{"enroll_id": 29, "marks_ob": "567", "full_marks": "600", "per": "94.5"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(121,'2025-04-27 09:47:46',NULL,'CREATE','result','1008-Java',NULL,'{"enroll_id": 6, "marks_ob": "567", "full_marks": "600", "per": "94.5"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(122,'2025-04-27 09:47:56',NULL,'CREATE','result','1010-Functional English',NULL,'{"enroll_id": 42, "marks_ob": "589", "full_marks": "600", "per": "98.16666666666667"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(123,'2025-04-27 09:48:11',NULL,'CREATE','result','1018-Calculus',NULL,'{"enroll_id": 83, "marks_ob": "589", "full_marks": "600", "per": "98.16666666666667"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(124,'2025-04-27 09:48:33',NULL,'CREATE','result','1020-MERN',NULL,'{"enroll_id": 93, "marks_ob": "589", "full_marks": "600", "per": "98.16666666666667"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(125,'2025-04-27 09:48:46',NULL,'CREATE','result','1028-Data Warehousing',NULL,'{"enroll_id": 137, "marks_ob": "989", "full_marks": "1000", "per": "98.9"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(126,'2025-04-27 09:48:55',NULL,'CREATE','result','1029-Larval',NULL,'{"enroll_id": 142, "marks_ob": "989", "full_marks": "1000", "per": "98.9"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(127,'2025-04-27 09:53:07',NULL,'CREATE','student','1032',NULL,'{"roll": "1032", "name": "Junaid Butt", "email": "junaid.butt51@example.com", "gender": "Male", "dob": "07-09-2002", "contact": "0356678889", "admission": "2025", "course": "", "state": "Khyber Pakhtunkhwa", "city": "Abbottabad", "pin": "18765", "address": "9894 Sherry Summit Apt. 109, Abbottabad, Khyber Pakhtunkhwa\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(128,'2025-04-27 09:55:09',NULL,'CREATE','student','1033',NULL,'{"roll": "1033", "name": "Aiman Iqbal", "email": "aiman38@example.com", "gender": "Female", "dob": "03-08-2001", "contact": "03876675789", "admission": "2020", "course": "Select", "state": "Punjab", "city": "Multan", "pin": "15774", "address": "223 Macdonald Lodge, Multan, Punjab\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(129,'2025-04-27 12:47:14',NULL,'CREATE','student','1034',NULL,'{"roll": "1034", "name": "Amna Zahoor", "email": "amna@example.com", "gender": "Female", "dob": "04-12-2003", "contact": "0357578857", "admission": "2022", "course": "", "state": "Islamabad Capital Territory", "city": "Islamabad", "pin": "36131", "address": "House 23, F-11, Fazaia Colony, Islamabad\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(130,'2025-04-27 12:48:11',NULL,'CREATE','student','1035',NULL,'{"roll": "1035", "name": "Ayesha Butt", "email": "ayesha.butt59@example.com", "gender": "Female", "dob": "04-12-2006", "contact": "0357567897", "admission": "2022", "course": "", "state": "Islamabad Capital Territory", "city": "Islamabad", "pin": "36131", "address": "2469 Ryan Lane, Islamabad, Islamabad Capital Territory\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(131,'2025-04-27 12:49:38',NULL,'CREATE','student','1036',NULL,'{"roll": "1036", "name": "Ayesha Khan", "email": "ayesha.khan11@example.com", "gender": "Female", "dob": "04-12-2006", "contact": "0357567897", "admission": "2022", "course": "", "state": "Sindh", "city": "Karachi", "pin": "26165", "address": "56574 Gina Cape, Hyderabad, Sindh\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(132,'2025-04-27 12:49:47',NULL,'UPDATE','student','1035','{"name": "Ayesha Butt", "email": "ayesha.butt59@example.com", "gender": "Female", "dob": "04-12-2006", "contact": "0357567897", "admission": "2022", "course": "", "state": "Islamabad Capital Territory", "city": "Islamabad", "pin": "36131", "address": "2469 Ryan Lane, Islamabad, Islamabad Capital Territory\n"}','{"name": "Ayesha Butt", "email": "ayesha.butt59@example.com", "gender": "Female", "dob": "04-12-2006", "contact": "357567897", "admission": "2022", "course": "", "state": "Islamabad Capital Territory", "city": "Islamabad", "pin": "36131", "address": "2469 Ryan Lane, Islamabad, Islamabad Capital Territory\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(133,'2025-04-27 12:57:45',NULL,'CREATE','course','Data Structures',NULL,'{"name": "Data Structures", "duration": "1.5 Years", "charges": "1050000", "description": "Course: Data Structures\nDuration: 1.5 Years\nFees: 1050000\n\nDescription:\nThis program offers in-depth training in Data Structures over 1.5 Years. Students will gain both theoretical knowledge and practical skills applicable in real-world scenarios.\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(134,'2025-04-27 14:29:48',NULL,'CREATE','student','1037',NULL,'{"roll": "1037", "name": "Alicia White", "email": "mathewsmichael@arnold.com", "gender": "Male", "dob": "26-09-2004", "contact": "9735513362", "admission": "2023", "course": "Select", "state": "Sindh", "city": "Peshawar", "pin": "98689", "address": "9855 Maxwell Prairie Apt. 595, South Ryanmouth, MA 21455\t\t\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(135,'2025-04-27 14:31:32',NULL,'CREATE','student','1038',NULL,'{"roll": "1038", "name": "Elizabeth Butler", "email": "orrgina@lynch.com", "gender": "Male", "dob": "08-04-2003", "contact": "8082630407", "admission": "2021", "course": "Select", "state": "Punjab", "city": "Multan", "pin": "54330", "address": "747 Jodi Roads, Alanburgh, MNP22807\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(136,'2025-04-27 14:34:40',NULL,'CREATE','student','1040',NULL,'{"roll": "1040", "name": "Marcus Weaver", "email": "howellalexandra@gmail.com", "gender": "Female", "dob": "07-12-2006", "contact": "9235994658", "admission": "2023", "course": "Select", "state": "Punjab", "city": "Multan", "pin": "34106", "address": "8611 Perez Field Apt. 611, Lake Robinmouth, CO 10031\t\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(137,'2025-04-27 14:35:56',NULL,'CREATE','student','1041',NULL,'{"roll": "1041", "name": "Craig Hale", "email": "travismarshall@guzman-jordan.com", "gender": "Male", "dob": "16-11-2006", "contact": "2910847502", "admission": "2023", "course": "Select", "state": "Punjab", "city": "Multan", "pin": "34106", "address": " Rose Mountains, Lake Justin, KS 09792\t\t\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(138,'2025-04-27 14:37:13',NULL,'CREATE','student','1042',NULL,'{"roll": "1042", "name": "Timothy Rivers", "email": "pedroyork@gardner.com", "gender": "Male", "dob": "16-11-2006", "contact": "8073861777", "admission": "2021", "course": "Select", "state": "Khyber Pakhtunkhwa", "city": "Hyderabad", "pin": "72855", "address": "03695 Cruz Mill, Samanthachester, NE 15772\t\t\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(139,'2025-04-27 14:38:40',NULL,'CREATE','student','1043',NULL,'{"roll": "1043", "name": "Ayesha Butt", "email": "ayesha.butt59@example.com", "gender": "Female", "dob": "16-11-2006", "contact": "8073861777", "admission": "2021", "course": "Select", "state": "Islamabad Capital Territory", "city": "Islamabad", "pin": "36131", "address": "2469 Ryan Lane, Islamabad, Islamabad Capital Territory\t\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(140,'2025-04-27 14:40:06',NULL,'CREATE','student','1044',NULL,'{"roll": "1044", "name": "Anthony Clark", "email": "pgraham@singh.com", "gender": "Female", "dob": "17-06-2006\t", "contact": "3783942597", "admission": "2022", "course": "Select", "state": "Sindh", "city": "Karachi", "pin": "13666", "address": "Unit 5297 Box 1405, DPO AP 39755, Karachi\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(141,'2025-04-27 14:44:12',NULL,'CREATE','student','1046',NULL,'{"roll": "1046", "name": "Laiba Hussain", "email": "laiba.hussain26@example.com", "gender": "Female", "dob": "24-02-2000", "contact": "0845676808", "admission": "2024", "course": "Select", "state": "Punjab", "city": "Lahore", "pin": "21472", "address": "623 Sosa Green, Lahore, Punjab\t\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(142,'2025-04-27 14:44:27',NULL,'CREATE','student','1047',NULL,'{"roll": "1047", "name": "Laiba Hussain", "email": "laiba.hussain26@example.com", "gender": "Female", "dob": "24-02-2000", "contact": "0845676808", "admission": "2024", "course": "Select", "state": "Punjab", "city": "Lahore", "pin": "21472", "address": "623 Sosa Green, Lahore, Punjab\t\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(143,'2025-04-27 14:45:33',NULL,'CREATE','student','1048',NULL,'{"roll": "1048", "name": "Sana Khan", "email": "sana.khan86@example.com", "gender": "Female", "dob": "13-01-2003", "contact": "0845676808", "admission": "2024", "course": "Select", "state": "Punjab", "city": "Faisalabad", "pin": "24411", "address": "702 Kimberly Fork, Faisalabad, Punjab\t\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(144,'2025-04-27 14:46:58',NULL,'CREATE','student','1049',NULL,'{"roll": "1049", "name": "Usman Mir", "email": "sman.mir7@example.com", "gender": "Female", "dob": "02-06-2007", "contact": "0845676808", "admission": "2024", "course": "Select", "state": "Sindh", "city": "Karachi", "pin": "55759", "address": "0389 Michael Lane Apt. 998, Karachi, Sindh\t\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(145,'2025-04-27 14:48:23',NULL,'CREATE','student','1050',NULL,'{"roll": "1050", "name": "Usman Mir", "email": "sman.mir7@example.com", "gender": "Male", "dob": "13-01-2003", "contact": "3657798869", "admission": "2022", "course": "Select", "state": "Punjab", "city": "Faisalabad", "pin": "24411", "address": "702 Kimberly Fork, Faisalabad, Punjab\t\t\t\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(146,'2025-04-27 14:48:32',NULL,'UPDATE','student','1049','{"name": "Usman Mir", "email": "sman.mir7@example.com", "gender": "Female", "dob": "02-06-2007", "contact": "0845676808", "admission": "2024", "course": "Select", "state": "Sindh", "city": "Karachi", "pin": "55759", "address": "0389 Michael Lane Apt. 998, Karachi, Sindh\t\n\n"}','{"name": "Usman Mir", "email": "sman.mir7@example.com", "gender": "Male", "dob": "02-06-2007", "contact": "845676808", "admission": "2024", "course": "Select", "state": "Sindh", "city": "Karachi", "pin": "55759", "address": "0389 Michael Lane Apt. 998, Karachi, Sindh\t\n\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(147,'2025-04-27 14:51:17',NULL,'CREATE','student','1051',NULL,'{"roll": "1051", "name": "Arham Iqbal", "email": "arham@example.com", "gender": "Male", "dob": "14-02-2003", "contact": "8665679085", "admission": "2022", "course": "Select", "state": "Islamabad Capital Territory", "city": "Islamabad", "pin": "79667", "address": "954 Steven Islands, Islamabad, Islamabad Capital Territory\t\t\t\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(148,'2025-04-27 14:51:53',NULL,'CREATE','student','1052',NULL,'{"roll": "1052", "name": "Eshal Nadeem", "email": "eshal45@example.com", "gender": "Female", "dob": "14-02-2003", "contact": "8665679085", "admission": "2022", "course": "Select", "state": "Islamabad Capital Territory", "city": "Islamabad", "pin": "79667", "address": "954 Steven Islands, Islamabad, Islamabad Capital Territory\t\t\t\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(149,'2025-04-27 14:52:28',NULL,'CREATE','student','1053',NULL,'{"roll": "1053", "name": "Muhammad Rehan", "email": "rehan75@example.com", "gender": "Male", "dob": "14-02-2003", "contact": "8665679085", "admission": "2022", "course": "Select", "state": "Islamabad Capital Territory", "city": "Islamabad", "pin": "79667", "address": "954 Steven Islands, Islamabad, Islamabad Capital Territory\t\t\t\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(150,'2025-04-27 14:53:48',NULL,'CREATE','student','1054',NULL,'{"roll": "1054", "name": "Rayyan Naveed", "email": "rayyan36378@example.com", "gender": "Select", "dob": "02-04-2000", "contact": "6736892830", "admission": "2021", "course": "Select", "state": "Punjab", "city": "Faisalabad", "pin": "24657", "address": "702 Kimberly Fork, Faisalabad, Punjab\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(151,'2025-04-27 14:56:03',NULL,'CREATE','student','1055',NULL,'{"roll": "1055", "name": "Tehree Zahoor", "email": "rayyan36378@example.com", "gender": "Female", "dob": "31/01/1999", "contact": "6736892830", "admission": "2021", "course": "Select", "state": "Islamabad Capital Territory", "city": "Islamabad", "pin": "31559", "address": "3516 Gregory Cape Suite 526, Islamabad, Islamabad Capital Territory\t\t\t\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(152,'2025-04-27 14:56:12',NULL,'UPDATE','student','1054','{"name": "Rayyan Naveed", "email": "rayyan36378@example.com", "gender": "Select", "dob": "02-04-2000", "contact": "6736892830", "admission": "2021", "course": "Select", "state": "Punjab", "city": "Faisalabad", "pin": "24657", "address": "702 Kimberly Fork, Faisalabad, Punjab\n"}','{"name": "Rayyan Naveed", "email": "rayyan36378@example.com", "gender": "Male", "dob": "02-04-2000", "contact": "6736892830", "admission": "2021", "course": "Select", "state": "Punjab", "city": "Faisalabad", "pin": "24657", "address": "702 Kimberly Fork, Faisalabad, Punjab\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(153,'2025-04-27 14:57:20',NULL,'CREATE','student','1056',NULL,'{"roll": "1056", "name": "Abeera Javed", "email": "abeera748@example.com", "gender": "Female", "dob": "01-01-1999", "contact": "4787923840", "admission": "2020", "course": "Select", "state": "Balochistan", "city": "Quetta", "pin": "32512", "address": "8193 John Square, Quetta, Balochistan\t\t\t\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(154,'2025-04-27 14:58:12',NULL,'CREATE','student','1039',NULL,'{"roll": "1039", "name": "Abeera Javed", "email": "abeera748@example.com", "gender": "Female", "dob": "01-01-1999", "contact": "4787923840", "admission": "2020", "course": "Select", "state": "Balochistan", "city": "Quetta", "pin": "32512", "address": "8193 John Square, Quetta, Balochistan\t\t\t\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(155,'2025-04-27 14:58:38',NULL,'CREATE','student','1045',NULL,'{"roll": "1045", "name": "Fatima Javed", "email": "fatima748@example.com", "gender": "Female", "dob": "01-01-1999", "contact": "4787923840", "admission": "2020", "course": "Select", "state": "Balochistan", "city": "Quetta", "pin": "32512", "address": "8193 John Square, Quetta, Balochistan\t\t\t\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(156,'2025-04-27 15:00:46',NULL,'CREATE','student','1057',NULL,'{"roll": "1057", "name": "Fatima Tanveer", "email": "fatima543@example.com", "gender": "Female", "dob": "13-07-2006", "contact": "576680956", "admission": "2020", "course": "Select", "state": "Punjab", "city": "Rawalpindi", "pin": "\t91044", "address": "82680 Sandra Crossing Apt. 174, Rawalpindi, Punjab\t\t\t\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(157,'2025-04-27 15:02:03',NULL,'CREATE','student','1058',NULL,'{"roll": "1058", "name": "Ammar Tanveer", "email": "ammar334@example.com", "gender": "Male", "dob": "01-03-2007", "contact": "6487723498", "admission": "2025", "course": "Select", "state": "Sindh", "city": "Karachi", "pin": "34346", "address": "08387 Michael Lane Apt. 998, Karachi, Sindh\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(158,'2025-04-27 15:03:08',NULL,'CREATE','student','1059',NULL,'{"roll": "1059", "name": "Luqman Tahir", "email": "luqman334@example.com", "gender": "Male", "dob": "13-07-2006\t", "contact": "6487723498", "admission": "2025", "course": "Select", "state": "Punjab", "city": "Rawalpindi", "pin": "91044", "address": "82680 Sandra Crossing Apt. 174, Rawalpindi, Punjab\t\t\t\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(159,'2025-04-27 15:03:50',NULL,'CREATE','student','1060',NULL,'{"roll": "1060", "name": "Ahsan Naveed", "email": "ahsan354@example.com", "gender": "Male", "dob": "13-07-2001\t", "contact": "6487723498", "admission": "2023", "course": "Select", "state": "Punjab", "city": "Rawalpindi", "pin": "91044", "address": "82680 Sandra Crossing Apt. 174, Rawalpindi, Punjab\t\t\t\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(160,'2025-04-27 15:04:16',NULL,'CREATE','result','1058-Data Structures',NULL,'{"enroll_id": 317, "marks_ob": "456", "full_marks": "500", "per": "91.2"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(161,'2025-04-27 15:04:23',NULL,'CREATE','result','1055-Functional English',NULL,'{"enroll_id": 282, "marks_ob": "456", "full_marks": "500", "per": "91.2"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(162,'2025-04-27 15:04:36',NULL,'UPDATE','student','1055','{"name": "Tehree Zahoor", "email": "rayyan36378@example.com", "gender": "Female", "dob": "31/01/1999", "contact": "6736892830", "admission": "2021", "course": "Select", "state": "Islamabad Capital Territory", "city": "Islamabad", "pin": "31559", "address": "3516 Gregory Cape Suite 526, Islamabad, Islamabad Capital Territory\t\t\t\n\n"}','{"name": "Tehreem Zahoor", "email": "rayyan36378@example.com", "gender": "Female", "dob": "31/01/1999", "contact": "6736892830", "admission": "2021", "course": "", "state": "Islamabad Capital Territory", "city": "Islamabad", "pin": "31559", "address": "3516 Gregory Cape Suite 526, Islamabad, Islamabad Capital Territory\t\t\t\n\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(163,'2025-04-27 15:04:50',NULL,'CREATE','result','1045-Database',NULL,'{"enroll_id": 295, "marks_ob": "568", "full_marks": "600", "per": "94.66666666666667"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(164,'2025-04-27 15:05:04',NULL,'CREATE','result','1060-Java',NULL,'{"enroll_id": 328, "marks_ob": "996", "full_marks": "1000", "per": "99.6"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(165,'2025-04-27 15:05:36',NULL,'CREATE','result','1053-Database',NULL,'{"enroll_id": 271, "marks_ob": "976", "full_marks": "1000", "per": "97.6"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(166,'2025-04-27 15:05:45',NULL,'CREATE','result','1049-Computer Science',NULL,'{"enroll_id": 255, "marks_ob": "976", "full_marks": "1000", "per": "97.6"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(167,'2025-04-27 15:06:01',NULL,'CREATE','result','1051-Calculus',NULL,'{"enroll_id": 263, "marks_ob": "980", "full_marks": "1000", "per": "98.0"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(168,'2025-04-27 15:06:17',NULL,'CREATE','result','1034-Java',NULL,'{"enroll_id": 165, "marks_ob": "98", "full_marks": "100", "per": "98.0"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(169,'2025-04-27 15:08:39',NULL,'CREATE','student','1061',NULL,'{"roll": "1061", "name": "Usman Mazhar", "email": "usman664@example.com", "gender": "Male", "dob": "27-05-1998", "contact": "523824800", "admission": "2021", "course": "", "state": "Khyber Pakhtunkhwa", "city": "Abbottabad", "pin": "15749", "address": "044 Lewis Mountains, Abbottabad, Khyber Pakhtunkhwa\t\t\t\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(170,'2025-04-27 15:09:03',NULL,'CREATE','student','1062',NULL,'{"roll": "1062", "name": "Faiza Ameen", "email": "faiza664@example.com", "gender": "Female", "dob": "27-05-1998", "contact": "523824800", "admission": "2021", "course": "", "state": "Khyber Pakhtunkhwa", "city": "Abbottabad", "pin": "15749", "address": "044 Lewis Mountains, Abbottabad, Khyber Pakhtunkhwa\t\t\t\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(171,'2025-04-27 15:17:27',NULL,'UPDATE','student','1001','{"name": "Khadija Hanif", "email": "khadija@example.com", "gender": "Female", "dob": "25-04-2006", "contact": "92308656772", "admission": "2024", "course": "", "state": "Punjab", "city": "Sheikhupura", "pin": "39350", "address": "845 Canal View Park, Housing Colony, Sheikhupura\n\n\n\n\n\n\n"}','{"name": "Khadija Hanif", "email": "khadija@example.com", "gender": "Female", "dob": "25-04-2006", "contact": "92308656772", "admission": "2024", "course": "", "state": "Punjab", "city": "Sheikhupura", "pin": "39350", "address": "845 Canal View Park, Housing Colony, Sheikhupura\n\n\n\n\n\n\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(172,'2025-04-27 15:17:39',NULL,'UPDATE','student','1002','{"name": "Yahya Hanif", "email": "yahya@example.com", "gender": "Male", "dob": "24-02-2000", "contact": "44082367638", "admission": "2023", "course": "", "state": "Punjab", "city": "Lahore", "pin": "54000", "address": "240 Nishtar Block, Allama Iqbal Town, Lahore\n\n\n\n\n"}','{"name": "Yahya Hanif", "email": "yahya@example.com", "gender": "Male", "dob": "24-02-2000", "contact": "44082367638", "admission": "2023", "course": "", "state": "Punjab", "city": "Lahore", "pin": "54000", "address": "240 Nishtar Block, Allama Iqbal Town, Lahore\n\n\n\n\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(173,'2025-04-27 15:17:57',NULL,'UPDATE','student','1003','{"name": "Hafsa Hanif", "email": "hafsa@example.com", "gender": "Female", "dob": "13-01-2003", "contact": "9239753772", "admission": "2020", "course": "", "state": "Punjab", "city": "Lahore", "pin": "54000", "address": "House no. 94, D-Block, Wapda Town, Lahore\n\n\n\n\n"}','{"name": "Hafsa Hanif", "email": "hafsa@example.com", "gender": "Female", "dob": "13-01-2003", "contact": "9239753772", "admission": "2020", "course": "", "state": "Punjab", "city": "Lahore", "pin": "54000", "address": "House no. 94, D-Block, Wapda Town, Lahore\n\n\n\n\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(174,'2025-04-27 15:18:08',NULL,'UPDATE','student','1004','{"name": "Ayesha Asif", "email": "ayesha@example.com", "gender": "Female", "dob": "14-02-2003", "contact": "3182649589", "admission": "2022", "course": "", "state": "KPK", "city": "Quetta", "pin": "87800", "address": "House no.679, St.23, Gullberg, Quetta\n\n\n\n\n"}','{"name": "Ayesha Asif", "email": "ayesha@example.com", "gender": "Female", "dob": "14-02-2003", "contact": "3182649589", "admission": "2022", "course": "", "state": "KPK", "city": "Quetta", "pin": "87800", "address": "House no.679, St.23, Gullberg, Quetta\n\n\n\n\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(175,'2025-04-27 15:18:20',NULL,'UPDATE','student','1005','{"name": "Iqra Sheikh", "email": "iqra.sheikh60@example.com", "gender": "Female", "dob": "31/01/1999", "contact": "3897580606", "admission": "2025", "course": "", "state": "Islamabad Capital Territory", "city": "Islamabad", "pin": "59319", "address": "39747 Johnson Expressway Suite 295, Islamabad, Islamabad Capital Territory\n\n\n"}','{"name": "Iqra Sheikh", "email": "iqra.sheikh60@example.com", "gender": "Female", "dob": "31/01/1999", "contact": "3897580606", "admission": "2025", "course": "", "state": "Islamabad Capital Territory", "city": "Islamabad", "pin": "59319", "address": "39747 Johnson Expressway Suite 295, Islamabad, Islamabad Capital Territory\n\n\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(176,'2025-04-27 15:18:31',NULL,'UPDATE','student','1006','{"name": "Ali Malik", "email": "ali.malik24@example.com", "gender": "Male", "dob": "01-01-1999", "contact": "3481884782", "admission": "2020", "course": "", "state": "Blochistan", "city": "Quetta", "pin": "27156", "address": "694 Nicholson Parkway, Quetta, Balochistan\n\n\n"}','{"name": "Ali Malik", "email": "ali.malik24@example.com", "gender": "Male", "dob": "01-01-1999", "contact": "3481884782", "admission": "2020", "course": "", "state": "Blochistan", "city": "Quetta", "pin": "27156", "address": "694 Nicholson Parkway, Quetta, Balochistan\n\n\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(177,'2025-04-27 15:18:43',NULL,'UPDATE','student','1007','{"name": "Dua Farooq", "email": "dua.farooq55@example.com", "gender": "Female", "dob": "13-07-2006", "contact": "34818873782", "admission": "2023", "course": "", "state": "Khyber Pakhtunkhwa", "city": "Abbottabad", "pin": "89579", "address": "266 Gentry Alley, Abbottabad, Khyber Pakhtunkhwa\n\n\n"}','{"name": "Dua Farooq", "email": "dua.farooq55@example.com", "gender": "Female", "dob": "13-07-2006", "contact": "34818873782", "admission": "2023", "course": "", "state": "Khyber Pakhtunkhwa", "city": "Abbottabad", "pin": "89579", "address": "266 Gentry Alley, Abbottabad, Khyber Pakhtunkhwa\n\n\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(178,'2025-04-27 15:18:56',NULL,'UPDATE','student','1008','{"name": "Umer Naveed", "email": "umer@example.com", "gender": "Male", "dob": "20-01-2010", "contact": "0392653780", "admission": "2025", "course": "", "state": "Punjab", "city": "Lahore", "pin": "59560", "address": "House 875, St 5, Township, Lahore\n"}','{"name": "Umer Naveed", "email": "umer@example.com", "gender": "Male", "dob": "20-01-2010", "contact": "392653780", "admission": "2025", "course": "", "state": "Punjab", "city": "Lahore", "pin": "59560", "address": "House 875, St 5, Township, Lahore\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(179,'2025-04-27 15:19:13',NULL,'UPDATE','student','1009','{"name": "Usman Chaudhary", "email": "usman.chaudhry45@example.com", "gender": "Male", "dob": "03-06-2003", "contact": "0396384008", "admission": "2020", "course": "", "state": "Sindh", "city": "Hyderabad", "pin": "10672", "address": "8599 Spencer Street Suite 942, Hyderabad, Sindh\n"}','{"name": "Usman Chaudhary", "email": "usman.chaudhry45@example.com", "gender": "Male", "dob": "03-06-2003", "contact": "396384008", "admission": "2020", "course": "", "state": "Sindh", "city": "Hyderabad", "pin": "10672", "address": "8599 Spencer Street Suite 942, Hyderabad, Sindh\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(180,'2025-04-27 15:19:25',NULL,'UPDATE','student','1010','{"name": "Laiba Hussain", "email": "laiba.hussain@example.com", "gender": "Female", "dob": "05-05-1999", "contact": "0344979201", "admission": "2023", "course": "Select", "state": "Sindh", "city": "Hyderabad", "pin": "10672", "address": "823 Odom Squares, Hyderabad, Sindh\n"}','{"name": "Laiba Hussain", "email": "laiba.hussain@example.com", "gender": "Female", "dob": "05-05-1999", "contact": "344979201", "admission": "2023", "course": "", "state": "Sindh", "city": "Hyderabad", "pin": "10672", "address": "823 Odom Squares, Hyderabad, Sindh\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(181,'2025-04-27 15:19:40',NULL,'UPDATE','student','1011','{"name": "Khadija Mir", "email": "khadija.mir36@example.com", "gender": "Female", "dob": "27-05-1998", "contact": "03437599738", "admission": "2024", "course": "", "state": "Punjab", "city": "Faisalabad", "pin": "72447", "address": "3025 Bailey Cove Suite 344, Faisalabad, Punjab\n"}','{"name": "Khadija Mir", "email": "khadija.mir36@example.com", "gender": "Female", "dob": "27-05-1998", "contact": "3437599738", "admission": "2024", "course": "", "state": "Punjab", "city": "Faisalabad", "pin": "72447", "address": "3025 Bailey Cove Suite 344, Faisalabad, Punjab\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(182,'2025-04-27 15:19:54',NULL,'UPDATE','student','1012','{"name": "Ali Butt", "email": "ali36@example.com", "gender": "Male", "dob": "27-07-1998", "contact": "3437575884", "admission": "2024", "course": "", "state": "Punjab", "city": "Faisalabad", "pin": "72447", "address": "3025  D-Block, Gulberg , Faisalabad, Punjab\n\n"}','{"name": "Ali Butt", "email": "ali36@example.com", "gender": "Male", "dob": "27-07-1998", "contact": "3437575884", "admission": "2024", "course": "", "state": "Punjab", "city": "Faisalabad", "pin": "72447", "address": "3025  D-Block, Gulberg , Faisalabad, Punjab\n\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(183,'2025-04-27 15:20:05',NULL,'UPDATE','student','1013','{"name": "Imran Chaudhary", "email": "imran.chaudhry46@example.com", "gender": "Male", "dob": "05-09-1999", "contact": "3859037289", "admission": "2025", "course": "Select", "state": "Khyber Pakhtunkhwa", "city": "Abbottabad", "pin": "12833", "address": "98863 Ryan Extension, Abbottabad, Khyber Pakhtunkhwa\n\n"}','{"name": "Imran Chaudhary", "email": "imran.chaudhry46@example.com", "gender": "Male", "dob": "05-09-1999", "contact": "3859037289", "admission": "2025", "course": "", "state": "Khyber Pakhtunkhwa", "city": "Abbottabad", "pin": "12833", "address": "98863 Ryan Extension, Abbottabad, Khyber Pakhtunkhwa\n\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(184,'2025-04-27 15:20:17',NULL,'UPDATE','student','1014','{"name": "Muhammad Saad", "email": "saad75@example.com", "gender": "Male", "dob": "10-03-2006", "contact": "03164759742", "admission": "2023", "course": "Select", "state": "Punjab", "city": "Sheikhupura", "pin": "39350", "address": "89 New Gulberg, Housing Colony, Sheikhupura\n"}','{"name": "Muhammad Saad", "email": "saad75@example.com", "gender": "Male", "dob": "10-03-2006", "contact": "3164759742", "admission": "2023", "course": "", "state": "Punjab", "city": "Sheikhupura", "pin": "39350", "address": "89 New Gulberg, Housing Colony, Sheikhupura\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(185,'2025-04-27 15:20:32',NULL,'UPDATE','student','1015','{"name": "Muhammad Asif", "email": "asif346@example.com", "gender": "Male", "dob": "14-01-1996", "contact": "03165858608", "admission": "2020", "course": "Select", "state": "Punjab", "city": "Gujranwala", "pin": "134586", "address": "89 Satellite Town, Gujranwala\n"}','{"name": "Muhammad Asif", "email": "asif346@example.com", "gender": "Male", "dob": "14-01-1996", "contact": "3165858608", "admission": "2020", "course": "", "state": "Punjab", "city": "Gujranwala", "pin": "134586", "address": "89 Satellite Town, Gujranwala\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(186,'2025-04-27 15:20:48',NULL,'UPDATE','student','1016','{"name": "Omer Farooq", "email": "omer.farooq14@example.com", "gender": "Male", "dob": "14-01-1996", "contact": "03165858608", "admission": "2022", "course": "Select", "state": "Blochistan", "city": "Quetta", "pin": "58651", "address": "636 Jaclyn Bypass, Quetta, Balochistan\n"}','{"name": "Omer Farooq", "email": "omer.farooq14@example.com", "gender": "Male", "dob": "14-01-1996", "contact": "3165858608", "admission": "2022", "course": "", "state": "Blochistan", "city": "Quetta", "pin": "58651", "address": "636 Jaclyn Bypass, Quetta, Balochistan\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(187,'2025-04-27 15:21:09',NULL,'UPDATE','student','1062','{"name": "Faiza Ameen", "email": "faiza664@example.com", "gender": "Female", "dob": "27-05-1998", "contact": "523824800", "admission": "2021", "course": "", "state": "Khyber Pakhtunkhwa", "city": "Abbottabad", "pin": "15749", "address": "044 Lewis Mountains, Abbottabad, Khyber Pakhtunkhwa\t\t\t\n\n"}','{"name": "Faiza Ameen", "email": "faiza664@example.com", "gender": "Female", "dob": "27-05-1998", "contact": "523824800", "admission": "2021", "course": "", "state": "Khyber Pakhtunkhwa", "city": "Abbottabad", "pin": "15749", "address": "044 Lewis Mountains, Abbottabad, Khyber Pakhtunkhwa\t\t\t\n\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(188,'2025-04-27 15:21:23',NULL,'UPDATE','student','1061','{"name": "Usman Mazhar", "email": "usman664@example.com", "gender": "Male", "dob": "27-05-1998", "contact": "523824800", "admission": "2021", "course": "", "state": "Khyber Pakhtunkhwa", "city": "Abbottabad", "pin": "15749", "address": "044 Lewis Mountains, Abbottabad, Khyber Pakhtunkhwa\t\t\t\n\n"}','{"name": "Usman Mazhar", "email": "usman664@example.com", "gender": "Male", "dob": "27-05-1998", "contact": "523824800", "admission": "2021", "course": "", "state": "Khyber Pakhtunkhwa", "city": "Abbottabad", "pin": "15749", "address": "044 Lewis Mountains, Abbottabad, Khyber Pakhtunkhwa\t\t\t\n\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(189,'2025-04-27 15:21:27',NULL,'UPDATE','student','1060','{"name": "Ahsan Naveed", "email": "ahsan354@example.com", "gender": "Male", "dob": "13-07-2001\t", "contact": "6487723498", "admission": "2023", "course": "Select", "state": "Punjab", "city": "Rawalpindi", "pin": "91044", "address": "82680 Sandra Crossing Apt. 174, Rawalpindi, Punjab\t\t\t\n\n"}','{"name": "Ahsan Naveed", "email": "ahsan354@example.com", "gender": "Male", "dob": "13-07-2001\t", "contact": "6487723498", "admission": "2023", "course": "", "state": "Punjab", "city": "Rawalpindi", "pin": "91044", "address": "82680 Sandra Crossing Apt. 174, Rawalpindi, Punjab\t\t\t\n\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(190,'2025-04-27 15:21:37',NULL,'UPDATE','student','1060','{"name": "Ahsan Naveed", "email": "ahsan354@example.com", "gender": "Male", "dob": "13-07-2001\t", "contact": "6487723498", "admission": "2023", "course": "", "state": "Punjab", "city": "Rawalpindi", "pin": "91044", "address": "82680 Sandra Crossing Apt. 174, Rawalpindi, Punjab\t\t\t\n\n\n"}','{"name": "Ahsan Naveed", "email": "ahsan354@example.com", "gender": "Male", "dob": "13-07-2001\t", "contact": "6487723498", "admission": "2023", "course": "", "state": "Punjab", "city": "Rawalpindi", "pin": "91044", "address": "82680 Sandra Crossing Apt. 174, Rawalpindi, Punjab\t\t\t\n\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(191,'2025-04-27 15:21:50',NULL,'UPDATE','student','1059','{"name": "Luqman Tahir", "email": "luqman334@example.com", "gender": "Male", "dob": "13-07-2006\t", "contact": "6487723498", "admission": "2025", "course": "Select", "state": "Punjab", "city": "Rawalpindi", "pin": "91044", "address": "82680 Sandra Crossing Apt. 174, Rawalpindi, Punjab\t\t\t\n\n"}','{"name": "Luqman Tahir", "email": "luqman334@example.com", "gender": "Male", "dob": "13-07-2006\t", "contact": "6487723498", "admission": "2025", "course": "", "state": "Punjab", "city": "Rawalpindi", "pin": "91044", "address": "82680 Sandra Crossing Apt. 174, Rawalpindi, Punjab\t\t\t\n\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(192,'2025-04-27 15:22:02',NULL,'UPDATE','student','1058','{"name": "Ammar Tanveer", "email": "ammar334@example.com", "gender": "Male", "dob": "01-03-2007", "contact": "6487723498", "admission": "2025", "course": "Select", "state": "Sindh", "city": "Karachi", "pin": "34346", "address": "08387 Michael Lane Apt. 998, Karachi, Sindh\n"}','{"name": "Ammar Tanveer", "email": "ammar334@example.com", "gender": "Male", "dob": "01-03-2007", "contact": "6487723498", "admission": "2025", "course": "", "state": "Sindh", "city": "Karachi", "pin": "34346", "address": "08387 Michael Lane Apt. 998, Karachi, Sindh\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(193,'2025-04-27 15:22:15',NULL,'UPDATE','student','1057','{"name": "Fatima Tanveer", "email": "fatima543@example.com", "gender": "Female", "dob": "13-07-2006", "contact": "576680956", "admission": "2020", "course": "Select", "state": "Punjab", "city": "Rawalpindi", "pin": "\t91044", "address": "82680 Sandra Crossing Apt. 174, Rawalpindi, Punjab\t\t\t\n\n"}','{"name": "Fatima Tanveer", "email": "fatima543@example.com", "gender": "Female", "dob": "13-07-2006", "contact": "576680956", "admission": "2020", "course": "", "state": "Punjab", "city": "Rawalpindi", "pin": "91044", "address": "82680 Sandra Crossing Apt. 174, Rawalpindi, Punjab\t\t\t\n\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(194,'2025-04-27 15:22:28',NULL,'UPDATE','student','1056','{"name": "Abeera Javed", "email": "abeera748@example.com", "gender": "Female", "dob": "01-01-1999", "contact": "4787923840", "admission": "2020", "course": "Select", "state": "Balochistan", "city": "Quetta", "pin": "32512", "address": "8193 John Square, Quetta, Balochistan\t\t\t\n\n"}','{"name": "Abeera Javed", "email": "abeera748@example.com", "gender": "Female", "dob": "01-01-1999", "contact": "4787923840", "admission": "2020", "course": "", "state": "Balochistan", "city": "Quetta", "pin": "32512", "address": "8193 John Square, Quetta, Balochistan\t\t\t\n\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(195,'2025-04-27 15:22:39',NULL,'UPDATE','student','1055','{"name": "Tehreem Zahoor", "email": "rayyan36378@example.com", "gender": "Female", "dob": "31/01/1999", "contact": "6736892830", "admission": "2021", "course": "", "state": "Islamabad Capital Territory", "city": "Islamabad", "pin": "31559", "address": "3516 Gregory Cape Suite 526, Islamabad, Islamabad Capital Territory\t\t\t\n\n\n"}','{"name": "Tehreem Zahoor", "email": "rayyan36378@example.com", "gender": "Female", "dob": "31/01/1999", "contact": "6736892830", "admission": "2021", "course": "", "state": "Islamabad Capital Territory", "city": "Islamabad", "pin": "31559", "address": "3516 Gregory Cape Suite 526, Islamabad, Islamabad Capital Territory\t\t\t\n\n\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(196,'2025-04-27 15:22:56',NULL,'UPDATE','student','1017','{"name": "Usman Malik", "email": "usman.malik49@example.com", "gender": "Male", "dob": "02-06-2007", "contact": "3468047592", "admission": "2022", "course": "Select", "state": "Islamabad Capital Territory", "city": "Islamabad", "pin": "44958", "address": "240 Heather Harbor Suite 938, Islamabad, Islamabad Capital Territory\n\n"}','{"name": "Usman Malik", "email": "usman.malik49@example.com", "gender": "Male", "dob": "02-06-2007", "contact": "3468047592", "admission": "2022", "course": "", "state": "Islamabad Capital Territory", "city": "Islamabad", "pin": "44958", "address": "240 Heather Harbor Suite 938, Islamabad, Islamabad Capital Territory\n\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(197,'2025-04-27 15:23:06',NULL,'UPDATE','student','1018','{"name": "Iqra Ahmed", "email": "iqra.ahmed82@example.com", "gender": "Female", "dob": "02-06-2007", "contact": "03468047592", "admission": "2022", "course": "Select", "state": "Sindh", "city": "Karachi", "pin": "44987", "address": "05337 Cynthia Light, Karachi, Sindh\n"}','{"name": "Iqra Ahmed", "email": "iqra.ahmed82@example.com", "gender": "Female", "dob": "02-06-2007", "contact": "3468047592", "admission": "2022", "course": "", "state": "Sindh", "city": "Karachi", "pin": "44987", "address": "05337 Cynthia Light, Karachi, Sindh\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(198,'2025-04-27 15:23:21',NULL,'UPDATE','student','1019','{"name": "Bilal Malik", "email": "bilal.malik38@example.com", "gender": "Male", "dob": "05-07-2002", "contact": "0395686037", "admission": "2023", "course": "Select", "state": "Punjab", "city": "Multan", "pin": "51364", "address": "88713 Alejandra Ford, Multan, Punjab\n"}','{"name": "Bilal Malik", "email": "bilal.malik38@example.com", "gender": "Male", "dob": "05-07-2002", "contact": "395686037", "admission": "2023", "course": "", "state": "Punjab", "city": "Multan", "pin": "51364", "address": "88713 Alejandra Ford, Multan, Punjab\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(199,'2025-04-27 15:23:35',NULL,'UPDATE','student','1020','{"name": "Saad Iqbal", "email": "saadiqbal38@example.com", "gender": "Male", "dob": "05-06-2009", "contact": "37907580", "admission": "2024", "course": "", "state": "Punjab", "city": "Multan", "pin": "51364", "address": "88713 Alejandra Ford, Multan, Punjab\n\n"}','{"name": "Saad Iqbal", "email": "saadiqbal38@example.com", "gender": "Male", "dob": "05-06-2009", "contact": "37907580", "admission": "2024", "course": "", "state": "Punjab", "city": "Multan", "pin": "51364", "address": "88713 Alejandra Ford, Multan, Punjab\n\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(200,'2025-04-27 15:23:48',NULL,'UPDATE','student','1021','{"name": "Ali Butt", "email": "ali.butt9@example.com", "gender": "Male", "dob": "03-08-2005", "contact": "03846589273", "admission": "2023", "course": "", "state": "Punjab", "city": "Lahore", "pin": "83516", "address": "33095 Terrance Harbors, Lahore, Punjab\n"}','{"name": "Ali Butt", "email": "ali.butt9@example.com", "gender": "Male", "dob": "03-08-2005", "contact": "3846589273", "admission": "2023", "course": "", "state": "Punjab", "city": "Lahore", "pin": "83516", "address": "33095 Terrance Harbors, Lahore, Punjab\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(201,'2025-04-27 15:24:24',NULL,'UPDATE','student','1022','{"name": "Hina Iqbal", "email": "hina.iqbal78@example.com", "gender": "Female", "dob": "03-05-2001", "contact": "037595768986", "admission": "2021", "course": "Select", "state": "Punjab", "city": "Multan", "pin": "39446", "address": "091 Christopher Crescent, Multan, Punjab\n"}','{"name": "Hina Iqbal", "email": "hina.iqbal78@example.com", "gender": "Female", "dob": "03-05-2001", "contact": "37595768986", "admission": "2021", "course": "", "state": "Punjab", "city": "Multan", "pin": "39446", "address": "091 Christopher Crescent, Multan, Punjab\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(202,'2025-04-27 15:24:44',NULL,'UPDATE','student','1023','{"name": "Saad Hussain", "email": "saad.hussain23@example.com", "gender": "Male", "dob": "04-07-2012", "contact": "03847867989", "admission": "2023", "course": "Select", "state": "Punjab", "city": "Rawalpindi", "pin": "36509", "address": "1219 Charles Mews Apt. 551, Rawalpindi, Punjab\n"}','{"name": "Saad Hussain", "email": "saad.hussain23@example.com", "gender": "Male", "dob": "04-07-2012", "contact": "3847867989", "admission": "2023", "course": "", "state": "Punjab", "city": "Rawalpindi", "pin": "36509", "address": "1219 Charles Mews Apt. 551, Rawalpindi, Punjab\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(203,'2025-04-27 15:25:01',NULL,'UPDATE','student','1024','{"name": "Rabia Ahmed", "email": "rabia.ahmed53@example.com", "gender": "Female", "dob": "08-11-2003", "contact": "03668796757", "admission": "2020", "course": "Select", "state": "Islamabad Capital Territory", "city": "Islamabad", "pin": "93475", "address": "31868 Walker Spur, Islamabad, Islamabad Capital Territory\n"}','{"name": "Rabia Ahmed", "email": "rabia.ahmed53@example.com", "gender": "Female", "dob": "08-11-2003", "contact": "3668796757", "admission": "2020", "course": "", "state": "Islamabad Capital Territory", "city": "Islamabad", "pin": "93475", "address": "31868 Walker Spur, Islamabad, Islamabad Capital Territory\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(204,'2025-04-27 15:25:11',NULL,'UPDATE','student','1025','{"name": "Laiba Sheikh", "email": "laiba.sheikh45@example.com", "gender": "Female", "dob": "08-11-2003", "contact": "03668796757", "admission": "2020", "course": "Select", "state": "Punjab", "city": "Rawalpindi", "pin": "86475", "address": "1149 Green Drive Suite 702, Rawalpindi, Punjab\n"}','{"name": "Laiba Sheikh", "email": "laiba.sheikh45@example.com", "gender": "Female", "dob": "08-11-2003", "contact": "3668796757", "admission": "2020", "course": "", "state": "Punjab", "city": "Rawalpindi", "pin": "86475", "address": "1149 Green Drive Suite 702, Rawalpindi, Punjab\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(205,'2025-04-27 15:25:23',NULL,'UPDATE','student','1026','{"name": "Khadija Sheikh", "email": "khadija.sheikh11@example.com", "gender": "Female", "dob": "25-12-2000", "contact": "03566578657", "admission": "2021", "course": "Select", "state": "Punjab", "city": "Lahore", "pin": "52509", "address": "393 Hector Cape Suite 660, Lahore, Punjab\n"}','{"name": "Khadija Sheikh", "email": "khadija.sheikh11@example.com", "gender": "Female", "dob": "25-12-2000", "contact": "3566578657", "admission": "2021", "course": "", "state": "Punjab", "city": "Lahore", "pin": "52509", "address": "393 Hector Cape Suite 660, Lahore, Punjab\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(206,'2025-04-27 15:25:37',NULL,'UPDATE','student','1027','{"name": "Nadia Butt", "email": "nadia.butt60@example.com", "gender": "Female", "dob": "04-11-2009", "contact": "0377765778", "admission": "2024", "course": "Select", "state": "Balochistan", "city": "Quetta", "pin": "16642", "address": "57792 Evans Knoll Suite 178, Quetta, Balochistan\n"}','{"name": "Nadia Butt", "email": "nadia.butt60@example.com", "gender": "Female", "dob": "04-11-2009", "contact": "377765778", "admission": "2024", "course": "", "state": "Balochistan", "city": "Quetta", "pin": "16642", "address": "57792 Evans Knoll Suite 178, Quetta, Balochistan\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(207,'2025-04-27 15:26:02',NULL,'UPDATE','student','1028','{"name": "Saad Ahmed", "email": "saad.ahmed67@example.com", "gender": "Male", "dob": "10-03-2007", "contact": "0388766578", "admission": "2023", "course": "Select", "state": "Sindh", "city": "Sukkur", "pin": "29901", "address": "39803 Ramirez Way, Sukkur, Sindh\n"}','{"name": "Saad Ahmed", "email": "saad.ahmed67@example.com", "gender": "Male", "dob": "10-03-2007", "contact": "388766578", "admission": "2023", "course": "", "state": "Sindh", "city": "Sukkur", "pin": "29901", "address": "39803 Ramirez Way, Sukkur, Sindh\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(208,'2025-04-27 15:26:21',NULL,'UPDATE','student','1029','{"name": "Sana Hussain", "email": "sana.hussain67@example.com", "gender": "Female", "dob": "01-02-1999", "contact": "0365676879", "admission": "2022", "course": "Select", "state": "Punjab", "city": "Lahore", "pin": "28034", "address": "2388 Rachel Rapid Suite 979, Lahore, Punjab\n"}','{"name": "Sana Hussain", "email": "sana.hussain67@example.com", "gender": "Female", "dob": "01-02-1999", "contact": "365676879", "admission": "2022", "course": "", "state": "Punjab", "city": "Lahore", "pin": "28034", "address": "2388 Rachel Rapid Suite 979, Lahore, Punjab\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(209,'2025-04-27 15:26:34',NULL,'UPDATE','student','1030','{"name": "Sana Irfan", "email": "sanairfan098@example.com", "gender": "Female", "dob": "31-05-1998", "contact": "03564657689", "admission": "2019", "course": "Select", "state": "Punjab", "city": "Kasur", "pin": "34786", "address": "2388 Kaliyan, Kasur, Punjab\n"}','{"name": "Sana Irfan", "email": "sanairfan098@example.com", "gender": "Female", "dob": "31-05-1998", "contact": "3564657689", "admission": "2019", "course": "", "state": "Punjab", "city": "Kasur", "pin": "34786", "address": "2388 Kaliyan, Kasur, Punjab\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(210,'2025-04-27 15:26:45',NULL,'UPDATE','student','1031','{"name": "Habiba Asif", "email": "habiasif543@example.com", "gender": "Female", "dob": "07-09-2000", "contact": "0397865787", "admission": "2022", "course": "", "state": "Punjab", "city": "Gujranwala", "pin": "257458", "address": "3456 Peoples Colony, Gujranwala, Punjab\n"}','{"name": "Habiba Asif", "email": "habiasif543@example.com", "gender": "Female", "dob": "07-09-2000", "contact": "397865787", "admission": "2022", "course": "", "state": "Punjab", "city": "Gujranwala", "pin": "257458", "address": "3456 Peoples Colony, Gujranwala, Punjab\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(211,'2025-04-27 15:26:54',NULL,'UPDATE','student','1032','{"name": "Junaid Butt", "email": "junaid.butt51@example.com", "gender": "Male", "dob": "07-09-2002", "contact": "0356678889", "admission": "2025", "course": "", "state": "Khyber Pakhtunkhwa", "city": "Abbottabad", "pin": "18765", "address": "9894 Sherry Summit Apt. 109, Abbottabad, Khyber Pakhtunkhwa\n"}','{"name": "Junaid Butt", "email": "junaid.butt51@example.com", "gender": "Male", "dob": "07-09-2002", "contact": "356678889", "admission": "2025", "course": "", "state": "Khyber Pakhtunkhwa", "city": "Abbottabad", "pin": "18765", "address": "9894 Sherry Summit Apt. 109, Abbottabad, Khyber Pakhtunkhwa\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(212,'2025-04-27 15:27:05',NULL,'UPDATE','student','1033','{"name": "Aiman Iqbal", "email": "aiman38@example.com", "gender": "Female", "dob": "03-08-2001", "contact": "03876675789", "admission": "2020", "course": "Select", "state": "Punjab", "city": "Multan", "pin": "15774", "address": "223 Macdonald Lodge, Multan, Punjab\n"}','{"name": "Aiman Iqbal", "email": "aiman38@example.com", "gender": "Female", "dob": "03-08-2001", "contact": "3876675789", "admission": "2020", "course": "", "state": "Punjab", "city": "Multan", "pin": "15774", "address": "223 Macdonald Lodge, Multan, Punjab\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(213,'2025-04-27 15:27:30',NULL,'UPDATE','student','1034','{"name": "Amna Zahoor", "email": "amna@example.com", "gender": "Female", "dob": "04-12-2003", "contact": "0357578857", "admission": "2022", "course": "", "state": "Islamabad Capital Territory", "city": "Islamabad", "pin": "36131", "address": "House 23, F-11, Fazaia Colony, Islamabad\n"}','{"name": "Amna Zahoor", "email": "amna@example.com", "gender": "Female", "dob": "04-12-2003", "contact": "357578857", "admission": "2022", "course": "", "state": "Islamabad Capital Territory", "city": "Islamabad", "pin": "36131", "address": "House 23, F-11, Fazaia Colony, Islamabad\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(214,'2025-04-27 15:27:43',NULL,'UPDATE','student','1035','{"name": "Ayesha Butt", "email": "ayesha.butt59@example.com", "gender": "Female", "dob": "04-12-2006", "contact": "357567897", "admission": "2022", "course": "", "state": "Islamabad Capital Territory", "city": "Islamabad", "pin": "36131", "address": "2469 Ryan Lane, Islamabad, Islamabad Capital Territory\n\n"}','{"name": "Ayesha Butt", "email": "ayesha.butt59@example.com", "gender": "Female", "dob": "04-12-2006", "contact": "357567897", "admission": "2022", "course": "", "state": "Islamabad Capital Territory", "city": "Islamabad", "pin": "36131", "address": "2469 Ryan Lane, Islamabad, Islamabad Capital Territory\n\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(215,'2025-04-27 15:27:52',NULL,'UPDATE','student','1036','{"name": "Ayesha Khan", "email": "ayesha.khan11@example.com", "gender": "Female", "dob": "04-12-2006", "contact": "0357567897", "admission": "2022", "course": "", "state": "Sindh", "city": "Karachi", "pin": "26165", "address": "56574 Gina Cape, Hyderabad, Sindh\n"}','{"name": "Ayesha Khan", "email": "ayesha.khan11@example.com", "gender": "Female", "dob": "04-12-2006", "contact": "357567897", "admission": "2022", "course": "", "state": "Sindh", "city": "Karachi", "pin": "26165", "address": "56574 Gina Cape, Hyderabad, Sindh\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(216,'2025-04-27 15:28:30',NULL,'UPDATE','student','1037','{"name": "Alicia White", "email": "mathewsmichael@arnold.com", "gender": "Male", "dob": "26-09-2004", "contact": "9735513362", "admission": "2023", "course": "Select", "state": "Sindh", "city": "Peshawar", "pin": "98689", "address": "9855 Maxwell Prairie Apt. 595, South Ryanmouth, MA 21455\t\t\n"}','{"name": "Alicia White", "email": "mathewsmichael@arnold.com", "gender": "Male", "dob": "26-09-2004", "contact": "9735513362", "admission": "2023", "course": "", "state": "Sindh", "city": "Peshawar", "pin": "98689", "address": "9855 Maxwell Prairie Apt. 595, South Ryanmouth, MA 21455\t\t\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(217,'2025-04-27 15:28:40',NULL,'UPDATE','student','1038','{"name": "Elizabeth Butler", "email": "orrgina@lynch.com", "gender": "Male", "dob": "08-04-2003", "contact": "8082630407", "admission": "2021", "course": "Select", "state": "Punjab", "city": "Multan", "pin": "54330", "address": "747 Jodi Roads, Alanburgh, MNP22807\n"}','{"name": "Elizabeth Butler", "email": "orrgina@lynch.com", "gender": "Male", "dob": "08-04-2003", "contact": "8082630407", "admission": "2021", "course": "", "state": "Punjab", "city": "Multan", "pin": "54330", "address": "747 Jodi Roads, Alanburgh, MNP22807\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(218,'2025-04-27 15:28:56',NULL,'UPDATE','student','1039','{"name": "Abeera Javed", "email": "abeera748@example.com", "gender": "Female", "dob": "01-01-1999", "contact": "4787923840", "admission": "2020", "course": "Select", "state": "Balochistan", "city": "Quetta", "pin": "32512", "address": "8193 John Square, Quetta, Balochistan\t\t\t\n\n"}','{"name": "Abeera Javed", "email": "abeera748@example.com", "gender": "Female", "dob": "01-01-1999", "contact": "4787923840", "admission": "2020", "course": "", "state": "Balochistan", "city": "Quetta", "pin": "32512", "address": "8193 John Square, Quetta, Balochistan\t\t\t\n\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(219,'2025-04-27 15:29:15',NULL,'UPDATE','student','1040','{"name": "Marcus Weaver", "email": "howellalexandra@gmail.com", "gender": "Female", "dob": "07-12-2006", "contact": "9235994658", "admission": "2023", "course": "Select", "state": "Punjab", "city": "Multan", "pin": "34106", "address": "8611 Perez Field Apt. 611, Lake Robinmouth, CO 10031\t\n\n"}','{"name": "Marcus Weaver", "email": "howellalexandra@gmail.com", "gender": "Female", "dob": "07-12-2006", "contact": "9235994658", "admission": "2023", "course": "", "state": "Punjab", "city": "Multan", "pin": "34106", "address": "8611 Perez Field Apt. 611, Lake Robinmouth, CO 10031\t\n\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(220,'2025-04-27 15:29:28',NULL,'UPDATE','student','1041','{"name": "Craig Hale", "email": "travismarshall@guzman-jordan.com", "gender": "Male", "dob": "16-11-2006", "contact": "2910847502", "admission": "2023", "course": "Select", "state": "Punjab", "city": "Multan", "pin": "34106", "address": " Rose Mountains, Lake Justin, KS 09792\t\t\n\n"}','{"name": "Craig Hale", "email": "travismarshall@guzman-jordan.com", "gender": "Male", "dob": "16-11-2006", "contact": "2910847502", "admission": "2023", "course": "", "state": "Punjab", "city": "Multan", "pin": "34106", "address": " Rose Mountains, Lake Justin, KS 09792\t\t\n\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(221,'2025-04-27 15:29:39',NULL,'UPDATE','student','1042','{"name": "Timothy Rivers", "email": "pedroyork@gardner.com", "gender": "Male", "dob": "16-11-2006", "contact": "8073861777", "admission": "2021", "course": "Select", "state": "Khyber Pakhtunkhwa", "city": "Hyderabad", "pin": "72855", "address": "03695 Cruz Mill, Samanthachester, NE 15772\t\t\n\n"}','{"name": "Timothy Rivers", "email": "pedroyork@gardner.com", "gender": "Male", "dob": "16-11-2006", "contact": "8073861777", "admission": "2021", "course": "", "state": "Khyber Pakhtunkhwa", "city": "Hyderabad", "pin": "72855", "address": "03695 Cruz Mill, Samanthachester, NE 15772\t\t\n\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(222,'2025-04-27 15:29:49',NULL,'UPDATE','student','1043','{"name": "Ayesha Butt", "email": "ayesha.butt59@example.com", "gender": "Female", "dob": "16-11-2006", "contact": "8073861777", "admission": "2021", "course": "Select", "state": "Islamabad Capital Territory", "city": "Islamabad", "pin": "36131", "address": "2469 Ryan Lane, Islamabad, Islamabad Capital Territory\t\n\n"}','{"name": "Ayesha Butt", "email": "ayesha.butt59@example.com", "gender": "Female", "dob": "16-11-2006", "contact": "8073861777", "admission": "2021", "course": "", "state": "Islamabad Capital Territory", "city": "Islamabad", "pin": "36131", "address": "2469 Ryan Lane, Islamabad, Islamabad Capital Territory\t\n\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(223,'2025-04-27 15:30:02',NULL,'UPDATE','student','1044','{"name": "Anthony Clark", "email": "pgraham@singh.com", "gender": "Female", "dob": "17-06-2006\t", "contact": "3783942597", "admission": "2022", "course": "Select", "state": "Sindh", "city": "Karachi", "pin": "13666", "address": "Unit 5297 Box 1405, DPO AP 39755, Karachi\n"}','{"name": "Anthony Clark", "email": "pgraham@singh.com", "gender": "Female", "dob": "17-06-2006\t", "contact": "3783942597", "admission": "2022", "course": "", "state": "Sindh", "city": "Karachi", "pin": "13666", "address": "Unit 5297 Box 1405, DPO AP 39755, Karachi\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(224,'2025-04-27 15:30:12',NULL,'UPDATE','student','1045','{"name": "Fatima Javed", "email": "fatima748@example.com", "gender": "Female", "dob": "01-01-1999", "contact": "4787923840", "admission": "2020", "course": "Select", "state": "Balochistan", "city": "Quetta", "pin": "32512", "address": "8193 John Square, Quetta, Balochistan\t\t\t\n\n"}','{"name": "Fatima Javed", "email": "fatima748@example.com", "gender": "Female", "dob": "01-01-1999", "contact": "4787923840", "admission": "2020", "course": "", "state": "Balochistan", "city": "Quetta", "pin": "32512", "address": "8193 John Square, Quetta, Balochistan\t\t\t\n\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(225,'2025-04-27 15:30:22',NULL,'UPDATE','student','1046','{"name": "Laiba Hussain", "email": "laiba.hussain26@example.com", "gender": "Female", "dob": "24-02-2000", "contact": "0845676808", "admission": "2024", "course": "Select", "state": "Punjab", "city": "Lahore", "pin": "21472", "address": "623 Sosa Green, Lahore, Punjab\t\n\n"}','{"name": "Laiba Hussain", "email": "laiba.hussain26@example.com", "gender": "Female", "dob": "24-02-2000", "contact": "845676808", "admission": "2024", "course": "", "state": "Punjab", "city": "Lahore", "pin": "21472", "address": "623 Sosa Green, Lahore, Punjab\t\n\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(226,'2025-04-27 15:30:33',NULL,'UPDATE','student','1047','{"name": "Laiba Hussain", "email": "laiba.hussain26@example.com", "gender": "Female", "dob": "24-02-2000", "contact": "0845676808", "admission": "2024", "course": "Select", "state": "Punjab", "city": "Lahore", "pin": "21472", "address": "623 Sosa Green, Lahore, Punjab\t\n\n"}','{"name": "Laiba Hussain", "email": "laiba.hussain26@example.com", "gender": "Female", "dob": "24-02-2000", "contact": "845676808", "admission": "2024", "course": "", "state": "Punjab", "city": "Lahore", "pin": "21472", "address": "623 Sosa Green, Lahore, Punjab\t\n\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(227,'2025-04-27 15:30:52',NULL,'UPDATE','student','1048','{"name": "Sana Khan", "email": "sana.khan86@example.com", "gender": "Female", "dob": "13-01-2003", "contact": "0845676808", "admission": "2024", "course": "Select", "state": "Punjab", "city": "Faisalabad", "pin": "24411", "address": "702 Kimberly Fork, Faisalabad, Punjab\t\n\n"}','{"name": "Sana Khan", "email": "sana.khan86@example.com", "gender": "Female", "dob": "13-01-2003", "contact": "845676808", "admission": "2024", "course": "", "state": "Punjab", "city": "Faisalabad", "pin": "24411", "address": "702 Kimberly Fork, Faisalabad, Punjab\t\n\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(228,'2025-04-27 15:31:03',NULL,'UPDATE','student','1049','{"name": "Usman Mir", "email": "sman.mir7@example.com", "gender": "Male", "dob": "02-06-2007", "contact": "845676808", "admission": "2024", "course": "Select", "state": "Sindh", "city": "Karachi", "pin": "55759", "address": "0389 Michael Lane Apt. 998, Karachi, Sindh\t\n\n\n"}','{"name": "Usman Mir", "email": "sman.mir7@example.com", "gender": "Male", "dob": "02-06-2007", "contact": "845676808", "admission": "2024", "course": "", "state": "Sindh", "city": "Karachi", "pin": "55759", "address": "0389 Michael Lane Apt. 998, Karachi, Sindh\t\n\n\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(229,'2025-04-27 15:31:17',NULL,'UPDATE','student','1050','{"name": "Usman Mir", "email": "sman.mir7@example.com", "gender": "Male", "dob": "13-01-2003", "contact": "3657798869", "admission": "2022", "course": "Select", "state": "Punjab", "city": "Faisalabad", "pin": "24411", "address": "702 Kimberly Fork, Faisalabad, Punjab\t\t\t\n\n"}','{"name": "Usman Mir", "email": "sman.mir7@example.com", "gender": "Male", "dob": "13-01-2003", "contact": "3657798869", "admission": "2022", "course": "", "state": "Punjab", "city": "Faisalabad", "pin": "24411", "address": "702 Kimberly Fork, Faisalabad, Punjab\t\t\t\n\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(230,'2025-04-27 15:31:28',NULL,'UPDATE','student','1051','{"name": "Arham Iqbal", "email": "arham@example.com", "gender": "Male", "dob": "14-02-2003", "contact": "8665679085", "admission": "2022", "course": "Select", "state": "Islamabad Capital Territory", "city": "Islamabad", "pin": "79667", "address": "954 Steven Islands, Islamabad, Islamabad Capital Territory\t\t\t\n\n"}','{"name": "Arham Iqbal", "email": "arham@example.com", "gender": "Male", "dob": "14-02-2003", "contact": "8665679085", "admission": "2022", "course": "", "state": "Islamabad Capital Territory", "city": "Islamabad", "pin": "79667", "address": "954 Steven Islands, Islamabad, Islamabad Capital Territory\t\t\t\n\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(231,'2025-04-27 15:31:38',NULL,'UPDATE','student','1052','{"name": "Eshal Nadeem", "email": "eshal45@example.com", "gender": "Female", "dob": "14-02-2003", "contact": "8665679085", "admission": "2022", "course": "Select", "state": "Islamabad Capital Territory", "city": "Islamabad", "pin": "79667", "address": "954 Steven Islands, Islamabad, Islamabad Capital Territory\t\t\t\n\n"}','{"name": "Eshal Nadeem", "email": "eshal45@example.com", "gender": "Female", "dob": "14-02-2003", "contact": "8665679085", "admission": "2022", "course": "", "state": "Islamabad Capital Territory", "city": "Islamabad", "pin": "79667", "address": "954 Steven Islands, Islamabad, Islamabad Capital Territory\t\t\t\n\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(232,'2025-04-27 15:32:01',NULL,'UPDATE','student','1053','{"name": "Muhammad Rehan", "email": "rehan75@example.com", "gender": "Male", "dob": "14-02-2003", "contact": "8665679085", "admission": "2022", "course": "Select", "state": "Islamabad Capital Territory", "city": "Islamabad", "pin": "79667", "address": "954 Steven Islands, Islamabad, Islamabad Capital Territory\t\t\t\n\n"}','{"name": "Muhammad Rehan", "email": "rehan75@example.com", "gender": "Male", "dob": "14-02-2003", "contact": "8665679085", "admission": "2022", "course": "", "state": "Islamabad Capital Territory", "city": "Islamabad", "pin": "79667", "address": "954 Steven Islands, Islamabad, Islamabad Capital Territory\t\t\t\n\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(233,'2025-04-27 15:32:14',NULL,'UPDATE','student','1054','{"name": "Rayyan Naveed", "email": "rayyan36378@example.com", "gender": "Male", "dob": "02-04-2000", "contact": "6736892830", "admission": "2021", "course": "Select", "state": "Punjab", "city": "Faisalabad", "pin": "24657", "address": "702 Kimberly Fork, Faisalabad, Punjab\n\n"}','{"name": "Rayyan Naveed", "email": "rayyan36378@example.com", "gender": "Male", "dob": "02-04-2000", "contact": "6736892830", "admission": "2021", "course": "", "state": "Punjab", "city": "Faisalabad", "pin": "24657", "address": "702 Kimberly Fork, Faisalabad, Punjab\n\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(234,'2025-04-27 15:33:17',NULL,'CREATE','result','1001-Java',NULL,'{"enroll_id": 1, "marks_ob": "998", "full_marks": "1000", "per": "99.8"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(235,'2025-04-28 14:41:10',NULL,'CREATE','course','Data Analytics',NULL,'{"name": "Data Analytics", "duration": "1 Year", "charges": "90000", "description": "Course: Data Analytics\nDuration: 1 Year\nFees: 90000\n\nDescription:\nThis program offers in-depth training in Data Analytics over 1 Year. Students will gain both theoretical knowledge and practical skills applicable in real-world scenarios.\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(236,'2025-04-28 14:41:34',NULL,'CREATE','course','Tableu',NULL,'{"name": "Tableu", "duration": "3 Months", "charges": "10000", "description": "Course: Tableu\nDuration: 3 Months\nFees: 10000\n\nDescription:\nThis program offers in-depth training in Tableu over 3 Months. Students will gain both theoretical knowledge and practical skills applicable in real-world scenarios.\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(237,'2025-04-28 14:41:48',NULL,'CREATE','course','Power BI',NULL,'{"name": "Power BI", "duration": "2 Months", "charges": "10000", "description": "Power BI Course Details:\n- Duration: 2 Months\n- Fees: 10000\n\nProgram Overview:\nOur Power BI course provides comprehensive education through a structured 2 Months curriculum designed for optimal learning outcomes.\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(238,'2025-04-28 14:44:11',NULL,'CREATE','student','1063',NULL,'{"roll": "1063", "name": "Ayesha Butt", "email": "ayesha.butt59@example.com", "gender": "Female", "dob": "02-04-2002", "contact": "033947846578", "admission": "2023", "course": "", "state": "Islamabad Capital Territory", "city": "Islamabad", "pin": "36131", "address": "2469 Ryan Lane, Islamabad, Islamabad Capital Territory\n\n"}','192.168.18.18');
INSERT INTO "audit_log" VALUES(239,'2025-04-28 14:50:01','yahya@gmail.com','LOGIN','employee','3',NULL,'{"email": "yahya@gmail.com"}','192.168.18.18');
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
INSERT INTO "course" VALUES(26,'Data Structures','1.5 Years','1050000','Course: Data Structures
Duration: 1.5 Years
Fees: 1050000

Description:
This program offers in-depth training in Data Structures over 1.5 Years. Students will gain both theoretical knowledge and practical skills applicable in real-world scenarios.
');
INSERT INTO "course" VALUES(27,'Data Analytics','1 Year','90000','Course: Data Analytics
Duration: 1 Year
Fees: 90000

Description:
This program offers in-depth training in Data Analytics over 1 Year. Students will gain both theoretical knowledge and practical skills applicable in real-world scenarios.
');
INSERT INTO "course" VALUES(28,'Tableu','3 Months','10000','Course: Tableu
Duration: 3 Months
Fees: 10000

Description:
This program offers in-depth training in Tableu over 3 Months. Students will gain both theoretical knowledge and practical skills applicable in real-world scenarios.
');
INSERT INTO "course" VALUES(29,'Power BI','2 Months','10000','Power BI Course Details:
- Duration: 2 Months
- Fees: 10000

Program Overview:
Our Power BI course provides comprehensive education through a structured 2 Months curriculum designed for optimal learning outcomes.
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
INSERT INTO "enrollment" VALUES(2,1001,5,'2025-04-27');
INSERT INTO "enrollment" VALUES(3,1001,8,'2025-04-27');
INSERT INTO "enrollment" VALUES(4,1001,13,'2025-04-27');
INSERT INTO "enrollment" VALUES(5,1001,18,'2025-04-27');
INSERT INTO "enrollment" VALUES(6,1001,26,'2025-04-27');
INSERT INTO "enrollment" VALUES(7,1002,2,'2025-04-27');
INSERT INTO "enrollment" VALUES(8,1002,5,'2025-04-27');
INSERT INTO "enrollment" VALUES(9,1002,8,'2025-04-27');
INSERT INTO "enrollment" VALUES(10,1002,15,'2025-04-27');
INSERT INTO "enrollment" VALUES(11,1002,17,'2025-04-27');
INSERT INTO "enrollment" VALUES(12,1002,20,'2025-04-27');
INSERT INTO "enrollment" VALUES(13,1003,2,'2025-04-27');
INSERT INTO "enrollment" VALUES(14,1003,6,'2025-04-27');
INSERT INTO "enrollment" VALUES(15,1003,12,'2025-04-27');
INSERT INTO "enrollment" VALUES(16,1003,19,'2025-04-27');
INSERT INTO "enrollment" VALUES(17,1003,25,'2025-04-27');
INSERT INTO "enrollment" VALUES(18,1003,26,'2025-04-27');
INSERT INTO "enrollment" VALUES(19,1004,2,'2025-04-27');
INSERT INTO "enrollment" VALUES(20,1004,6,'2025-04-27');
INSERT INTO "enrollment" VALUES(21,1004,9,'2025-04-27');
INSERT INTO "enrollment" VALUES(22,1004,13,'2025-04-27');
INSERT INTO "enrollment" VALUES(23,1004,19,'2025-04-27');
INSERT INTO "enrollment" VALUES(24,1004,23,'2025-04-27');
INSERT INTO "enrollment" VALUES(25,1005,13,'2025-04-27');
INSERT INTO "enrollment" VALUES(26,1005,15,'2025-04-27');
INSERT INTO "enrollment" VALUES(27,1005,18,'2025-04-27');
INSERT INTO "enrollment" VALUES(28,1005,22,'2025-04-27');
INSERT INTO "enrollment" VALUES(29,1005,25,'2025-04-27');
INSERT INTO "enrollment" VALUES(30,1005,26,'2025-04-27');
INSERT INTO "enrollment" VALUES(31,1006,7,'2025-04-27');
INSERT INTO "enrollment" VALUES(32,1006,11,'2025-04-27');
INSERT INTO "enrollment" VALUES(33,1006,15,'2025-04-27');
INSERT INTO "enrollment" VALUES(34,1006,18,'2025-04-27');
INSERT INTO "enrollment" VALUES(35,1006,22,'2025-04-27');
INSERT INTO "enrollment" VALUES(36,1006,24,'2025-04-27');
INSERT INTO "enrollment" VALUES(37,1007,19,'2025-04-27');
INSERT INTO "enrollment" VALUES(38,1007,23,'2025-04-27');
INSERT INTO "enrollment" VALUES(39,1007,24,'2025-04-27');
INSERT INTO "enrollment" VALUES(40,1007,25,'2025-04-27');
INSERT INTO "enrollment" VALUES(41,1007,26,'2025-04-27');
INSERT INTO "enrollment" VALUES(42,1008,2,'2025-04-27');
INSERT INTO "enrollment" VALUES(43,1008,7,'2025-04-27');
INSERT INTO "enrollment" VALUES(44,1008,13,'2025-04-27');
INSERT INTO "enrollment" VALUES(45,1008,17,'2025-04-27');
INSERT INTO "enrollment" VALUES(46,1008,20,'2025-04-27');
INSERT INTO "enrollment" VALUES(47,1008,25,'2025-04-27');
INSERT INTO "enrollment" VALUES(48,1008,26,'2025-04-27');
INSERT INTO "enrollment" VALUES(49,1009,14,'2025-04-27');
INSERT INTO "enrollment" VALUES(50,1009,16,'2025-04-27');
INSERT INTO "enrollment" VALUES(51,1009,18,'2025-04-27');
INSERT INTO "enrollment" VALUES(52,1009,19,'2025-04-27');
INSERT INTO "enrollment" VALUES(53,1009,25,'2025-04-27');
INSERT INTO "enrollment" VALUES(54,1009,26,'2025-04-27');
INSERT INTO "enrollment" VALUES(55,1010,6,'2025-04-27');
INSERT INTO "enrollment" VALUES(56,1010,8,'2025-04-27');
INSERT INTO "enrollment" VALUES(57,1010,13,'2025-04-27');
INSERT INTO "enrollment" VALUES(58,1010,17,'2025-04-27');
INSERT INTO "enrollment" VALUES(59,1010,20,'2025-04-27');
INSERT INTO "enrollment" VALUES(60,1010,24,'2025-04-27');
INSERT INTO "enrollment" VALUES(61,1010,26,'2025-04-27');
INSERT INTO "enrollment" VALUES(62,1011,2,'2025-04-27');
INSERT INTO "enrollment" VALUES(63,1011,4,'2025-04-27');
INSERT INTO "enrollment" VALUES(64,1011,9,'2025-04-27');
INSERT INTO "enrollment" VALUES(65,1011,13,'2025-04-27');
INSERT INTO "enrollment" VALUES(66,1011,14,'2025-04-27');
INSERT INTO "enrollment" VALUES(67,1011,16,'2025-04-27');
INSERT INTO "enrollment" VALUES(68,1011,17,'2025-04-27');
INSERT INTO "enrollment" VALUES(69,1011,19,'2025-04-27');
INSERT INTO "enrollment" VALUES(70,1012,4,'2025-04-27');
INSERT INTO "enrollment" VALUES(71,1012,8,'2025-04-27');
INSERT INTO "enrollment" VALUES(72,1012,14,'2025-04-27');
INSERT INTO "enrollment" VALUES(73,1012,15,'2025-04-27');
INSERT INTO "enrollment" VALUES(74,1012,16,'2025-04-27');
INSERT INTO "enrollment" VALUES(75,1012,20,'2025-04-27');
INSERT INTO "enrollment" VALUES(76,1012,22,'2025-04-27');
INSERT INTO "enrollment" VALUES(77,1013,2,'2025-04-27');
INSERT INTO "enrollment" VALUES(78,1013,6,'2025-04-27');
INSERT INTO "enrollment" VALUES(79,1013,8,'2025-04-27');
INSERT INTO "enrollment" VALUES(80,1013,11,'2025-04-27');
INSERT INTO "enrollment" VALUES(81,1013,15,'2025-04-27');
INSERT INTO "enrollment" VALUES(82,1013,19,'2025-04-27');
INSERT INTO "enrollment" VALUES(83,1013,22,'2025-04-27');
INSERT INTO "enrollment" VALUES(84,1014,4,'2025-04-27');
INSERT INTO "enrollment" VALUES(85,1014,7,'2025-04-27');
INSERT INTO "enrollment" VALUES(86,1014,12,'2025-04-27');
INSERT INTO "enrollment" VALUES(87,1014,18,'2025-04-27');
INSERT INTO "enrollment" VALUES(88,1014,22,'2025-04-27');
INSERT INTO "enrollment" VALUES(89,1014,24,'2025-04-27');
INSERT INTO "enrollment" VALUES(90,1015,5,'2025-04-27');
INSERT INTO "enrollment" VALUES(91,1015,12,'2025-04-27');
INSERT INTO "enrollment" VALUES(92,1015,15,'2025-04-27');
INSERT INTO "enrollment" VALUES(93,1015,17,'2025-04-27');
INSERT INTO "enrollment" VALUES(94,1015,19,'2025-04-27');
INSERT INTO "enrollment" VALUES(95,1015,20,'2025-04-27');
INSERT INTO "enrollment" VALUES(96,1015,24,'2025-04-27');
INSERT INTO "enrollment" VALUES(97,1016,6,'2025-04-27');
INSERT INTO "enrollment" VALUES(98,1016,9,'2025-04-27');
INSERT INTO "enrollment" VALUES(99,1016,11,'2025-04-27');
INSERT INTO "enrollment" VALUES(100,1016,12,'2025-04-27');
INSERT INTO "enrollment" VALUES(101,1016,17,'2025-04-27');
INSERT INTO "enrollment" VALUES(102,1016,20,'2025-04-27');
INSERT INTO "enrollment" VALUES(103,1016,24,'2025-04-27');
INSERT INTO "enrollment" VALUES(104,1016,26,'2025-04-27');
INSERT INTO "enrollment" VALUES(105,1062,2,'2025-04-27');
INSERT INTO "enrollment" VALUES(106,1062,4,'2025-04-27');
INSERT INTO "enrollment" VALUES(107,1062,6,'2025-04-27');
INSERT INTO "enrollment" VALUES(108,1062,7,'2025-04-27');
INSERT INTO "enrollment" VALUES(109,1062,8,'2025-04-27');
INSERT INTO "enrollment" VALUES(110,1062,11,'2025-04-27');
INSERT INTO "enrollment" VALUES(111,1062,13,'2025-04-27');
INSERT INTO "enrollment" VALUES(112,1062,15,'2025-04-27');
INSERT INTO "enrollment" VALUES(113,1062,18,'2025-04-27');
INSERT INTO "enrollment" VALUES(114,1062,22,'2025-04-27');
INSERT INTO "enrollment" VALUES(115,1062,23,'2025-04-27');
INSERT INTO "enrollment" VALUES(116,1061,6,'2025-04-27');
INSERT INTO "enrollment" VALUES(117,1061,8,'2025-04-27');
INSERT INTO "enrollment" VALUES(118,1061,13,'2025-04-27');
INSERT INTO "enrollment" VALUES(119,1061,19,'2025-04-27');
INSERT INTO "enrollment" VALUES(120,1061,22,'2025-04-27');
INSERT INTO "enrollment" VALUES(121,1061,25,'2025-04-27');
INSERT INTO "enrollment" VALUES(122,1061,26,'2025-04-27');
INSERT INTO "enrollment" VALUES(123,1060,2,'2025-04-27');
INSERT INTO "enrollment" VALUES(124,1060,4,'2025-04-27');
INSERT INTO "enrollment" VALUES(125,1060,5,'2025-04-27');
INSERT INTO "enrollment" VALUES(126,1060,11,'2025-04-27');
INSERT INTO "enrollment" VALUES(127,1060,20,'2025-04-27');
INSERT INTO "enrollment" VALUES(128,1059,8,'2025-04-27');
INSERT INTO "enrollment" VALUES(129,1059,15,'2025-04-27');
INSERT INTO "enrollment" VALUES(130,1059,20,'2025-04-27');
INSERT INTO "enrollment" VALUES(131,1059,25,'2025-04-27');
INSERT INTO "enrollment" VALUES(132,1059,26,'2025-04-27');
INSERT INTO "enrollment" VALUES(133,1058,2,'2025-04-27');
INSERT INTO "enrollment" VALUES(134,1058,7,'2025-04-27');
INSERT INTO "enrollment" VALUES(135,1058,12,'2025-04-27');
INSERT INTO "enrollment" VALUES(136,1058,14,'2025-04-27');
INSERT INTO "enrollment" VALUES(137,1058,20,'2025-04-27');
INSERT INTO "enrollment" VALUES(138,1058,23,'2025-04-27');
INSERT INTO "enrollment" VALUES(139,1058,25,'2025-04-27');
INSERT INTO "enrollment" VALUES(140,1057,4,'2025-04-27');
INSERT INTO "enrollment" VALUES(141,1057,5,'2025-04-27');
INSERT INTO "enrollment" VALUES(142,1057,6,'2025-04-27');
INSERT INTO "enrollment" VALUES(143,1057,8,'2025-04-27');
INSERT INTO "enrollment" VALUES(144,1057,11,'2025-04-27');
INSERT INTO "enrollment" VALUES(145,1057,13,'2025-04-27');
INSERT INTO "enrollment" VALUES(146,1057,17,'2025-04-27');
INSERT INTO "enrollment" VALUES(147,1056,6,'2025-04-27');
INSERT INTO "enrollment" VALUES(148,1056,8,'2025-04-27');
INSERT INTO "enrollment" VALUES(149,1056,12,'2025-04-27');
INSERT INTO "enrollment" VALUES(150,1056,15,'2025-04-27');
INSERT INTO "enrollment" VALUES(151,1056,18,'2025-04-27');
INSERT INTO "enrollment" VALUES(152,1055,2,'2025-04-27');
INSERT INTO "enrollment" VALUES(153,1055,6,'2025-04-27');
INSERT INTO "enrollment" VALUES(154,1055,9,'2025-04-27');
INSERT INTO "enrollment" VALUES(155,1055,14,'2025-04-27');
INSERT INTO "enrollment" VALUES(156,1017,2,'2025-04-27');
INSERT INTO "enrollment" VALUES(157,1017,5,'2025-04-27');
INSERT INTO "enrollment" VALUES(158,1017,7,'2025-04-27');
INSERT INTO "enrollment" VALUES(159,1017,12,'2025-04-27');
INSERT INTO "enrollment" VALUES(160,1017,15,'2025-04-27');
INSERT INTO "enrollment" VALUES(161,1017,19,'2025-04-27');
INSERT INTO "enrollment" VALUES(162,1018,5,'2025-04-27');
INSERT INTO "enrollment" VALUES(163,1018,17,'2025-04-27');
INSERT INTO "enrollment" VALUES(164,1018,20,'2025-04-27');
INSERT INTO "enrollment" VALUES(165,1018,24,'2025-04-27');
INSERT INTO "enrollment" VALUES(166,1019,14,'2025-04-27');
INSERT INTO "enrollment" VALUES(167,1019,15,'2025-04-27');
INSERT INTO "enrollment" VALUES(168,1019,19,'2025-04-27');
INSERT INTO "enrollment" VALUES(169,1019,20,'2025-04-27');
INSERT INTO "enrollment" VALUES(170,1019,23,'2025-04-27');
INSERT INTO "enrollment" VALUES(171,1019,26,'2025-04-27');
INSERT INTO "enrollment" VALUES(172,1020,2,'2025-04-27');
INSERT INTO "enrollment" VALUES(173,1020,4,'2025-04-27');
INSERT INTO "enrollment" VALUES(174,1020,5,'2025-04-27');
INSERT INTO "enrollment" VALUES(175,1020,6,'2025-04-27');
INSERT INTO "enrollment" VALUES(176,1020,8,'2025-04-27');
INSERT INTO "enrollment" VALUES(177,1020,11,'2025-04-27');
INSERT INTO "enrollment" VALUES(178,1020,12,'2025-04-27');
INSERT INTO "enrollment" VALUES(179,1020,15,'2025-04-27');
INSERT INTO "enrollment" VALUES(180,1020,19,'2025-04-27');
INSERT INTO "enrollment" VALUES(181,1020,23,'2025-04-27');
INSERT INTO "enrollment" VALUES(182,1021,4,'2025-04-27');
INSERT INTO "enrollment" VALUES(183,1021,5,'2025-04-27');
INSERT INTO "enrollment" VALUES(184,1021,8,'2025-04-27');
INSERT INTO "enrollment" VALUES(185,1021,12,'2025-04-27');
INSERT INTO "enrollment" VALUES(186,1021,13,'2025-04-27');
INSERT INTO "enrollment" VALUES(187,1022,2,'2025-04-27');
INSERT INTO "enrollment" VALUES(188,1022,6,'2025-04-27');
INSERT INTO "enrollment" VALUES(189,1022,9,'2025-04-27');
INSERT INTO "enrollment" VALUES(190,1022,18,'2025-04-27');
INSERT INTO "enrollment" VALUES(191,1023,11,'2025-04-27');
INSERT INTO "enrollment" VALUES(192,1023,14,'2025-04-27');
INSERT INTO "enrollment" VALUES(193,1023,17,'2025-04-27');
INSERT INTO "enrollment" VALUES(194,1023,20,'2025-04-27');
INSERT INTO "enrollment" VALUES(195,1023,22,'2025-04-27');
INSERT INTO "enrollment" VALUES(196,1024,5,'2025-04-27');
INSERT INTO "enrollment" VALUES(197,1024,6,'2025-04-27');
INSERT INTO "enrollment" VALUES(198,1024,9,'2025-04-27');
INSERT INTO "enrollment" VALUES(199,1024,12,'2025-04-27');
INSERT INTO "enrollment" VALUES(200,1024,20,'2025-04-27');
INSERT INTO "enrollment" VALUES(201,1024,23,'2025-04-27');
INSERT INTO "enrollment" VALUES(202,1025,9,'2025-04-27');
INSERT INTO "enrollment" VALUES(203,1025,12,'2025-04-27');
INSERT INTO "enrollment" VALUES(204,1025,15,'2025-04-27');
INSERT INTO "enrollment" VALUES(205,1025,18,'2025-04-27');
INSERT INTO "enrollment" VALUES(206,1025,23,'2025-04-27');
INSERT INTO "enrollment" VALUES(207,1026,2,'2025-04-27');
INSERT INTO "enrollment" VALUES(208,1026,4,'2025-04-27');
INSERT INTO "enrollment" VALUES(209,1026,5,'2025-04-27');
INSERT INTO "enrollment" VALUES(210,1026,7,'2025-04-27');
INSERT INTO "enrollment" VALUES(211,1026,9,'2025-04-27');
INSERT INTO "enrollment" VALUES(212,1026,17,'2025-04-27');
INSERT INTO "enrollment" VALUES(213,1026,22,'2025-04-27');
INSERT INTO "enrollment" VALUES(214,1027,12,'2025-04-27');
INSERT INTO "enrollment" VALUES(215,1027,16,'2025-04-27');
INSERT INTO "enrollment" VALUES(216,1027,18,'2025-04-27');
INSERT INTO "enrollment" VALUES(217,1027,19,'2025-04-27');
INSERT INTO "enrollment" VALUES(218,1027,22,'2025-04-27');
INSERT INTO "enrollment" VALUES(219,1028,8,'2025-04-27');
INSERT INTO "enrollment" VALUES(220,1028,13,'2025-04-27');
INSERT INTO "enrollment" VALUES(221,1028,14,'2025-04-27');
INSERT INTO "enrollment" VALUES(222,1028,15,'2025-04-27');
INSERT INTO "enrollment" VALUES(223,1028,17,'2025-04-27');
INSERT INTO "enrollment" VALUES(224,1028,18,'2025-04-27');
INSERT INTO "enrollment" VALUES(225,1029,15,'2025-04-27');
INSERT INTO "enrollment" VALUES(226,1029,17,'2025-04-27');
INSERT INTO "enrollment" VALUES(227,1029,19,'2025-04-27');
INSERT INTO "enrollment" VALUES(228,1029,22,'2025-04-27');
INSERT INTO "enrollment" VALUES(229,1029,25,'2025-04-27');
INSERT INTO "enrollment" VALUES(230,1029,26,'2025-04-27');
INSERT INTO "enrollment" VALUES(231,1030,12,'2025-04-27');
INSERT INTO "enrollment" VALUES(232,1030,17,'2025-04-27');
INSERT INTO "enrollment" VALUES(233,1030,23,'2025-04-27');
INSERT INTO "enrollment" VALUES(234,1030,25,'2025-04-27');
INSERT INTO "enrollment" VALUES(235,1030,26,'2025-04-27');
INSERT INTO "enrollment" VALUES(236,1031,2,'2025-04-27');
INSERT INTO "enrollment" VALUES(237,1031,5,'2025-04-27');
INSERT INTO "enrollment" VALUES(238,1031,9,'2025-04-27');
INSERT INTO "enrollment" VALUES(239,1031,16,'2025-04-27');
INSERT INTO "enrollment" VALUES(240,1032,12,'2025-04-27');
INSERT INTO "enrollment" VALUES(241,1032,14,'2025-04-27');
INSERT INTO "enrollment" VALUES(242,1032,16,'2025-04-27');
INSERT INTO "enrollment" VALUES(243,1032,18,'2025-04-27');
INSERT INTO "enrollment" VALUES(244,1032,19,'2025-04-27');
INSERT INTO "enrollment" VALUES(245,1033,2,'2025-04-27');
INSERT INTO "enrollment" VALUES(246,1033,5,'2025-04-27');
INSERT INTO "enrollment" VALUES(247,1033,7,'2025-04-27');
INSERT INTO "enrollment" VALUES(248,1033,11,'2025-04-27');
INSERT INTO "enrollment" VALUES(249,1033,14,'2025-04-27');
INSERT INTO "enrollment" VALUES(250,1033,18,'2025-04-27');
INSERT INTO "enrollment" VALUES(251,1034,2,'2025-04-27');
INSERT INTO "enrollment" VALUES(252,1034,4,'2025-04-27');
INSERT INTO "enrollment" VALUES(253,1034,5,'2025-04-27');
INSERT INTO "enrollment" VALUES(254,1034,7,'2025-04-27');
INSERT INTO "enrollment" VALUES(255,1034,9,'2025-04-27');
INSERT INTO "enrollment" VALUES(256,1034,13,'2025-04-27');
INSERT INTO "enrollment" VALUES(257,1034,16,'2025-04-27');
INSERT INTO "enrollment" VALUES(258,1035,2,'2025-04-27');
INSERT INTO "enrollment" VALUES(259,1035,5,'2025-04-27');
INSERT INTO "enrollment" VALUES(260,1035,9,'2025-04-27');
INSERT INTO "enrollment" VALUES(261,1035,15,'2025-04-27');
INSERT INTO "enrollment" VALUES(262,1035,19,'2025-04-27');
INSERT INTO "enrollment" VALUES(263,1036,12,'2025-04-27');
INSERT INTO "enrollment" VALUES(264,1036,14,'2025-04-27');
INSERT INTO "enrollment" VALUES(265,1036,17,'2025-04-27');
INSERT INTO "enrollment" VALUES(266,1036,20,'2025-04-27');
INSERT INTO "enrollment" VALUES(267,1036,24,'2025-04-27');
INSERT INTO "enrollment" VALUES(268,1037,2,'2025-04-27');
INSERT INTO "enrollment" VALUES(269,1037,5,'2025-04-27');
INSERT INTO "enrollment" VALUES(270,1037,7,'2025-04-27');
INSERT INTO "enrollment" VALUES(271,1037,8,'2025-04-27');
INSERT INTO "enrollment" VALUES(272,1037,15,'2025-04-27');
INSERT INTO "enrollment" VALUES(273,1037,17,'2025-04-27');
INSERT INTO "enrollment" VALUES(274,1038,6,'2025-04-27');
INSERT INTO "enrollment" VALUES(275,1038,9,'2025-04-27');
INSERT INTO "enrollment" VALUES(276,1038,11,'2025-04-27');
INSERT INTO "enrollment" VALUES(277,1038,13,'2025-04-27');
INSERT INTO "enrollment" VALUES(278,1038,15,'2025-04-27');
INSERT INTO "enrollment" VALUES(279,1038,19,'2025-04-27');
INSERT INTO "enrollment" VALUES(280,1039,5,'2025-04-27');
INSERT INTO "enrollment" VALUES(281,1039,7,'2025-04-27');
INSERT INTO "enrollment" VALUES(282,1039,9,'2025-04-27');
INSERT INTO "enrollment" VALUES(283,1039,12,'2025-04-27');
INSERT INTO "enrollment" VALUES(284,1039,14,'2025-04-27');
INSERT INTO "enrollment" VALUES(285,1039,15,'2025-04-27');
INSERT INTO "enrollment" VALUES(286,1039,16,'2025-04-27');
INSERT INTO "enrollment" VALUES(287,1039,17,'2025-04-27');
INSERT INTO "enrollment" VALUES(288,1040,2,'2025-04-27');
INSERT INTO "enrollment" VALUES(289,1040,5,'2025-04-27');
INSERT INTO "enrollment" VALUES(290,1040,7,'2025-04-27');
INSERT INTO "enrollment" VALUES(291,1040,9,'2025-04-27');
INSERT INTO "enrollment" VALUES(292,1040,12,'2025-04-27');
INSERT INTO "enrollment" VALUES(293,1040,18,'2025-04-27');
INSERT INTO "enrollment" VALUES(294,1041,9,'2025-04-27');
INSERT INTO "enrollment" VALUES(295,1041,17,'2025-04-27');
INSERT INTO "enrollment" VALUES(296,1041,18,'2025-04-27');
INSERT INTO "enrollment" VALUES(297,1041,19,'2025-04-27');
INSERT INTO "enrollment" VALUES(298,1041,24,'2025-04-27');
INSERT INTO "enrollment" VALUES(299,1041,25,'2025-04-27');
INSERT INTO "enrollment" VALUES(300,1042,2,'2025-04-27');
INSERT INTO "enrollment" VALUES(301,1042,6,'2025-04-27');
INSERT INTO "enrollment" VALUES(302,1042,8,'2025-04-27');
INSERT INTO "enrollment" VALUES(303,1042,11,'2025-04-27');
INSERT INTO "enrollment" VALUES(304,1042,14,'2025-04-27');
INSERT INTO "enrollment" VALUES(305,1042,17,'2025-04-27');
INSERT INTO "enrollment" VALUES(306,1043,11,'2025-04-27');
INSERT INTO "enrollment" VALUES(307,1043,15,'2025-04-27');
INSERT INTO "enrollment" VALUES(308,1043,17,'2025-04-27');
INSERT INTO "enrollment" VALUES(309,1043,19,'2025-04-27');
INSERT INTO "enrollment" VALUES(310,1043,22,'2025-04-27');
INSERT INTO "enrollment" VALUES(311,1043,23,'2025-04-27');
INSERT INTO "enrollment" VALUES(312,1044,4,'2025-04-27');
INSERT INTO "enrollment" VALUES(313,1044,5,'2025-04-27');
INSERT INTO "enrollment" VALUES(314,1044,7,'2025-04-27');
INSERT INTO "enrollment" VALUES(315,1044,11,'2025-04-27');
INSERT INTO "enrollment" VALUES(316,1044,15,'2025-04-27');
INSERT INTO "enrollment" VALUES(317,1044,19,'2025-04-27');
INSERT INTO "enrollment" VALUES(318,1045,9,'2025-04-27');
INSERT INTO "enrollment" VALUES(319,1045,13,'2025-04-27');
INSERT INTO "enrollment" VALUES(320,1045,16,'2025-04-27');
INSERT INTO "enrollment" VALUES(321,1045,20,'2025-04-27');
INSERT INTO "enrollment" VALUES(322,1046,2,'2025-04-27');
INSERT INTO "enrollment" VALUES(323,1046,5,'2025-04-27');
INSERT INTO "enrollment" VALUES(324,1046,14,'2025-04-27');
INSERT INTO "enrollment" VALUES(325,1046,16,'2025-04-27');
INSERT INTO "enrollment" VALUES(326,1046,22,'2025-04-27');
INSERT INTO "enrollment" VALUES(327,1047,2,'2025-04-27');
INSERT INTO "enrollment" VALUES(328,1047,12,'2025-04-27');
INSERT INTO "enrollment" VALUES(329,1047,16,'2025-04-27');
INSERT INTO "enrollment" VALUES(330,1047,20,'2025-04-27');
INSERT INTO "enrollment" VALUES(331,1047,23,'2025-04-27');
INSERT INTO "enrollment" VALUES(332,1047,24,'2025-04-27');
INSERT INTO "enrollment" VALUES(333,1048,4,'2025-04-27');
INSERT INTO "enrollment" VALUES(334,1048,6,'2025-04-27');
INSERT INTO "enrollment" VALUES(335,1048,9,'2025-04-27');
INSERT INTO "enrollment" VALUES(336,1048,14,'2025-04-27');
INSERT INTO "enrollment" VALUES(337,1048,19,'2025-04-27');
INSERT INTO "enrollment" VALUES(338,1048,23,'2025-04-27');
INSERT INTO "enrollment" VALUES(339,1049,15,'2025-04-27');
INSERT INTO "enrollment" VALUES(340,1049,17,'2025-04-27');
INSERT INTO "enrollment" VALUES(341,1049,18,'2025-04-27');
INSERT INTO "enrollment" VALUES(342,1049,20,'2025-04-27');
INSERT INTO "enrollment" VALUES(343,1049,22,'2025-04-27');
INSERT INTO "enrollment" VALUES(344,1050,11,'2025-04-27');
INSERT INTO "enrollment" VALUES(345,1050,12,'2025-04-27');
INSERT INTO "enrollment" VALUES(346,1050,16,'2025-04-27');
INSERT INTO "enrollment" VALUES(347,1050,20,'2025-04-27');
INSERT INTO "enrollment" VALUES(348,1050,23,'2025-04-27');
INSERT INTO "enrollment" VALUES(349,1050,24,'2025-04-27');
INSERT INTO "enrollment" VALUES(350,1050,25,'2025-04-27');
INSERT INTO "enrollment" VALUES(351,1050,26,'2025-04-27');
INSERT INTO "enrollment" VALUES(352,1051,6,'2025-04-27');
INSERT INTO "enrollment" VALUES(353,1051,9,'2025-04-27');
INSERT INTO "enrollment" VALUES(354,1051,13,'2025-04-27');
INSERT INTO "enrollment" VALUES(355,1051,18,'2025-04-27');
INSERT INTO "enrollment" VALUES(356,1051,22,'2025-04-27');
INSERT INTO "enrollment" VALUES(357,1052,4,'2025-04-27');
INSERT INTO "enrollment" VALUES(358,1052,6,'2025-04-27');
INSERT INTO "enrollment" VALUES(359,1052,9,'2025-04-27');
INSERT INTO "enrollment" VALUES(360,1052,15,'2025-04-27');
INSERT INTO "enrollment" VALUES(361,1052,17,'2025-04-27');
INSERT INTO "enrollment" VALUES(362,1053,8,'2025-04-27');
INSERT INTO "enrollment" VALUES(363,1053,9,'2025-04-27');
INSERT INTO "enrollment" VALUES(364,1053,12,'2025-04-27');
INSERT INTO "enrollment" VALUES(365,1054,17,'2025-04-27');
INSERT INTO "enrollment" VALUES(366,1054,18,'2025-04-27');
INSERT INTO "enrollment" VALUES(367,1054,19,'2025-04-27');
INSERT INTO "enrollment" VALUES(368,1054,22,'2025-04-27');
INSERT INTO "enrollment" VALUES(369,1054,23,'2025-04-27');
INSERT INTO "enrollment" VALUES(370,1063,2,'2025-04-28');
INSERT INTO "enrollment" VALUES(371,1063,20,'2025-04-28');
INSERT INTO "enrollment" VALUES(372,1063,23,'2025-04-28');
INSERT INTO "enrollment" VALUES(373,1063,25,'2025-04-28');
INSERT INTO "enrollment" VALUES(374,1063,28,'2025-04-28');
INSERT INTO "enrollment" VALUES(375,1063,29,'2025-04-28');
CREATE TABLE result(
        rid INTEGER PRIMARY KEY AUTOINCREMENT,
        enroll_id INTEGER NOT NULL,
        marks_ob INTEGER NOT NULL,
        full_marks INTEGER NOT NULL,
        per REAL NOT NULL,
        FOREIGN KEY(enroll_id) REFERENCES enrollment(enroll_id)
      );
INSERT INTO "result" VALUES(1,1,998,1000,99.8);
CREATE TABLE student(roll INTEGER PRIMARY KEY AUTOINCREMENT, name text,  email text, gender text,  dob text,  contact text,  admission text,  course text,  state text,  city text,  pin text,  address text);
INSERT INTO "student" VALUES(1001,'Khadija Hanif','khadija@example.com','Female','25-04-2006','92308656772','2024','','Punjab','Sheikhupura','39350','845 Canal View Park, Housing Colony, Sheikhupura







');
INSERT INTO "student" VALUES(1002,'Yahya Hanif','yahya@example.com','Male','24-02-2000','44082367638','2023','','Punjab','Lahore','54000','240 Nishtar Block, Allama Iqbal Town, Lahore





');
INSERT INTO "student" VALUES(1003,'Hafsa Hanif','hafsa@example.com','Female','13-01-2003','9239753772','2020','','Punjab','Lahore','54000','House no. 94, D-Block, Wapda Town, Lahore





');
INSERT INTO "student" VALUES(1004,'Ayesha Asif','ayesha@example.com','Female','14-02-2003','3182649589','2022','','KPK','Quetta','87800','House no.679, St.23, Gullberg, Quetta





');
INSERT INTO "student" VALUES(1005,'Iqra Sheikh','iqra.sheikh60@example.com','Female','31/01/1999','3897580606','2025','','Islamabad Capital Territory','Islamabad','59319','39747 Johnson Expressway Suite 295, Islamabad, Islamabad Capital Territory



');
INSERT INTO "student" VALUES(1006,'Ali Malik','ali.malik24@example.com','Male','01-01-1999','3481884782','2020','','Blochistan','Quetta','27156','694 Nicholson Parkway, Quetta, Balochistan



');
INSERT INTO "student" VALUES(1007,'Dua Farooq','dua.farooq55@example.com','Female','13-07-2006','34818873782','2023','','Khyber Pakhtunkhwa','Abbottabad','89579','266 Gentry Alley, Abbottabad, Khyber Pakhtunkhwa



');
INSERT INTO "student" VALUES(1008,'Umer Naveed','umer@example.com','Male','20-01-2010','392653780','2025','','Punjab','Lahore','59560','House 875, St 5, Township, Lahore

');
INSERT INTO "student" VALUES(1009,'Usman Chaudhary','usman.chaudhry45@example.com','Male','03-06-2003','396384008','2020','','Sindh','Hyderabad','10672','8599 Spencer Street Suite 942, Hyderabad, Sindh

');
INSERT INTO "student" VALUES(1010,'Laiba Hussain','laiba.hussain@example.com','Female','05-05-1999','344979201','2023','','Sindh','Hyderabad','10672','823 Odom Squares, Hyderabad, Sindh

');
INSERT INTO "student" VALUES(1011,'Khadija Mir','khadija.mir36@example.com','Female','27-05-1998','3437599738','2024','','Punjab','Faisalabad','72447','3025 Bailey Cove Suite 344, Faisalabad, Punjab

');
INSERT INTO "student" VALUES(1012,'Ali Butt','ali36@example.com','Male','27-07-1998','3437575884','2024','','Punjab','Faisalabad','72447','3025  D-Block, Gulberg , Faisalabad, Punjab


');
INSERT INTO "student" VALUES(1013,'Imran Chaudhary','imran.chaudhry46@example.com','Male','05-09-1999','3859037289','2025','','Khyber Pakhtunkhwa','Abbottabad','12833','98863 Ryan Extension, Abbottabad, Khyber Pakhtunkhwa


');
INSERT INTO "student" VALUES(1014,'Muhammad Saad','saad75@example.com','Male','10-03-2006','3164759742','2023','','Punjab','Sheikhupura','39350','89 New Gulberg, Housing Colony, Sheikhupura

');
INSERT INTO "student" VALUES(1015,'Muhammad Asif','asif346@example.com','Male','14-01-1996','3165858608','2020','','Punjab','Gujranwala','134586','89 Satellite Town, Gujranwala

');
INSERT INTO "student" VALUES(1016,'Omer Farooq','omer.farooq14@example.com','Male','14-01-1996','3165858608','2022','','Blochistan','Quetta','58651','636 Jaclyn Bypass, Quetta, Balochistan

');
INSERT INTO "student" VALUES(1017,'Usman Malik','usman.malik49@example.com','Male','02-06-2007','3468047592','2022','','Islamabad Capital Territory','Islamabad','44958','240 Heather Harbor Suite 938, Islamabad, Islamabad Capital Territory


');
INSERT INTO "student" VALUES(1018,'Iqra Ahmed','iqra.ahmed82@example.com','Female','02-06-2007','3468047592','2022','','Sindh','Karachi','44987','05337 Cynthia Light, Karachi, Sindh

');
INSERT INTO "student" VALUES(1019,'Bilal Malik','bilal.malik38@example.com','Male','05-07-2002','395686037','2023','','Punjab','Multan','51364','88713 Alejandra Ford, Multan, Punjab

');
INSERT INTO "student" VALUES(1020,'Saad Iqbal','saadiqbal38@example.com','Male','05-06-2009','37907580','2024','','Punjab','Multan','51364','88713 Alejandra Ford, Multan, Punjab


');
INSERT INTO "student" VALUES(1021,'Ali Butt','ali.butt9@example.com','Male','03-08-2005','3846589273','2023','','Punjab','Lahore','83516','33095 Terrance Harbors, Lahore, Punjab

');
INSERT INTO "student" VALUES(1022,'Hina Iqbal','hina.iqbal78@example.com','Female','03-05-2001','37595768986','2021','','Punjab','Multan','39446','091 Christopher Crescent, Multan, Punjab

');
INSERT INTO "student" VALUES(1023,'Saad Hussain','saad.hussain23@example.com','Male','04-07-2012','3847867989','2023','','Punjab','Rawalpindi','36509','1219 Charles Mews Apt. 551, Rawalpindi, Punjab

');
INSERT INTO "student" VALUES(1024,'Rabia Ahmed','rabia.ahmed53@example.com','Female','08-11-2003','3668796757','2020','','Islamabad Capital Territory','Islamabad','93475','31868 Walker Spur, Islamabad, Islamabad Capital Territory

');
INSERT INTO "student" VALUES(1025,'Laiba Sheikh','laiba.sheikh45@example.com','Female','08-11-2003','3668796757','2020','','Punjab','Rawalpindi','86475','1149 Green Drive Suite 702, Rawalpindi, Punjab

');
INSERT INTO "student" VALUES(1026,'Khadija Sheikh','khadija.sheikh11@example.com','Female','25-12-2000','3566578657','2021','','Punjab','Lahore','52509','393 Hector Cape Suite 660, Lahore, Punjab

');
INSERT INTO "student" VALUES(1027,'Nadia Butt','nadia.butt60@example.com','Female','04-11-2009','377765778','2024','','Balochistan','Quetta','16642','57792 Evans Knoll Suite 178, Quetta, Balochistan

');
INSERT INTO "student" VALUES(1028,'Saad Ahmed','saad.ahmed67@example.com','Male','10-03-2007','388766578','2023','','Sindh','Sukkur','29901','39803 Ramirez Way, Sukkur, Sindh

');
INSERT INTO "student" VALUES(1029,'Sana Hussain','sana.hussain67@example.com','Female','01-02-1999','365676879','2022','','Punjab','Lahore','28034','2388 Rachel Rapid Suite 979, Lahore, Punjab

');
INSERT INTO "student" VALUES(1030,'Sana Irfan','sanairfan098@example.com','Female','31-05-1998','3564657689','2019','','Punjab','Kasur','34786','2388 Kaliyan, Kasur, Punjab

');
INSERT INTO "student" VALUES(1031,'Habiba Asif','habiasif543@example.com','Female','07-09-2000','397865787','2022','','Punjab','Gujranwala','257458','3456 Peoples Colony, Gujranwala, Punjab

');
INSERT INTO "student" VALUES(1032,'Junaid Butt','junaid.butt51@example.com','Male','07-09-2002','356678889','2025','','Khyber Pakhtunkhwa','Abbottabad','18765','9894 Sherry Summit Apt. 109, Abbottabad, Khyber Pakhtunkhwa

');
INSERT INTO "student" VALUES(1033,'Aiman Iqbal','aiman38@example.com','Female','03-08-2001','3876675789','2020','','Punjab','Multan','15774','223 Macdonald Lodge, Multan, Punjab

');
INSERT INTO "student" VALUES(1034,'Amna Zahoor','amna@example.com','Female','04-12-2003','357578857','2022','','Islamabad Capital Territory','Islamabad','36131','House 23, F-11, Fazaia Colony, Islamabad

');
INSERT INTO "student" VALUES(1035,'Ayesha Butt','ayesha.butt59@example.com','Female','04-12-2006','357567897','2022','','Islamabad Capital Territory','Islamabad','36131','2469 Ryan Lane, Islamabad, Islamabad Capital Territory


');
INSERT INTO "student" VALUES(1036,'Ayesha Khan','ayesha.khan11@example.com','Female','04-12-2006','357567897','2022','','Sindh','Karachi','26165','56574 Gina Cape, Hyderabad, Sindh

');
INSERT INTO "student" VALUES(1037,'Alicia White','mathewsmichael@arnold.com','Male','26-09-2004','9735513362','2023','','Sindh','Peshawar','98689','9855 Maxwell Prairie Apt. 595, South Ryanmouth, MA 21455		

');
INSERT INTO "student" VALUES(1038,'Elizabeth Butler','orrgina@lynch.com','Male','08-04-2003','8082630407','2021','','Punjab','Multan','54330','747 Jodi Roads, Alanburgh, MNP22807

');
INSERT INTO "student" VALUES(1039,'Abeera Javed','abeera748@example.com','Female','01-01-1999','4787923840','2020','','Balochistan','Quetta','32512','8193 John Square, Quetta, Balochistan			


');
INSERT INTO "student" VALUES(1040,'Marcus Weaver','howellalexandra@gmail.com','Female','07-12-2006','9235994658','2023','','Punjab','Multan','34106','8611 Perez Field Apt. 611, Lake Robinmouth, CO 10031	


');
INSERT INTO "student" VALUES(1041,'Craig Hale','travismarshall@guzman-jordan.com','Male','16-11-2006','2910847502','2023','','Punjab','Multan','34106',' Rose Mountains, Lake Justin, KS 09792		


');
INSERT INTO "student" VALUES(1042,'Timothy Rivers','pedroyork@gardner.com','Male','16-11-2006','8073861777','2021','','Khyber Pakhtunkhwa','Hyderabad','72855','03695 Cruz Mill, Samanthachester, NE 15772		


');
INSERT INTO "student" VALUES(1043,'Ayesha Butt','ayesha.butt59@example.com','Female','16-11-2006','8073861777','2021','','Islamabad Capital Territory','Islamabad','36131','2469 Ryan Lane, Islamabad, Islamabad Capital Territory	


');
INSERT INTO "student" VALUES(1044,'Anthony Clark','pgraham@singh.com','Female','17-06-2006	','3783942597','2022','','Sindh','Karachi','13666','Unit 5297 Box 1405, DPO AP 39755, Karachi

');
INSERT INTO "student" VALUES(1045,'Fatima Javed','fatima748@example.com','Female','01-01-1999','4787923840','2020','','Balochistan','Quetta','32512','8193 John Square, Quetta, Balochistan			


');
INSERT INTO "student" VALUES(1046,'Laiba Hussain','laiba.hussain26@example.com','Female','24-02-2000','845676808','2024','','Punjab','Lahore','21472','623 Sosa Green, Lahore, Punjab	


');
INSERT INTO "student" VALUES(1047,'Laiba Hussain','laiba.hussain26@example.com','Female','24-02-2000','845676808','2024','','Punjab','Lahore','21472','623 Sosa Green, Lahore, Punjab	


');
INSERT INTO "student" VALUES(1048,'Sana Khan','sana.khan86@example.com','Female','13-01-2003','845676808','2024','','Punjab','Faisalabad','24411','702 Kimberly Fork, Faisalabad, Punjab	


');
INSERT INTO "student" VALUES(1049,'Usman Mir','sman.mir7@example.com','Male','02-06-2007','845676808','2024','','Sindh','Karachi','55759','0389 Michael Lane Apt. 998, Karachi, Sindh	



');
INSERT INTO "student" VALUES(1050,'Usman Mir','sman.mir7@example.com','Male','13-01-2003','3657798869','2022','','Punjab','Faisalabad','24411','702 Kimberly Fork, Faisalabad, Punjab			


');
INSERT INTO "student" VALUES(1051,'Arham Iqbal','arham@example.com','Male','14-02-2003','8665679085','2022','','Islamabad Capital Territory','Islamabad','79667','954 Steven Islands, Islamabad, Islamabad Capital Territory			


');
INSERT INTO "student" VALUES(1052,'Eshal Nadeem','eshal45@example.com','Female','14-02-2003','8665679085','2022','','Islamabad Capital Territory','Islamabad','79667','954 Steven Islands, Islamabad, Islamabad Capital Territory			


');
INSERT INTO "student" VALUES(1053,'Muhammad Rehan','rehan75@example.com','Male','14-02-2003','8665679085','2022','','Islamabad Capital Territory','Islamabad','79667','954 Steven Islands, Islamabad, Islamabad Capital Territory			


');
INSERT INTO "student" VALUES(1054,'Rayyan Naveed','rayyan36378@example.com','Male','02-04-2000','6736892830','2021','','Punjab','Faisalabad','24657','702 Kimberly Fork, Faisalabad, Punjab


');
INSERT INTO "student" VALUES(1055,'Tehreem Zahoor','rayyan36378@example.com','Female','31/01/1999','6736892830','2021','','Islamabad Capital Territory','Islamabad','31559','3516 Gregory Cape Suite 526, Islamabad, Islamabad Capital Territory			



');
INSERT INTO "student" VALUES(1056,'Abeera Javed','abeera748@example.com','Female','01-01-1999','4787923840','2020','','Balochistan','Quetta','32512','8193 John Square, Quetta, Balochistan			


');
INSERT INTO "student" VALUES(1057,'Fatima Tanveer','fatima543@example.com','Female','13-07-2006','576680956','2020','','Punjab','Rawalpindi','91044','82680 Sandra Crossing Apt. 174, Rawalpindi, Punjab			


');
INSERT INTO "student" VALUES(1058,'Ammar Tanveer','ammar334@example.com','Male','01-03-2007','6487723498','2025','','Sindh','Karachi','34346','08387 Michael Lane Apt. 998, Karachi, Sindh

');
INSERT INTO "student" VALUES(1059,'Luqman Tahir','luqman334@example.com','Male','13-07-2006	','6487723498','2025','','Punjab','Rawalpindi','91044','82680 Sandra Crossing Apt. 174, Rawalpindi, Punjab			


');
INSERT INTO "student" VALUES(1060,'Ahsan Naveed','ahsan354@example.com','Male','13-07-2001	','6487723498','2023','','Punjab','Rawalpindi','91044','82680 Sandra Crossing Apt. 174, Rawalpindi, Punjab			


');
INSERT INTO "student" VALUES(1061,'Usman Mazhar','usman664@example.com','Male','27-05-1998','523824800','2021','','Khyber Pakhtunkhwa','Abbottabad','15749','044 Lewis Mountains, Abbottabad, Khyber Pakhtunkhwa			


');
INSERT INTO "student" VALUES(1062,'Faiza Ameen','faiza664@example.com','Female','27-05-1998','523824800','2021','','Khyber Pakhtunkhwa','Abbottabad','15749','044 Lewis Mountains, Abbottabad, Khyber Pakhtunkhwa			


');
INSERT INTO "student" VALUES(1063,'Ayesha Butt','ayesha.butt59@example.com','Female','02-04-2002','033947846578','2023','','Islamabad Capital Territory','Islamabad','36131','2469 Ryan Lane, Islamabad, Islamabad Capital Territory

');
DELETE FROM "sqlite_sequence";
INSERT INTO "sqlite_sequence" VALUES('course',29);
INSERT INTO "sqlite_sequence" VALUES('student',1063);
INSERT INTO "sqlite_sequence" VALUES('employee',3);
INSERT INTO "sqlite_sequence" VALUES('audit_log',239);
INSERT INTO "sqlite_sequence" VALUES('enrollment',375);
INSERT INTO "sqlite_sequence" VALUES('result',1);
COMMIT;
