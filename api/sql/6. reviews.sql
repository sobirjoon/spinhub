CREATE TABLE Reviews (
	  `id` int NOT NULL AUTO_INCREMENT,
	  `album_id` int NOT NULL,
	  `userid` int NOT NULL,
	   content TEXT  NOT NULL,
	   PRIMARY KEY(id),
	   UNIQUE(id),
	   
	  FOREIGN KEY (album_id) REFERENCES album(album_id)
			ON UPDATE CASCADE 
			ON DELETE CASCADE,
			
	  FOREIGN KEY (userid) REFERENCES auth_user(userid)
			ON UPDATE CASCADE 
			ON DELETE CASCADE
	);

INSERT INTO Reviews(album_id,userid,content) VALUES
 				(1,1000,'This is a great album'),
				(2,1001,'This is a great album'),
				(3,1002,'This is a great album'),
				(4,1003,'This is a great album'),
				(5,1004,'This is a great album'),
				(6,1005,'This is a great album'),
				(7,1006,'This is a great album'),
				(8,1007,'This is a great album'),
				(9,1013,'This is a great album'),
				(10,1014,'This is a great album'),
				(11,1015,'This is a great album'),
				(12,1016,'This is a great album'),
				(13,1017,'This is a great album'),
				(14,1000,'This is a great album'),
				(15,1001,'This is a great album'),
				(16,1002,'This is a great album'),
				(17,1003,'This is a great album'),
				(18,1004,'This is a great album'),
				(19,1005,'This is a great album'),
				(20,1006,'This is a great album'),
				(21,1007,'This is a great album'),
				(22,1013,'This is a great album'),
				(23,1014,'This is a great album'),
				(24,1015,'This is a great album'),
				(25,1016,'This is a great album'),
				(26,1017,'This is a great album'),
				(27,1000,'This is a great album'),
				(28,1001,'This is a great album'),
				(29,1002,'This is a great album'),
				(30,1003,'This is a great album'),
				(31,1004,'This is a great album'),
				(32,1005,'This is a great album'),
				(33,1006,'This is a great album'),
				(34,1007,'This is a great album'),
				(35,1013,'This is a great album'),
				(36,1014,'This is a great album'),
				(37,1015,'This is a great album'),
				(38,1016,'This is a great album'),
				(39,1017,'This is a great album'),
				(40,1000,'This is a great album'),
				(41,1001,'This is a great album'),
				(42,1002,'This is a great album'),
				(43,1003,'This is a great album'),
				(44,1004,'This is a great album'),
				(45,1005,'This is a great album'),
				(46,1006,'This is a great album'),
				(47,1007,'This is a great album'),
				(48,1013,'This is a great album'),
				(49,1014,'This is a great album'),
				(50,1015,'This is a great album'),
				(51,1016,'This is a great album');



