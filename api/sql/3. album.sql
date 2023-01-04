CREATE TABLE `album` (
  `album_id` int NOT NULL AUTO_INCREMENT,
  `album_title` varchar(255)  NOT NULL,
  `artist` varchar(255) NOT NULL,
  `year` YEAR,
  `img_url` varchar(255) NOT NULL,
   genre_id int NOT NULL,

   PRIMARY KEY(album_id),
   UNIQUE (album_id, album_title),
   INDEX(album_title, artist),

   FOREIGN KEY (genre_id) REFERENCES genre(id)
		        ON UPDATE CASCADE
                ON DELETE CASCADE
	);



INSERT INTO album(album_title,artist,year,img_url,genre_id) VALUES
 ('Abbey Road','The Beatles',2001,'https://i.discogs.com/M2yc5OJZPdVoDm2_UlRRXuDlDguamLLSdnbziNmZoQI/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTI2MDc0/MjQtMTYzMDYwMTA4/Ny0xMTk5LmpwZWc.jpeg',1)
,('OK Computer','Radiohead',2001,'https://i.discogs.com/k1fBOV3OHda7VLhSTxEvxfs6BTYqUpOLZALtKh2v2-w/rs:fill/g:sm/q:40/h:300/w:300/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTQ5NTA3/OTgtMTM4ODYyMzYx/MS0yMzYyLmpwZWc.jpeg',1)
,('666 Ways to Love','Jeffrey Records',2001,'https://i.discogs.com/YN5TYIltmm284QYOD4JeCwkCXjkzv13BKDnh-yU8trs/rs:fit/g:sm/q:90/h:600/w:577/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTI1MjU1/OTMzLTE2NjkyMDI4/ODgtODA0MC5qcGVn.jpeg',1)
,('Marblebog','Tova',2001,'https://i.discogs.com/EG8IgEmqJIJzTntBObJgS8FNNlArV4qv12EU-vyjAnI/rs:fit/g:sm/q:90/h:600/w:599/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTI0NDEw/MTE0LTE2NjIyODQz/ODEtMTQxNS5qcGVn.jpeg',1)
,('2 Minutes Or Less','Subsonics',2001,'https://i.discogs.com/ezJuHBh_s4gxHncfhJYsnBGYHjsfy9Iwta4iaSIe8eA/rs:fit/g:sm/q:90/h:600/w:593/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTI1MjU2/MDgwLTE2NjkyMDc0/MjEtMTYxOS5qcGVn.jpeg',1)
,('We''re All Grown Up 7"','Hazel O''Connor',2001,'https://www.vinylnet.co.uk/_assets/_user/images/prods/16551816551854_1.jpg',1)
,('Madness In Manila','Shadows Fall',2001,'https://i.discogs.com/T_lB7S-XrO0yLCQE-yHfB-YS4p9mUaAJ6WGbkbkDCSA/rs:fit/g:sm/q:90/h:400/w:400/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTg3NjI1/MzYtMTQ2ODIzMzU2/My05MDQ3LmpwZWc.jpeg',1)
,('Mirrorworld','Serious Black',2001,'https://i.discogs.com/nXDGFW-AjUQjEO49FOsW-CHuZAwElR2qBuAXgJXPQKs/rs:fit/g:sm/q:40/h:300/w:300/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTkxNTY0/MzAtMTUyNzE1MDA0/Ny01Nzk4LmpwZWc.jpeg',2)
,('Mastery','Lancer',2001,'https://i.discogs.com/aGXZBvn8vOB5KcWUX01mRSsm7cpVRkfj-mUcpwO-LVc/rs:fit/g:sm/q:40/h:300/w:300/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTk2NjA5/ODAtMTQ4NjEzMzky/Ni00MjIwLmpwZWc.jpeg',2)
,('Karmacode','Lacuna Coil',2001,'https://i.discogs.com/6aoonYeEIhsipXhZUJsWdP1kkZl6mGvO-NKl3Bha8Nk/rs:fit/g:sm/q:90/h:352/w:400/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTQ0NTk5/NzEtMTM5Nzc1MTEx/My0zMTkzLmpwZWc.jpeg',2)
,('Infinity','Journey',2001,'https://i.discogs.com/5mfa1_UwOAQOviDf6lKl4WIWie8A6Z5DJReSJ34u290/rs:fit/g:sm/q:40/h:300/w:300/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTk0NTIx/MjQtMTUxMDc3MTQx/MC0yNDM3LmpwZWc.jpeg',2)
,('Scatter The Crow','Slaves To Gravity',1969,'https://i.discogs.com/LlCMo20hlzXybq3-fUjS4o-iEIlbEJLsr55q3Nxl7eA/rs:fit/g:sm/q:90/h:516/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTExNTQx/Mzk3LTE1MTgxODQw/MzktODI2My5qcGVn.jpeg',2)
,('The Defiants','The Defiants',1969,'https://i.discogs.com/56ZMXo9b8VdwuiOWT4F560dBhryms9oOAie5bUsBJUg/rs:fit/g:sm/q:40/h:300/w:300/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTg1Nzcx/MzgtMTQ5NjM0MzI3/Mi03MTQ3LmpwZWc.jpeg',2)
,('State Of Emergency','The Living End',1969,'https://i.discogs.com/ryFrCCYDQdwRiG9KpdbfsVFxsfWn4TobVQVtihmsRis/rs:fit/g:sm/q:40/h:300/w:300/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTc1NDQx/MDUtMTQ0MzY4NTg3/Mi02NzMzLmpwZWc.jpeg',2)
,('The End Is The Beginning','Smashing Pumpkins',1977,'https://i.discogs.com/TV8Z0AFfHVtpGRgMG1SpGTlCCeFWFrsRkx9ln5ln3N0/rs:fit/g:sm/q:90/h:530/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTQ3Mjg0/ODEtMTM3MzYxNDMz/Ny0yODkyLmpwZWc.jpeg',2)
,('The Nexus','Amaranthe',1977,'https://i.discogs.com/4qLAP9ALAiwdl9rsCWoqfGZwKoftdIgR8QfYWzcCqPA/rs:fit/g:sm/q:90/h:525/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTQzNzY0/ODktMTM2ODg3NzA3/OC0xNTExLmpwZWc.jpeg',3)
,('Delusions','Elway',1977,'https://i.discogs.com/zeTknrThtLj1wHPnSyX7EmLQ-zeHtZcpEl1DRqmAeFw/rs:fit/g:sm/q:40/h:300/w:300/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTc2NTc0/NjktMTQ0NjEwMjgz/My01MzA0LmpwZWc.jpeg',3)
,('Inner Monster Out','Shadowside',1969,'https://i.discogs.com/36zBGiwIJZ_IIYGvW7nDGJTQKJxaXQcfNiCsIxnqCGE/rs:fit/g:sm/q:40/h:300/w:300/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEwODAw/MTE5LTE1MDQ1MjUz/NTItOTE3OC5qcGVn.jpeg',3)
,('Aeronautics','Masterplan',1969,'https://i.discogs.com/kpYzRPoXyen9IAB8n5MXTsyg4c5kwN_a52iy5LkmfqU/rs:fit/g:sm/q:90/h:529/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTIyODky/NzUtMTI4ODQ1OTY3/MC5qcGVn.jpeg',3)
,('One Way Out','Ravenscry',1999,'https://i.discogs.com/LGLwrgfBbYvFHAS38iRyQZpLlN4HXKSiS4kFxh7YTTA/rs:fit/g:sm/q:40/h:300/w:300/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTM1NDE1/MzktMTUzNDQyMTU2/OS0xOTU1LmpwZWc.jpeg',3)
,('The Clans Will Rise Again','Grave Digger',1999,'https://i.discogs.com/ZKFqFhROqYAHxHAwtHPcgInpqnc8KrqZ-gWWlfmRJrI/rs:fit/g:sm/q:40/h:300/w:300/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTc4ODA3/ODYtMTU3Njg1NDk5/MS03MzI3LmpwZWc.jpeg',3)
,('Heathen Warrior','Stormwarrior',1999,'https://i.discogs.com/JSpCW52c4Rl6HP3iy15JYoj--Ky1SNSbF4Y2D3E0hnY/rs:fit/g:sm/q:40/h:300/w:300/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTMyMDg5/MzEtMTQ2Mjg5NjY5/My04MDc4LnBuZw.jpeg',3)
,('Last Autumn''s Dream','Last Autumn''s Dream',1999,'https://i.discogs.com/UXc9drxwWd--xpF8T3eMDaEa0CPlPK-bn2ZwE6YsvC8/rs:fit/g:sm/q:40/h:300/w:300/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTQzMzU0/MzQtMTM3NzA5NDM2/OS05MTIyLmpwZWc.jpeg',4)
,('Disc-Connected','Loud & Clear',1999,'https://i.discogs.com/ysFxpMgXX-Oz4Ms1MmW_nVqUzZIogNi0TFKu51wG3Mo/rs:fit/g:sm/q:40/h:300/w:300/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTk4MDY5/MjctMTQ4NjYyNDQ5/Ny03NjI4LmpwZWc.jpeg',4)
,('Hymn','Sarah Brightman',1999,'https://i.discogs.com/un7C3v2TAdh9O8R0cbTHXe5JUeBKyhTJDs5nrj4eb3E/rs:fit/g:sm/q:40/h:300/w:300/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEyNzg3/ODE4LTE1NjgwMjMz/MDktMjAyNi5qcGVn.jpeg',4)
,('Do Or Die','Dropkick Murphys',1999,'https://i.discogs.com/HT93TEIF99v5Kxuy3Jc6gMe8khQ4x0M88HxXXNZyvuU/rs:fit/g:sm/q:40/h:300/w:300/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEwODM1/MzktMTMxMTk2MTM3/MS5qcGVn.jpeg',4)
,('Core','Stone Temple Pilots',1999,'https://i.discogs.com/EBBy0poBXSfXKvLRHo76CM2vl-_MpNJL1EiOh3KNK3Q/rs:fit/g:sm/q:40/h:300/w:300/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTQ3OTg3/ODEtMTQzNjQ1MTY5/MC03NzQyLmpwZWc.jpeg',4)
,('The Head On The Door','The Cure',1999,'https://i.discogs.com/er5JBwDN_uB77ExA9aJ_sU2xbquhh5cwUVdtZ1RVvH4/rs:fit/g:sm/q:90/h:584/w:573/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTExNDEz/NzEtMTU2MzcxNTY2/OS00MTI3LmpwZWc.jpeg',4)
,('The Hurting Kind','John Paul White',1999,'https://i.discogs.com/TI-7t_3urQFVqyVlBEMtwRVIuWM9RjjbPBEgvdIiNsI/rs:fit/g:sm/q:40/h:300/w:300/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEzNzUz/MDEyLTE1NjM0MTQ0/OTgtODQ4MC5qcGVn.jpeg',4)
,('Bu$hleaguer','Pearl Jam',2013,'https://i.discogs.com/MW_OPHy0Q1VMRC5y5vpq8maDe7UJ-Vg5CjvUg18dOoE/rs:fit/g:sm/q:90/h:603/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTExMTE1/Mzk0LTE1MTAxMzM4/NjgtNDU1MS5qcGVn.jpeg',5)
,('I''ve Never Been To Me','Charlene',2013,'https://i.discogs.com/mmbsw31uB3Iznyw5g4kcKuqu4u8dvLu7CO02q6f8V3A/rs:fit/g:sm/q:40/h:300/w:300/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTExMjAx/MDY3LTE1MTE3NzAy/NzctOTE4Ni5qcGVn.jpeg',5)
,('Party Of One','George Thorogood',2013,'https://i.discogs.com/TYwWHAmi3vDQlYIxx8bGQoq1754W_hvfnzdRcDANQvE/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEwNjkx/Mjg0LTE1Mjk3Nzgw/MDgtNDY5MS5qcGVn.jpeg',5)
,('Lollipop Sixteen','Soleil',2013,'https://i.discogs.com/YxT_NkCbOkU1-gv8CQPKIBzD2RZdYdlTE_JdBqHSyws/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEzODg0/MjkzLTE1NjMyODU4/OTEtMTk3Ny5qcGVn.jpeg',5)
,('Silver Tongue','Torres',2013,'https://i.discogs.com/GEp0F-vJJtrs-H5zQB0lvlxZ79QOF6PAl7hDkfIEdJ8/rs:fit/g:sm/q:40/h:300/w:300/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE0NzMx/MDI3LTE1ODA0ODk3/MTMtODIzMS5qcGVn.jpeg',5)
,('The Allman Brothers Band At Fillmore East','The Allman Brothers Band',2007,'https://i.discogs.com/0o7eUNgciKcUndMVE6JaL13rmxqUYBrh5K3p8-ci-s8/rs:fit/g:sm/q:40/h:300/w:300/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEyMjU3/MDI1LTE1MzE3ODc1/ODYtNzA1OS5qcGVn.jpeg',5)
,('Against The Wind','Bob Seger & The Silver Bullet Band*',2007,'https://i.discogs.com/p5gDSrePk3ZerqMAk_XQxCm71cbcm-Vgs7UVBFyJy0c/rs:fit/g:sm/q:90/h:529/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEyMjM2/NDI5LTE1MzExMjk4/MTgtMzY0Mi5qcGVn.jpeg',5)
,('Music Man','Waylon Jennings',2007,'https://i.discogs.com/mi-h6a9RbEqBvltjlg4pU2sYk8ydJgv0pxHTfHAkyy0/rs:fit/g:sm/q:40/h:300/w:300/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE0OTAw/MjE0LTE1ODM3MDg2/MzItMzQ2NS5qcGVn.jpeg',6)
,('Thinking Back','Gordon Jackson',2007,'https://i.discogs.com/JQAujmV8FeoLn8P5vYRaFTk303yzCedUCKwgH953-rE/rs:fit/g:sm/q:90/h:359/w:372/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTM4OTMw/ODQtMTM1ODU5NjA2/OC02NDQwLmpwZWc.jpeg',6)
,('All I Want Is You','U2',2007,'https://i.discogs.com/osIM1kCxpHXrfL8WFUX93_UIxr0VfT056-tW6xXJFXg/rs:fit/g:sm/q:90/h:601/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEzNDQw/ODYtMTQzOTU0MTI5/My0zODA5LmpwZWc.jpeg',6)
,('Inside the Flesh Hotel','Beechwood',2007,'https://i.discogs.com/zjzOGhioFociL4yLvaVni1EQ87iZ7FRu5ZFYxMyWiwU/rs:fit/g:sm/q:40/h:300/w:300/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEyMDQx/NjI5LTE1MjcxMDUz/MTAtMzQyMi5qcGVn.jpeg',6)
,('Hangin''Tough','New Kids On The Block',2007,'https://i.discogs.com/92hgNehHQo2fMCYUTp0d-hwKwc2FqBWl7s_PXS1d9Zs/rs:fit/g:sm/q:40/h:300/w:300/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEzMzIz/Njg4LTE1NTI3NTUw/NDQtMzc2NS5qcGVn.jpeg',6)
,('She''s A Mystery To Me','Roy Orbison',2007,'https://i.discogs.com/isJEgmjhYandJcRQsbFDu9j5dMEYOcPxjxHnUBFfEgQ/rs:fit/g:sm/q:40/h:300/w:300/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTYwODI0/ODktMTQxMDYxMjk1/NC0zMjcyLmpwZWc.jpeg',6)
,('Voodoo Lounge In Japan 1995','The Rolling Stones',2005,'https://i.discogs.com/BFAg-1Lo9C9VLo6PXU38BGwZre9-5hHkwZpdCAdWMHs/rs:fit/g:sm/q:40/h:300/w:300/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEzNDA4/MjQ2LTE1NTQ5OTg0/NjgtMjI5Ni5qcGVn.jpeg',7)
,('She Loves You','The Beatles',2005,'https://i.discogs.com/LO1nY6TkWF79m5T-hnyPKRjLSIEzvhNRbosdmX275G4/rs:fit/g:sm/q:40/h:300/w:300/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTM3Mjg4/OTItMTM0MjAxMzQw/Ni0zNzg3LmpwZWc.jpeg',7)
,('Astral Weeks','Van Morrison',2005,'https://i.discogs.com/62RGjMBkF6q3Kx3OHsFJV9JYt57fmZUtHL-lH5kErG0/rs:fit/g:sm/q:40/h:300/w:300/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEzOTg1/MzcxLTE1NjU0OTY0/NDktNzg2OC5qcGVn.jpeg',7)
,('The Best Of Talking Heads','Talking Heads',2005,'https://i.discogs.com/5YvZ2VxnpXtujJlVYZRDQYQx6TMI4_LXXn74IjaUj0c/rs:fit/g:sm/q:90/h:358/w:400/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEzOTYy/NzI1LTE1NjUwMTQw/ODYtODU2OC5qcGVn.jpeg',7)
,('New Wall / I Want U To Love Me','Alexandros',2005,'https://i.discogs.com/bLwj5CFd1UJdB0ObpnKI-VqoXzuVOf0yiuYrgMzfGQQ/rs:fit/g:sm/q:90/h:300/w:300/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEzODMz/NTAyLTE1NjIxNTg0/OTgtNDAwMC5qcGVn.jpeg',7)
,('Machine Head','Deep Purple',2005,'https://i.discogs.com/ZHNjX87pz8ogfgH80s-Naz8IEobjwL5KsoKd-r5DlGQ/rs:fit/g:sm/q:40/h:300/w:300/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEzOTgx/MTMxLTE1NjU0MDkw/MDUtNTk3Mi5qcGVn.jpeg',7)
,('Go Away Little Girl','Various',2005,'https://i.discogs.com/z8Y_cdaN-354oiwAPxtk-A562s_Vu8_tsXOrtCRi9kc/rs:fit/g:sm/q:90/h:534/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE1MjQ5/MTQyLTE2NDY1NzQz/OTktNjgzMi5qcGVn.jpeg',7)
,('The Best Of The Door - The Elektra Years','The Doors',2005,'https://i.discogs.com/5YvZ2VxnpXtujJlVYZRDQYQx6TMI4_LXXn74IjaUj0c/rs:fit/g:sm/q:90/h:358/w:400/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEzOTYy/NzI1LTE1NjUwMTQw/ODYtODU2OC5qcGVn.jpeg',7)
,('The Best Of The Doors','The Doors',2005,'https://i.discogs.com/5YvZ2VxnpXtujJlVYZRDQYQx6TMI4_LXXn74IjaUj0c/rs:fit/g:sm/q:90/h:358/w:400/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEzOTYy/NzI1LTE1NjUwMTQw/ODYtODU2OC5qcGVn.jpeg',7)

