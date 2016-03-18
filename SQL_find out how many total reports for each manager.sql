CREATE TABLE #EMPLOYEE
(
EMP_ID INT,
FIRSTNAME VARCHAR(30),
LASTNAME VARCHAR(30),
MIDDLENAME VARCHAR(30),
JOBTITLE VARCHAR(50),
GROUPNAME VARCHAR(100),
MANAGER_ID INT
);

INSERT INTO #EMPLOYEE VALUES (1,'Ken','Sánchez','J','Chief Executive Officer','Executive General and Administration',0);
INSERT INTO #EMPLOYEE VALUES (2,'Terri','Duffy','Lee','Vice President of Engineering','Research and Development',1);
INSERT INTO #EMPLOYEE VALUES (3,'Roberto','Tamburello','','Engineering Manager','Research and Development',2);
INSERT INTO #EMPLOYEE VALUES (4,'Rob','Walters','','Senior Tool Designer','Research and Development',3);
INSERT INTO #EMPLOYEE VALUES (5,'Gail','Erickson','A','Design Engineer','Research and Development',3);
INSERT INTO #EMPLOYEE VALUES (6,'Jossef','Goldberg','H','Design Engineer','Research and Development',3);
INSERT INTO #EMPLOYEE VALUES (7,'Dylan','Miller','A','Research and Development Manager','Research and Development',3);
INSERT INTO #EMPLOYEE VALUES (8,'Diane','Margheim','L','Research and Development Engineer','Research and Development',4);
INSERT INTO #EMPLOYEE VALUES (9,'Gigi','Matthew','N','Research and Development Engineer','Research and Development',4);
INSERT INTO #EMPLOYEE VALUES (10,'Michael','Raheem','','Research and Development Manager','Research and Development',4);
INSERT INTO #EMPLOYEE VALUES (11,'Ovidiu','Cracium','V','Senior Tool Designer','Research and Development',3);
INSERT INTO #EMPLOYEE VALUES (12,'Thierry','D''Hers','B','Tool Designer','Research and Development',4);
INSERT INTO #EMPLOYEE VALUES (13,'Janice','Galvin','M','Tool Designer','Research and Development',4);
INSERT INTO #EMPLOYEE VALUES (14,'Michael','Sullivan','I','Senior Design Engineer','Research and Development',3);
INSERT INTO #EMPLOYEE VALUES (15,'Sharon','Salavaria','B','Design Engineer','Research and Development',3);
INSERT INTO #EMPLOYEE VALUES (16,'David','Bradley','M','Marketing Manager','Sales and Marketing',1);
INSERT INTO #EMPLOYEE VALUES (17,'Kevin','Brown','F','Marketing Assistant','Sales and Marketing',16);
INSERT INTO #EMPLOYEE VALUES (18,'John','Wood','L','Marketing Specialist','Sales and Marketing',16);
INSERT INTO #EMPLOYEE VALUES (19,'Mary','Dempsey','A','Marketing Assistant','Sales and Marketing',16);
INSERT INTO #EMPLOYEE VALUES (20,'Wanida','Benshoof','M','Marketing Assistant','Sales and Marketing',16);
INSERT INTO #EMPLOYEE VALUES (21,'Terry','Eminhizer','J','Marketing Specialist','Sales and Marketing',16);
INSERT INTO #EMPLOYEE VALUES (22,'Sariya','Harnpadoungsataya','E','Marketing Specialist','Sales and Marketing',16);
INSERT INTO #EMPLOYEE VALUES (23,'Mary','Gibson','E','Marketing Specialist','Sales and Marketing',16);
INSERT INTO #EMPLOYEE VALUES (24,'Jill','Williams','A','Marketing Specialist','Sales and Marketing',16);
INSERT INTO #EMPLOYEE VALUES (25,'James','Hamilton','R','Vice President of Production','Manufacturing',1);
INSERT INTO #EMPLOYEE VALUES (26,'Peter','Krebs','J','Production Control Manager','Manufacturing',25);
INSERT INTO #EMPLOYEE VALUES (27,'Jo','Brown','A','Production Supervisor - WC60','Manufacturing',26);
INSERT INTO #EMPLOYEE VALUES (28,'Guy','Gilbert','R','Production Technician - WC60','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (29,'Mark','McArthur','K','Production Technician - WC60','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (30,'Britta','Simon','L','Production Technician - WC60','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (31,'Margie','Shoop','W','Production Technician - WC60','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (32,'Rebecca','Laszlo','A','Production Technician - WC60','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (33,'Annik','Stahl','O','Production Technician - WC60','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (34,'Suchitra','Mohan','O','Production Technician - WC60','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (35,'Brandon','Heidepriem','G','Production Technician - WC60','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (36,'Jose','Lugo','R','Production Technician - WC60','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (37,'Chris','Okelberry','O','Production Technician - WC60','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (38,'Kim','Abercrombie','B','Production Technician - WC60','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (39,'Ed','Dudenhoefer','R','Production Technician - WC60','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (40,'JoLynn','Dobney','M','Production Supervisor - WC60','Manufacturing',26);
INSERT INTO #EMPLOYEE VALUES (41,'Bryan','Baker','','Production Technician - WC60','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (42,'James','Kramer','D','Production Technician - WC60','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (43,'Nancy','Anderson','A','Production Technician - WC60','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (44,'Simon','Rapier','D','Production Technician - WC60','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (45,'Thomas','Michaels','R','Production Technician - WC60','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (46,'Eugene','Kogan','O','Production Technician - WC60','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (47,'Andrew','Hill','R','Production Supervisor - WC10','Manufacturing',26);
INSERT INTO #EMPLOYEE VALUES (48,'Ruth','Ellerbrock','Ann','Production Technician - WC10','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (49,'Barry','Johnson','K','Production Technician - WC10','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (50,'Sidney','Higa','M','Production Technician - WC10','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (51,'Jeffrey','Ford','L','Production Technician - WC10','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (52,'Doris','Hartwig','M','Production Technician - WC10','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (53,'Diane','Glimp','R','Production Technician - WC10','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (54,'Bonnie','Kearney','N','Production Technician - WC10','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (55,'Taylor','Maxwell','R','Production Supervisor - WC50','Manufacturing',26);
INSERT INTO #EMPLOYEE VALUES (56,'Denise','Smith','H','Production Technician - WC50','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (57,'Frank','Miller','T','Production Technician - WC50','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (58,'Kendall','Keil','C','Production Technician - WC50','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (59,'Bob','Hohman','N','Production Technician - WC50','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (60,'Pete','Male','C','Production Technician - WC50','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (61,'Diane','Tibbott','H','Production Technician - WC50','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (62,'John','Campbell','T','Production Supervisor - WC60','Manufacturing',26);
INSERT INTO #EMPLOYEE VALUES (63,'Maciej','Dusza','W','Production Technician - WC60','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (64,'Michael','Zwilling','J','Production Technician - WC60','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (65,'Randy','Reeves','T','Production Technician - WC60','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (66,'Karan','Khanna','R','Production Technician - WC60','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (67,'Jay','Adams','G','Production Technician - WC60','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (68,'Charles','Fitzgerald','B','Production Technician - WC60','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (69,'Steve','Masters','F','Production Technician - WC60','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (70,'David','Ortiz','J','Production Technician - WC60','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (71,'Michael','Ray','Sean','Production Supervisor - WC30','Manufacturing',26);
INSERT INTO #EMPLOYEE VALUES (72,'Steven','Selikoff','T','Production Technician - WC30','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (73,'Carole','Poland','M','Production Technician - WC30','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (74,'Bjorn','Rettig','M','Production Technician - WC30','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (75,'Michiko','Osada','F','Production Technician - WC30','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (76,'Carol','Philips','M','Production Technician - WC30','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (77,'Merav','Netz','A','Production Technician - WC30','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (78,'Reuben','D''sa','H','Production Supervisor - WC40','Manufacturing',26);
INSERT INTO #EMPLOYEE VALUES (79,'Eric','Brown','L','Production Technician - WC40','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (80,'Sandeep','Kaliyath','P','Production Technician - WC40','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (81,'Mihail','Frintu','U','Production Technician - WC40','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (82,'Jack','Creasey','T','Production Technician - WC40','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (83,'Patrick','Cook','M','Production Technician - WC40','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (84,'Frank','Martinez','R','Production Technician - WC40','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (85,'Brian','Goldstein','Richard','Production Technician - WC40','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (86,'Ryan','Cornelsen','L','Production Technician - WC40','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (87,'Cristian','Petculescu','K','Production Supervisor - WC10','Manufacturing',26);
INSERT INTO #EMPLOYEE VALUES (88,'Betsy','Stadick','A','Production Technician - WC10','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (89,'Patrick','Wedge','C','Production Technician - WC10','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (90,'Danielle','Tiedt','C','Production Technician - WC10','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (91,'Kimberly','Zimmerman','B','Production Technician - WC10','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (92,'Tom','Vande Velde','M','Production Technician - WC10','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (93,'Kok-Ho','Loh','T','Production Supervisor - WC50','Manufacturing',26);
INSERT INTO #EMPLOYEE VALUES (94,'Russell','Hunter','','Production Technician - WC50','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (95,'Jim','Scardelis','H','Production Technician - WC50','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (96,'Elizabeth','Keyser','I','Production Technician - WC50','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (97,'Mandar','Samant','H','Production Technician - WC50','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (98,'Sameer','Tejani','A','Production Technician - WC50','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (99,'Nuan','Yu','','Production Technician - WC50','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (100,'Lolan','Song','B','Production Technician - WC50','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (101,'Houman','Pournasseh','N','Production Technician - WC50','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (102,'Zheng','Mu','W','Production Supervisor - WC10','Manufacturing',26);
INSERT INTO #EMPLOYEE VALUES (103,'Ebru','Ersan','N','Production Technician - WC10','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (104,'Mary','Baker','R','Production Technician - WC10','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (105,'Kevin','Homer','M','Production Technician - WC10','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (106,'John','Kane','T','Production Technician - WC10','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (107,'Christopher','Hill','E','Production Technician - WC10','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (108,'Jinghao','Liu','K','Production Supervisor - WC50','Manufacturing',26);
INSERT INTO #EMPLOYEE VALUES (109,'Alice','Ciccu','O','Production Technician - WC50','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (110,'Jun','Cao','T','Production Technician - WC50','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (111,'Suroor','Fatima','R','Production Technician - WC50','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (112,'John','Evans','P','Production Technician - WC50','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (113,'Linda','Moschell','K','Production Technician - WC50','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (114,'Mindaugas','Krapauskas','J','Production Technician - WC50','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (115,'Angela','Barbariol','W','Production Technician - WC50','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (116,'Michael','Patten','W','Production Technician - WC50','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (117,'Chad','Niswonger','W','Production Technician - WC50','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (118,'Don','Hall','L','Production Technician - WC50','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (119,'Michael','Entin','T','Production Technician - WC50','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (120,'Kitti','Lertpiriyasuwat','H','Production Technician - WC50','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (121,'Pilar','Ackerman','G','Shipping and Receiving Supervisor','Inventory Management',211);
INSERT INTO #EMPLOYEE VALUES (122,'Susan','Eaton','W','Stocker','Inventory Management',121);
INSERT INTO #EMPLOYEE VALUES (123,'Vamsi','Kuppa','N','Shipping and Receiving Clerk','Inventory Management',121);
INSERT INTO #EMPLOYEE VALUES (124,'Kim','Ralls','T','Stocker','Inventory Management',121);
INSERT INTO #EMPLOYEE VALUES (125,'Matthias','Berndt','T','Shipping and Receiving Clerk','Inventory Management',121);
INSERT INTO #EMPLOYEE VALUES (126,'Jimmy','Bischoff','T','Stocker','Inventory Management',121);
INSERT INTO #EMPLOYEE VALUES (127,'David','Hamilton','P','Production Supervisor - WC40','Manufacturing',26);
INSERT INTO #EMPLOYEE VALUES (128,'Paul','Komosinski','B','Production Technician - WC40','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (129,'Gary','Yukish','W','Production Technician - WC40','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (130,'Rob','Caron','T','Production Technician - WC40','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (131,'Baris','Cetinok','F','Production Technician - WC40','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (132,'Nicole','Holliday','B','Production Technician - WC40','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (133,'Michael','Rothkugel','L','Production Technician - WC40','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (134,'Eric','Gubbels','','Production Supervisor - WC20','Manufacturing',26);
INSERT INTO #EMPLOYEE VALUES (135,'Ivo','Salmre','William','Production Technician - WC20','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (136,'Sylvester','Valdez','A','Production Technician - WC20','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (137,'Anibal','Sousa','T','Production Technician - WC20','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (138,'Samantha','Smith','H','Production Technician - WC20','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (139,'Hung-Fu','Ting','T','Production Technician - WC20','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (140,'Prasanna','Samarawickrama','E','Production Technician - WC20','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (141,'Min','Su','G','Production Technician - WC20','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (142,'Olinda','Turner','C','Production Technician - WC20','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (143,'Krishna','Sunkammurali','','Production Technician - WC20','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (144,'Paul','Singh','R','Production Technician - WC20','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (145,'Cynthia','Randall','S','Production Supervisor - WC30','Manufacturing',26);
INSERT INTO #EMPLOYEE VALUES (146,'Jian Shuo','Wang','','Production Technician - WC30','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (147,'Sandra','Reátegui Alayo','','Production Technician - WC30','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (148,'Jason','Watters','M','Production Technician - WC30','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (149,'Andy','Ruth','M','Production Technician - WC30','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (150,'Michael','Vanderhyde','T','Production Technician - WC30','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (151,'Rostislav','Shabalin','E','Production Technician - WC30','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (152,'Yuhong','Li','L','Production Supervisor - WC20','Manufacturing',26);
INSERT INTO #EMPLOYEE VALUES (153,'Hanying','Feng','P','Production Technician - WC20','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (154,'Raymond','Sam','K','Production Technician - WC20','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (155,'Fadi','Fakhouri','K','Production Technician - WC20','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (156,'Lane','Sacksteder','M','Production Technician - WC20','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (157,'Linda','Randall','A','Production Technician - WC20','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (158,'Shelley','Dyck','N','Production Technician - WC20','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (159,'Terrence','Earls','W','Production Technician - WC20','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (160,'Jeff','Hay','V','Production Supervisor - WC45','Manufacturing',26);
INSERT INTO #EMPLOYEE VALUES (161,'Kirk','Koenigsbauer','J','Production Technician - WC45','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (162,'Laura','Steele','C','Production Technician - WC45','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (163,'Alex','Nayberg','M','Production Technician - WC45','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (164,'Andrew','Cencini','M','Production Technician - WC45','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (165,'Chris','Preston','T','Production Technician - WC45','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (166,'Jack','Richins','S','Production Supervisor - WC30','Manufacturing',26);
INSERT INTO #EMPLOYEE VALUES (167,'David','Johnson','N','Production Technician - WC30','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (168,'Garrett','Young','R','Production Technician - WC30','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (169,'Susan','Metters','A','Production Technician - WC30','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (170,'George','Li','Z','Production Technician - WC30','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (171,'David','Yalovsky','A','Production Technician - WC30','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (172,'Marc','Ingle','J','Production Technician - WC30','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (173,'Eugene','Zabokritski','R','Production Technician - WC30','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (174,'Benjamin','Martin','R','Production Technician - WC30','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (175,'Reed','Koch','T','Production Technician - WC30','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (176,'David','Lawrence','Oliver','Production Technician - WC30','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (177,'Russell','King','M','Production Technician - WC30','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (178,'John','Frum','N','Production Technician - WC30','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (179,'Jan','Miksovsky','S','Production Technician - WC30','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (180,'Katie','McAskill-White','L','Production Supervisor - WC20','Manufacturing',26);
INSERT INTO #EMPLOYEE VALUES (181,'Michael','Hines','T','Production Technician - WC20','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (182,'Nitin','Mirchandani','S','Production Technician - WC20','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (183,'Barbara','Decker','S','Production Technician - WC20','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (184,'John','Chen','Y','Production Technician - WC20','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (185,'Stefen','Hesse','A','Production Technician - WC20','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (186,'Shane','Kim','S','Production Supervisor - WC45','Manufacturing',26);
INSERT INTO #EMPLOYEE VALUES (187,'Yvonne','McKay','S','Production Technician - WC45','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (188,'Douglas','Hite','B','Production Technician - WC45','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (189,'Janeth','Esteves','M','Production Technician - WC45','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (190,'Robert','Rounthwaite','J','Production Technician - WC45','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (191,'Lionel','Penuchot','C','Production Technician - WC45','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (192,'Brenda','Diaz','M','Production Supervisor - WC40','Manufacturing',26);
INSERT INTO #EMPLOYEE VALUES (193,'Alejandro','McGuel','E','Production Technician - WC40','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (194,'Fred','Northup','T','Production Technician - WC40','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (195,'Kevin','Liu','H','Production Technician - WC40','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (196,'Shammi','Mohamed','G','Production Technician - WC40','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (197,'Rajesh','Patel','M','Production Technician - WC40','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (198,'Lorraine','Nay','O','Production Technician - WC40','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (199,'Paula','Nartker','R','Production Technician - WC40','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (200,'Frank','Lee','T','Production Technician - WC40','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (201,'Brian','Lloyd','T','Production Technician - WC40','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (202,'Tawana','Nusbaum','G','Production Technician - WC40','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (203,'Ken','Myer','L','Production Technician - WC40','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (204,'Gabe','Mares','B','Production Technician - WC40','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (205,'Lori','Kane','A','Production Supervisor - WC45','Manufacturing',26);
INSERT INTO #EMPLOYEE VALUES (206,'Stuart','Munson','V','Production Technician - WC45','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (207,'Greg','Alderson','F','Production Technician - WC45','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (208,'Scott','Gode','R','Production Technician - WC45','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (209,'Kathie','Flood','E','Production Technician - WC45','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (210,'Belinda','Newman','M','Production Technician - WC45','Manufacturing',27);
INSERT INTO #EMPLOYEE VALUES (211,'Hazem','Abolrous','E','Quality Assurance Manager','Quality Assurance',1);
INSERT INTO #EMPLOYEE VALUES (212,'Peng','Wu','J','Quality Assurance Supervisor','Quality Assurance',211);
INSERT INTO #EMPLOYEE VALUES (213,'Sootha','Charncherngkha','T','Quality Assurance Technician','Quality Assurance',212);
INSERT INTO #EMPLOYEE VALUES (214,'Andreas','Berglund','T','Quality Assurance Technician','Quality Assurance',212);
INSERT INTO #EMPLOYEE VALUES (215,'Mark','Harrington','L','Quality Assurance Technician','Quality Assurance',212);
INSERT INTO #EMPLOYEE VALUES (216,'Sean','Alexander','P','Quality Assurance Technician','Quality Assurance',212);
INSERT INTO #EMPLOYEE VALUES (217,'Zainal','Arifin','T','Document Control Manager','Quality Assurance',211);
INSERT INTO #EMPLOYEE VALUES (218,'Tengiz','Kharatishvili','N','Control Specialist','Quality Assurance',212);
INSERT INTO #EMPLOYEE VALUES (219,'Sean','Chai','N','Document Control Assistant','Quality Assurance',212);
INSERT INTO #EMPLOYEE VALUES (220,'Karen','Berge','R','Document Control Assistant','Quality Assurance',212);
INSERT INTO #EMPLOYEE VALUES (221,'Chris','Norred','K','Control Specialist','Quality Assurance',212);
INSERT INTO #EMPLOYEE VALUES (222,'A. Scott','Wright','','Master Scheduler','Manufacturing',25);
INSERT INTO #EMPLOYEE VALUES (223,'Sairaj','Uddin','L','Scheduling Assistant','Manufacturing',26);
INSERT INTO #EMPLOYEE VALUES (224,'William','Vong','S','Scheduling Assistant','Manufacturing',26);
INSERT INTO #EMPLOYEE VALUES (225,'Alan','Brewer','J','Scheduling Assistant','Manufacturing',26);
INSERT INTO #EMPLOYEE VALUES (226,'Brian','LaMee','P','Scheduling Assistant','Manufacturing',26);
INSERT INTO #EMPLOYEE VALUES (227,'Gary','Altman','E.','Facilities Manager','Executive General and Administration',234);
INSERT INTO #EMPLOYEE VALUES (228,'Christian','Kleinerman','E','Maintenance Supervisor','Executive General and Administration',227);
INSERT INTO #EMPLOYEE VALUES (229,'Lori','Penor','K','Janitor','Executive General and Administration',228);
INSERT INTO #EMPLOYEE VALUES (230,'Stuart','Macrae','J','Janitor','Executive General and Administration',228);
INSERT INTO #EMPLOYEE VALUES (231,'Jo','Berry','L','Janitor','Executive General and Administration',228);
INSERT INTO #EMPLOYEE VALUES (232,'Pat','Coleman','H','Janitor','Executive General and Administration',228);
INSERT INTO #EMPLOYEE VALUES (233,'Magnus','Hedlund','E','Facilities Administrative Assistant','Executive General and Administration',227);
INSERT INTO #EMPLOYEE VALUES (234,'Laura','Norman','F','Chief Financial Officer','Executive General and Administration',1);
INSERT INTO #EMPLOYEE VALUES (235,'Paula','Barreto de Mattos','M','Human Resources Manager','Executive General and Administration',234);
INSERT INTO #EMPLOYEE VALUES (236,'Grant','Culbertson','N','Human Resources Administrative Assistant','Executive General and Administration',227);
INSERT INTO #EMPLOYEE VALUES (237,'Hao','Chen','O','Human Resources Administrative Assistant','Executive General and Administration',227);
INSERT INTO #EMPLOYEE VALUES (238,'Vidur','Luthra','X','Recruiter','Executive General and Administration',227);
INSERT INTO #EMPLOYEE VALUES (239,'Mindy','Martin','C','Benefits Specialist','Executive General and Administration',227);
INSERT INTO #EMPLOYEE VALUES (240,'Willis','Johnson','T','Recruiter','Executive General and Administration',227);
INSERT INTO #EMPLOYEE VALUES (241,'David','Liu','J','Accounts Manager','Executive General and Administration',234);
INSERT INTO #EMPLOYEE VALUES (242,'Deborah','Poe','E','Accounts Receivable Specialist','Executive General and Administration',227);
INSERT INTO #EMPLOYEE VALUES (243,'Candy','Spoon','L','Accounts Receivable Specialist','Executive General and Administration',227);
INSERT INTO #EMPLOYEE VALUES (244,'Bryan','Walton','A','Accounts Receivable Specialist','Executive General and Administration',227);
INSERT INTO #EMPLOYEE VALUES (245,'Barbara','Moreland','C','Accountant','Executive General and Administration',227);
INSERT INTO #EMPLOYEE VALUES (246,'Dragan','Tomic','K','Accounts Payable Specialist','Executive General and Administration',227);
INSERT INTO #EMPLOYEE VALUES (247,'Janet','Sheperdigian','L','Accounts Payable Specialist','Executive General and Administration',227);
INSERT INTO #EMPLOYEE VALUES (248,'Mike','Seamans','K','Accountant','Executive General and Administration',227);
INSERT INTO #EMPLOYEE VALUES (249,'Wendy','Kahn','Beth','Finance Manager','Executive General and Administration',234);
INSERT INTO #EMPLOYEE VALUES (250,'Sheela','Word','H','Purchasing Manager','Inventory Management',211);
INSERT INTO #EMPLOYEE VALUES (251,'Mikael','Sandberg','Q','Buyer','Inventory Management',121);
INSERT INTO #EMPLOYEE VALUES (252,'Arvind','Rao','B','Buyer','Inventory Management',121);
INSERT INTO #EMPLOYEE VALUES (253,'Linda','Meisner','P','Buyer','Inventory Management',121);
INSERT INTO #EMPLOYEE VALUES (254,'Fukiko','Ogisu','J','Buyer','Inventory Management',121);
INSERT INTO #EMPLOYEE VALUES (255,'Gordon','Hee','L','Buyer','Inventory Management',121);
INSERT INTO #EMPLOYEE VALUES (256,'Frank','Pellow','S','Buyer','Inventory Management',121);
INSERT INTO #EMPLOYEE VALUES (257,'Eric','Kurjan','S','Buyer','Inventory Management',121);
INSERT INTO #EMPLOYEE VALUES (258,'Erin','Hagens','M','Buyer','Inventory Management',121);
INSERT INTO #EMPLOYEE VALUES (259,'Ben','Miller','T','Buyer','Inventory Management',121);
INSERT INTO #EMPLOYEE VALUES (260,'Annette','Hill','L','Purchasing Assistant','Inventory Management',121);
INSERT INTO #EMPLOYEE VALUES (261,'Reinout','Hillmann','N','Purchasing Assistant','Inventory Management',121);
INSERT INTO #EMPLOYEE VALUES (262,'David','Barber','M','Assistant to the Chief Financial Officer','Executive General and Administration',234);
INSERT INTO #EMPLOYEE VALUES (263,'Jean','Trenary','E','Information Services Manager','Executive General and Administration',1);
INSERT INTO #EMPLOYEE VALUES (264,'Stephanie','Conroy','A','Network Manager','Executive General and Administration',234);
INSERT INTO #EMPLOYEE VALUES (265,'Ashvini','Sharma','R','Network Administrator','Executive General and Administration',227);
INSERT INTO #EMPLOYEE VALUES (266,'Peter','Connelly','I','Network Administrator','Executive General and Administration',227);
INSERT INTO #EMPLOYEE VALUES (267,'Karen','Berg','A','Application Specialist','Executive General and Administration',234);
INSERT INTO #EMPLOYEE VALUES (268,'Ramesh','Meyyappan','V','Application Specialist','Executive General and Administration',234);
INSERT INTO #EMPLOYEE VALUES (269,'Dan','Bacon','K','Application Specialist','Executive General and Administration',234);
INSERT INTO #EMPLOYEE VALUES (270,'François','Ajenstat','P','Database Administrator','Executive General and Administration',234);
INSERT INTO #EMPLOYEE VALUES (271,'Dan','Wilson','B','Database Administrator','Executive General and Administration',234);
INSERT INTO #EMPLOYEE VALUES (272,'Janaina','Bueno','Barreiro Gambaro','Application Specialist','Executive General and Administration',234);
INSERT INTO #EMPLOYEE VALUES (273,'Brian','Welcker','S','Vice President of Sales','Sales and Marketing',1);
INSERT INTO #EMPLOYEE VALUES (274,'Stephen','Jiang','Y','North American Sales Manager','Sales and Marketing',16);
INSERT INTO #EMPLOYEE VALUES (275,'Michael','Blythe','G','Sales Representative','Sales and Marketing',17);
INSERT INTO #EMPLOYEE VALUES (276,'Linda','Mitchell','C','Sales Representative','Sales and Marketing',17);
INSERT INTO #EMPLOYEE VALUES (277,'Jillian','Carson','','Sales Representative','Sales and Marketing',17);
INSERT INTO #EMPLOYEE VALUES (278,'Garrett','Vargas','R','Sales Representative','Sales and Marketing',17);
INSERT INTO #EMPLOYEE VALUES (279,'Tsvi','Reiter','Michael','Sales Representative','Sales and Marketing',17);
INSERT INTO #EMPLOYEE VALUES (280,'Pamela','Ansman-Wolfe','O','Sales Representative','Sales and Marketing',17);
INSERT INTO #EMPLOYEE VALUES (281,'Shu','Ito','K','Sales Representative','Sales and Marketing',17);
INSERT INTO #EMPLOYEE VALUES (282,'José','Saraiva','Edvaldo','Sales Representative','Sales and Marketing',17);
INSERT INTO #EMPLOYEE VALUES (283,'David','Campbell','R','Sales Representative','Sales and Marketing',17);
INSERT INTO #EMPLOYEE VALUES (284,'Tete','Mensa-Annan','A','Sales Representative','Sales and Marketing',17);
INSERT INTO #EMPLOYEE VALUES (285,'Syed','Abbas','E','Pacific Sales Manager','Sales and Marketing',16);
INSERT INTO #EMPLOYEE VALUES (286,'Lynn','Tsoflias','N','Sales Representative','Sales and Marketing',17);
INSERT INTO #EMPLOYEE VALUES (287,'Amy','Alberts','E','European Sales Manager','Sales and Marketing',16);
INSERT INTO #EMPLOYEE VALUES (288,'Rachel','Valdez','B','Sales Representative','Sales and Marketing',17);
INSERT INTO #EMPLOYEE VALUES (289,'Jae','Pak','B','Sales Representative','Sales and Marketing',17);
INSERT INTO #EMPLOYEE VALUES (290,'Ranjit','Varkey Chudukatil','R','Sales Representative','Sales and Marketing',17);

---- find out how many total reports for each manager

--step 1 let's use single query to build a hierarchy view of direct reports
-- this sql shows the basic form of constructing a recursive structure and its usage
WITH DR (managerid, employeeid, title, employeelevel) AS
(
---- seed
SELECT MANAGER_ID, EMP_ID, JOBTITLE, 0 AS ORGLEVEL
FROM  #EMPLOYEE
WHERE MANAGER_ID = 0
UNION ALL
--- recursive add
SELECT E.MANAGER_ID, E.EMP_ID, E.JOBTITLE, ORGLEVEL+1
FROM #EMPLOYEE AS E
INNER JOIN
DR
ON
E.MANAGER_ID = DR.EMP_ID
)
SELECT *
FROM DR
ORDER BY MANAGER_ID
;
--- STEP2
--- however, this did not answer our question
--- we need to change the SEED part of the query to get all managers as the seed
SELECT E.EMP_ID, E.JOBTITLE
from
(
SELECT DISTINCT MANAGER_ID
FROM  #EMPLOYEE
) AS MGR
INNER JOIN
#EMPLOYEE E
ON
MGR.MANAGER_ID = E.EMP_ID
;

--STEP 3
--- now we have all managers,
-- if we use one of them as the seed and start looking
-- down from its hierarchy, we can get all of his/her subordinates by recursive query
 --- sample

WITH UPPER_MGR(EMP_ID, JOBTITLE,REPORT_TO,LVL) AS
(
SELECT E.EMP_ID, E.JOBTITLE, E.MANAGER_ID AS REPORT_TO, 0 AS LVL
from
(
SELECT DISTINCT MANAGER_ID
FROM  #EMPLOYEE
) AS MGR
INNER JOIN
#EMPLOYEE E
ON
MGR.MANAGER_ID = E.EMP_ID
where emp_id = 26
UNION ALL
SELECT E.EMP_ID,E.JOBTITLE,UM.EMP_ID AS REPORT_TO , UM.LVL + 1 AS LVL
FROM #EMPLOYEE E
INNER JOIN
UPPER_MGR UM
ON
E.MANAGER_ID = UM.EMP_ID
)
SELECT *
FROM UPPER_MGR
;

--STEP 4
--- now, we can see that we get one manager working,
--  the requirement is to generate a count by each manager,
-- we need to setup a persistent value which will be propergated
--- to all rows in the query showed above

WITH UPPER_MGR(EMP_ID, JOBTITLE,REPORT_TO,LVL, COUNT_BY_MGR_ID) AS
(
SELECT E.EMP_ID, E.JOBTITLE, E.MANAGER_ID AS REPORT_TO, 0 AS LVL,
E.EMP_ID AS COUNT_BY_MGR_ID
from
(
SELECT DISTINCT MANAGER_ID
FROM  #EMPLOYEE
) AS MGR
INNER JOIN
#EMPLOYEE E
ON
MGR.MANAGER_ID = E.EMP_ID
where emp_id = 26
UNION ALL
SELECT E.EMP_ID,E.JOBTITLE,UM.EMP_ID AS REPORT_TO , UM.LVL + 1 AS LVL,
UM.COUNT_BY_MGR_ID
FROM #EMPLOYEE E
INNER JOIN
UPPER_MGR UM
ON
E.MANAGER_ID = UM.EMP_ID
)
SELECT COUNT_BY_MGR_ID, COUNT(*)
FROM UPPER_MGR
GROUP BY COUNT_BY_MGR_ID
;