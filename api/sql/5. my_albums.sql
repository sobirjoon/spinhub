CREATE TABLE my_albums (
	  `id` int NOT NULL AUTO_INCREMENT,
	  `album_id` int NOT NULL,
	  `userid` int NOT NULL,
	   PRIMARY KEY(id),
	   UNIQUE(id),

	  FOREIGN KEY (album_id) REFERENCES album(album_id)
			ON UPDATE CASCADE
			ON DELETE CASCADE,

	  FOREIGN KEY (userid) REFERENCES auth_user(userid)
			ON UPDATE CASCADE
			ON DELETE CASCADE
	);

INSERT INTO my_albums(album_id,userid) VALUES
 (1,1000)
,(2,1001)
,(3,1002)
,(4,1003)
,(5,1004)
,(6,1005)
,(7,1006)
,(8,1007)
,(9,1013)
,(10,1014)
,(11,1015)
,(12,1016)
,(13,1017)
,(14,1000)
,(15,1001)
,(16,1002)
,(17,1003)
,(18,1004)
,(19,1005)
,(20,1006)
,(21,1007)
,(22,1013)
,(23,1014)
,(24,1015)
,(25,1016)
,(26,1017)
,(27,1000)
,(28,1001)
,(29,1002)
,(30,1003)
,(31,1004)
,(32,1005)
,(33,1006)
,(34,1007)
,(35,1013)
,(36,1014)
,(37,1015)
,(38,1016)
,(39,1017)
,(40,1000)
,(41,1001)
,(42,1002)
,(43,1003)
,(44,1004)
,(45,1005)
,(46,1006)
,(47,1007)
,(48,1013)
,(49,1014)
,(50,1015)
,(51,1016);
