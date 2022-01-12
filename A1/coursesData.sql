insert into Student values (0991326, 'Harry', 'Marchal', 'hmarchal@uoguelph.ca', 3.13);
insert into Student values (0198000, 'William', 'Cooper', 'wcooper@uoguelph.ca', 4.00);
insert into Student values (0499999, 'Rashi', 'Ali', 'rali@uoguelph.ca', 2.98);
insert into Student values (0560157, 'Chris', 'Elliott', 'celliott@uoguelph.ca', 3.42);
insert into Student values (0411111, 'Fay', 'Simpson', 'fsimpson@uoguelph.ca', 1.4);

insert into Course values (3530, 'Intro to Databases', 'CIS', 3);
insert into Course values (2070, 'Software Design', 'CIS', 3);
insert into Course values (1480, 'Intro to Comp Sci', 'CIS', 3);
insert into Course values (2630, 'Data Struct and Anal', 'CIS', 1.5);
insert into Course values (3200, 'Intro to Machine Learning', 'CIS', 3);
insert into Course values (2630, 'Compar Vert Anatomy', 'EEB', 3);
insert into Course values (3200, 'Natl and Intl Env Policy', 'ENV', 3);
insert into Course values (2200, 'Medieval Society', 'HIS', 1.5);
insert into Course values (1500, 'C programming', 'CIS', 3);

insert into Offering values (1, 3530, 'CIS', 2017, 'F', 'Ritu');
insert into Offering values (2, 3530, 'CIS', 2017, 'F', 'Ritu');
insert into Offering values (3, 3530, 'CIS', 2017, 'F', 'Harry');
insert into Offering values (4, 3200, 'CIS', 2017, 'F', 'Herepson');
insert into Offering values (5, 2070, 'CIS', 2017, 'F', 'Stacy');
insert into Offering values (6, 2070, 'CIS', 2017, 'F', 'Navathe');
insert into Offering values (7, 1480, 'CIS', 2017, 'W', 'Herepson');
insert into Offering values (8, 1480, 'CIS', 2017, 'W', 'Amit');
insert into Offering values (9, 2630, 'CIS', 2017, 'F', 'Ritu');
insert into Offering values (13, 2630, 'EEB', 2017, 'F', 'Johancsik');
insert into Offering values (17, 3200, 'ENV', 2017, 'F', 'Suzuki');
insert into Offering values (18, 2200, 'HIS', 2017, 'F', 'Young');
insert into Offering values (19, 2200, 'HIS', 2017, 'F', 'Dow');
insert into Offering values (21, 3530, 'CIS', 2016, 'W', 'Mylopoulos');
insert into Offering values (22, 3530, 'CIS', 2016, 'W', 'Mylopoulos');
insert into Offering values (23, 2630, 'CIS', 2016, 'W', 'Stacy');
insert into Offering values (24, 3200, 'CIS', 2016, 'W', 'Herepson');
insert into Offering values (25, 2070, 'CIS', 2016, 'F', 'Stacy');
insert into Offering values (26, 2070, 'CIS', 2016, 'W', 'Navathe');
insert into Offering values (27, 1480, 'CIS', 2016, 'F', 'Herepson');
insert into Offering values (28, 1480, 'CIS', 2016, 'W', 'Miller');
insert into Offering values (29, 2630, 'CIS', 2016, 'W', 'Ritu');
insert into Offering values (33, 2630, 'EEB', 2016, 'W', 'Suzuki');

insert into Took values (0991326, 1, 79);

--insert into Took values (0991326, 31, 82);

--insert into Took values (0991326, 14, 39);
--insert into Took values (0991326, 15, 62);
insert into Took values (0991326, 33, 75);

insert into Took values (0198000, 1, 82);
insert into Took values (0198000, 5, 89);
insert into Took values (0198000, 6, 72);
insert into Took values (0198000, 7, 89);
insert into Took values (0198000, 8, 93);

--insert into Took values (0198000, 16, 79);
insert into Took values (0198000, 17, 79);
insert into Took values (0198000, 22, 54);
insert into Took values (0198000, 27, 89);
insert into Took values (0198000, 33, 78);
insert into Took values (0198000, 9, 78);

insert into Took values (0499999, 1, 89);
insert into Took values (0499999, 5, 76);
insert into Took values (0499999, 6, 78);
insert into Took values (0499999, 7, 71);
insert into Took values (0499999, 8, 91);
insert into Took values (0499999, 13, 99);
insert into Took values (0499999, 17, 94);
insert into Took values (0499999, 22, 96);
insert into Took values (0499999, 27, 52);
--insert into Took values (0499999, 31, 70);

insert into Took values (0560157, 1, 99);
insert into Took values (0560157, 33, 82);
insert into Took values (0560157, 21, 71);
insert into Took values (0560157, 3, 82);
insert into Took values (0560157, 5, 59);
insert into Took values (0560157, 6, 72);
insert into Took values (0560157, 7, 89);
insert into Took values (0560157, 28, 91);
insert into Took values (0560157, 13, 90);
insert into Took values (0560157, 26, 71);
insert into Took values (0560157, 17, 59);

insert into Took values (0411111, 17, 46);
insert into Took values (0411111, 9, 0);
insert into Took values (0411111, 8, 17);
--insert into Took values (0411111, 31, 45);
insert into Took values (0411111, 19, 46);
insert into Took values (0411111, 18, 34);
