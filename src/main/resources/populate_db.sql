INSERT INTO worker
	(NAME, BIRTHDAY, LEVEL, SALARY)
VALUES
	('Zoowee Blubberworth', '2001-01-01', 'Trainee', 400),
	('Flufffy Gloomkins', '1997-02-02', 'Junior', 800),
	('Buritt Noseface', '1995-03-03', 'Junior', 900),
	('Peaberry Wigglewhistle', '1993-04-04', 'Junior', 950),
	('Flapberry Fudgewhistle', '1991-05-05', 'Junior', 1050),
	('Gummoo Hooperbottom', '1994-06-06', 'Junior', 1500),
	('Humster Pottyworthy', '1989-07-07', 'Middle', 1900),
	('Bugby Doodoohill', '1987-08-08', 'Middle', 2400),
	('Gootu Snotborn', '1986-09-09', 'Middle', 3500),
	('Peafy Doodoofish', '1983-10-10', 'Senior', 5950)
;
	
INSERT INTO client
	(NAME)
VALUES
	('First company'),
	('Second company'),
	('Third company'),
	('Fourth company'),
	('Fifth company')	
;

INSERT INTO client
	(ID, NAME)
VALUES
	(1,'First company'),
	(2,'Second company'),
	(3,'Third company'),
	(4,'Fourth company'),
	(5,'Fifth company')	
;

INSERT INTO project
	(ID, CLIENT_ID, START_DATE, FINISH_DATE)
VALUES
	(1,  1, '2001-01-01', '2001-02-01'),
	(2,  3, '2001-02-01', '2002-02-01'),
	(3,  4, '2001-03-01', '2003-03-01'),
	(4,  2, '2002-04-01', '2008-04-01'),
	(5,  5, '2002-05-01', '2005-05-01'),	
	(6,  1, '2003-06-01', '2006-06-01'),
	(7,  5, '2004-07-01', '2007-07-01'),
	(8,  2, '2008-08-01', '2016-08-01'),
	(9,  1, '2009-09-01', '2014-09-01'),
	(10, 1, '2010-10-01', '2018-10-01')	
;


INSERT INTO project_worker
	(PROJECT_ID, WORKER_ID)
VALUES
	(1,1),
	(1,2),
	(1,6),
	(1,7),
	(1,10),
	(2,4),
	(2,5),
	(3,6),
	(3,7),
	(4,8),
	(5,9),
	(6,5),
	(7,2),
	(7,6),
	(7,8),
	(8,2),
	(8,4),
	(8,3),
	(9,9),
	(9,9),
	(9,10),
	(10,2),
	(10,4),
	(10,5)
;