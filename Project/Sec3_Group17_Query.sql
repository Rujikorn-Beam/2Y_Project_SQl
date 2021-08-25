DROP DATABASE IF EXISTS Project; 
CREATE DATABASE IF NOT EXISTS Project;
USE Project;
-- create

CREATE TABLE Member_info(
	Mem_id		char(5) 		NOT NULL ,
	Email		varchar(50) 	NOT NULL,
	Passward 	varchar(100) 	NOT NULL,
	Sub_date 	date			NOT NULL,
	PRIMARY KEY (Mem_id)
);
CREATE TABLE Profile_info(
	Pro_id		char(6) 		NOT NULL ,
	Nam			varchar(20)		NOT NULL,
	BirthDate  	date			NOT NULL,
	Email		varchar(50) 	NOT NULL,
	PRIMARY KEY (Pro_id)
);
CREATE TABLE Plan(
	Plan_No		char(5) 		NOT NULL ,
	Price		varchar(4)		,
	Quality		varchar(8)		,
	No_screen	char(1)			,
	Download	char(1)			,
	PRIMARY KEY (Plan_No)
);
create table Rating_info(
	Rat_id 		char(5) not null,
    D_M_Y   	date	not null,
    Rat_point	varchar(5)	not null,	
    PRIMARY KEY (Rat_id)
);
create table Review_info(
	Rev_id 		char(5) not null,
    D_M_Y   	date	not null,
	De_scription varchar(70) not null,
    PRIMARY KEY (Rev_id)
);

create table Movie_info(
	Movie_id	char(5) 		not null,
	Title		varchar(200) 	not null,
	Y_ear		char(4) 		not null,
    Genre		varchar(20)		,
	T_ime		time			not null,
    Mature_rat	varchar(20)		not null,
    PRIMARY KEY (Movie_id)
);
create table TV_Show_info(
	TV_id		char(5) not null,
	Title		varchar(200) not null,
    Genre		varchar(20)		,
	Season		varchar(10) ,
	Y_ear		char(4) not null  , 
    PRIMARY KEY (TV_id)
);

CREATE TABLE Membar(
	Mem_id	char(5) 		NOT NULL ,
	Fname 	varchar(20) 	NOT NULL,
	Lname	varchar(20)		NOT NULL,
	Phone_No varchar(20)	NOT NULL,
	Plan_No	char(5)			NOT NULL,
	PRIMARY KEY (Mem_id),
    CONSTRAINT FK_idmem FOREIGN KEY (Mem_id) REFERENCES Member_info(Mem_id),
	CONSTRAINT FK_planmem FOREIGN KEY (Plan_No) REFERENCES Plan(Plan_No)
);
CREATE TABLE Profil(
	Pro_id		char(6) 		NOT NULL ,
	Mem_id		char(5)			NOT NULL,
	Rat_id		char(5)			,
	PRIMARY KEY (Pro_id),
    CONSTRAINT FK_mempro FOREIGN KEY (Mem_id) REFERENCES Member_info(Mem_id),
    CONSTRAINT FK_ratpro FOREIGN KEY (Rat_id) REFERENCES Rating_info(Rat_id)
);
create table TV_Show(
	TV_id		char(5) not null,
	Mem_id		char(5) ,
	Rat_id		char(5) ,
    Rev_id		char(5) ,
    PRIMARY KEY (TV_id),
	FOREIGN KEY (Mem_id) REFERENCES Member_info(Mem_id),
    FOREIGN KEY (Rat_id) REFERENCES Rating_info(Rat_id)
);

create table Rating(
	Rat_id 		char(5) not null,
    Pro_id 		char(6) not null,
    Movie_id	char(5) ,
    TV_id		char(5) ,
    PRIMARY KEY (Rat_id),
    FOREIGN KEY (Pro_id) REFERENCES Profile_info(Pro_id),
    FOREIGN KEY (Movie_id) REFERENCES Movie_info(Movie_id),
    FOREIGN KEY (TV_id) REFERENCES TV_Show_info(TV_id)
);

create table Review(
	Rev_id		char(5) not null,
	Movie_id	char(5) ,
	Pro_id		char(6) not null,
	TV_id		char(5) ,
    PRIMARY KEY (Rev_id),
    FOREIGN KEY (Pro_id) REFERENCES Profile_info(Pro_id),
    FOREIGN KEY (Movie_id) REFERENCES Movie_info(Movie_id),
    FOREIGN KEY (TV_id) REFERENCES TV_Show_info(TV_id)
);

create table Movie(
	Movie_id	char(5) not null,
	Mem_id		char(5) ,
	Rat_id		char(5) ,
    Rev_id		char(5) ,
    PRIMARY KEY (Movie_id),
    FOREIGN KEY (Mem_id) REFERENCES Member_info(Mem_id),
    FOREIGN KEY (Rev_id) REFERENCES Review_info(Rev_id),
    FOREIGN KEY (Rat_id) REFERENCES Rating_info(Rat_id)
    
);

-- alter

ALTER TABLE Profile_info 
ADD Tpye_Color varchar(10);

ALTER TABLE Member_info
ADD Reserve_email varchar(30);

Alter table Review_info 
Add column t_ime time; 

Alter table Rating 
Add column mem_id char(6);

Alter table Membar 
Add column bill char(6);

Alter table Membar 
drop column bill; 

Alter table Review_info 
drop column t_ime;

ALTER TABLE Member_info
DROP COLUMN Reserve_email;

ALTER TABLE Profile_info
DROP COLUMN Tpye_Color;  

Alter table Rating 
drop column mem_id; 

-- Drop
/*
Drop table Review;    
Drop table Rating;
Drop table Movie;
Drop table Profil;
Drop table Membar;
*/

-- insert
INSERT INTO `Member_info` (`Mem_id`, `Email`, `Passward`, `Sub_date`) VALUES
(73473,'Siriwimon@hotmail.com','s1qb7Sw2Q6','2020-02-24'),
(98902,'Cherdrush@mahidol.ac.th','vCKQ11','2020-03-18'),
(48335,'Pubas.dee@mahidol.edu','OaigR3MbkG8S','2020-09-17'),
(18803,'Pitchaporan@hotmail.com','SnfMkwK32W','2020-09-25'),
(71687,'Punyaporn@gmail.com','8k3G9h5UOAo1panw','2020-10-24'),
(38294,'Cholravee.kit@mahidol.ac.th','43fdEKin','2020-01-11'),
(68235,'Atitiya_pakdee@hotmail.com','CmB7BtvMYj3OH1pFR','2020-05-27'),
(50610,'Kittipoj@mahidol.edu','hIkr99igdvrb','2020-08-22'),
(44023,'Rujikorn.yea@mahidol.ac.th','6RnWKf','2020-09-11'),
(10799,'Porsuk_Rung@gmail.com','Am02uoH0','2020-11-17'),
(72318,'ArayaPratee@hotmail.com','5Z6s87wZWnMS','2020-01-04'),
(79326,'Chancheep@hotmail.com','l8C6JshsgI','2020-05-03'),
(96145,'Nutsongwat@hotmail.com','U0XA2Qt1gSlCJpzg','2020-04-23'),
(20768,'Pongsakorn.taya@gmail.com','cZ1Swm','2020-09-23'),
(84800,'Taiichi.sud@mahidol.ac.th','UXSxRPr2Sp','2020-10-24'),
(41114,'non.som@gmail.com','YDAPDBdKfL','2020-10-24'),
(26776,'Yuanfang.ma@mahidol.ac.th','7U6HmNPDYa','2020-11-24'),
(63042,'Yu.wang@hotmail.com','mJ6P5PLTKP','2020-12-24'),
(37704,'Haowen_Yang@gmail.com','JdY6caXmYG','2020-10-25'),
(21226,'Zixi@hotmail.com','Q8869mqZtR','2020-10-26'),
(79568,'Wawa.ac@mahidol.ac.th','KqK27DaqjG','2020-10-27'),
(77103,'ghop123@mahidol.ac.th','h8MGv9eTJB','2020-10-28'),
(72438,'Yohoka@mahidol.ac.th','ALgjRqJvhq','2020-10-29'),
(27386,'suder.yo@gmail.com','JKLm5BtCFA','2020-10-30'),
(10734,'Drive00@hotmail.com','67PcGz3Gmr','2020-10-31'),
(41299,'fightda@gmail.com','NngvHYExwy','2020-05-24'),
(13761,'Cartoon555@mahidol.ac.th','9C68CZ8RrS','2020-10-17'),
(64734,'Chatchai.hoji@hotmail.com','RSk6x5hKvL','2020-01-24'),
(57569,'Anyamanee_yam@gmail.com','eYJerkCjWe','2020-02-24'),
(36367,'Nithinee.tri@mahidol.ac.th','pnBWgHFScW','2020-04-24');


INSERT INTO `Profile_info` (`Pro_id`, `Nam`, `BirthDate`, `Email`) VALUES 
(311198, 'Anne', '1970-11-15 00:00:00','Siriwimon@hotmail.com'),
(311357, 'Jan', '1973-04-04 00:00:00','Cherdrush@mahidol.ac.th'),
(319989, 'Heinz', '1960-02-25 00:00:00','Pubas.dee@mahidol.edu'),
(320367, 'Suzanna', '1976-10-18 00:00:00','Pitchaporan@hotmail.com'),
(321452, 'William', '1972-02-12 00:00:00','Punyaporn@gmail.com'),
(322345, 'Sidney', '1956-12-14 00:00:00','Cholravee.kit@mahidol.ac.th'),
(323119, 'George', '1970-04-04 00:00:00','Atitiya_pakdee@hotmail.com' ),
(324257, 'Anne', '1973-11-18 00:00:00','Kittipoj@mahidol.edu'),
(324258, 'Juliette', '1966-08-23 00:00:00','Rujikorn.yea@mahidol.ac.th'),
(324269, 'Walter', '1973-09-16 00:00:00','Porsuk_Rung@gmail.com'),
(324273, 'John', '1955-12-30 00:00:00','ArayaPratee@hotmail.com' ),
(324274, 'Raphael', '1968-10-25 00:00:00','Chancheep@hotmail.com'),
(324291, 'Gerald', '1970-04-04 00:00:00','Nutsongwat@hotmail.com'),
(324299, 'John' ,'1975-11-30 00:00:00','Pongsakorn.taya@gmail.com'),
(325563, 'Marie', '1971-08-22 00:00:00','Taiichi.sud@mahidol.ac.th'),
(326578, 'George', '1978-02-01 00:00:00','Viphob.ler@mahidol.ac.th'),
(327689, 'Leontine','1976-10-15 00:00:00','Satayu_Narg@hotmail.com'),
(328799, 'Robert','1950-04-08 00:00:00','PimsuangKanjan@gmail.com'),
(328934, 'Carlos','1976-11-30 00:00:00','Non_Somboon@mahidol.edu'),
(328993, 'Anton','1958-10-29 00:00:00','Arnon.noo@mahidol.ac.th'),
(330010, 'Georgette', '1949-02-25 00:00:00','TeetusPram@hotmail.com'),
(330021, 'William', '1972-12-30 00:00:00','Prom_Porm@hotmail.com'),
(332345, 'Annelise','1974-01-05 00:00:00','Peangtep.sae@mahidol.ac.th'),
(342722, 'Louise', '1984-10-12 00:00:00','SivatSupasuk@gmail.com'),
(342745, 'Warren', '1975-09-23 00:00:00','Pakin_chu@mahidol.ac.th'),
(342748, 'George', '1970-05-27 00:00:00','Jilin.li@gmail.com'),
(343749, 'John', '1966-05-01 00:00:00','Yu.wang@mahidol.edu'),
(345755, 'Jeanine', '1978-12-25 00:00:00','Luxi_xue@hotmail.com'),
(345758, 'Antoinette','1975-06-16 00:00:00','Prayuth.cha@mahidol.ac.th'),
(345767, 'Rupert','1975-03-19 00:00:00', 'Trisiri.cha@hotmail.com'),
(345779, 'Kenna', '1971-07-12 00:00:00','Raypho@gmail.com'),
(345783, 'LaRue', '1979-11-28 00:00:00','Lata_ta@hotmail.com'),
(900245, 'Randy', '1975-06-21 00:00:00','halohalo@gmail.com'), 
(443088, 'Albus', '1975-07-21 00:00:00','non.som@gmail.com'),
(534317, 'Bert', '1976-08-21 00:00:00','Yuanfang.ma@mahidol.ac.th'),
(460030, 'Ernie', '1977-09-21 00:00:00','Yu.wang@hotmail.com'),
(167609, 'Elmo', '1978-10-21 00:00:00','Haowen_Yang@gmail.com'),
(602327, 'Roger', '1979-11-21 00:00:00','Zixi@hotmail.com'),
(968498, 'Kermit', '1980-12-21 00:00:00','Wawa.ac@mahidol.ac.th'),
(164934, 'Prayuth', '1981-06-22 00:00:00','ghop123@mahidol.ac.th'),
(623342, 'Trump', '1982-06-23 00:00:00','Yohoka@mahidol.ac.th'),
(647028, 'Groge', '1983-06-24 00:00:00','suder.yo@gmail.com'),
(918648, 'Anna', '1984-06-25 00:00:00','Drive00@hotmail.com'),
(446912, 'Elsa', '1985-06-26 00:00:00','fightda@gmail.com'),
(382492, 'Belle', '1986-06-27 00:00:00','Cartoon555@mahidol.ac.th'),
(804835, 'Ken', '1987-06-28 00:00:00','Chatchai.hoji@hotmail.com'),
(114396, 'Linda', '1988-06-29 00:00:00','Anyamanee_yam@gmail.com'),
(115837, 'Morthy', '1989-06-30 00:00:00','Nithinee.tri@mahidol.ac.th');


INSERT INTO `Plan` (`Plan_No`, `Price`, `Quality`,`No_screen`,`Download`) VALUES
(15997,99,'Nomal',1,1),
(22287,279,'Nomal',1,1),
(38264,379,'FULL_HD',2,2),
(41105,419,'FULL_HD',4,4),
(00001,null,null,null,null),
(00002,null,null,null,null),
(00003,null,null,null,null),
(00004,null,null,null,null),
(00005,null,null,null,null),
(00006,null,null,null,null),
(00007,null,null,null,null);

INSERT INTO `Membar` (`Mem_id`, `Fname`, `Lname`, `Phone_No`, `Plan_No`) VALUES
(73473,'Siriwimon','Ainsawang','08-955-5922-58',15997),
(98902,'Cherdrush','Apiratiwut','08-655-5312-83',22287),
(48335,'Pubas','Deedumrong','08-955-5754-24',38264),
(18803,'Pitchaporn','Songprakob','8-955-5553-48',41105),
(71687,'Punyaporn','Srisuk','08-655-5111-46',38264),
(38294,'Cholravee','Kittimethee','08-955-5604-22',38264),
(68235,'Atitiya','Pakdeevanich','08-655-5883-18',38264),
(50610,'Kittipoj','Tuntanet','08-655-5716-26',22287),
(44023,'Rujikorn','Yeamapichard','08-955-5759-20',15997),
(10799,'Porsuk','Rungarunsrisuk','08-955-5269-71',41105),
(72318,'Araya','Prateepthintong','08-855-5199-01',38264),
(79326,'Chancheep','Mahacharoensuk','08-655-5989-00',41105),
(96145,'Nutsongwat','Cheawka','08-955-5453-61',41105),
(20768,'Pongsakorn','Tayanukorn','08-955-5796-76',22287),
(84800,'Taiichi','Sudo','08-855-5839-58',15997),
(41114,'Detbodi','Wetsirikun','08-955-5150-87',22287),
(26776,'Napida','Chongcharoenkit','08-655-5613-35',22287),
(63042,'Kasidis','Chokphaiboon','08-655-5433-61',15997),
(37704,'Jane','Wathanayunyong','08-655-5858-06',22287),
(21226,'Waipop','Permpornskul','08-655-5799-73',15997),
(79568,'Apisith','Roopsom','08-955-5603-03',22287),
(77103,'Tasha','Settewong','08-655-5972-85',22287),
(72438,'Chonnikarn','Wavemanee','08-655-5336-97',38264),
(27386,'Deven','Tiwari','08-955-5986-75',38264),
(10734,'Wanwisa','Laowsiriwong','08-955-5578-59',38264),
(41299,'Napat','Pangkul','8-855-5426-86',15997),
(13761,'Paveena','Hongitthiporn','08-855-5425-15',15997),
(64734,'Chatchai','Hojitsiriyanon','08-855-5866-67',38264),
(57569,'Anyamanee','Amatyakul','08-857-5866-67',38264),
(36367,'Nithinee','Trironnarith','08-856-5866-67',15997);


INSERT INTO `Rating_info` (`Rat_id`, `D_M_Y`, `Rat_point`) VALUES 
(13363,'2020-12-15','***'),
(64733,'2019-07-15','**'),
(93772,'2020-01-25','*'),
(13752,'2020-04-05','***'),
(01258,'2019-07-30','****'),
(68301,'2020-05-31','****'),
(21642,'2020-12-05','**'),
(29502,'2019-10-06','****'),
(95829,'2020-11-09','****'),
(35834,'2029-05-14','**'),
(38573,'2020-11-23','***'),
(72696,'2018-05-27','*'),
(22624,'2019-01-19','***'),
(86205,'2020-03-11','****'),
(53609,'2020-01-11','*****'),
(40389,'2020-02-11','****'),
(16080,'2020-04-11','*****'),
(86206,'2020-05-11','***'),
(77432,'2020-06-11','*****'),
(10148,'2020-07-11','***'),
(11698,'2020-07-12','*****'),
(48310,'2020-08-11','*'),
(59098,'2020-09-11','****'),
(99885,'2020-10-11','*****'),
(35579,'2020-11-11','***'),
(82502,'2020-12-11','**'),
(90996,'2020-07-13','**'),
(59198,'2020-07-14','****'),
(26788,'2020-07-15','*'),
(58699,'2020-07-16','**');


INSERT INTO `Profil` (`Pro_id`, `Mem_id`, `Rat_id`) VALUES
(311198,73473,13363),
(311357,98902,93772), 
(319989,48335,NULL), 
(320367,18803,64733),
(321452,71687,13752),
(322345,38294,NULL),
(323119,68235,01258),
(324257,50610,68301),
(324258,44023,NULL),
(324269,10799,21642),
(324273,72318,29502),
(324274,79326,NULL),
(324291,96145,95829),
(324299,20768,35834),
(325563,84800,38573),
(326578,68235,72696),
(327689,18803,22624),
(328799,10799,86205),
(328934,79326,10148),
(328993,96145,NULL),
(330010,71687,NULL),
(330021,48335,NULL),
(332345,79326,NULL),
(342722,10799,NULL),
(342745,18803,NULL),
(342748,84800,NULL),
(343749,96145,NULL),
(345755,79326,NULL),
(345758,72318,77432),
(345767,96145,86206),
(345779,18803,16080),
(345783,10799,40389),
(900245,38294,53609),
(443088,41114,11698), 
(534317,26776,48310), 
(460030,63042,59098), 
(167609,37704,99885), 
(602327,21226,35579), 
(968498,79568,82502), 
(164934,77103,90996),
(623342,72438,59198), 
(647028,27386,26788),
(918648,10734,58699),
(446912,41299,NULL),
(382492,13761,NULL),
(804835,64734,NULL),
(114396,57569,NULL),
(115837,36367,NULL);

INSERT INTO `Review_info` (`Rev_id`, `D_M_Y`, `De_scription`) VALUES 
(37626,'2020-01-05','It is so good.'),
(83943,'2020-02-05','Niceee.'),
(92763,'2020-03-05','So sick.'),
(12563,'2020-04-05','One the of the best movie.'),
(53638,'2020-05-05','NOooooo.'),
(84926,'2020-06-05','What the heck!!.'),
(93762,'2020-07-05','The best!!.'),
(92377,'2020-08-05','Don’t watch it.'),
(53762,'2020-09-05','SO SO.'),
(15903,'2020-10-05','OMG$$.'),
(02356,'2020-11-05','Hello everyone >=<.'),
(82742,'2020-12-05','{}+*&^#%@#%.'),
(81506,'2020-01-08','please give our group full score xoxo.'),  
(95792,'2020-12-06','Xue hua piao piao bei feng xiao xiao.'),
(67184,'2020-12-07','Mi Pan Su Su Sum. Su Su Sum.'),
(45248,'2020-12-08','dame dane dame yo dame na no yo'),
(83417,'2020-12-09','Mom, is that you?'),
(44335,'2020-12-10','Trump 2020'),
(38651,'2020-12-11','Shrek have done better than this.'),
(30258,'2020-12-12','Hello world'),
(70690,'2020-12-13','I hope you will give us an A'),
(69370,'2020-12-14','bruh'),
(99786,'2020-12-15','Anyone find this from that tiktok song?'),
(89117,'2020-12-16','Im not homophobic but [homophobic stuff].'),
(50953,'2020-12-17','I said certified freak, seven days a week.'),
(27121,'2020-12-18','Now from the top, make it drop, thats some wet butt kitty.'),
(13051,'2020-12-19','Now get a bucket and a mop, thats some wet butt kitty.'),
(56096,'2020-12-20','Im talkin WAP, WAP, WAP, thats some wet butt kitty.'),
(82937,'2020-12-21','Macaroni in a pot, thats some wet butt kitty.'),
(41863,'2020-12-22','Theres some hole in this house.');


INSERT INTO `Movie_info` (`Movie_id`, `Title`,`Genre`,`T_ime`,`Y_ear`,`Mature_rat`) VALUES 
(47937,'#Alive','Drama/Horror','01:39:00',2020,'Everyone'),
(47762,'Call','Fantasy/Thriller','01:52:00',2020,'Everyone'),
(86470,'The Princess Switch','Romance/Comedy','01:42:00',2018,'Everyone'),
(53705,'Bumblebee','Action/Sci-fi','01:54:00',2018,'Everyone'),
(48634,'Zombieland: Double Tap','Comedy/Horror','01:39:00',2019,'Everyone'),
(48629,'The Open House','Horror','01:34:00',2018,'Everyone'),
(35849,'Mae Bia','Life','02:12:00',2015,'Adult_Only'),
(83592,'Parasite','Thriller/Comedy','02:12:00',2019,'Everyone'),
(35832,'Oceans 8','Comedy/Crime','01:51:00',2018,'Everyone'),
(83285,'Overlord','Horror/War','01:48:00',2018,'Everyone'),
(38523,'A Babysitters Guide to Monster Hunting',null,'01:34:00',2020,'Everyone'),
(45423,'Bloodshot','Action/Adventure','01:49:00',2020,'Adult_Only'),
(35266,'Extraction','Action/Thriller','01:57:00',2020,'Everyone'),
(24534,'The Legend of Muay Thai: 9 Satra','Fantasy/Action','01:44:00',2018,'Everyone'),
(27236,'Resident Evil: Vendetta','Action/Animation','01:55:00',2017,'Everyone'),
(82385,'Spider-Man: Far From Home','Action/Adventure','02:09:00',2019,'Everyone'),
(93763,'The Little Mermaid','Fantasy/Adventure','01:34:00',2018,'Kids'),
(49643,'Latte and the Magic Waterstone','Family/Animation','01:29:00',2019,'Kids'),
(88340,'The Christmas Chronicles 2','Comedy/Adventure','01:55:00',2020,'Kids'),
(73496,'365 Days','Dramas','01:54:00',2019,'Adult_Only'),
(98625,'Red Wine in the Dark Night','Thai Movies','01:44:00',2015,'Adult_Only'),
(42936,'Tiger','Dramas','01:37:00',2016,'Adult_Only'),
(33463,'Johnny English Strikes Again','Comedy/Adventure','01:28:00',2018,'Everyone'),
(92366,'Jurassic World: Fallen Kingdom','Action','02:10:00',2018,'Everyone'),
(73627,'Friend Zone','Romance/Drama','01:59:00',2019,'Everyone'),
(82362,'Bikeman 2','Romance/Comedy','01:50:00',2019,'Everyone'),
(13725,'MILF','Comedies','01:41:00',2018,'Adult_Only'),
(21211,'Sin Sisters 2','Thai Dramas','01:44:00',2010,'Adult_Only'),
(36271,'Chocolate City: Vegas Strip','Dramas','01:29:00',2017,'Adult_Only'),
(74862,'Pets United','Animation/Comedy','01:32:00',2019,'Kids'),
(99912,'The Angry Birds Movie 2','Family/Comedy','01:37:00',2019,'Kids'),
(12481,'Rio 2','Family/Animation','01:41:00',2014,'Kids'),
(21216,'Hotel Transylvania 2','Family/Animation','01:29:00',2015,'Kids');


INSERT INTO `TV_Show_info` (`TV_id`, `Title`,`Genre`,`Season` ,`Y_ear`) VALUES  
(12432,'Start-Up','Drama','1 season',2020),
(84829,'The Crown','Drama','4 seasons',2016),
(93255,'The Last Kingdom','History','4 seasons',2015),
(35362,'A Korean Odyssey','Romance','1 season',2017),
(32572,'The 100', 'Sci-fi ','7 seasons',2014),
(58945,'Hotel del Luna', 'Rom-com','1 season',2019),
(58295,'Better than Us','Drama','1 season',2018),
(48320,'Kingdom','Horror','2 seasons',2019),
(88636,'Abyss','Rom-com','1 season',2019),
(38593,'Welcome to Waikiki 2','Comedy',null,2019),
(83756,'SKY Castle','Drama','1 season',2018),
(87573,'Strong Girl Bong-soon', 'Action','1 season',2017),
(74728,'Queen for Seven Days','Romance','1 season',2017),
(84276,'The Queens Gambit','TV Dramas','1 Season',2020),
(73783,'Prison Break','TV Thrillers','5 Seasons',2020),
(82395,'Money Heist','TV Thrillers','4 Seasons',2017),
(46347,'Vikings','Period Pieces','5 Seasons',2013),
(87440,'The Worst Witch','Kids TV','4 Seasons',2017),
(73852,'Private Lives','TV Dramas','1 Season',2020),
(74743,'Thong EK: The Herbal Master','Dramas','1 Season',2019),
(75736,'Assassination Classroom','Action Anime','2 Seasons',2015),
(93263,'Weightlifting Fairy Kim Bok Joo','Korean TV Shows','1 Season',2016),
(35111,'Find Yourself','Rom-com','1 season',2020),
(84744,'Love Alarm','Romance','1 season',2019),
(99321,'My Mister','Drama','1 season',2018),
(83520,'Itaewon Class','Drama','1 season',2020),
(03596,'Peaky Blinders','Crime','5 seasons',2013),
(00124,'Go Go Squid!','Rom-com','1 season',2019),
(01045,'Whats Wrong with Secretary Kim?','Rom-com','1 season',2018),
(11005,'We Bare Bears','Animation','4 seasons',2015),
(78003,'Blood','Romance','1 season',2015);


INSERT INTO `Rating` (`Rat_id`, `Pro_id`, `Movie_id`,`TV_id`) VALUES
(13363,311198,47762,NULL),
(64733,320367,47937,NULL),
(93772,311357,86470,NULL),
(13752,321452,53705,NULL),
(01258,323119,NULL,84829),
(68301,324257,38523,NULL),
(21642,324269,27236,NULL),
(29502,324273,82385,NULL),
(95829,324291,73496,NULL),
(35834,324299,NULL,93255),
(38573,325563,NULL,35362),
(72696,326578,35849,NULL),
(22624,327689,48629,NULL),
(86205,328799,48634,NULL),
(53609,900245,NULL,74728),
(40389,345783,NULL,84276),
(16080,345779,NULL,46347),
(86206,345767,NULL,46347),
(77432,345758,NULL,87440),
(10148,328934,NULL,73852),
(11698,443088,33463,NULL),
(48310,534317,92366,NULL),
(59098,460030,73627,NULL),
(99885,167609,82362,NULL),
(35579,602327,13725,NULL), 
(82502,968498,21211,NULL),
(90996,164934,36271,NULL),
(59198,623342,74862,NULL),
(26788,647028,99912,NULL),
(58699,918648,12481,NULL);

INSERT INTO `Review` (`Rev_id`, `Pro_id`, `Movie_id`,`TV_id`) VALUES 
(37626,900245,83285,NULL),
(83943,345783,45423,NULL),
(92763,345779,NULL,32572),
(12563,345767,NULL,58945),
(53638,345758,NULL,58295),
(84926,345755,93763,NULL),
(93762,343749,88340,NULL),
(92377,342748,NULL,88636),
(53762,342745,83592,NULL),
(15903,342722,NULL,38593),
(02356,332345,NULL,83756),
(82742,330021,35832,NULL),
(81506,330010,NULL,87573), 
(95792,328993,NULL,74743), 
(67184,321452,NULL,93263), 
(45248,311198,47762,NULL), 
(83417,320367,73496,NULL), 
(44335,311357,38523,NULL), 
(38651,319989,NULL,48320),
(30258,446912,21216,NULL),
(70690,382492,NULL,35111),
(69370,804835,NULL,84744),
(99786,114396,NULL,99321),
(89117,115837,NULL,83520),
(50953,918648,NULL,03596),
(27121,647028,NULL,00124),
(13051,623342,NULL,01045),
(56096,164934,NULL,11005),
(82937,968498,NULL,78003),
(41863,602327,13725,NULL);

INSERT INTO `Movie` (`Movie_id`, `Mem_id`,`Rat_id` ,`Rev_id`) VALUES 
(47937,18803,64733,NULL),
(47762,73473,13363,45248),
(86470,98902,93772,NULL),
(53705,71687,13752,NULL),
(48634,10799,86205,NULL),
(48629,18803,22624,NULL),
(35849,68235,72696,NULL),
(83592,18803,NULL,53762),
(35832,48335,NULL,82742),
(83285,38294,NULL,37626),
(38523,50610,68301,44335),
(45423,10799,NULL,83943),
(35266,NULL,NULL,NULL),
(24534,NULL,NULL,NULL),
(27236,10799,21642,NULL),
(82385,72318,29502,NULL),
(93763,79326,NULL,84926),
(49643,NULL,NULL,NULL),
(88340,96145,NULL,93762),
(73496,96145,95829,83417),
(98625,NULL,NULL,NULL),
(42936,NULL,NULL,NULL),
(33463,41114,11698,NULL),
(92366,26776,48310,NULL),
(73627,63042,59098,NULL),
(82362,37704,99885,NULL),
(13725,21226,35579,41863),
(21211,79568,82502,NULL),
(36271,77103,90996,NULL),
(74862,72438,59198,NULL),
(99912,27386,26788,NULL),
(12481,10734,58699,NULL),
(21216,41299,NULL,30258);

INSERT INTO `TV_show` (`TV_id`, `Mem_id`,`Rat_id` ,`Rev_id`) VALUES 
(12432,NULL,NULL,NULL),
(84829,68235,01258,NULL),
(93255,20768,35834,NULL),
(35362,84800,38573,NULL),
(32572,18803,NULL,92763),
(58945,96145,NULL,12563),
(58295,72318,NULL,53638),
(48320,48335,NULL,38651),
(88636,84800,NULL,92377),
(38593,10799,NULL,15903),
(83756,79326,NULL,02356),
(87573,71687,NULL,81506),
(74728,38294,53609,NULL),
(84276,10799,40389,NULL),
(73783,NULL,NULL,NULL),
(82395,18803,16080,NULL),
(46347,96145,86206,NULL),
(87440,72318,77432,NULL),
(73852,79326,10148,NULL),
(74743,96145,NULL,95792),
(75736,NULL,NULL,NULL),
(93263,71687,NULL,67184),
(35111,13761,NULL,70690),
(84744,64734,NULL,69370),
(99321,57569,NULL,99786),
(83520,36367,NULL,89117),
(03596,10734,NULL,50953),
(00124,27386,NULL,27121),
(01045,72438,NULL,13051),
(11005,77103,NULL,56096),
(78003,79568,NULL,82937);

-- Update
SET SQL_SAFE_UPDATES = 0;
Update Review_info
Set De_scription = 'Nevermind Biden already won.'
Where Rev_id = 44335;

Update Rating_info
Set Rat_point = '*****'
Where Rat_id = 72696;

Update Profile_info
Set Nam ='Joker'
Where Pro_id = 326578;

update Member_info
Set Passward = 'Mynameispikaaa' 
Where Mem_id = 21126;

update Profile_info
Set Email = 'Heinz_02@ghotmail.com' 
Where Pro_id = 164934;

-- Delete

delete from Review_info
where Rev_id = 92377;

delete from movie
where Movie_id = 73496;


delete from Profil
where Pro_id= 968498;

delete from Profil
where Pro_id=804835;

delete from Rating
where Rat_id=1258;

-- list of profile id that have done rating
select p.Pro_id
from Profil p
where p.Rat_id is not null ;

-- list of action movie
select m.Title
from Movie_info m
where m.Genre like '%Action%' or m.Genre like '%Action' or m.Genre like 'Action%';

-- list of Member with password longer than 7
select  *
from Member_info
where length(Passward) >7;

-- list of member who use hotmail
select *
from Member_info
where Email like '%hotmail.com';

-- list of member who choose plan 1
select *
from Membar
where Plan_No = 15997;

-- list of Review that done in december
select *
from Review_info
where DATE_FORMAT(D_M_Y, "%m") = "12";

-- list of Movie that release before 2019
select  *
from Movie_info
where Y_ear<2019;

-- list of Tv series with more than 1 season (2 up)
select *
from TV_Show_info
where Season >= '2';

-- list of profile who was born before 1975
select *
from Profile_info
where year(BirthDate)<1975;

-- list of member who start sub on october
select *
from Member_info
where DATE_FORMAT(Sub_date, "%m") = "10";

-- Show all profile information and add Age
select Pro_id,Nam,BirthDate,(2020-year(BirthDate)) as Age,Email
from profile_info;


-- Show list of movies in the year 2020
select *
from movie_info
where Y_ear = 2020;

-- Show average age from profile
select AVG(2020-year(BirthDate)) as Age
from profile_info;

-- Show list of tv show before the year 2020
select *
from tv_show_info
where Y_ear < 2020;

-- Show list of Maturerat from movie for Everyone
select *
from movie_info
where Mature_rat = "Everyone";

-- Show list of Maturerat from movie for Adult only
select *
from movie_info
where Mature_rat = "Adult_only";

-- Show list of Maturerat from movie for Kids
select *
from movie_info
where Mature_rat = "Kids";

-- Show list of count Mature_rat
select Mature_rat,count(Mature_rat) as ""
from movie_info
group by Mature_rat;

-- Show movie time more than 2 hour
select *
from movie_info
where T_ime > "02:00:00";

-- Show Name from profile is begin A alphabet 
select *
from profile_info
where Nam like "A%";

-- Display Member and their next month bill date
select *, DATE_ADD(Sub_date, INTERVAL 1 MONTH) as 'Bill date'
from Member_info ;

-- list of movie with it’s review
select m.Movie_id, m.Title,r.De_scription
from Movie_info m
inner join Movie v on v.Movie_id=m.Movie_id
inner join Review_info r on v.Rev_id=r.Rev_id;

-- list of TV Show with it’s review
select m.TV_id, m.Title,r.De_scription
from TV_Show_info m
inner join TV_show v on v.TV_id=m.TV_id
inner join Review_info r on v.Rev_id=r.Rev_id
;
-- list of Member’s bill information
select m.Mem_id,concat(m.Fname ,' ' , m.Lname) as 'Name', v.Price, DATE_ADD(r.Sub_date, INTERVAL 1 MONTH) as 'Pay Date'
from Membar m
inner join Plan v on v.Plan_No=m.Plan_No
inner join Member_info r on m.Mem_id=r.Mem_id;

-- List of profiles who pay for the account.
select p.Pro_id, p.Nam, p.Email
from Profile_info p
inner join Member_info v on v.Email=p.Email
where v.Passward is not null
order by p.Pro_id;

-- list of movie with 5 star rating
select m.Movie_id, m.Title
from Movie_info m
inner join Movie v on v.Movie_id=m.Movie_id
inner join Rating_info r on v.Rat_id=r.Rat_id
where length(Rat_point) = 5;

-- List of profile that can watch in full HD
select m.Movie_id, m.Title,r.De_scription
from Movie_info m
inner join Movie v on v.Movie_id=m.Movie_id
inner join Review_info r on v.Rev_id=r.Rev_id;

-- Total income per month 
select sum(v.Price) as 'Total income per month'
from Membar m
inner join Plan v on v.Plan_No=m.Plan_No;

-- List of Comedy movie with more than 2 star
select m.Movie_id, m.Title
from Movie_info m
inner join Movie v on v.Movie_id=m.Movie_id
inner join Rating_info r on v.Rat_id=r.Rat_id
where length(Rat_point) > 2 and (m.Genre like '%Comedy%' or m.Genre like '%Comedy' or m.Genre like 'Comedy%');

-- List of profile name that never done any rating
select p.Pro_id, p.Nam
from Profile_info p
inner join Profil v on v.Pro_id=p.Pro_id
where Rat_id is null;

-- List of profiles that do both rating and review and their rating/review.
select p.Pro_id, p.Nam, v.De_scription, r.Rat_point
from Profile_info p
inner join Profil w on w.Pro_id=p.Pro_id
inner join Review t on t.Pro_id=p.Pro_id
inner join Review_info v on v.Rev_id=t.Rev_id
inner join Rating_info r on r.Rat_id=w.Rat_id;

-- Show Tv show with rating 
select ti.Title,ra.Rat_point
from tv_show_info ti
join tv_show ts on ti.TV_id=ts.TV_id
inner join rating_info ra on ts.Rat_id=ra.Rat_id;

-- Show Movie never get rating 
select mi.Title-- ,ra.Rat_point
from movie_info mi
join movie m on mi.Movie_id=m.Movie_id
left join rating_info ra on m.Rat_id=ra.Rat_id
where ra.rat_point is null;

-- Show Member Fname give tv less than 3 star rating
select m.Mem_id,concat(m.Fname ,' ' , m.Lname) as 'Name'
from Membar m  
inner join Profil v on v.Mem_id=m.Mem_id 
inner join Rating_info r on r.Rat_id=v.Rat_id
inner join Rating t on r.Rat_id=t.Rat_id
where length(Rat_point) < 3 and t.Movie_id is null;

-- Show Member how many can look Number of screen
select m.Mem_id,concat(m.Fname ,' ' , m.Lname) as 'Name', v.No_screen
from Membar m
inner join Plan v on v.Plan_No=m.Plan_No
inner join Member_info r on m.Mem_id=r.Mem_id;

-- Show Movie never get rating
 select m.Movie_id, m.Title
from Movie_info m
inner join Movie v on v.Movie_id=m.Movie_id
where v.Rat_id is null;

-- Show Tv never get rating
 select m.TV_id, m.Title
from TV_Show_info m
inner join TV_Show v on v.TV_id=m.TV_id
where v.Rat_id is null;

-- Find the Tv Show is less than the Average of movie (subquery)
select ti.Title,ti.Y_ear
from tv_show_info ti
where Y_ear < 
	(select avg(Y_ear) as avg_year_moive
    from movie_info mi);

-- Show price of member 
select m.Mem_id,p.Price
from membar m
join plan p on m.Plan_No=p.Plan_No;

-- Show list of movie rating more than avg rating
select mi.Title,ra.Rat_point
from movie_info mi
join movie m on mi.Movie_id=m.Movie_id
inner join rating_info ra on m.Rat_id=ra.Rat_id
where length(rat_point) > 
	(select avg(length(ri.Rat_point)) as r_point
    from rating_info ri);

-- Show Email from Member and Profile both begin C alphabet 
SELECT mi.Email
FROM Member_info mi
WHERE mi.Email LIKE "C%"
UNION
SELECT pr.Email 
from  profile_info pr
WHERE pr.Email LIKE "C%";

