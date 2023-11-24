use DB114;

INSERT INTO location
VALUES	(301, 'Budapest', 1756000, 2500),
		(302, 'Athens', 4000000, 700),
		(303, 'Copenhagen', 602481, 3000),
		(304, 'Edinburgh', 548000, 2400),
		(291, 'Heraklion', 173993, 650);

INSERT INTO Customer
VALUES	(00001, 'Onoufrios', 'Tanalias', 25090139857, 'Belgrade', 11047, 'Bougatsas', 07, 301),
		(00002, 'Babis', 'Dadakarides', 13075629485, 'Varkiza', 182025, 'Sabouras', 72, 302),
		(00003, 'Lorde', 'Draculine', 01010111012, 'Caucasus', 35219, 'Toblerone', 135, 303),
		(00004, 'Mark', 'Rylance', 18125012396, 'Edinburgh', 29012, 'Bridgers', 07, 304),
		(00005, 'Sakis', 'Skoulos', 31038902754, 'St Nikolaos', 20819, 'Panepistimiou', 13, 291);

INSERT INTO CustomerPhones
VALUES (00001, 5231342589),
	(00002, 2103215792),
	(00003, 0791345985),
	(00004, 1456782367),
	(00005, 2121572354);

INSERT INTO Store
VALUES	(3094, 'Pizza Pasteria', 11, 302),
		(2019, 'Fibonacci', 14, 291),
		(3121, 'Star Wars Hotel', 18, 304),
		(7182, '1D store', 34, 303),
		(2103, 'Paramount souvenirs', 31, 301);

INSERT INTO Bank_Account
VALUES	(1001, '2002-09-08', 90, 'St Matthews'),
		(1002, '2014-06-25', 135, 'St Bartholomews'),
		(1003, '2011-07-15', 401, 'Wall Street�s Dpt'),
		(1004, '2004-10-04', 1309, 'Hollywood�s'),
		(1005, '2009-09-07', 145, 'Crete�s');

INSERT INTO Savings_Account
VALUES	(1001, 70),
		(1003, 65),
		(1005, 14);

INSERT INTO Current_Account
VALUES	(1002, 5000),
		(1004, 2000);

INSERT INTO Account_Owner
VALUES	(00001, 1001),
		(00001, 1004),
		(00002, 1001),
		(00003, 1002),
		(00004, 1003),
		(00005, 1005);

INSERT INTO Credit_Card
VALUES	(99001, '2003-09-08', '2009-07-07', 1000, 4000, 45, 00001, 1001),
		(99002, '2015-03-14', '2020-10-10', 500, 6000, 20, 00002, 1004),
		(99003, '2014-11-11', '2026-10-19', 14000, 30000, 55, 00004, 1003),
		(99004, '2010-10-10', '2015-05-30', 200, 2000, 13, 00001, 1004),
		(99005, '2012-12-12', '2022-12-22', 30, 15000, 24, 00005, 1005);

INSERT INTO Transactions
VALUES	(20001, 20, 380, '2016-03-15', 3094, 99001),
		(20002, 35, 901, '2017-04-09', 7182, 99004),
		(20003, 19, 799, '2009-11-19', 7182, 99003),
		(20008, 22, 1405, '2017-06-25', 2019, 99001),
		(20010, 25, 21, '2004-01-01', 3121, 99005);

INSERT INTO Card_Payment
VALUES	(00001, 1, '2008-04-15', 300),
		(00001, 2, '2008-10-03', 25),
		(00002, 1, '2013-12-05', 190),
		(00004, 1, '2012-01-14', 2000),
		(00005, 1, '2016-10-12', 10000);

INSERT INTO Transactions
VALUES  (20009, 30, 802, '2017-06-11', 3094, 99002),
	    (20011, 15, 910, '2017-06-14', 7182, 99001),
	    (20012, 29, 375, '2009-12-19', 2103, 99003),
	    (20013, 49, 12, '2017-06-21', 2103, 99005),
        (20014, 82, 30, '2016-03-23', 3094, 99005),
	    (20015, 68, 122, '2017-06-02', 3121, 99002),
	    (20016, 82, 567, '2016-11-13', 7182, 99001),
	    (20017, 85, 15, '2017-12-20', 3094, 99004),
        (20018, 19, 421, '2017-06-18', 2103, 99005),
	    (20019, 14, 915, '2017-06-09', 2019, 99004),
	    (20020, 203, 701, '2017-12-20', 2103, 99001),
	    (20021, 21, 126, '2017-06-27', 2019, 99001),
        (20022, 14, 234, '2017-12-13', 7182, 99002),
        (20023, 23, 409, '2017-12-30', 2103, 99001),
	    (20024, 45, 93, '2017-12-25', 2103, 99001),
	    (20025, 20, 712, '2017-06-11', 3121, 99004),
	    (20026, 30, 12, '2017-12-28', 3094, 99005);


INSERT INTO Card_Payment
VALUES  (00003, 1, '2017-02-13', 200),
	    (00003, 2, '2017-10-08', 180),
	    (00004, 2, '2016-11-15', 120),
	    (00001, 3, '2017-06-12', 40),
	    (00002, 2, '2017-09-10', 150),
	    (00005, 2, '2017-01-19', 130),
	    (00002, 3, '2017-12-10', 230),
	    (00004, 3, '2017-09-12', 110),
	    (00001, 4, '2017-12-29', 65);

INSERT INTO Transactions
VALUES  (20028, 28000, 114, '2017-05-15', 2019, 99003);

INSERT INTO Customer
VALUES (00006, 'Maria', 'Papadopoulou', 3200854207, 'Varkiza', 182025, 'Priamou', 72, 302);

INSERT INTO customerPhones
VALUES (00006, 6980335678);

INSERT INTO Bank_Account
VALUES (1006, '2018-06-29', 15000, 'St Bartholomews');

INSERT INTO account_owner
VALUES (00006, 1006);

INSERT INTO Current_Account
VALUES	(1006, 5000);

INSERT INTO credit_card
VALUES (99006, '2012-06-12', '2022-12-22', 11000, 15000, 5, 00006, 1006);

INSERT INTO Transactions
VALUES  (20029, 30, 8020, '2017-06-20', 3094, 99006),
	    (20030, 15, 910, '2017-06-12', 7182, 99006),
	    (20031, 29, 375, '2015-12-05', 2103, 99004),
	    (20032, 49, 1200, '2017-06-21', 2103, 99005),
        (20033, 82, 28, '2016-03-13', 3094, 99006),
	    (20034, 68, 122, '2017-06-01', 3121, 99006),
	    (20035, 82, 789, '2016-12-17', 7182, 99002),
	    (20036, 85, 15, '2017-06-30', 3094, 99006),
        (20037, 19, 421, '2017-06-18', 2103, 99001);
	    
INSERT INTO Transactions
VALUES  (20038, 2999, 802, '2017-06-11', 3094, 99003),
        (20039, 100, 802, '2021-10-11', 3094, 99003);

INSERT INTO Transactions
VALUES  (20040, 900, 21, '2022-11-22', 3094, 99003),
        (20041, 300, 21, '2022-11-22', 2103, 99004);

INSERT INTO Transactions
VALUES  (20042, 13, 19, '2022-11-22', 3094, 99005),
        (20043, 13, 19, '2022-11-22', 2103, 99005);

INSERT INTO Transactions
VALUES  (20044, 150, 19, '2017-06-15', 3121, 99002),
        (20045, 50, 19, '2016-06-12', 7182, 99002),
        (20046, 200, 15, '2017-06-30', 3094, 99006),
        (20047, 55, 15, '2017-06-25', 3094, 99006);

INSERT INTO Bank_Account
VALUES (1007, '2020-03-13', 20000, 'St Bartholomews');

INSERT INTO account_owner
VALUES (00006, 1007);

INSERT INTO credit_card
VALUES (99007, '2012-06-12', '2022-12-22', 11000, 15000, 5, 00003, 1002);

INSERT INTO Account_Owner
VALUES	(00002, 1004);

INSERT INTO Transactions
VALUES  (20050, 60, 802, '2017-01-11', 3094, 99001),
	    (20051, 18, 910, '2017-02-14', 7182, 99001),
	    (20052, 130, 375, '2017-03-19', 2103, 99001),
	    (20053, 42, 12, '2017-04-21', 2103, 99001),
        (20054, 13, 30, '2017-05-23', 3094, 99001),
	    (20055, 56, 122, '2017-07-02', 3121, 99001),
	    (20056, 138, 567, '2017-08-13', 7182, 99001),
	    (20057, 35, 15, '2017-09-20', 3094, 99001),
        (20058, 72, 421, '2017-10-18', 2103, 99001),
	    (20059, 12, 915, '2017-11-09', 2019, 99001);


INSERT INTO Transactions
VALUES  (20060, 203, 701, '2017-12-20', 2103, 99001),
	    (20061, 24, 126, '2017-01-27', 2019, 99002),
        (20062, 98, 234, '2017-02-13', 7182, 99002),
        (20063, 25, 409, '2017-03-30', 2103, 99002),
	    (20064, 40, 93, '2017-04-25', 2103, 99002),
	    (20065, 22, 712, '2017-05-11', 3121, 99002),
	    (20066, 37, 12, '2017-07-28', 3094, 99002),
	    (20067, 18, 567, '2017-08-13', 7182, 99002),
	    (20068, 34, 15, '2017-09-20', 3094, 99002),
        (20069, 70, 421, '2017-10-18', 2103, 99002);
	    
		
		
INSERT INTO Transactions
VALUES	(20070, 190, 915, '2017-11-09', 2019, 99002),
	    (20071, 203, 701, '2017-12-20', 2103, 99002),
	    (20072, 25, 126, '2017-01-27', 2019, 99003),
        (20073, 18, 234, '2017-02-13', 7182, 99003),
        (20074, 23, 409, '2017-03-30', 2103, 99003),
	    (20075, 90, 93, '2017-04-25', 2103, 99003),
	    (20076, 34, 712, '2017-05-11', 3121, 99003),
	    (20077, 39, 12, '2017-07-28', 3094, 99003),
	    (20078, 18, 567, '2017-08-13', 7182, 99003),
	    (20079, 31, 15, '2017-09-20', 3094, 99003),
        (20080, 89, 421, '2017-10-18', 2103, 99003),
	    (20081, 129, 915, '2017-11-09', 2019, 99003),
	    (20082, 21, 701, '2017-12-20', 2103, 99003);



INSERT INTO Transactions
VALUES	(20083, 39, 126, '2017-01-27', 2019, 99005),
        (20084, 210, 234, '2017-02-13', 7182, 99005),
        (20085, 128, 409, '2017-03-30', 2103, 99005),
	    (20086, 340, 93, '2017-04-25', 2103, 99005),
	    (20087, 355, 712, '2017-05-11', 3121, 99005),
	    (20088, 89, 12, '2017-07-28', 3094, 99005),
	    (20089, 602, 567, '2017-08-13', 7182, 99005),
	    (20090, 79, 15, '2017-09-20', 3094, 99005),
        (20091, 82, 421, '2017-10-18', 2103, 99005),
	    (20092, 190, 915, '2017-11-09', 2019, 99005),
	    (20093, 211, 701, '2017-12-20', 2103, 99005),
	    (20094, 190, 915, '2017-06-09', 2019, 99003),
	    (20095, 228, 701, '2017-12-20', 2103, 99003),
	    (20096, 62, 802, '2017-01-11', 3094, 99006),
	    (20097, 18, 910, '2017-02-14', 7182, 99006),
	    (20098, 133, 375, '2017-03-19', 2103, 99006);


INSERT INTO Transactions
VALUES	(20099, 52, 12, '2017-04-21', 2103, 99006),
        (20100, 89, 30, '2017-05-23', 3094, 99006),
	    (20101, 34, 122, '2017-07-02', 3121, 99006),
		(20102, 138, 567, '2017-08-13', 7182, 99006),
		(20103, 124, 15, '2017-09-20', 3094, 99006),
        (20104, 67, 421, '2017-10-18', 2103, 99006),
		(20105, 113, 915, '2017-11-09', 2019, 99006),
		(20106, 20, 701, '2017-12-20', 2103, 99006),
		(20107, 203, 701, '2017-06-20', 2103, 99006);


INSERT INTO Transactions
VALUES  (20108, 36, 126, '2017-01-27', 2019, 99007),
        (20109, 168, 234, '2017-02-13', 7182, 99007),
        (20110, 24, 409, '2017-03-30', 2103, 99007),
		(20111, 15, 93, '2017-04-25', 2103, 99007),
		(20112, 34, 712, '2017-05-11', 3121, 99007),
		(20113, 209, 12, '2017-07-28', 3094, 99007),
		(20114, 189, 567, '2017-08-13', 7182, 99007),
		(20115, 323, 15, '2017-09-20', 3094, 99007),
        (20116, 891, 421, '2017-10-18', 2103, 99007),
		(20117, 14, 915, '2017-11-09', 2019, 99007),
		(20118, 225, 701, '2017-12-20', 2103, 99007),
		(20119, 88, 701, '2017-06-11', 2103, 99007);


INSERT INTO Card_Payment
VALUES (00006, 1, '2017-05-29', 1600);

INSERT INTO Transactions
VALUES  (20120, 200, 126, '2023-01-27', 2019, 99007);

INSERT INTO Transactions
VALUES (20121, 15000, 234, '2023-02-13', 7182, 99007);

INSERT INTO Customer
VALUES (00007, 'Georgia', 'Tomez', 6698700000, 'Varkiza', 182025, 'Priamou', 72, 302);

INSERT INTO Credit_Card 
VALUES	(99008, '2022-06-25', '2026-06-24', 800, 4000, 2, 00007, 1006);

INSERT INTO Transactions
VALUES  (20121, 36, 126, '2017-01-27', 2019, 99008);

INSERT INTO Card_Payment
VALUES	(00007, 1, '2023-01-04', 30);
