-- CREATE tracks table with foreign key to albums table
CREATE TABLE tracklist (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    title TEXT NOT NULL,
    album_id INTEGER NOT NULL,
    FOREIGN KEY (album_id) REFERENCES album(album_id) ON UPDATE CASCADE ON DELETE CASCADE
);
-- INSERT data tracks into the tracks table
INSERT INTO tracklist (id, title, album_id)
VALUES (
        '1',
        'Caught Up in You',
        '1'
    ),
    ('2', 'Fantasy Girl', '3'),
    ('3', 'Hold On Loosely', '4'),
    (
        '4',
        'Rockin  Into the Night',
        '5'
    ),
    ('5', 'Art For Arts Sake', '6'),
    ('6', 'Kryptonite', '7'),
    ('7', 'Loser', '8'),
    ('8', 'When I m Gone', '9'),
    ('9', 'What s Up?', '10'),
    ('10', 'Take On Me', '11'),
    (
        '11',
        'Baby, Please Don t Go   ',
        '12'
    ),
    ('12', 'Back In Black', '13'),
    ('13', 'Big Gun', '14'),
    (
        '14',
        'CAN T STOP ROCK N ROLL',
        '15'
    ),
    (
        '15',
        'Dirty Deeds Done Dirt Cheap',
        '16'
    ),
    (
        '16',
        'For Those About To Rock',
        '17'
    ),
    ('17', 'Girls Got Rhythm', '18'),
    ('18', 'Hard As A Rock', '19'),
    (
        '19',
        'Have a Drink On Me',
        '20'
    ),
    ('20', 'Hells Bells', '21'),
    ('21', 'Highway To Hell', '22'),
    (
        '22',
        'It s A Long Way To The Top',
        '23'
    ),
    ('23', 'Jailbreak', '24'),
    (
        '24',
        'Let There Be Rock',
        '25'
    ),
    ('25', 'Let s Get It Up', '26'),
    ('26', 'Live Wire', '27'),
    ('27', 'Moneytalks', '28'),
    ('28', 'Night Prowler', '29'),
    (
        '29',
        'Rock and Roll Ain t Noise Pollution',
        '30'
    ),
    ('30', 'Shoot To Thrill', '31'),
    (
        '31',
        'Shot Down In Flames',
        '32'
    ),
    ('32', 'Sin City', '33'),
    ('33', 'T.N.T.', '34'),
    ('34', 'Thunderstruck', '35'),
    ('35', 'Touch Too Much', '36'),
    (
        '36',
        'What Do You Do For Money Honey',
        '37'
    ),
    ('37', 'Who Made Who', '38'),
    (
        '38',
        'Whole Lotta Rosie',
        '39'
    ),
    (
        '39',
        'You Shook Me All Night Long',
        '40'
    ),
    ('40', 'How Long', '41'),
    ('41', 'Dog On A Leash', '42'),
    ('42', 'Angel', '43'),
    (
        '43',
        'Baby, Please Don t Go   ',
        '44'
    ),
    (
        '44',
        'Back in the Saddle',
        '45'
    ),
    ('45', 'Big Ten Inch', '46'),
    ('46', 'Come Together', '47'),
    ('47', 'Crazy', '48'),
    ('48', 'Cryin ', '49'),
    ('49', 'Draw The Line', '50'),
    ('50', 'Dream On', '51'),
    (
        '51',
        'Dude (Looks Like a Lady)',
        '51'
    ),
    ('52', 'Jaded', '1'),
    ('53', 'Janie s Got A Gun', '2'),
    ('54', 'Kings and Queens', '3'),
    ('55', 'Last Child', '4'),
    (
        '56',
        'Let the Music Do the Talking',
        '5'
    ),
    (
        '57',
        'Livin  On The Edge',
        '6'
    ),
    (
        '58',
        'Love In An Elevator',
        '7'
    ),
    ('59', 'Mama Kin', '8'),
    ('60', 'No More No More', '9'),
    ('61', 'One Way Street', '10'),
    ('62', 'Pink', '11'),
    ('63', 'Rag Doll', '12'),
    (
        '64',
        'Same Old Song and Dance',
        '13'
    ),
    (
        '65',
        'Seasons of Wither',
        '14'
    ),
    ('66', 'Sweet Emotion', '15'),
    ('67', 'The Other Side', '16'),
    (
        '68',
        'Toys in the Attic',
        '17'
    ),
    (
        '69',
        'Train Kept A-Rollin ',
        '18'
    ),
    ('70', 'Walk This Way', '19'),
    ('71', 'What It Takes', '20'),
    (
        '72',
        'You See Me Crying',
        '21'
    ),
    (
        '73',
        'Hand In My Pocket',
        '22'
    ),
    ('74', 'You Oughta Know', '23'),
    ('75', 'Black Velvet', '24'),
    ('76', 'Fantasy', '25'),
    ('77', 'BE MY LOVER', '26'),
    (
        '78',
        'Billion Dollar Babies',
        '27'
    ),
    ('79', 'Eighteen', '28'),
    ('80', 'Elected', '29'),
    ('81', 'House Of Fire', '30'),
    ('82', 'I m Eighteen', '31'),
    (
        '83',
        'No More Mr. Nice Guy',
        '32'
    ),
    ('84', 'School s Out', '33'),
    ('85', 'Under My Wheels', '34'),
    (
        '86',
        'Welcome To My Nightmare',
        '35'
    ),
    ('87', 'Down in a Hole', '36'),
    ('88', 'Man In The Box', '37'),
    ('89', 'No Excuses', '38'),
    ('90', 'Rooster', '39'),
    ('91', 'Them Bones', '40'),
    ('92', 'Would?', '41'),
    (
        '93',
        'Ain t Wastin  Time No More',
        '42'
    ),
    ('94', 'Blue Sky', '43'),
    ('95', 'Good Clean Fun', '44'),
    (
        '96',
        'In Memory Of Elizabeth Reed',
        '45'
    ),
    ('97', 'Jessica', '46'),
    ('98', 'Melissa', '47'),
    ('99', 'Midnight Rider', '48'),
    (
        '100',
        'No One to Run With',
        '49'
    ),
    ('101', 'One Way Out', '50'),
    ('102', 'Ramblin  Man', '51'),
    ('103', 'Southbound', '1'),
    ('104', 'Statesboro Blues', '2'),
    ('105', 'Whippin  Post', '3'),
    (
        '106',
        'A Horse With No Name',
        '4'
    ),
    (
        '107',
        'Sister Golden Hair',
        '5'
    ),
    ('108', 'Ventura Highway', '6'),
    (
        '109',
        'Don t Bring Me Down',
        '7'
    ),
    (
        '110',
        'Don t Let Me Be Misunderstood',
        '8'
    ),
    ('111', 'Immigrant Song', '9'),
    ('112', 'Roller', '10'),
    (
        '113',
        'Hold Your Head Up',
        '11'
    ),
    (
        '114',
        'Coming into Los Angeles',
        '12'
    ),
    ('115', 'Wayside', '13'),
    (
        '116',
        'Heat of the Moment',
        '14'
    ),
    (
        '117',
        'Only Time Will Tell',
        '15'
    ),
    ('118', 'So Into You', '16'),
    ('119', 'Spooky', '17'),
    ('120', 'Like a Stone', '18'),
    (
        '121',
        'Blondes In Black Cars',
        '19'
    ),
    (
        '122',
        'Turn Up the Radio',
        '20'
    ),
    (
        '123',
        'Rock And Roll Party In The Streets',
        '21'
    ),
    ('124', 'Let It Ride', '22'),
    (
        '125',
        'Roll On Down The Highway',
        '23'
    ),
    (
        '126',
        'Takin  Care Of Business',
        '24'
    ),
    (
        '127',
        'You Ain t Seen Nothin  Yet',
        '25'
    ),
    ('128', 'Bad Company', '26'),
    ('129', 'Burnin  Sky', '27'),
    (
        '130',
        'Can t Get Enough',
        '28'
    ),
    (
        '131',
        'Feel Like Makin  Love',
        '29'
    ),
    ('132', 'Gone Gone Gone', '30'),
    (
        '133',
        'Good Lovin  Gone Bad',
        '31'
    ),
    ('134', 'Movin  On', '32'),
    ('135', 'Ready For Love', '33'),
    (
        '136',
        'Rock  n  Roll Fantasy',
        '34'
    ),
    ('137', 'Rock Steady', '35'),
    (
        '138',
        'Run With The Pack',
        '36'
    ),
    ('139', 'Seagull', '37'),
    ('140', 'Shooting Star', '38'),
    (
        '141',
        'Silver, Blue And Gold   ',
        '39'
    ),
    (
        '142',
        'When I See You Smile',
        '40'
    ),
    ('143', 'No Matter What', '41'),
    (
        '144',
        'Walks Like A Woman',
        '42'
    ),
    (
        '145',
        '(You Gotta) Fight for Your Right (To Party)',
        '43'
    ),
    (
        '146',
        'No Sleep Till Brooklyn',
        '44'
    ),
    ('147', 'Loser', '45'),
    (
        '148',
        'In a Big Country',
        '46'
    ),
    (
        '149',
        'Rock Around the Clock',
        '47'
    ),
    (
        '150',
        'AIN T NO SUNSHINE',
        '48'
    ),
    ('151', 'Cradle of Love', '49'),
    (
        '152',
        'Dancing With Myself',
        '50'
    ),
    (
        '153',
        'Eyes Without a Face',
        '51'
    ),
    ('154', 'Mony Mony', '1'),
    ('155', 'Rebel Yell', '2'),
    ('156', 'White Wedding', '3'),
    ('157', 'Allentown', '4'),
    ('158', 'Big Shot', '5'),
    ('159', 'Captain Jack', '6'),
    ('160', 'Don t Ask Me Why', '7'),
    ('161', 'Goodnight Saigon', '8'),
    (
        '162',
        'It s Still Rock And Roll To Me',
        '9'
    ),
    (
        '163',
        'Miami 2017 {seen The Lights Go Out On Broadway} (live 1',
        '10'
    ),
    (
        '164',
        'Movin  Out (Anthony s Song)',
        '11'
    ),
    ('165', 'My Life', '12'),
    (
        '166',
        'New York State Of Mind',
        '13'
    ),
    (
        '167',
        'Only The Good Die Young',
        '14'
    ),
    ('168', 'Piano Man', '15'),
    (
        '169',
        'Prelude/angry Young Man',
        '16'
    ),
    (
        '170',
        'Scenes From An Italian Restaurant',
        '17'
    ),
    (
        '171',
        'SHE S ALWAYS A WOMAN',
        '18'
    ),
    (
        '172',
        'Sometimes A Fantasy',
        '19'
    ),
    (
        '173',
        'The Ballad Of Billy The Kid',
        '20'
    ),
    ('174', 'The Stranger', '21'),
    (
        '175',
        'You May Be Right',
        '22'
    ),
    ('176', 'Baby Come Back', '23'),
    (
        '177',
        'Everybody Wants You',
        '24'
    ),
    ('178', 'In the Dark', '25'),
    (
        '179',
        'Lonely Is the Night',
        '26'
    ),
    ('180', 'My Kinda Lover', '27'),
    ('181', 'Rock Me Tonight', '28'),
    ('182', 'She s a Runner', '29'),
    ('183', 'The Stroke', '30'),
    (
        '184',
        'Children Of The Sun',
        '31'
    ),
    (
        '185',
        'Fairies Wear Boots',
        '32'
    ),
    ('186', 'Heaven and Hell', '33'),
    ('187', 'Iron Man', '34'),
    ('188', 'N.i.b.', '35'),
    ('189', 'Neon Knights', '36'),
    ('190', 'Paranoid', '37'),
    ('191', 'Sweet Leaf', '38'),
    ('192', 'The Wizard', '39'),
    ('193', 'War Pigs', '40'),
    ('194', 'Highway Song', '41'),
    (
        '195',
        'Train, Train   ',
        '42'
    ),
    (
        '196',
        'Can t Find My Way Home',
        '43'
    ),
    (
        '197',
        'Presence of the Lord',
        '44'
    ),
    ('198', 'No Rain', '45'),
    (
        '199',
        'Presence of the Lord',
        '46'
    ),
    (
        '200',
        'All the Small Things',
        '47'
    ),
    ('201', 'Call Me', '48'),
    ('202', 'Heart of Glass', '49'),
    (
        '203',
        'One Way Or Another',
        '50'
    ),
    (
        '204',
        '(Don t Fear) The Reaper',
        '51'
    ),
    ('205', 'Bucks Boogie', '1'),
    ('206', 'Burnin  for You', '2'),
    ('207', 'Godzilla', '3'),
    ('208', 'I Love the Night', '4'),
    ('209', 'Summertime Blues', '5'),
    ('210', 'Song 2', '6'),
    (
        '211',
        'Just Like A Woman',
        '7'
    ),
    (
        '212',
        'Knockin  On Heaven s Door',
        '8'
    ),
    (
        '213',
        'Like a Rolling Stone',
        '9'
    ),
    (
        '214',
        'Positively 4th Street',
        '10'
    ),
    (
        '215',
        'Subterranean Homesick Blues',
        '11'
    ),
    (
        '216',
        'Tangled Up In Blue',
        '12'
    ),
    ('217', 'Exodus', '13'),
    ('218', 'Jamming', '14'),
    (
        '219',
        'No Woman, No Cry   ',
        '15'
    ),
    ('220', 'One Love', '16'),
    ('221', 'Stir It Up', '17'),
    (
        '222',
        'Three Little Birds',
        '18'
    ),
    (
        '223',
        'Against The Wind',
        '19'
    ),
    (
        '224',
        'Betty Lou s Gettin  Out Tonigh',
        '20'
    ),
    ('225', 'Come to Poppa', '21'),
    (
        '226',
        'Feel Like a Number',
        '22'
    ),
    ('227', 'Fire Down Below', '23'),
    (
        '228',
        'Get Out of Denver',
        '24'
    ),
    ('229', 'Her Strut', '25'),
    (
        '230',
        'Hollywood Nights',
        '26'
    ),
    ('231', 'Horizontal Bop', '27'),
    ('232', 'Katmandu', '28'),
    ('233', 'Mainstreet', '29'),
    ('234', 'Night Moves', '30'),
    (
        '235',
        'Old Time Rock & Roll',
        '31'
    ),
    (
        '236',
        'Ramblin  Gamblin  Man',
        '32'
    ),
    (
        '237',
        'Rock And Roll Never Forgets',
        '33'
    ),
    ('238', 'Roll Me Away', '34'),
    ('239', 'Still the Same', '35'),
    ('240', 'Sunspot Baby', '36'),
    (
        '241',
        'The Fire Down Below',
        '37'
    ),
    ('242', 'Travelin  Man', '38'),
    (
        '243',
        'Turn On Your Love Light',
        '39'
    ),
    ('244', 'Turn The Page', '40'),
    (
        '245',
        'We ve Got Tonite',
        '41'
    ),
    (
        '246',
        'You ll Accompany Me',
        '42'
    ),
    ('247', 'Hypnotized', '43'),
    ('248', 'Bad Medicine', '44'),
    ('249', 'Blaze of Glory', '45'),
    (
        '250',
        'Born To Be My Baby',
        '46'
    ),
    (
        '251',
        'Lay Your Hands On Me',
        '47'
    ),
    (
        '252',
        'Livin  On A Prayer',
        '48'
    ),
    (
        '253',
        'Raise Your Hands',
        '49'
    ),
    ('254', 'Runaway', '50'),
    (
        '255',
        'She Don t Know Me',
        '51'
    ),
    (
        '256',
        'Wanted Dead or Alive',
        '1'
    ),
    (
        '257',
        'You Give Love A Bad Name',
        '2'
    ),
    ('258', 'Wait For You', '3'),
    ('259', 'Green Onions', '4'),
    (
        '260',
        'A Man I ll Never Be',
        '5'
    ),
    ('261', 'Amanda', '6'),
    ('262', 'Cool The Engines', '7'),
    ('263', 'Don t Look Back', '8'),
    (
        '264',
        'Feelin  Satisfied',
        '9'
    ),
    (
        '265',
        'Foreplay (Long Time)',
        '10'
    ),
    ('266', 'Hitch A Ride', '11'),
    (
        '267',
        'Let Me Take You Home Tonight',
        '12'
    ),
    (
        '268',
        'More Than a Feeling',
        '13'
    ),
    ('269', 'Party', '14'),
    ('270', 'Peace of Mind', '15'),
    (
        '271',
        'Rock & Roll Band',
        '16'
    ),
    ('272', 'Smokin ', '17'),
    (
        '273',
        'Something About You',
        '18'
    ),
    (
        '274',
        'The Journey/It s Easy',
        '19'
    ),
    (
        '275',
        'Used To Bad News',
        '20'
    ),
    ('276', 'We re Ready', '21'),
    ('277', 'Lido Shuffle', '22'),
    ('278', 'Lowdown', '23'),
    ('279', 'Tarkio Road', '24'),
    ('280', 'The Way It Is', '25'),
    ('281', 'Atlantic City', '26'),
    ('282', 'Backstreets', '27'),
    ('283', 'Badlands', '28'),
    (
        '284',
        'Blinded By the Light',
        '29'
    ),
    (
        '285',
        'Born In the U.S.A.',
        '30'
    ),
    ('286', 'Born To Run', '31'),
    ('287', 'Cover Me', '32'),
    (
        '288',
        'Dancing In the Dark',
        '33'
    ),
    ('289', 'Glory Days', '34'),
    ('290', 'Growin  Up', '35'),
    ('291', 'Hungry Heart', '36'),
    ('292', 'I m On Fire', '37'),
    (
        '293',
        'It s Hard to Be a Saint in the City',
        '38'
    ),
    ('294', 'Jersey Girl', '39'),
    ('295', 'Jungleland', '40'),
    ('296', 'Pink Cadillac', '41'),
    (
        '297',
        'Prove It All Night',
        '42'
    ),
    (
        '298',
        'Racing in the Streets',
        '43'
    ),
    (
        '299',
        'Rosalita (Come Out Tonight)',
        '44'
    ),
    ('300', 'She s The One', '45'),
    (
        '301',
        'Spirit In The Night',
        '46'
    ),
    (
        '302',
        'Tenth Avenue Freeze-Out',
        '47'
    ),
    ('303', 'Thunder Road', '48'),
    (
        '304',
        'Cuts Like a Knife',
        '49'
    ),
    ('305', 'Heaven', '50'),
    ('306', 'Run to You', '51'),
    ('307', 'Somebody', '1'),
    ('308', 'Summer Of  69', '2'),
    ('309', 'Sorry', '3'),
    (
        '310',
        'For What It s Worth',
        '4'
    ),
    ('311', 'Mr. Soul', '5'),
    (
        '312',
        'Rock & Roll Woman',
        '6'
    ),
    ('313', 'Comedown', '7'),
    ('314', 'Machinehead', '8'),
    ('315', 'Far Behind', '9'),
    (
        '316',
        'Goin  up the Country',
        '10'
    ),
    (
        '317',
        'On the Road Again',
        '11'
    ),
    ('318', 'IT S TOO LATE', '12'),
    ('319', 'Oh Very Young', '13'),
    ('320', 'WILD WORLD', '14'),
    ('321', 'In America', '15'),
    (
        '322',
        'Long Haired Country Boy',
        '16'
    ),
    (
        '323',
        'The Devil Went Down To Georgia',
        '17'
    ),
    (
        '324',
        'The Legend Of Wooley Swamp',
        '18'
    ),
    (
        '325',
        'The South s Gonna Do It Again',
        '19'
    ),
    ('326', 'Uneasy Rider', '20'),
    (
        '327',
        'Ain t That a Shame',
        '21'
    ),
    ('328', 'Dream Police', '22'),
    (
        '329',
        'I Want You to Want Me',
        '23'
    ),
    ('330', 'She s Tight', '24'),
    ('331', 'Surrender', '25'),
    (
        '332',
        'Take Out The Gunman',
        '26'
    ),
    ('333', '25 Or 6 To 4', '27'),
    ('334', 'Beginnings', '28'),
    (
        '335',
        'Feeling Stronger Every',
        '29'
    ),
    ('336', 'I m a Man', '30'),
    ('337', 'JUST YOU AND ME', '31'),
    ('338', 'Make Me Smile', '32'),
    (
        '339',
        'Questions 67 and 68',
        '33'
    ),
    (
        '340',
        'Saturday In the Park',
        '34'
    ),
    (
        '341',
        'South California Purples',
        '35'
    ),
    ('342', 'JOHNNY B. GOODE', '36'),
    ('343', 'Coming Home', '37'),
    (
        '344',
        'Don t Know What You Got',
        '38'
    ),
    ('345', 'Gypsy Road', '39'),
    ('346', 'Nobody s Fool', '40'),
    (
        '347',
        'Somebody Save Me',
        '41'
    ),
    (
        '348',
        'Better Off Without You',
        '42'
    ),
    ('349', 'Born Too Late', '43'),
    ('350', 'Cigarette', '44'),
    ('351', 'Hey You', '45'),
    ('352', 'Maybe', '46'),
    (
        '353',
        'Penny On The Floor',
        '47'
    ),
    ('354', 'The River', '48'),
    ('355', 'December', '49'),
    ('356', 'Shine', '50'),
    (
        '357',
        'The World I Know',
        '51'
    ),
    ('358', 'Hot Rod Lincoln', '1'),
    ('359', 'Monkey Bars', '2'),
    ('360', 'Mr. Jones', '3'),
    ('361', 'Low', '4'),
    ('362', 'Badge', '5'),
    (
        '363',
        'Born Under A Bad Sign',
        '6'
    ),
    ('364', 'Crossroads', '7'),
    ('365', 'I m So Glad', '8'),
    (
        '366',
        'Sunshine of Your Love',
        '9'
    ),
    (
        '367',
        'Tales Of Brave Ulysses',
        '10'
    ),
    ('368', 'White Room', '11'),
    ('369', 'Higher', '12'),
    ('370', 'My Sacrifice', '13'),
    (
        '371',
        'With Arms Wide Open',
        '14'
    ),
    ('372', 'Bad Moon Rising', '15'),
    (
        '373',
        'Born On the Bayou',
        '16'
    ),
    ('374', 'Commotion', '17'),
    (
        '375',
        'Down On the Corner',
        '18'
    ),
    ('376', 'Fortunate Son', '19'),
    ('377', 'Green River', '20'),
    (
        '378',
        'Have You Ever Seen the Rain?',
        '21'
    ),
    (
        '379',
        'I Heard It Through the Grapevine',
        '22'
    ),
    ('380', 'Lodi', '23'),
    (
        '381',
        'Lookin  Out My Back Door',
        '24'
    ),
    ('382', 'Proud Mary', '25'),
    (
        '383',
        'Run Through the Jungle',
        '26'
    ),
    ('384', 'Suzie Q', '27'),
    (
        '385',
        'Sweet Hitch Hiker',
        '28'
    ),
    (
        '386',
        'The Midnight Special',
        '29'
    ),
    ('387', 'Travelin  Band', '30'),
    (
        '388',
        'Up Around the Bend',
        '31'
    ),
    (
        '389',
        'Who ll Stop the Rain',
        '32'
    ),
    ('390', 'Fire Woman', '33'),
    (
        '391',
        'Helplessly Hoping',
        '34'
    ),
    ('392', 'Long Time Gone', '35'),
    ('393', 'Southern Cross', '36'),
    (
        '394',
        'Suite: Judy Blue Eyes',
        '37'
    ),
    ('395', 'Carry On', '38'),
    ('396', 'Ohio', '39'),
    ('397', 'Woodstock', '40'),
    (
        '398',
        '(I Just) Died in Your Arms',
        '41'
    ),
    ('399', 'High Enough', '42'),
    (
        '400',
        'I HEAR YOU KNOCKING',
        '43'
    ),
    ('401', 'Headkeeper', '44'),
    (
        '402',
        'Only You Know And I Know',
        '45'
    ),
    (
        '403',
        'We Just Disagree',
        '46'
    ),
    (
        '404',
        'Welcome To The Boomtown',
        '47'
    ),
    ('405', 'Changes', '48'),
    ('406', 'China Girl', '49'),
    ('407', 'Diamond Dogs', '50'),
    ('408', 'Fame', '51'),
    ('409', 'Fashion', '1'),
    (
        '410',
        'Friday on My Mind',
        '2'
    ),
    ('411', 'Golden Years', '3'),
    ('412', 'Heroes', '4'),
    ('413', 'Jean Genie', '5'),
    ('414', 'Let s Dance', '6'),
    ('415', 'Modern Love', '7'),
    ('416', 'Panic in Detroit', '8'),
    ('417', 'Rebel Rebel', '9'),
    ('418', 'Space Oddity', '10'),
    ('419', 'Starman', '11'),
    ('420', 'Stay', '12'),
    (
        '421',
        'Suffragette City',
        '13'
    ),
    ('422', 'Young Americans', '14'),
    ('423', 'Ziggy Stardust', '15'),
    ('424', 'Rock On', '16'),
    (
        '425',
        'There s No Way Out Of Here',
        '17'
    ),
    (
        '426',
        'There s No Way Out Of Here',
        '18'
    ),
    ('427', 'Frenchette', '19'),
    (
        '428',
        'California Girls',
        '20'
    ),
    (
        '429',
        'Just A Gigolo / I Ain t Got Nobody',
        '21'
    ),
    ('430', 'Yankee Rose', '22'),
    ('431', 'Burn', '23'),
    ('432', 'Child In Time', '24'),
    ('433', 'Highway Star', '25'),
    ('434', 'Hush', '26'),
    ('435', 'Kentucky Woman', '27'),
    (
        '436',
        'Knocking At Your Backdoo',
        '28'
    ),
    ('437', 'Lazy', '29'),
    (
        '438',
        'Perfect Strangers',
        '30'
    ),
    (
        '439',
        'Smoke On The Water',
        '31'
    ),
    ('440', 'Space Truckin ', '32'),
    (
        '441',
        'Woman From Tokyo',
        '33'
    ),
    ('442', 'Animal', '34'),
    ('443', 'Armageddon It', '35'),
    (
        '444',
        'Bringin  On The Heartbreak',
        '36'
    ),
    ('445', 'Foolin ', '37'),
    ('446', 'Hysteria', '38'),
    ('447', 'Love Bites', '39'),
    (
        '448',
        'On Through The Night',
        '40'
    ),
    ('449', 'Photograph', '41'),
    (
        '450',
        'Pour Some Sugar On Me',
        '42'
    ),
    ('451', 'Rock of Ages', '43'),
    ('452', 'Rock Rock', '44'),
    ('453', 'Rocket', '45'),
    (
        '454',
        'Too Late for Love',
        '46'
    ),
    (
        '455',
        'Enjoy the Silence',
        '47'
    ),
    (
        '456',
        'Bell Bottom Blues',
        '48'
    ),
    (
        '457',
        'Have You Ever Loved a Woman',
        '49'
    ),
    ('458', 'Layla', '50'),
    ('459', 'Recognition', '51'),
    ('460', 'ANGELOS', '1'),
    ('461', 'Holy Diver', '2'),
    (
        '462',
        'Rainbow In the Dark',
        '3'
    ),
    ('463', 'The Last In Line', '4'),
    ('464', 'Brothers In Arms', '5'),
    (
        '465',
        'Down To The Waterline',
        '6'
    ),
    ('466', 'Expresso Love', '7'),
    (
        '467',
        'Industrial Disease',
        '8'
    ),
    ('468', 'Lady Writer', '9'),
    (
        '469',
        'Money for Nothing',
        '10'
    ),
    (
        '470',
        'Romeo And Juliet',
        '11'
    ),
    ('471', 'So Far Away', '12'),
    ('472', 'Solid Rock', '13'),
    (
        '473',
        'Sultans of Swing',
        '14'
    ),
    ('474', 'Walk of Life', '15'),
    (
        '475',
        'Counting Blue Cars',
        '16'
    ),
    ('476', 'Drift Away', '17'),
    ('477', 'Alone Again', '18'),
    ('478', 'In My Dreams', '19'),
    ('479', 'Into The Fire', '20'),
    ('480', 'Heavy Metal', '21'),
    (
        '481',
        'All She Wants to Do Is Dance',
        '22'
    ),
    ('482', 'Dirty Laundry', '23'),
    ('483', 'Sunset Grill', '24'),
    (
        '484',
        'The Boys Of Summer',
        '25'
    ),
    (
        '485',
        'The Heart of the Matter',
        '26'
    ),
    (
        '486',
        'The Last Worthless Evening',
        '27'
    ),
    ('487', 'American Pie', '28'),
    ('488', 'Ah! Leah!', '29'),
    (
        '489',
        'Love Is Like A Rock',
        '30'
    ),
    (
        '490',
        'Season of the Witch',
        '31'
    ),
    (
        '491',
        'Sunshine Superman',
        '32'
    ),
    (
        '492',
        'COVER OF THE ROLLING STONE',
        '33'
    ),
    (
        '493',
        'Right Place Wrong Time',
        '34'
    ),
    (
        '494',
        'Anything, Anything   ',
        '35'
    ),
    (
        '495',
        'Hey, Hey (What Can I Do?)   ',
        '36'
    ),
    ('496', 'Rio', '37'),
    ('497', 'Already Gone', '38'),
    ('498', 'Desperado', '39'),
    (
        '499',
        'Heartache Tonight',
        '40'
    ),
    (
        '500',
        'Hotel California',
        '41'
    ),
    (
        '501',
        'I Can t Tell You Why',
        '42'
    ),
    ('502', 'In The City', '43'),
    (
        '503',
        'Life in the Fast Lane',
        '44'
    ),
    ('504', 'Lyin  Eyes', '45'),
    ('505', 'New Kid In Town', '46'),
    (
        '506',
        'One of These Nights',
        '47'
    ),
    (
        '507',
        'Peaceful Easy Feeling',
        '48'
    ),
    (
        '508',
        'Seven Bridges Road',
        '49'
    ),
    ('509', 'Take It Easy', '50'),
    (
        '510',
        'Take It to the Limit',
        '51'
    ),
    ('511', 'Tequila Sunrise', '1'),
    (
        '512',
        'The Best of My Love',
        '2'
    ),
    ('513', 'The Long Run', '3'),
    ('514', 'Those Shoes', '4'),
    ('515', 'Victim of Love', '5'),
    ('516', 'Witchy Woman', '6'),
    ('517', 'Baby Hold On', '7'),
    ('518', 'Gimme Some Water', '8'),
    ('519', 'Shakin ', '9'),
    (
        '520',
        'Take Me Home Tonight',
        '10'
    ),
    (
        '521',
        'Think I m In Love',
        '11'
    ),
    (
        '522',
        'Two Tickets To Paradise',
        '12'
    ),
    ('523', 'Frankenstein', '13'),
    ('524', 'Free Ride', '14'),
    ('525', 'WAR', '15'),
    (
        '526',
        'CAN T GET IT OUT OF MY HEAD',
        '16'
    ),
    ('527', 'Do Ya', '17'),
    (
        '528',
        'Don t Bring Me Down',
        '18'
    ),
    ('529', 'Evil Woman', '19'),
    ('530', 'Fire On High', '20'),
    ('531', 'Livin  Thing', '21'),
    (
        '532',
        'Roll Over Beethoven',
        '22'
    ),
    ('533', 'Strange Magic', '23'),
    (
        '534',
        'Sweet Talkin  Woman',
        '24'
    ),
    ('535', 'Telephone Line', '25'),
    ('536', 'Turn To Stone', '26'),
    (
        '537',
        'All The Girls Love Alice',
        '27'
    ),
    (
        '538',
        'Bennie And The Jets',
        '28'
    ),
    (
        '539',
        'Candle in the Wind',
        '29'
    ),
    (
        '540',
        'Captain Fantastic',
        '30'
    ),
    ('541', 'Crocodile Rock', '31'),
    ('542', 'DANIEL', '32'),
    (
        '543',
        'Don t Let The Sun Go Down On Me',
        '33'
    ),
    (
        '544',
        'Funeral for a Friend (Love Lies Bleeding)',
        '34'
    ),
    (
        '545',
        'Goodbye Yellow Brick Road',
        '35'
    ),
    ('546', 'Harmony', '36'),
    ('547', 'Honky Cat', '37'),
    ('548', 'Levon', '38'),
    (
        '549',
        'Madman Across The Water',
        '39'
    ),
    ('550', 'Rocket Man', '40'),
    (
        '551',
        'Saturday Night s Alright for Fighting',
        '41'
    ),
    (
        '552',
        'Someone Saved My Life Tonight',
        '42'
    ),
    (
        '553',
        'Take Me to the Pilot',
        '43'
    ),
    (
        '554',
        'Teacher I Need You',
        '44'
    ),
    (
        '555',
        'THE BITCH IS BACK',
        '45'
    ),
    ('556', 'Tiny Dancer', '46'),
    (
        '557',
        'Where To Now St. Peter',
        '47'
    ),
    ('558', 'Your Song', '48'),
    (
        '559',
        'Fooled around and Fell in Love',
        '49'
    ),
    ('560', 'Alison', '50'),
    ('561', 'Pump It Up', '51'),
    ('562', 'Veronica', '1'),
    (
        '563',
        'From the Beginning',
        '2'
    ),
    ('564', 'Hoedown', '3'),
    ('565', 'Karn Evil 9', '4'),
    ('566', 'Lucky Man', '5'),
    (
        '567',
        'Still You Turn Me On',
        '6'
    ),
    ('568', 'After Midnight', '7'),
    ('569', 'Bad Love', '8'),
    (
        '570',
        'Call Me the Breeze',
        '9'
    ),
    ('571', 'Cocaine', '10'),
    (
        '572',
        'Don t Think Twice, It s Alright   ',
        '11'
    ),
    ('573', 'Forever Man', '12'),
    (
        '574',
        'I Can t Stand It',
        '13'
    ),
    (
        '575',
        'I Shot The Sheriff',
        '14'
    ),
    (
        '576',
        'I ve Got a Rock  N  Roll Heart',
        '15'
    ),
    (
        '577',
        'It s In The Way That You Use It',
        '16'
    ),
    (
        '578',
        'Knockin  On Heaven s Door',
        '17'
    ),
    ('579', 'Lay Down Sally', '18'),
    ('580', 'Layla', '19'),
    ('581', 'Let It Grow', '20'),
    ('582', 'Let It Rain', '21'),
    ('583', 'Pretending', '22'),
    ('584', 'She s Waiting', '23'),
    ('585', 'Tears In Heaven', '24'),
    ('586', 'The Core', '25'),
    (
        '587',
        'Willie and the Hand Jive',
        '26'
    ),
    (
        '588',
        'Wonderful Tonight',
        '27'
    ),
    ('589', 'Cliffs Of Dover', '28'),
    (
        '590',
        'The Final Countdown',
        '29'
    ),
    (
        '591',
        'Sweet Dreams (Are Made of This)',
        '30'
    ),
    ('592', 'Inside Out', '31'),
    ('593', 'Santa Monica', '32'),
    (
        '594',
        'The Boys Are Back In Town',
        '33'
    ),
    ('595', 'What It s Like', '34'),
    ('596', 'More Than Words', '35'),
    (
        '597',
        'Mutha (Don t Wanna Go To School Today)',
        '36'
    ),
    ('598', 'Ooh La La', '37'),
    ('599', 'Stay With Me', '38'),
    ('600', 'Epic', '39'),
    ('601', 'House Of Pain', '40'),
    (
        '602',
        'All The Kings Horses',
        '41'
    ),
    ('603', 'Signs', '42'),
    ('604', 'Blue Letter', '43'),
    ('605', 'Don t Stop', '44'),
    ('606', 'Dreams', '45'),
    ('607', 'Go Your Own Way', '46'),
    ('608', 'Gold Dust Woman', '47'),
    ('609', 'Gypsy', '48'),
    ('610', 'Hold Me', '49'),
    ('611', 'Hypnotized', '50'),
    (
        '612',
        'I Don t Want To Know',
        '51'
    ),
    ('613', 'I m So Afraid', '1'),
    ('614', 'Landslide', '2'),
    ('615', 'Little Lies', '3'),
    ('616', 'Monday Morning', '4'),
    (
        '617',
        'Never Going Back Again',
        '5'
    ),
    ('618', 'Oh Well', '6'),
    ('619', 'Rhiannon', '7'),
    ('620', 'Sara', '8'),
    ('621', 'Say You Love Me', '9'),
    (
        '622',
        'Second Hand News',
        '10'
    ),
    (
        '623',
        'Sentimental Lady',
        '11'
    ),
    ('624', 'The Chain', '12'),
    ('625', 'Tusk', '13'),
    ('626', 'World Turning', '14'),
    (
        '627',
        'You Make Loving Fun',
        '15'
    ),
    ('628', 'Hocus Pocus', '16'),
    ('629', 'Dreamer', '17'),
    (
        '630',
        'Fool For The City',
        '18'
    ),
    (
        '631',
        'I Just Want To Make Love To You',
        '19'
    ),
    ('632', 'Slow Ride', '20'),
    ('633', 'All My Life', '21'),
    ('634', 'Baker Street', '22'),
    ('635', 'Best of You', '23'),
    ('636', 'Everlong', '24'),
    ('637', 'Learn To Fly', '25'),
    ('638', 'Monkey Wrench', '26'),
    ('639', 'My Hero', '27'),
    ('640', 'The Pretender', '28'),
    ('641', 'These Days', '29'),
    (
        '642',
        'Times Like These',
        '30'
    ),
    (
        '643',
        'Blue Morning, Blue Day   ',
        '31'
    ),
    ('644', 'Cold As Ice', '32'),
    ('645', 'Dirty White Boy', '33'),
    ('646', 'Double Vision', '34'),
    (
        '647',
        'Feels Like the First Time',
        '35'
    ),
    ('648', 'Head Games', '36'),
    ('649', 'Hot Blooded', '37'),
    (
        '650',
        'I Want to Know What Love Is',
        '38'
    ),
    ('651', 'Juke Box Hero', '39'),
    (
        '652',
        'Long, Long Way From Home   ',
        '40'
    ),
    (
        '653',
        'Love Has Taken Its Toll',
        '41'
    ),
    ('654', 'Starrider', '42'),
    (
        '655',
        'That Was Yesterday',
        '43'
    ),
    ('656', 'Urgent', '44'),
    (
        '657',
        'Waiting for a Girl Like You',
        '45'
    ),
    ('658', 'Women', '46'),
    ('659', 'Joe s Garage', '47'),
    (
        '660',
        'Peaches En Regalia',
        '48'
    ),
    ('661', 'All Right Now', '49'),
    ('662', 'Hemorrhage', '50'),
    ('663', 'Wishing Well', '51'),
    ('664', 'Maggot Brain', '1'),
    ('665', 'CARS', '2'),
    ('666', 'Dream Weaver', '3'),
    ('667', 'Love Is Alive', '4'),
    (
        '668',
        'A Trick of the Tail',
        '5'
    ),
    ('669', 'Abacab', '6'),
    ('670', 'Behind The Lines', '7'),
    ('671', 'Carpet Crawlers', '8'),
    (
        '672',
        'Follow You Follow Me',
        '9'
    ),
    (
        '673',
        'Home by the Sea/Second Home by the Sea',
        '10'
    ),
    (
        '674',
        'Just A Job To Do',
        '11'
    ),
    (
        '675',
        'Land Of Confusion',
        '12'
    ),
    ('676', 'Mama', '13'),
    (
        '677',
        'Man On The Corner',
        '14'
    ),
    (
        '678',
        'Misunderstanding',
        '15'
    ),
    ('679', 'No Reply At All', '16'),
    ('680', 'That s All', '17'),
    (
        '681',
        'The Lamb Lies Down On Broadway',
        '18'
    ),
    (
        '682',
        'Tonight Tonight (live)',
        '19'
    ),
    (
        '683',
        'Turn It On Again',
        '20'
    ),
    ('684', 'Give Me Love', '21'),
    (
        '685',
        'GOT MY MIND SET ON YOU',
        '22'
    ),
    ('686', 'My Sweet Lord', '23'),
    ('687', 'Bad to the Bone', '24'),
    ('688', 'Delaware Slide', '25'),
    ('689', 'Get A Haircut', '26'),
    ('690', 'I Drink Alone', '27'),
    ('691', 'It Wasn t Me', '28'),
    ('692', 'Move It On Over', '29'),
    (
        '693',
        'One Bourbon, One Scotch, One Beer   ',
        '30'
    ),
    ('694', 'Who Do You Love', '31'),
    (
        '695',
        'Keep Your Hands To Yourself',
        '32'
    ),
    ('696', 'Baker Street', '33'),
    (
        '697',
        'Right Down the Line',
        '34'
    ),
    (
        '698',
        'Found Out About You',
        '35'
    ),
    ('699', 'Hey Jealousy', '36'),
    (
        '700',
        'Smuggler s Blues',
        '37'
    ),
    (
        '701',
        'You Belong to the City',
        '38'
    ),
    (
        '702',
        'Marakesh Express',
        '39'
    ),
    (
        '703',
        'Are You Receiving Me',
        '40'
    ),
    ('704', 'Radar Love', '41'),
    ('705', 'Twilight Zone', '42'),
    ('706', 'Sundown', '43'),
    ('707', 'Soulshine', '44'),
    ('708', 'Bad Time', '45'),
    (
        '709',
        'Closer To Home (I m Your Captain)',
        '46'
    ),
    ('710', 'Loco-Motion', '47'),
    ('711', 'Shinin  On', '48'),
    (
        '712',
        'Some Kind of Wonderful',
        '49'
    ),
    (
        '713',
        'We re an American Band',
        '50'
    ),
    ('714', 'Alabama Getaway', '51'),
    (
        '715',
        'Black-Throated Wind',
        '1'
    ),
    ('716', 'Casey Jones', '2'),
    (
        '717',
        'CHINA TOWN SHUFFLE',
        '3'
    ),
    (
        '718',
        'Friend Of The Devil',
        '4'
    ),
    ('719', 'Hell in a Bucket', '5'),
    ('720', 'Loser', '6'),
    (
        '721',
        'Me and Bobby McGee',
        '7'
    ),
    (
        '722',
        'NOT FADEAWAY/GOING /AWAY',
        '8'
    ),
    ('723', 'Scarlet Begonias', '9'),
    (
        '724',
        'Shakedown Street',
        '10'
    ),
    ('725', 'Sugar Magnolia', '11'),
    ('726', 'Touch of Grey', '12'),
    ('727', 'Truckin ', '13'),
    (
        '728',
        'Turn On Your Lovelight',
        '14'
    ),
    ('729', 'U.S. Blues', '15'),
    (
        '730',
        'Uncle John s Band',
        '16'
    ),
    ('731', 'Mista Bone', '17'),
    (
        '732',
        'Once Bitten, Twice Shy   ',
        '18'
    ),
    ('733', 'Rock Me', '19'),
    ('734', 'Rollin  Stoned', '20'),
    ('735', 'Save Your Love', '21'),
    ('736', 'Basket Case', '22'),
    (
        '737',
        'Boulevard Of Broken Dreams',
        '23'
    ),
    (
        '738',
        'Brain Stew/Jaded',
        '24'
    ),
    (
        '739',
        'Good Riddance (Time Of Your Life)',
        '25'
    ),
    ('740', 'Holiday (Live)', '26'),
    (
        '741',
        'Holiday / Boulevard of Broken Dreams',
        '27'
    ),
    ('742', 'Longview', '28'),
    (
        '743',
        'When I Come Around',
        '29'
    ),
    (
        '744',
        'The Break Up Song',
        '30'
    ),
    ('745', 'I m No Angel', '31'),
    ('746', 'Midnight Rider', '32'),
    ('747', 'American Woman', '33'),
    ('748', 'Friends Of Mine', '34'),
    (
        '749',
        'No Sugar Tonight / New Mother Nature',
        '35'
    ),
    ('750', 'No Time', '36'),
    ('751', 'THESE EYES', '37'),
    ('752', 'Civil War', '38'),
    ('753', 'Don t Cry', '39'),
    (
        '754',
        'Knockin  On Heaven s Door',
        '40'
    ),
    (
        '755',
        'Live and Let Die',
        '41'
    ),
    ('756', 'Mr. Brownstone', '42'),
    ('757', 'My Michelle', '43'),
    ('758', 'November Rain', '44'),
    ('759', 'Paradise City', '45'),
    ('760', 'Patience', '46'),
    (
        '761',
        'Sweet Child O  Mine',
        '47'
    ),
    (
        '762',
        'Used To Love Her',
        '48'
    ),
    (
        '763',
        'Welcome to the Jungle',
        '49'
    ),
    (
        '764',
        'You Could Be Mine',
        '50'
    ),
    (
        '765',
        'AS FAR AS YOU CAN SEE (AS MU',
        '51'
    ),
    ('766', 'Axel F Theme', '1'),
    (
        '767',
        'Cat s In The Cradle',
        '2'
    ),
    ('768', 'W*O*L*D*', '3'),
    (
        '769',
        'Jump into the Fire',
        '4'
    ),
    (
        '770',
        'Never Been Any Reason',
        '5'
    ),
    (
        '771',
        'All I Wanna Do Is Make Love to You',
        '6'
    ),
    ('772', 'Alone', '7'),
    ('773', 'Barracuda', '8'),
    ('774', 'Bebe le Strange', '9'),
    ('775', 'Crazy On You', '10'),
    ('776', 'Dog & Butterfly', '11'),
    ('777', 'Dreamboat Annie', '12'),
    ('778', 'Even It Up', '13'),
    ('779', 'Heartless', '14'),
    (
        '780',
        'How Can I Refuse',
        '15'
    ),
    (
        '781',
        'If Looks Could Kill',
        '16'
    ),
    ('782', 'Kick It Out', '17'),
    ('783', 'Little Queen', '18'),
    ('784', 'Love Alive', '19'),
    ('785', 'Magic Man', '20'),
    ('786', 'Mistral Wind', '21'),
    ('787', 'Never', '22'),
    ('788', 'Nothin  at All', '23'),
    ('789', 'Rock And Roll', '24'),
    (
        '790',
        'Stairway To Heaven',
        '25'
    ),
    ('791', 'Straight On', '26'),
    (
        '792',
        'Tell It Like It Is',
        '27'
    ),
    (
        '793',
        'What About Love?',
        '28'
    ),
    (
        '794',
        'Who Will You Run To',
        '29'
    ),
    ('795', 'House Of Living', '30'),
    (
        '796',
        'Sangre Por Sangre',
        '31'
    ),
    ('797', 'Grey Ghost', '32'),
    ('798', 'Long Cool Woman', '33'),
    ('799', 'New Girl Now', '34'),
    ('800', 'ALL YOU ZOMBIES', '35'),
    ('801', 'AND WE DANCED', '36'),
    (
        '802',
        'I Want A New Drug',
        '37'
    ),
    (
        '803',
        '30 Days In the Hole',
        '38'
    ),
    ('804', 'Lust for Life', '39'),
    ('805', 'The Passenger', '40'),
    ('806', 'Radioactive', '41'),
    ('807', 'Devil Inside', '42'),
    (
        '808',
        'Need You Tonight',
        '43'
    ),
    ('809', 'New Sensation', '44'),
    ('810', 'What You Need', '45'),
    (
        '811',
        'In A Gadda Da Vida',
        '46'
    ),
    (
        '812',
        'Flight Of Icarus',
        '47'
    ),
    (
        '813',
        'Run To The Hills',
        '48'
    ),
    (
        '814',
        'The Number Of The Beast',
        '49'
    ),
    ('815', 'The Trooper', '50'),
    ('816', 'Wasted Years', '51'),
    ('817', 'Centerfold', '1'),
    ('818', 'Freeze-frame', '2'),
    ('819', 'Give It To Me', '3'),
    ('820', 'Houseparty', '4'),
    (
        '821',
        'Looking For A Love',
        '5'
    ),
    ('822', 'Love Stinks', '6'),
    ('823', 'Must of Got Lost', '7'),
    ('824', 'Night Time', '8'),
    ('825', 'Whammer Jammer', '9'),
    ('826', 'Boulevard', '10'),
    ('827', 'Doctor My Eyes', '11'),
    ('828', 'Load Out/Stay', '12'),
    ('829', 'Redneck Friend', '13'),
    (
        '830',
        'Running On Empty',
        '14'
    ),
    ('831', 'Somebody s Baby', '15'),
    ('832', 'Take It Easy', '16'),
    (
        '833',
        'The Load-out/stay',
        '17'
    ),
    (
        '834',
        'The Road and the Sky',
        '18'
    ),
    ('835', 'Funk #49', '19'),
    ('836', 'Walk Away', '20'),
    (
        '837',
        'YOU VE GOT A FRIEND',
        '21'
    ),
    (
        '838',
        'Been Caught Stealing',
        '22'
    ),
    ('839', 'Jane Says', '23'),
    (
        '840',
        'Get It While You Can',
        '24'
    ),
    (
        '841',
        'Me and Bobby McGee',
        '25'
    ),
    ('842', 'Move Over', '26'),
    (
        '843',
        'Piece of My Heart',
        '27'
    ),
    ('844', 'Summertime', '28'),
    (
        '845',
        'Shakedown Cruise',
        '29'
    ),
    ('846', 'Thunder Island', '30'),
    ('847', 'Freeway Jam', '31'),
    ('848', 'Rice Pudding', '32'),
    (
        '849',
        'Somebody to Love',
        '33'
    ),
    ('850', 'White Rabbit', '34'),
    (
        '851',
        'Find Your Way Back',
        '35'
    ),
    ('852', 'Jane', '36'),
    ('853', 'Ride the Tiger', '37'),
    (
        '854',
        'We Built This City',
        '38'
    ),
    (
        '855',
        'Right Here Right Now',
        '39'
    ),
    (
        '856',
        'Are You Gonna Be My Girl',
        '40'
    ),
    ('857', 'Cold Hard Bitch', '41'),
    ('858', 'Aqualung', '42'),
    (
        '859',
        'Bungle In The Jungle',
        '43'
    ),
    ('860', 'Cross-eyed Mary', '44'),
    ('861', 'Hymn 43', '45'),
    (
        '862',
        'Living In The Past',
        '46'
    ),
    (
        '863',
        'Locomotive Breath',
        '47'
    ),
    ('864', 'Nothing Is Easy', '48'),
    ('865', 'Teacher', '49'),
    (
        '866',
        'Thick As A Brick',
        '50'
    ),
    (
        '867',
        'Too Old To Rock  n  Roll',
        '51'
    ),
    ('868', 'TIME IN A BOTTLE', '1'),
    (
        '869',
        'All Along the Watchtower',
        '2'
    ),
    ('870', 'Angel', '3'),
    (
        '871',
        'Are You Experienced?',
        '4'
    ),
    (
        '872',
        'Crosstown Traffic',
        '5'
    ),
    ('873', 'Dolly Dagger', '6'),
    ('874', 'Fire', '7'),
    ('875', 'Foxey Lady', '8'),
    ('876', 'Hey Joe', '9'),
    ('877', 'If 6 Was 9', '10'),
    (
        '878',
        'Like a Rolling Stone',
        '11'
    ),
    ('879', 'Little Wing', '12'),
    (
        '880',
        'Manic Depression',
        '13'
    ),
    ('881', 'Purple Haze', '14'),
    ('882', 'Red House', '15'),
    ('883', 'Stone Free', '16'),
    (
        '884',
        'The Wind Cries Mary',
        '17'
    ),
    (
        '885',
        'Third Stone From The Sun',
        '18'
    ),
    (
        '886',
        'Voodoo Child (Slight Return)',
        '19'
    ),
    ('887', 'Margaritaville', '20'),
    (
        '888',
        'Son of a Son of a Sailor',
        '21'
    ),
    (
        '889',
        'Why Don t We Get Drunk',
        '22'
    ),
    ('890', 'Bad Reputation', '23'),
    (
        '891',
        'Crimson And Clover',
        '24'
    ),
    (
        '892',
        'I Hate Myself For Loving You',
        '25'
    ),
    (
        '893',
        'I Love Rock  n Roll',
        '26'
    ),
    ('894', 'Cry Me a River', '27'),
    ('895', 'Feelin  Alright', '28'),
    ('896', 'The Letter', '29'),
    (
        '897',
        'With A Little Help From My Friends',
        '30'
    ),
    (
        '898',
        'You Can Leave Your Hat On (Live)',
        '31'
    ),
    (
        '899',
        'Is She Really Going Out With Him?',
        '32'
    ),
    (
        '900',
        'Always With Me, Always With You   ',
        '33'
    ),
    ('901', 'Summer Song', '34'),
    (
        '902',
        'A Life Of Illusion',
        '35'
    ),
    ('903', 'All Night Long', '36'),
    ('904', 'Analog Man', '37'),
    ('905', 'Funk #49', '38'),
    ('906', 'In the City', '39'),
    (
        '907',
        'Life s Been Good',
        '40'
    ),
    (
        '908',
        'Ordinary Average Guy',
        '41'
    ),
    (
        '909',
        'Rocky Mountain Way',
        '42'
    ),
    ('910', 'The Confessor', '43'),
    ('911', 'Turn To Stone', '44'),
    (
        '912',
        'On the Dark Side',
        '45'
    ),
    ('913', 'Centerfield', '46'),
    (
        '914',
        'The Old Man Down The Road',
        '47'
    ),
    ('915', '#9 Dream', '48'),
    ('916', 'Imagine', '49'),
    ('917', 'Instant Karma', '50'),
    ('918', 'Mind Games', '51'),
    (
        '919',
        'Watching the Wheels',
        '1'
    ),
    ('920', 'Woman', '2'),
    ('921', 'Again Tonight', '3'),
    (
        '922',
        'Ain t Even Done With the Night',
        '4'
    ),
    ('923', 'Authority Song', '5'),
    ('924', 'Check It Out', '6'),
    ('925', 'Cherry Bomb', '7'),
    ('926', 'Crumblin  Down', '8'),
    ('927', 'Hurts So Good', '9'),
    ('928', 'I Need A Lover', '10'),
    ('929', 'Jack & Diane', '11'),
    (
        '930',
        'Lonely Ol  Night',
        '12'
    ),
    ('931', 'Paper in Fire', '13'),
    ('932', 'Pink Houses', '14'),
    (
        '933',
        'R.O.C.K. In the U.S.A.',
        '15'
    ),
    (
        '934',
        'Rain On The Scarecrow',
        '16'
    ),
    ('935', 'Small Town', '17'),
    (
        '936',
        'What If I Came Knocking',
        '18'
    ),
    ('937', 'Illegal Smile', '19'),
    (
        '938',
        'I CAN SEE CLEARLY NOW',
        '20'
    ),
    ('939', 'Brickyard Road', '21'),
    ('940', 'Shanty', '22'),
    ('941', 'Roadrunner', '23'),
    (
        '942',
        'Any Way You Want It',
        '24'
    ),
    (
        '943',
        'City of the Angels',
        '25'
    ),
    (
        '944',
        'Don t Stop Believin ',
        '26'
    ),
    ('945', 'Escape', '27'),
    ('946', 'Faithfully', '28'),
    (
        '947',
        'Feeling That Way',
        '29'
    ),
    (
        '948',
        'Just the Same Way',
        '30'
    ),
    ('949', 'Lights', '31'),
    (
        '950',
        'Look Into The Future',
        '32'
    ),
    (
        '951',
        'Lovin , Touchin  Squeezin',
        '33'
    ),
    ('952', 'Only the Young', '34'),
    ('953', 'Open Arms', '35'),
    (
        '954',
        'Send Her My Love',
        '36'
    ),
    (
        '955',
        'Separate Ways (Worlds Apart)',
        '37'
    ),
    ('956', 'Stone In Love', '38'),
    (
        '957',
        'Wheel in the Sky',
        '39'
    ),
    (
        '958',
        'Who s Crying Now',
        '40'
    ),
    (
        '959',
        'Breaking The Law',
        '41'
    ),
    (
        '960',
        'Diamonds And Rust',
        '42'
    ),
    ('961', 'Electric Eye', '43'),
    (
        '962',
        'Heading Out To The Highway',
        '44'
    ),
    ('963', 'Hot Rockin ', '45'),
    (
        '964',
        'Living After Midnight',
        '46'
    ),
    ('965', 'The Ripper', '47'),
    ('966', 'Turbo Lover', '48'),
    (
        '967',
        'You ve Got Another Thing Comin ',
        '49'
    ),
    ('968', 'Simple Man', '50'),
    (
        '969',
        'Carry On Wayward Son',
        '51'
    ),
    ('970', 'Dust In The Wind', '1'),
    (
        '971',
        'Play the Game Tonight',
        '2'
    ),
    (
        '972',
        'Point of Know Return',
        '3'
    ),
    ('973', 'I m Alright', '4'),
    ('974', 'Just Dropped In', '5'),
    ('975', 'Blue On Black', '6'),
    (
        '976',
        'Somehow, Somewhere, Someway   ',
        '7'
    ),
    ('977', 'All Summer Long', '8'),
    ('978', 'Cowboy', '9'),
    ('979', 'Let s Ride', '10'),
    ('980', 'If I Say', '11'),
    ('981', 'Sex On Fire', '12'),
    ('982', 'Use Somebody', '13'),
    ('983', 'Beth', '14'),
    (
        '984',
        'Calling Dr. Love',
        '15'
    ),
    (
        '985',
        'Christeen Sixteen',
        '16'
    ),
    ('986', 'Cold Gin', '17'),
    (
        '987',
        'Detroit Rock City',
        '18'
    ),
    (
        '988',
        'Heaven s On Fire',
        '19'
    ),
    ('989', 'Lick It Up', '20'),
    (
        '990',
        'Rock And Roll All Nite',
        '21'
    ),
    (
        '991',
        'Shout It out Loud',
        '22'
    ),
    ('992', 'Strutter', '23'),
    (
        '993',
        'Tears Are Falling',
        '24'
    ),
    (
        '994',
        'Long Stick Goes Boom',
        '25'
    ),
    (
        '995',
        'Screaming In The Night',
        '26'
    ),
    (
        '996',
        'Stayed Awake All Night',
        '27'
    ),
    ('997', 'Sex Action', '28'),
    (
        '998',
        'Key To The Rhyme',
        '29'
    ),
    ('999', 'All My Love', '30'),
    (
        '1000',
        'Babe I m Gonna Leave You',
        '31'
    ),
    ('1001', 'Black Dog', '32'),
    (
        '1002',
        'Black Mountain Side',
        '33'
    ),
    (
        '1003',
        'Bonzo s Montreaux',
        '34'
    ),
    (
        '1004',
        'Boogie With Stu',
        '35'
    ),
    (
        '1005',
        'Bring It On Home',
        '36'
    ),
    (
        '1006',
        'Bron-y-aur Stomp',
        '37'
    ),
    (
        '1007',
        'Celebration Day',
        '38'
    ),
    (
        '1008',
        'Communication Breakdown',
        '39'
    ),
    ('1009', 'Custard Pie', '40'),
    ('1010', 'D Yer Mak er', '41'),
    ('1011', 'Dancing Days', '42'),
    ('1012', 'Darlene', '43'),
    (
        '1013',
        'Dazed and Confused',
        '44'
    ),
    (
        '1014',
        'Down By The Seaside',
        '45'
    ),
    (
        '1015',
        'Fool In the Rain',
        '46'
    ),
    ('1016', 'For Your Life', '47'),
    ('1017', 'Four Sticks', '48'),
    ('1018', 'Friends', '49'),
    ('1019', 'Gallows Pole', '50'),
    (
        '1020',
        'Going to California',
        '51'
    ),
    (
        '1021',
        'Good Times Bad Times',
        '1'
    ),
    (
        '1022',
        'Hats Off To {roy} Harper',
        '2'
    ),
    (
        '1023',
        'Heartbreaker/living Loving Maid {she s Just A Woman}',
        '3'
    ),
    (
        '1024',
        'Hey Hey What Can I Do',
        '4'
    ),
    ('1025', 'Hot Dog', '5'),
    (
        '1026',
        'Houses of the Holy',
        '6'
    ),
    (
        '1027',
        'How Many More Times',
        '7'
    ),
    (
        '1028',
        'I Can t Quit You Baby',
        '8'
    ),
    ('1029', 'Immigrant Song', '9'),
    (
        '1030',
        'In My Time of Dying',
        '10'
    ),
    ('1031', 'In the Evening', '11'),
    ('1032', 'In the Light', '12'),
    ('1033', 'Kashmir', '13'),
    (
        '1034',
        'Living Loving Maid (She s Just a Woman)',
        '14'
    ),
    (
        '1035',
        'Misty Mountain Hop',
        '15'
    ),
    ('1036', 'Moby Dick', '16'),
    ('1037', 'NIGHT FLIGHT', '17'),
    ('1038', 'No Quarter', '18'),
    (
        '1039',
        'Nobody s Fault But Mine',
        '19'
    ),
    (
        '1040',
        'Out On The Tiles',
        '20'
    ),
    (
        '1041',
        'Over the Hills and Far Away',
        '21'
    ),
    ('1042', 'Ramble On', '22'),
    ('1043', 'Rock and Roll', '23'),
    ('1044', 'Royal Orleans', '24'),
    (
        '1045',
        'Since I ve Been Loving You',
        '25'
    ),
    (
        '1046',
        'South Bound Saurez',
        '26'
    ),
    (
        '1047',
        'Stairway to Heaven',
        '27'
    ),
    ('1048', 'TANGERINE', '28'),
    ('1049', 'Ten Years Gone', '29'),
    ('1050', 'Thank You', '30'),
    ('1051', 'That s the Way', '31'),
    (
        '1052',
        'The Battle Of Evermore',
        '32'
    ),
    ('1053', 'The Crunge', '33'),
    ('1054', 'The Lemon Song', '34'),
    ('1055', 'The Ocean', '35'),
    ('1056', 'The Rain Song', '36'),
    ('1057', 'The Rover', '37'),
    (
        '1058',
        'The Song Remains the Same',
        '38'
    ),
    (
        '1059',
        'THE WANTON SONG',
        '39'
    ),
    (
        '1060',
        'Trampled Under Foot',
        '40'
    ),
    (
        '1061',
        'Traveling Riverside Blues',
        '41'
    ),
    (
        '1062',
        'What Is and What Should Never Be',
        '42'
    ),
    (
        '1063',
        'When The Levee Breaks',
        '43'
    ),
    (
        '1064',
        'Whole Lotta Love',
        '44'
    ),
    ('1065', 'You Shook Me', '45'),
    (
        '1066',
        'Your Time Is Gonna Come',
        '46'
    ),
    (
        '1067',
        'Do You Know What I Mean',
        '47'
    ),
    ('1068', 'Woman', '48'),
    ('1069', 'American Woman', '49'),
    (
        '1070',
        'Are You Gonna Go My Way',
        '50'
    ),
    ('1071', 'Fly Away', '51'),
    (
        '1072',
        'Stranger In A Strange Land',
        '1'
    ),
    (
        '1073',
        'My Own Worst Enemy',
        '2'
    ),
    (
        '1074',
        'Close My Eyes Forever',
        '3'
    ),
    ('1075', 'Kiss Me Deadly', '4'),
    (
        '1076',
        'All That You Dream',
        '5'
    ),
    ('1077', 'Dixie Chicken', '6'),
    ('1078', 'I Alone', '7'),
    (
        '1079',
        'Lightning Crashes',
        '8'
    ),
    (
        '1080',
        'Cult Of Personality',
        '9'
    ),
    (
        '1081',
        'Bound for the Floor',
        '10'
    ),
    ('1082', 'Conquistador', '11'),
    ('1083', 'Midnight Blue', '12'),
    (
        '1084',
        'Sweet Jane (Live)',
        '13'
    ),
    (
        '1085',
        'Walk On The Wild Side',
        '14'
    ),
    (
        '1086',
        'Lovin  Every Minute of It',
        '15'
    ),
    (
        '1087',
        'The Kid Is Hot Tonite',
        '16'
    ),
    ('1088', 'Turn Me Loose', '17'),
    (
        '1089',
        'Working for the Weekend',
        '18'
    ),
    (
        '1090',
        'Wicked Sensation',
        '19'
    ),
    (
        '1091',
        'Call Me the Breeze',
        '20'
    ),
    (
        '1092',
        'Dixie/Sweet Home Alabama',
        '21'
    ),
    (
        '1093',
        'Don t Ask Me No Questions',
        '22'
    ),
    ('1094', 'Free Bird', '23'),
    (
        '1095',
        'Gimme Back My Bullets',
        '24'
    ),
    (
        '1096',
        'Gimme Three Steps',
        '25'
    ),
    (
        '1097',
        'I Know a Little',
        '26'
    ),
    (
        '1098',
        'Saturday Night Special',
        '27'
    ),
    ('1099', 'Simple Man', '28'),
    (
        '1100',
        'Sweet Home Alabama',
        '29'
    ),
    ('1101', 'That Smell', '30'),
    (
        '1102',
        'The Ballad Of Curtis Loew',
        '31'
    ),
    ('1103', 'Tuesday s Gone', '32'),
    (
        '1104',
        'What s Your Name',
        '33'
    ),
    (
        '1105',
        'You Got That Right',
        '34'
    ),
    ('1106', 'Merry-Go-Round', '35'),
    (
        '1107',
        'Blinded by the Light',
        '36'
    ),
    (
        '1108',
        'Do Wah Diddy Diddy',
        '37'
    ),
    ('1109', 'Sex and Candy', '38'),
    (
        '1110',
        'Paradise By The Dashboard Light',
        '39'
    ),
    (
        '1111',
        'TWO OUT OF THREE AIN T BAD',
        '40'
    ),
    (
        '1112',
        'You Took The Words Right Out Of My Mouth',
        '41'
    ),
    (
        '1113',
        'I m the Only One',
        '42'
    ),
    ('1114', 'Down Under', '43'),
    (
        '1115',
        'Who Can It Be Now?',
        '44'
    ),
    ('1116', 'Breadfan', '45'),
    ('1117', 'Enter Sandman', '46'),
    ('1118', 'Fade To Black', '47'),
    (
        '1119',
        'For Whom The Bell Tolls',
        '48'
    ),
    ('1120', 'Fuel', '49'),
    (
        '1121',
        'Harvester Of Sorrow',
        '50'
    ),
    (
        '1122',
        'Hero of the Day',
        '51'
    ),
    (
        '1123',
        'Lords of Summer (First Pass Version)',
        '1'
    ),
    (
        '1124',
        'Master of Puppets',
        '2'
    ),
    ('1125', 'No Leaf Clover', '3'),
    (
        '1126',
        'Nothing Else Matters',
        '4'
    ),
    ('1127', 'One', '5'),
    ('1128', 'Sad But True', '6'),
    ('1129', 'Seek & Destroy', '7'),
    (
        '1130',
        'The Memory Remains',
        '8'
    ),
    ('1131', 'The Unforgiven', '9'),
    ('1132', 'Turn The Page', '10'),
    (
        '1133',
        'Until It Sleeps',
        '11'
    ),
    (
        '1134',
        'Wherever I May Roam',
        '12'
    ),
    (
        '1135',
        'Whiskey In The Jar',
        '13'
    ),
    ('1136', 'Cruisin ', '14'),
    (
        '1137',
        'Drinkin  in the Driveway',
        '15'
    ),
    (
        '1138',
        'He Can t Love You',
        '16'
    ),
    (
        '1139',
        'Let s Get the Show on the Road',
        '17'
    ),
    ('1140', 'My Town', '18'),
    (
        '1141',
        'Rosewood Bitters',
        '19'
    ),
    (
        '1142',
        'Strike up the Band',
        '20'
    ),
    (
        '1143',
        'Beds Are Burning',
        '21'
    ),
    (
        '1144',
        'Devil With the Blue Dress On',
        '22'
    ),
    (
        '1145',
        'I Melt With You',
        '23'
    ),
    ('1146', 'Sugar Boogie', '24'),
    (
        '1147',
        'Dreams I ll Never See',
        '25'
    ),
    (
        '1148',
        'Flirtin  With Disaster',
        '26'
    ),
    (
        '1149',
        'What Do All The People Know',
        '27'
    ),
    (
        '1150',
        'Bad Motor Scooter',
        '28'
    ),
    ('1151', 'Rock Candy', '29'),
    (
        '1152',
        'Space Station #5',
        '30'
    ),
    (
        '1153',
        'Don t Go Away Mad (Just Go Away)',
        '31'
    ),
    ('1154', 'Dr. Feelgood', '32'),
    (
        '1155',
        'Girls, Girls, Girls   ',
        '33'
    ),
    (
        '1156',
        'Home Sweet Home',
        '34'
    ),
    (
        '1157',
        'Kickstart My Heart',
        '35'
    ),
    (
        '1158',
        'Looks That Kill',
        '36'
    ),
    (
        '1159',
        'Piece of Your Action',
        '37'
    ),
    (
        '1160',
        'Same Ol  Situation',
        '38'
    ),
    (
        '1161',
        'Shout at the Devil',
        '39'
    ),
    (
        '1162',
        'Smokin  in the Boys Room',
        '40'
    ),
    ('1163', 'Wild Side', '41'),
    (
        '1164',
        'All the Young Dudes',
        '42'
    ),
    (
        '1165',
        'Mississippi Queen',
        '43'
    ),
    ('1166', 'Moon Rider', '44'),
    (
        '1167',
        'Addicted To That Rush',
        '45'
    ),
    (
        '1168',
        'In the Summertime',
        '46'
    ),
    (
        '1169',
        'Hair Of The Dog',
        '47'
    ),
    ('1170', 'Love Hurts', '48'),
    ('1171', 'Cinnamon Girl', '49'),
    (
        '1172',
        'Down by the River',
        '50'
    ),
    (
        '1173',
        'Everybody Knows This Is Nowhere',
        '51'
    ),
    ('1174', 'Heart of Gold', '1'),
    (
        '1175',
        'Hey Hey, My My   ',
        '2'
    ),
    (
        '1176',
        'Like a Hurricane',
        '3'
    ),
    (
        '1177',
        'My My, Hey Hey   ',
        '4'
    ),
    ('1178', 'Old Man', '5'),
    ('1179', 'Powderfinger', '6'),
    (
        '1180',
        'Rockin  In the Free World',
        '7'
    ),
    ('1181', 'Southern Man', '8'),
    ('1182', 'Sugar Mountain', '9'),
    (
        '1183',
        'The Needle and the Damage Done',
        '10'
    ),
    (
        '1184',
        'When You Dance I Can Really Love',
        '11'
    ),
    (
        '1185',
        'Show Me The Way',
        '12'
    ),
    (
        '1186',
        'How You Remind Me',
        '13'
    ),
    ('1187', 'Photograph', '14'),
    ('1188', 'Rockstar', '15'),
    (
        '1189',
        'Someday (Single Mix)',
        '16'
    ),
    (
        '1190',
        '(You Can Still) Rock in America',
        '17'
    ),
    (
        '1191',
        'Don t Tell Me You Love Me',
        '18'
    ),
    (
        '1192',
        'Rumors In The Air',
        '19'
    ),
    (
        '1193',
        'Sister Christian',
        '20'
    ),
    (
        '1194',
        'When You Close Your Eyes',
        '21'
    ),
    ('1195', 'About a Girl', '22'),
    ('1196', 'All Apologies', '23'),
    (
        '1197',
        'Come As You Are',
        '24'
    ),
    ('1198', 'Dumb', '25'),
    ('1199', 'In Bloom', '26'),
    ('1200', 'Lithium', '27'),
    ('1201', 'On a Plain', '28'),
    ('1202', 'Polly', '29'),
    (
        '1203',
        'Smells Like Teen Spirit',
        '30'
    ),
    (
        '1204',
        'The Man Who Sold the World',
        '31'
    ),
    (
        '1205',
        'Spirit In The Sky',
        '32'
    ),
    (
        '1206',
        'This Is The Time',
        '33'
    ),
    ('1207', 'Wonderwall', '34'),
    ('1208', 'STILL THE ONE', '35'),
    (
        '1209',
        '(Sittin  On) The Dock of the Bay',
        '36'
    ),
    (
        '1210',
        'If You Wanna Get to Heaven',
        '37'
    ),
    ('1211', 'Jackie Blue', '38'),
    (
        '1212',
        'Bark At The Moon',
        '39'
    ),
    ('1213', 'Changes', '40'),
    ('1214', 'Crazy Train', '41'),
    (
        '1215',
        'Diary Of A Madman',
        '42'
    ),
    (
        '1216',
        'Flying High Again',
        '43'
    ),
    (
        '1217',
        'Goodbye To Romance',
        '44'
    ),
    ('1218', 'I Don t Know', '45'),
    (
        '1219',
        'Mama, I m Coming Home   ',
        '46'
    ),
    ('1220', 'Mr. Crowley', '47'),
    (
        '1221',
        'Mr. Tinkertrain',
        '48'
    ),
    ('1222', 'No More Tears', '49'),
    (
        '1223',
        'Over the Mountain',
        '50'
    ),
    ('1224', 'Perry Mason', '51'),
    ('1225', 'Purple Haze', '1'),
    ('1226', 'Road To Nowhere', '2'),
    (
        '1227',
        'Rocky Mountain Way',
        '3'
    ),
    (
        '1228',
        'See You on the Other Side',
        '4'
    ),
    (
        '1229',
        'Shot in the Dark',
        '5'
    ),
    ('1230', 'Time After Time', '6'),
    ('1231', 'Fire and Ice', '7'),
    ('1232', 'Heartbreaker', '8'),
    (
        '1233',
        'Hell Is for Children',
        '9'
    ),
    (
        '1234',
        'Hit Me With Your Best Shot',
        '10'
    ),
    ('1235', 'Invincible', '11'),
    (
        '1236',
        'Love Is A Battlefield',
        '12'
    ),
    (
        '1237',
        'Shadows Of The Night',
        '13'
    ),
    ('1238', 'Treat Me Right', '14'),
    ('1239', 'We Belong', '15'),
    ('1240', 'You Better Run', '16'),
    ('1241', 'Boom Boom/', '17'),
    (
        '1242',
        'Snortin Whiskey',
        '18'
    ),
    (
        '1243',
        'The Back Seat Of My Car',
        '19'
    ),
    (
        '1244',
        'Too Many People',
        '20'
    ),
    (
        '1245',
        'Uncle Albert/Admiral Halsey',
        '21'
    ),
    ('1246', 'Another Day', '22'),
    (
        '1247',
        'Band on the Run',
        '23'
    ),
    (
        '1248',
        'Birthday (Live)',
        '24'
    ),
    ('1249', 'Coming Up', '25'),
    ('1250', 'Day Tripper', '26'),
    ('1251', 'Helen Wheels', '27'),
    ('1252', 'Hello Goodbye', '28'),
    ('1253', 'Helter Skelter', '29'),
    (
        '1254',
        'Hey Jude (Live)',
        '30'
    ),
    ('1255', 'Hi Hi Hi', '31'),
    ('1256', 'Jet', '32'),
    ('1257', 'Junior s Farm', '33'),
    ('1258', 'Let  Em In', '34'),
    ('1259', 'Let Me Roll It', '35'),
    (
        '1260',
        'Listen To What The Man Says',
        '36'
    ),
    (
        '1261',
        'Live and Let Die',
        '37'
    ),
    (
        '1262',
        'Maybe I m Amazed',
        '38'
    ),
    ('1263', 'My Love', '39'),
    (
        '1264',
        'Nineteen Hundred and Eighty Five',
        '40'
    ),
    (
        '1265',
        'Silly Love Songs',
        '41'
    ),
    (
        '1266',
        'Uncle Albert/Admiral Halsey',
        '42'
    ),
    (
        '1267',
        'Venus and Mars/Rock Show',
        '43'
    ),
    (
        '1268',
        'With a Little Luck',
        '44'
    ),
    (
        '1269',
        '50 Ways to Leave Your Lover',
        '45'
    ),
    ('1270', 'Kodachrome', '46'),
    (
        '1271',
        'Loves Me Like a Rock',
        '47'
    ),
    (
        '1272',
        'Me And Julio Down By The Schoolyard',
        '48'
    ),
    (
        '1273',
        'You Can Call Me Al',
        '49'
    ),
    ('1274', 'Alive', '50'),
    ('1275', 'Better Man', '51'),
    ('1276', 'Black', '1'),
    ('1277', 'Daughter', '2'),
    ('1278', 'Dissident', '3'),
    (
        '1279',
        'Elderly Woman Behind the Counter in a Small Town',
        '4'
    ),
    ('1280', 'Even Flow', '5'),
    ('1281', 'Jeremy', '6'),
    ('1282', 'Last Kiss', '7'),
    ('1283', 'Lightning Bolt', '8'),
    ('1284', 'Not for You', '9'),
    ('1285', 'Sirens', '10'),
    (
        '1286',
        'Yellow Ledbetter',
        '11'
    ),
    ('1287', 'GONNA GET YA', '12'),
    (
        '1288',
        'Let My Love Open the Door',
        '13'
    ),
    ('1289', 'Rough Boys', '14'),
    (
        '1290',
        'Baby, I Love Your Way   ',
        '15'
    ),
    (
        '1291',
        'Do You Feel Like We Do',
        '16'
    ),
    (
        '1292',
        'Show Me the Way',
        '17'
    ),
    (
        '1293',
        'Something s Happening/',
        '18'
    ),
    ('1294', 'Big Time', '19'),
    (
        '1295',
        'Games Without Frontiers',
        '20'
    ),
    ('1296', 'In Your Eyes', '21'),
    ('1297', 'Red Rain', '22'),
    (
        '1298',
        'SHOCK THE MONKEY',
        '23'
    ),
    ('1299', 'Sledgehammer', '24'),
    ('1300', 'Solsbury Hill', '25'),
    (
        '1301',
        'Don t Lose My Number',
        '26'
    ),
    (
        '1302',
        'I Don t Care Anymore',
        '27'
    ),
    (
        '1303',
        'In the Air Tonight',
        '28'
    ),
    (
        '1304',
        'Another Brick In The Wall',
        '29'
    ),
    (
        '1305',
        'Another Brick in the Wall, Pt. 2   ',
        '30'
    ),
    (
        '1306',
        'Any Colour You Like',
        '31'
    ),
    ('1307', 'Arnold Layne', '32'),
    (
        '1308',
        'Astronomy Domine',
        '33'
    ),
    ('1309', 'Brain Damage', '34'),
    (
        '1310',
        'Brain Damage /Eclipse',
        '35'
    ),
    ('1311', 'Breathe', '36'),
    (
        '1312',
        'Careful With That Axe, Eugene   ',
        '37'
    ),
    (
        '1313',
        'Comfortably Numb',
        '38'
    ),
    ('1314', 'Dogs', '39'),
    ('1315', 'Empty Spaces', '40'),
    (
        '1316',
        'Empty Spaces/young Lust',
        '41'
    ),
    ('1317', 'Fearless', '42'),
    (
        '1318',
        'Goodbye Blue Sky',
        '43'
    ),
    ('1319', 'Have a Cigar', '44'),
    ('1320', 'Hey You', '45'),
    ('1321', 'Keep Talking', '46'),
    (
        '1322',
        'Learning to Fly',
        '47'
    ),
    ('1323', 'Money', '48'),
    ('1324', 'Mother', '49'),
    (
        '1325',
        'On The Turning Away',
        '50'
    ),
    (
        '1326',
        'One Of These Days',
        '51'
    ),
    ('1327', 'One Slip', '1'),
    ('1328', 'Run Like Hell', '2'),
    ('1329', 'See Emily Play', '3'),
    (
        '1330',
        'Set The Controls For The Heart Of The Sun',
        '4'
    ),
    (
        '1331',
        'Shine On You Crazy Diamond',
        '5'
    ),
    (
        '1332',
        'Speak to Me/Breathe',
        '6'
    ),
    ('1333', 'Take It Back', '7'),
    ('1334', 'The Dogs Of War', '8'),
    (
        '1335',
        'The Great Gig In the Sky',
        '9'
    ),
    (
        '1336',
        'The Happiest Days Of Our Lives/another Brick In The Wall',
        '10'
    ),
    ('1337', 'Time', '11'),
    (
        '1338',
        'Time/Gig in The Sky',
        '12'
    ),
    ('1339', 'Us and Them', '13'),
    (
        '1340',
        'Welcome To The Machine',
        '14'
    ),
    (
        '1341',
        'Wish You Were Here',
        '15'
    ),
    ('1342', 'Young Lust', '16'),
    (
        '1343',
        'Every Rose Has Its Thorn',
        '17'
    ),
    (
        '1344',
        'Look What The Cat Dragged In',
        '18'
    ),
    (
        '1345',
        'Nothin  But A Good Time',
        '19'
    ),
    (
        '1346',
        'Something To Believe In',
        '20'
    ),
    (
        '1347',
        'Talk Dirty To Me',
        '21'
    ),
    ('1348', 'A Salty Dog', '22'),
    (
        '1349',
        'A Whiter Shade of Pale',
        '23'
    ),
    ('1350', 'Blurry', '24'),
    ('1351', 'Amie', '25'),
    (
        '1352',
        'Another One Bites the Dust',
        '26'
    ),
    ('1353', 'Bicycle Race', '27'),
    (
        '1354',
        'Bicycle Race/fat Bottomed Girls',
        '28'
    ),
    (
        '1355',
        'Bohemian Rhapsody',
        '29'
    ),
    (
        '1356',
        'Crazy Little Thing Called Love',
        '30'
    ),
    (
        '1357',
        'Don t Stop Me Now',
        '31'
    ),
    (
        '1358',
        'Fat Bottomed Girls',
        '32'
    ),
    ('1359', 'It s Late', '33'),
    (
        '1360',
        'Keep Yourself Alive',
        '34'
    ),
    ('1361', 'Killer Queen', '35'),
    ('1362', 'One Vision', '36'),
    (
        '1363',
        'Somebody To Love',
        '37'
    ),
    (
        '1364',
        'THESE ARE THE DAYS OF OUR LI',
        '38'
    ),
    (
        '1365',
        'Tie Your Mother Down',
        '39'
    ),
    ('1366', 'Under Pressure', '40'),
    (
        '1367',
        'We Are the Champions',
        '41'
    ),
    (
        '1368',
        'We Will Rock You',
        '42'
    ),
    (
        '1369',
        'We Will Rock You/We Are The Champions',
        '43'
    ),
    (
        '1370',
        'You re My Best Friend',
        '44'
    ),
    ('1371', 'Under Pressure', '45'),
    ('1372', 'No One Knows', '46'),
    (
        '1373',
        'Another Rainy Night',
        '47'
    ),
    (
        '1374',
        'Eyes Of A Stranger',
        '48'
    ),
    (
        '1375',
        'I Don t Believe In Love',
        '49'
    ),
    ('1376', 'Jet City Woman', '50'),
    (
        '1377',
        'Silent Lucidity',
        '51'
    ),
    ('1378', 'Fresh Air', '1'),
    ('1379', 'Pride of Man', '2'),
    ('1380', 'Bang Your Head', '3'),
    (
        '1381',
        'Cum On Feel the Noize',
        '4'
    ),
    ('1382', 'Metal Health', '5'),
    (
        '1383',
        'It s the End of the World As We Know It (And I Feel Fine)',
        '6'
    ),
    (
        '1384',
        'Losing My Religion',
        '7'
    ),
    ('1385', 'Man On the Moon', '8'),
    ('1386', 'Orange Crush', '9'),
    ('1387', 'Stand', '10'),
    ('1388', 'The One I Love', '11'),
    (
        '1389',
        'Man On The Silver Mountain',
        '12'
    ),
    (
        '1390',
        'Since You Been Gone',
        '13'
    ),
    ('1391', 'Stone Cold', '14'),
    (
        '1392',
        'Street Of Dreams',
        '15'
    ),
    ('1393', 'Black Betty', '16'),
    ('1394', 'Back for More', '17'),
    (
        '1395',
        'Round and Round',
        '18'
    ),
    ('1396', 'Way Cool Jr.', '19'),
    (
        '1397',
        'Breaking the Girl',
        '20'
    ),
    ('1398', 'By the Way', '21'),
    (
        '1399',
        'Californication',
        '22'
    ),
    (
        '1400',
        'Dani California',
        '23'
    ),
    ('1401', 'Give It Away', '24'),
    ('1402', 'Scar Tissue', '25'),
    (
        '1403',
        'Soul to Squeeze',
        '26'
    ),
    (
        '1404',
        'Under the Bridge',
        '27'
    ),
    ('1405', 'Lunatic Fringe', '28'),
    (
        '1406',
        'Back On The Road Again',
        '29'
    ),
    (
        '1407',
        'Don t Let Him Go',
        '30'
    ),
    ('1408', 'Golden Country', '31'),
    (
        '1409',
        'I Can t Fight This Feeling',
        '32'
    ),
    (
        '1410',
        'Keep On Loving You',
        '33'
    ),
    (
        '1411',
        'Keep Pushin   1977',
        '34'
    ),
    ('1412', 'Like You Do', '35'),
    (
        '1413',
        'Ridin  the Storm Out',
        '36'
    ),
    (
        '1414',
        'Roll With the Changes',
        '37'
    ),
    (
        '1415',
        'Take It on the Run',
        '38'
    ),
    (
        '1416',
        'Time For Me To Fly',
        '39'
    ),
    (
        '1417',
        'Rock And Roll, Hoochie Koo   ',
        '40'
    ),
    ('1418', 'Jessie s Girl', '41'),
    (
        '1419',
        'Back Off Boogaloo',
        '42'
    ),
    ('1420', 'Early 1970 [*]', '43'),
    (
        '1421',
        'It Don t Come Easy',
        '44'
    ),
    ('1422', 'No No Song', '45'),
    ('1423', 'Photograph', '46'),
    (
        '1424',
        'Your re Sixteen',
        '47'
    ),
    (
        '1425',
        'Addicted to Love',
        '48'
    ),
    (
        '1426',
        'Bad Case Of Lovin  You',
        '49'
    ),
    (
        '1427',
        'Simply Irresistible',
        '50'
    ),
    ('1428', 'Big Log', '51'),
    ('1429', 'In The Mood', '1'),
    (
        '1430',
        'Little By Little',
        '2'
    ),
    ('1431', 'No Easy Way Out', '3'),
    ('1432', 'Bridge of Sighs', '4'),
    (
        '1433',
        'Little Bit of Sympathy',
        '5'
    ),
    (
        '1434',
        'Too Rolling Stoned',
        '6'
    ),
    ('1435', 'Oh, Well   ', '7'),
    (
        '1436',
        'Tired Of Toein  The Line',
        '8'
    ),
    (
        '1437',
        'Every Picture Tells A Story',
        '9'
    ),
    ('1438', 'Hot Legs', '10'),
    (
        '1439',
        'I Know I m Losing You',
        '11'
    ),
    ('1440', 'Maggie May', '12'),
    (
        '1441',
        'Reason to Believe',
        '13'
    ),
    ('1442', 'Stay with Me', '14'),
    (
        '1443',
        'The First Cut Is The Deepest',
        '15'
    ),
    (
        '1444',
        'Tonight s the Night (Gonna Be Alright)',
        '16'
    ),
    (
        '1445',
        'You Wear It Well',
        '17'
    ),
    (
        '1446',
        'You re In My Heart (The Final Acclaim)',
        '18'
    ),
    ('1447', 'Free Me', '19'),
    (
        '1448',
        'Had a Dream (Sleeping With the Enemy)',
        '20'
    ),
    (
        '1449',
        'The Logical Song',
        '21'
    ),
    (
        '1450',
        '(I Can t Get No) Satisfaction',
        '22'
    ),
    (
        '1451',
        '19th Nervous Breakdown',
        '23'
    ),
    (
        '1452',
        'Ain t Too Proud to Beg',
        '24'
    ),
    (
        '1453',
        'Almost Hear You Sigh',
        '25'
    ),
    ('1454', 'Angie', '26'),
    (
        '1455',
        'Beast Of Burden',
        '27'
    ),
    ('1456', 'Bitch', '28'),
    ('1457', 'Brown Sugar', '29'),
    (
        '1458',
        'Can t You Hear Me Knocking',
        '30'
    ),
    ('1459', 'CAROL', '31'),
    (
        '1460',
        'Da Da Doo Ron Ron',
        '32'
    ),
    (
        '1461',
        'Dance Little Sister',
        '33'
    ),
    (
        '1462',
        'Doo Doo Doo Doo Doo (Heartbreaker)',
        '34'
    ),
    ('1463', 'Doom And Gloom', '35'),
    (
        '1464',
        'Emotional Rescue',
        '36'
    ),
    ('1465', 'Fortune Teller', '37'),
    (
        '1466',
        'Get Off My Cloud',
        '38'
    ),
    (
        '1467',
        'Get Off Of My Cloud',
        '39'
    ),
    ('1468', 'Gimme Shelter', '40'),
    ('1469', 'Hand of Fate', '41'),
    ('1470', 'Hang Fire', '42'),
    ('1471', 'Happy', '43'),
    ('1472', 'Heartbreaker', '44'),
    (
        '1473',
        'Honky Tonk Women',
        '45'
    ),
    (
        '1474',
        'IT S ALL OVER NOW',
        '46'
    ),
    (
        '1475',
        'It s Only Rock  n Roll',
        '47'
    ),
    (
        '1476',
        'Jumpin  Jack Flash',
        '48'
    ),
    (
        '1477',
        'Just My Imagination',
        '49'
    ),
    ('1478', 'Let It Bleed', '50'),
    (
        '1479',
        'Let s Spend the Night Together',
        '51'
    ),
    (
        '1480',
        'Like A Rolling Stone',
        '1'
    ),
    ('1481', 'Little Queenie', '2'),
    (
        '1482',
        'Midnight Rambler',
        '3'
    ),
    ('1483', 'Miss You', '4'),
    ('1484', 'Monkey Man', '5'),
    (
        '1485',
        'Mother s Little Helper',
        '6'
    ),
    ('1486', 'Paint It Black', '7'),
    ('1487', 'Shattered', '8'),
    ('1488', 'She s a Rainbow', '9'),
    ('1489', 'She s So Cold', '10'),
    ('1490', 'Start Me Up', '11'),
    (
        '1491',
        'Street Fighting Man',
        '12'
    ),
    (
        '1492',
        'Sympathy For The Devil',
        '13'
    ),
    ('1493', 'THE LAST TIME', '14'),
    (
        '1494',
        'THE SPIDER AND THE FLY',
        '15'
    ),
    (
        '1495',
        'TIME IS ON MY SIDE',
        '16'
    ),
    (
        '1496',
        'Time Waits for No One',
        '17'
    ),
    ('1497', 'Tumbling Dice', '18'),
    ('1498', 'Under My Thumb', '19'),
    (
        '1499',
        'UNDERCOVER OF THE NIGHT',
        '20'
    ),
    (
        '1500',
        'Waiting on a Friend',
        '21'
    ),
    ('1501', 'Wild Horses', '22'),
    (
        '1502',
        'You Can t Always Get What You Want',
        '23'
    ),
    (
        '1503',
        'YOU GOT THE SILVER',
        '24'
    ),
    ('1504', 'YOU GOTTA MOVE', '25'),
    ('1505', 'Bullfrog Blues', '26'),
    ('1506', 'Cry Sister', '27'),
    (
        '1507',
        '2112: Overture / The Temples of Syrinx (Chronicles Version)',
        '28'
    ),
    (
        '1508',
        'Closer to the Heart',
        '29'
    ),
    ('1509', 'Entre Nous', '30'),
    ('1510', 'Finding My Way', '31'),
    ('1511', 'Fly By Night', '32'),
    ('1512', 'Freewill', '33'),
    ('1513', 'In The Mood', '34'),
    ('1514', 'Limelight', '35'),
    ('1515', 'New World Man', '36'),
    ('1516', 'Red Barchetta', '37'),
    (
        '1517',
        'Show Don t Tell',
        '38'
    ),
    ('1518', 'Subdivisions', '39'),
    (
        '1519',
        'Summertime Blues',
        '40'
    ),
    ('1520', 'Test For Echo', '41'),
    (
        '1521',
        'The Spirit of Radio',
        '42'
    ),
    ('1522', 'The Trees', '43'),
    (
        '1523',
        'Time Stand Still (live)',
        '44'
    ),
    ('1524', 'Tom Sawyer', '45'),
    ('1525', 'Working Man', '46'),
    ('1526', 'YYZ', '47'),
    ('1527', 'Voices', '48'),
    ('1528', 'On The Loose', '49'),
    ('1529', 'SOUL MAN', '50'),
    (
        '1530',
        'Can t Get Loose',
        '51'
    ),
    ('1531', 'Heavy Metal', '1'),
    (
        '1532',
        'I Can t Drive 55',
        '2'
    ),
    (
        '1533',
        'I ll Fall In Love Again',
        '3'
    ),
    ('1534', 'Plain Jane', '4'),
    ('1535', 'Red', '5'),
    (
        '1536',
        'There s Only One Way to Rock',
        '6'
    ),
    ('1537', 'Three Lock Box', '7'),
    (
        '1538',
        'Trans Am (Highway Wonderland)',
        '8'
    ),
    (
        '1539',
        'Turn Up The Music  1977',
        '9'
    ),
    (
        '1540',
        'Black Magic Woman',
        '10'
    ),
    ('1541', 'Europa', '11'),
    ('1542', 'Evil Ways', '12'),
    ('1543', 'Jingo', '13'),
    (
        '1544',
        'No One to Depend On',
        '14'
    ),
    ('1545', 'Oye Como Va', '15'),
    (
        '1546',
        'Put Your Lights On (feat. Everlast)',
        '16'
    ),
    ('1547', 'Smooth', '17'),
    ('1548', 'Soul Sacrifice', '18'),
    ('1549', 'Well All Right', '19'),
    ('1550', 'Winning', '20'),
    ('1551', 'The Warrior', '21'),
    ('1552', '3 Strange Days', '22'),
    (
        '1553',
        'Big City Nights',
        '23'
    ),
    ('1554', 'Blackout', '24'),
    (
        '1555',
        'Don t Believe Her',
        '25'
    ),
    ('1556', 'Holiday', '26'),
    (
        '1557',
        'Loving You Sunday Morning',
        '27'
    ),
    (
        '1558',
        'No One Like You',
        '28'
    ),
    (
        '1559',
        'Rock You Like a Hurricane',
        '29'
    ),
    (
        '1560',
        'Still Loving You',
        '30'
    ),
    ('1561', 'The Zoo', '31'),
    ('1562', 'Wind Of Change', '32'),
    ('1563', 'Remedy', '33'),
    (
        '1564',
        'Words As Weapons',
        '34'
    ),
    (
        '1565',
        'God Save The Queen',
        '35'
    ),
    (
        '1566',
        'No Turning Back',
        '36'
    ),
    ('1567', 'Your re 19', '37'),
    ('1568', 'America', '38'),
    ('1569', 'Cecilia', '39'),
    ('1570', 'Mrs. Robinson', '40'),
    (
        '1571',
        'The Sounds Of Silence',
        '41'
    ),
    ('1572', 'Don t You', '42'),
    ('1573', '18 And Life', '43'),
    ('1574', 'I Remember You', '44'),
    (
        '1575',
        'Youth Gone Wild',
        '45'
    ),
    (
        '1576',
        'Fly To The Angels',
        '46'
    ),
    ('1577', 'All Star', '47'),
    (
        '1578',
        'Always With You',
        '48'
    ),
    (
        '1579',
        'Bullet With Butterfly Wings',
        '49'
    ),
    ('1580', 'Landslide', '50'),
    ('1581', 'Today', '51'),
    ('1582', 'Driver s Seat', '1'),
    ('1583', 'Tainted Love', '2'),
    ('1584', 'Black Hole Sun', '3'),
    (
        '1585',
        'Burden in My Hand',
        '4'
    ),
    (
        '1586',
        'Fell On Black Days',
        '5'
    ),
    ('1587', 'Spoonman', '6'),
    ('1588', 'Havin  A Party', '7'),
    ('1589', 'The Fever', '8'),
    (
        '1590',
        'GIMME SOME LOVIN ',
        '9'
    ),
    ('1591', 'Two Princes', '10'),
    (
        '1592',
        'Black Coffee In Bed',
        '11'
    ),
    (
        '1593',
        'Pulling Mussels',
        '12'
    ),
    ('1594', 'Tempted', '13'),
    (
        '1595',
        'It s Been Awhile',
        '14'
    ),
    ('1596', 'My Demons', '15'),
    (
        '1597',
        'Stuck In the Middle With You',
        '16'
    ),
    ('1598', 'Black Cow', '17'),
    ('1599', 'Deacon Blues', '18'),
    ('1600', 'Dirty Work', '19'),
    ('1601', 'Do It Again', '20'),
    (
        '1602',
        'Fm {no Static At All}',
        '21'
    ),
    ('1603', 'Hey Nineteen', '22'),
    ('1604', 'Peg', '23'),
    (
        '1605',
        'Reelin  in the Years',
        '24'
    ),
    (
        '1606',
        'Rikki Don t Lose That Number',
        '25'
    ),
    (
        '1607',
        'Love the One You re With',
        '26'
    ),
    ('1608', 'Treetop Flyer', '27'),
    (
        '1609',
        'Born to Be Wild',
        '28'
    ),
    (
        '1610',
        'Magic Carpet Ride',
        '29'
    ),
    (
        '1611',
        'Copperhead Road',
        '30'
    ),
    ('1612', 'Abracadabra', '31'),
    (
        '1613',
        'Fly Like an Eagle',
        '32'
    ),
    ('1614', 'Jet Airliner', '33'),
    ('1615', 'Jungle Love', '34'),
    (
        '1616',
        'Living in the U.S.A.',
        '35'
    ),
    ('1617', 'Mercury Blues', '36'),
    ('1618', 'Rock  N Me', '37'),
    ('1619', 'Space Cowboy', '38'),
    ('1620', 'Swingtown', '39'),
    (
        '1621',
        'Take the Money and Run',
        '40'
    ),
    ('1622', 'The Joker', '41'),
    ('1623', 'The Stake', '42'),
    (
        '1624',
        'Threshold/Jet Airliner',
        '43'
    ),
    ('1625', 'True Fine Love', '44'),
    (
        '1626',
        'Your Cash Ain t Nothin But Trash',
        '45'
    ),
    ('1627', 'Oh Sherrie', '46'),
    (
        '1628',
        'Back In the High Life Again',
        '47'
    ),
    ('1629', 'Higher Love', '48'),
    ('1630', 'Roll With It', '49'),
    (
        '1631',
        'While You See a Chance',
        '50'
    ),
    (
        '1632',
        'Love The One You Re With',
        '51'
    ),
    (
        '1633',
        'Edge of Seventeen',
        '1'
    ),
    (
        '1634',
        'Leather and Lace',
        '2'
    ),
    ('1635', 'Stand Back', '3'),
    (
        '1636',
        'Stop Draggin  My Heart Around',
        '4'
    ),
    (
        '1637',
        'Stop Draggin  My Heart Around',
        '5'
    ),
    ('1638', 'Cold Shot', '6'),
    (
        '1639',
        'Couldn t Stand the Weather',
        '7'
    ),
    ('1640', 'Crossfire', '8'),
    (
        '1641',
        'Life by the Drop',
        '9'
    ),
    ('1642', 'Little Wing', '10'),
    (
        '1643',
        'Look At Little Sister',
        '11'
    ),
    ('1644', 'Pride And Joy', '12'),
    (
        '1645',
        'Scuttle Buttin ',
        '13'
    ),
    (
        '1646',
        'Superstition [Live]',
        '14'
    ),
    ('1647', 'Taxman', '15'),
    ('1648', 'Texas Flood', '16'),
    (
        '1649',
        'The House Is Rockin ',
        '17'
    ),
    (
        '1650',
        'The Sky Is Crying',
        '18'
    ),
    ('1651', 'Tightrope', '19'),
    (
        '1652',
        'Voodoo Chile {slight Return}',
        '20'
    ),
    ('1653', 'Superstition', '21'),
    (
        '1654',
        'Fortress Around Your Heart',
        '22'
    ),
    (
        '1655',
        'If You Love Somebody Set Them Free',
        '23'
    ),
    ('1656', 'Big Empty', '24'),
    ('1657', 'Creep', '25'),
    (
        '1658',
        'Interstate Love Song',
        '26'
    ),
    (
        '1659',
        'Lady Picture Show',
        '27'
    ),
    ('1660', 'Plush', '28'),
    ('1661', 'Sex Type Thing', '29'),
    (
        '1662',
        'Trippin  on a Hole in a Paper Heart',
        '30'
    ),
    ('1663', 'Vasoline', '31'),
    ('1664', 'Rock This Town', '32'),
    (
        '1665',
        'Stray Cat Strut',
        '33'
    ),
    (
        '1666',
        'To Hell With the Devil',
        '34'
    ),
    (
        '1667',
        'The Isle Of Debris',
        '35'
    ),
    (
        '1668',
        'Blue Collar Man',
        '36'
    ),
    ('1669', 'Come Sail Away', '37'),
    ('1670', 'Crystal Ball', '38'),
    (
        '1671',
        'Fooling Yourself',
        '39'
    ),
    ('1672', 'Lady', '40'),
    ('1673', 'Light Up', '41'),
    ('1674', 'Lorelei', '42'),
    ('1675', 'Renegade', '43'),
    (
        '1676',
        'Suite Madame Blue',
        '44'
    ),
    (
        '1677',
        'The Grand Illusion',
        '45'
    ),
    (
        '1678',
        'Too Much Time On My Hands',
        '46'
    ),
    ('1679', 'What I Got', '47'),
    ('1680', 'Wrong Way', '48'),
    ('1681', 'Fly', '49'),
    (
        '1682',
        'Green Eyed Lady',
        '50'
    ),
    (
        '1683',
        'Bloody Well Right',
        '51'
    ),
    (
        '1684',
        'Breakfast in America',
        '1'
    ),
    ('1685', 'Dreamer', '2'),
    (
        '1686',
        'Give a Little Bit',
        '3'
    ),
    (
        '1687',
        'Goodbye Stranger',
        '4'
    ),
    (
        '1688',
        'Take the Long Way Home',
        '5'
    ),
    (
        '1689',
        'The Logical Song',
        '6'
    ),
    (
        '1690',
        'Eye of the Tiger',
        '7'
    ),
    (
        '1691',
        'I Can t Hold Back',
        '8'
    ),
    ('1692', 'Ballroom Blitz', '9'),
    ('1693', 'Fox On The Run', '10'),
    (
        '1694',
        'Love Is Like Oxygen',
        '11'
    ),
    (
        '1695',
        'Bang a Gong (Get It On)',
        '12'
    ),
    ('1696', 'Jeepster', '13'),
    ('1697', 'And She Was', '14'),
    (
        '1698',
        'Burning Down the House',
        '15'
    ),
    (
        '1699',
        'Life During Wartime',
        '16'
    ),
    (
        '1700',
        'Once In A Lifetime',
        '17'
    ),
    ('1701', 'Psycho Killer', '18'),
    (
        '1702',
        'Road To Nowhere',
        '19'
    ),
    ('1703', 'Stay Up Late', '20'),
    (
        '1704',
        'Take Me To The River',
        '21'
    ),
    ('1705', 'Wild Wild Life', '22'),
    ('1706', 'I m Leaving', '23'),
    (
        '1707',
        'Everybody Wants to Rule the World',
        '24'
    ),
    (
        '1708',
        'Head Over Heels',
        '25'
    ),
    ('1709', 'Shout', '26'),
    (
        '1710',
        'Cat Scratch Fever',
        '27'
    ),
    ('1711', 'Dog Eat Dog', '28'),
    ('1712', 'Free for All', '29'),
    (
        '1713',
        'Great White Buffalo',
        '30'
    ),
    ('1714', 'Stranglehold', '31'),
    ('1715', 'Wango Tango', '32'),
    ('1716', 'Hunger Strike', '33'),
    (
        '1717',
        'I d Love To Change The World',
        '34'
    ),
    ('1718', 'I m Goin  Home', '35'),
    ('1719', 'Little Suzi', '36'),
    ('1720', 'Love Song', '37'),
    (
        '1721',
        'Modern Day Cowboy',
        '38'
    ),
    ('1722', 'Signs', '39'),
    ('1723', 'Breakdown', '40'),
    ('1724', 'Eye In the Sky', '41'),
    (
        '1725',
        'Games People Play',
        '42'
    ),
    (
        '1726',
        'I Wouldn t Want to Be Like You',
        '43'
    ),
    (
        '1727',
        'Rain In the Summertime',
        '44'
    ),
    (
        '1728',
        'Journey to the Center of the Mind',
        '45'
    ),
    (
        '1729',
        'Don t Bring Me Down',
        '46'
    ),
    (
        '1730',
        'House Of The Rising Sun',
        '47'
    ),
    ('1731', 'Monterey', '48'),
    (
        '1732',
        'San Franciscan Nights',
        '49'
    ),
    ('1733', 'Spill the Wine', '50'),
    ('1734', 'Love Shack', '51'),
    ('1735', 'Roam', '1'),
    (
        '1736',
        'Back On My Feet Again',
        '2'
    ),
    ('1737', 'Isn t It Time', '3'),
    ('1738', 'Chest Fever', '4'),
    (
        '1739',
        'The Night They Drove Old Dixie Down',
        '5'
    ),
    ('1740', 'The Weight', '6'),
    (
        '1741',
        'Up On Cripple Creek',
        '7'
    ),
    ('1742', 'Good Vibrations', '8'),
    (
        '1743',
        'A Day In The Life',
        '9'
    ),
    (
        '1744',
        'A Hard Day s Night',
        '10'
    ),
    (
        '1745',
        'A Saturday Club Xmas/Crimble Medley',
        '11'
    ),
    (
        '1746',
        'Across The Universe',
        '12'
    ),
    ('1747', 'All My Loving', '13'),
    (
        '1748',
        'All You Need Is Love',
        '14'
    ),
    (
        '1749',
        'And Your Bird Can Sing',
        '15'
    ),
    ('1750', 'ANYTIME AT ALL', '16'),
    (
        '1751',
        'Baby You re A Rich Man',
        '17'
    ),
    (
        '1752',
        'Back In the U.S.S.R.',
        '18'
    ),
    ('1753', 'BAD BOY', '19'),
    (
        '1754',
        'BALLAD OF JOHN AND YOKO',
        '20'
    ),
    ('1755', 'Birthday', '21'),
    ('1756', 'Blackbird', '22'),
    (
        '1757',
        'Can t Buy Me Love',
        '23'
    ),
    ('1758', 'Come Together', '24'),
    (
        '1759',
        'Cry For A Shadow',
        '25'
    ),
    ('1760', 'Day Tripper', '26'),
    ('1761', 'Dear Prudence', '27'),
    (
        '1762',
        'Don t Let Me Down',
        '28'
    ),
    ('1763', 'Drive My Car', '29'),
    (
        '1764',
        'Eight Days A Week',
        '30'
    ),
    ('1765', 'Eleanor Rigby', '31'),
    (
        '1766',
        'Everybody s Got Something To Hide Except Me And My Monk',
        '32'
    ),
    ('1767', 'Fixing A Hole', '33'),
    ('1768', 'From Me To You', '34'),
    ('1769', 'Get Back', '35'),
    ('1770', 'Getting Better', '36'),
    ('1771', 'GIRL', '37'),
    (
        '1772',
        'Golden Slumbers',
        '38'
    ),
    (
        '1773',
        'Good Day Sunshine',
        '39'
    ),
    (
        '1774',
        'Got To Get You Into My Life',
        '40'
    ),
    ('1775', 'Hello Goodbye', '41'),
    ('1776', 'Help!', '42'),
    ('1777', 'Helter Skelter', '43'),
    (
        '1778',
        'Here Comes The Sun',
        '44'
    ),
    ('1779', 'Hey Jude', '45'),
    (
        '1780',
        'I Am the Walrus',
        '46'
    ),
    ('1781', 'I Feel Fine', '47'),
    (
        '1782',
        'I Saw Her Standing There',
        '48'
    ),
    (
        '1783',
        'I Want To Hold Your Hand',
        '49'
    ),
    (
        '1784',
        'I Want You (She s So Heavy)',
        '50'
    ),
    (
        '1785',
        'I ll Follow The Sun',
        '51'
    ),
    ('1786', 'I m A Loser', '1'),
    ('1787', 'I m Down', '2'),
    (
        '1788',
        'I ve Got A Feeling',
        '3'
    ),
    (
        '1789',
        'I ve Just Seen A Face',
        '4'
    ),
    ('1790', 'IN MY LIFE', '5'),
    (
        '1791',
        'IT WON T BE LONG',
        '6'
    ),
    ('1792', 'Lady Madonna', '7'),
    ('1793', 'Let It Be', '8'),
    ('1794', 'LITTLE CHILD', '9'),
    ('1795', 'Love Me Do', '10'),
    ('1796', 'Lovely Rita', '11'),
    (
        '1797',
        'Lucy In The Sky With Diamonds',
        '12'
    ),
    (
        '1798',
        'Magical Mystery Tour',
        '13'
    ),
    (
        '1799',
        'Maxwell s Silver Hammer',
        '14'
    ),
    ('1800', 'Norwegian Wood', '15'),
    ('1801', 'NOWHERE MAN', '16'),
    (
        '1802',
        'Ob-la-di, Ob-la-da   ',
        '17'
    ),
    ('1803', 'OH DARLING', '18'),
    (
        '1804',
        'P.s. I Love You',
        '19'
    ),
    (
        '1805',
        'Paperback Writer',
        '20'
    ),
    ('1806', 'Penny Lane', '21'),
    (
        '1807',
        'Please Please Me',
        '22'
    ),
    (
        '1808',
        'Reprise / Day in the Life',
        '23'
    ),
    ('1809', 'Revolution', '24'),
    (
        '1810',
        'ROCK AND ROLL MUSIC',
        '25'
    ),
    ('1811', 'Rocky Raccoon', '26'),
    (
        '1812',
        'Roll Over Beethoven',
        '27'
    ),
    (
        '1813',
        'Sgt. Pepper Inner Groove',
        '28'
    ),
    (
        '1814',
        'Sgt. Pepper s Lonely Hearts Club Band',
        '29'
    ),
    (
        '1815',
        'Sgt. Pepper s Lonely Hearts Club Band (Reprise)',
        '30'
    ),
    (
        '1816',
        'Sgt. Pepper/a Day In The Life',
        '31'
    ),
    (
        '1817',
        'Sgt. Pepper/with A Little Help From My Friends',
        '32'
    ),
    ('1818', 'She Loves You', '33'),
    ('1819', 'SHE S A WOMAN', '34'),
    (
        '1820',
        'She s Leaving Home',
        '35'
    ),
    ('1821', 'Something', '36'),
    (
        '1822',
        'Strawberry Fields Forever',
        '37'
    ),
    ('1823', 'Sun King', '38'),
    (
        '1824',
        'The Ballad Of John And Yoko',
        '39'
    ),
    (
        '1825',
        'THE CONTINUING STORY OF BUNG',
        '40'
    ),
    (
        '1826',
        'The Fool On The Hill',
        '41'
    ),
    (
        '1827',
        'The Long And Winding Road',
        '42'
    ),
    ('1828', 'The Word', '43'),
    (
        '1829',
        'Things We Said Today',
        '44'
    ),
    ('1830', 'Ticket to Ride', '45'),
    (
        '1831',
        'Twist and Shout',
        '46'
    ),
    ('1832', 'Two Of Us', '47'),
    (
        '1833',
        'We Can Work It Out',
        '48'
    ),
    ('1834', 'When I m 64', '49'),
    (
        '1835',
        'While My Guitar Gently Weeps',
        '50'
    ),
    ('1836', 'Wild Honey Pie', '51'),
    (
        '1837',
        'With a Little Help From My Friends',
        '1'
    ),
    (
        '1838',
        'Yellow Submarine',
        '2'
    ),
    ('1839', 'Yesterday', '3'),
    (
        '1840',
        'You Never Give Me Your Money',
        '4'
    ),
    (
        '1841',
        'You re Going To Lose That Girl',
        '5'
    ),
    (
        '1842',
        'YOUR MOTHER SHOULD KNOW',
        '6'
    ),
    ('1843', 'A Conspiracy', '7'),
    ('1844', 'Gone', '8'),
    ('1845', 'Good Friday', '9'),
    (
        '1846',
        'Goodbye Daughters of the Revolution',
        '10'
    ),
    ('1847', 'Hard To Handle', '11'),
    ('1848', 'Hotel Illness', '12'),
    ('1849', 'Jealous Again', '13'),
    (
        '1850',
        'Kickin  My Heart Around',
        '14'
    ),
    ('1851', 'Remedy', '15'),
    (
        '1852',
        'She Talks To Angels',
        '16'
    ),
    (
        '1853',
        'Thorn In My Pride',
        '17'
    ),
    ('1854', 'Twice As Hard', '18'),
    (
        '1855',
        'Gold On The Ceiling',
        '19'
    ),
    ('1856', 'Lonely Boy', '20'),
    ('1857', 'Soul Man', '21'),
    (
        '1858',
        'Eight Miles High',
        '22'
    ),
    ('1859', 'Bye Bye Love', '23'),
    ('1860', 'Candy-o', '24'),
    (
        '1861',
        'Dangerious Type',
        '25'
    ),
    ('1862', 'Drive', '26'),
    (
        '1863',
        'Good Times Roll',
        '27'
    ),
    ('1864', 'Hello Again', '28'),
    (
        '1865',
        'It s All I Can Do',
        '29'
    ),
    (
        '1866',
        'Just What I Needed',
        '30'
    ),
    ('1867', 'Let s Go', '31'),
    ('1868', 'Magic', '32'),
    (
        '1869',
        'Moving In Stereo',
        '33'
    ),
    (
        '1870',
        'My Best Friend s Girl',
        '34'
    ),
    ('1871', 'Shake It Up', '35'),
    (
        '1872',
        'Since You re Gone',
        '36'
    ),
    (
        '1873',
        'Stereo/All Mixed Up',
        '37'
    ),
    (
        '1874',
        'Tonight She Comes',
        '38'
    ),
    (
        '1875',
        'You Might Think',
        '39'
    ),
    (
        '1876',
        'You re All I ve Got Tonight',
        '40'
    ),
    ('1877', 'Clampdown', '41'),
    (
        '1878',
        'I Fought The Law',
        '42'
    ),
    ('1879', 'London Calling', '43'),
    (
        '1880',
        'Rock The Casbah',
        '44'
    ),
    (
        '1881',
        'Should I Stay Or Should',
        '45'
    ),
    ('1882', 'Train In Vain', '46'),
    ('1883', 'Fire Woman', '47'),
    (
        '1884',
        'Another Park, Another Sunday   ',
        '48'
    ),
    ('1885', 'Black Water', '49'),
    ('1886', 'China Grove', '50'),
    (
        '1887',
        'It Keeps You Runnin ',
        '51'
    ),
    (
        '1888',
        'Jesus Is Just Alright',
        '1'
    ),
    (
        '1889',
        'Listen To The Music',
        '2'
    ),
    (
        '1890',
        'Livin  On the Fault Line',
        '3'
    ),
    (
        '1891',
        'Long Train Runnin ',
        '4'
    ),
    ('1892', 'Natural Thing', '5'),
    (
        '1893',
        'Rockin  Down The Highway',
        '6'
    ),
    (
        '1894',
        'South City Midnight Lady',
        '7'
    ),
    (
        '1895',
        'Take Me In Your Arms',
        '8'
    ),
    (
        '1896',
        'Takin  It To The Streets',
        '9'
    ),
    (
        '1897',
        'UKIAH/THE CAPTAIN AND ME',
        '10'
    ),
    (
        '1898',
        'What a Fool Believes',
        '11'
    ),
    (
        '1899',
        'Wheels Of Fortune',
        '12'
    ),
    ('1900', 'Back Door Man', '13'),
    (
        '1901',
        'Break On Through',
        '14'
    ),
    ('1902', 'Five To One', '15'),
    ('1903', 'Gloria', '16'),
    (
        '1904',
        'Hello, I Love You   ',
        '17'
    ),
    ('1905', 'L.A. Woman', '18'),
    ('1906', 'Light My Fire', '19'),
    ('1907', 'Love Her Madly', '20'),
    (
        '1908',
        'Love Me Two Times',
        '21'
    ),
    (
        '1909',
        'Moonlight Drive',
        '22'
    ),
    ('1910', 'Peace Frog', '23'),
    (
        '1911',
        'People Are Strange',
        '24'
    ),
    (
        '1912',
        'Riders On The Storm',
        '25'
    ),
    (
        '1913',
        'Roadhouse Blues',
        '26'
    ),
    ('1914', 'Soul Kitchen', '27'),
    ('1915', 'The Changeling', '28'),
    (
        '1916',
        'The Crystal Ship',
        '29'
    ),
    ('1917', 'Touch Me', '30'),
    (
        '1918',
        'Twentieth Century Fox',
        '31'
    ),
    (
        '1919',
        'Waiting For The Sun',
        '32'
    ),
    (
        '1920',
        'When the Music s Over',
        '33'
    ),
    ('1921', 'Tuff Enuff', '34'),
    ('1922', 'Radioactive', '35'),
    (
        '1923',
        'One Thing Leads To Another',
        '36'
    ),
    ('1924', 'Saved By Zero', '37'),
    ('1925', 'Iris', '38'),
    ('1926', 'Funk #49', '39'),
    (
        '1927',
        'This Beat Goes on/Switching to Glide',
        '40'
    ),
    (
        '1928',
        'A Well Respected Man',
        '41'
    ),
    (
        '1929',
        'All Day And All Of The Night',
        '42'
    ),
    ('1930', 'Apeman', '43'),
    ('1931', 'Come Dancing', '44'),
    ('1932', 'Destroyer', '45'),
    ('1933', 'Lola', '46'),
    (
        '1934',
        'Sunny Afternoon',
        '47'
    ),
    ('1935', 'Superman', '48'),
    (
        '1936',
        'Tired of Waiting',
        '49'
    ),
    ('1937', 'Victoria', '50'),
    (
        '1938',
        'Waterloo Sunset',
        '51'
    ),
    (
        '1939',
        'You Really Got Me',
        '1'
    ),
    ('1940', 'My Sharona', '2'),
    ('1941', 'Mrs. Robinson', '3'),
    (
        '1942',
        'Summer In the City',
        '4'
    ),
    (
        '1943',
        'CALIFORNIA DREAMIN ',
        '5'
    ),
    ('1944', 'Can t You See', '6'),
    (
        '1945',
        'HEARD IT IN A LOVE SONG',
        '7'
    ),
    (
        '1946',
        'Take The Highway',
        '8'
    ),
    ('1947', 'Gypsy', '9'),
    ('1948', 'Question', '10'),
    (
        '1949',
        'Ride My See Saw',
        '11'
    ),
    (
        '1950',
        'The Story In Your Eyes',
        '12'
    ),
    (
        '1951',
        'Your Wildest Dreams',
        '13'
    ),
    (
        '1952',
        'Life in the Fast Lane',
        '14'
    ),
    (
        '1953',
        'Come Out and Play',
        '15'
    ),
    ('1954', 'Self Esteem', '16'),
    (
        '1955',
        'The Kids Aren t Alright',
        '17'
    ),
    ('1956', 'Your Love', '18'),
    (
        '1957',
        'Green Grass & High Tides',
        '19'
    ),
    (
        '1958',
        'Can t Stand Losing You',
        '20'
    ),
    (
        '1959',
        'De Do Do Do, De Da Da Da   ',
        '21'
    ),
    (
        '1960',
        'Don t Stand So Close To Me',
        '22'
    ),
    (
        '1961',
        'Driven to Tears',
        '23'
    ),
    (
        '1962',
        'Every Breath You Take',
        '24'
    ),
    (
        '1963',
        'Every Little Thing She Does Is Magic',
        '25'
    ),
    ('1964', 'Invisible Sun', '26'),
    ('1965', 'King Of Pain', '27'),
    (
        '1966',
        'Message In A Bottle',
        '28'
    ),
    ('1967', 'Roxanne', '29'),
    ('1968', 'So Lonely', '30'),
    (
        '1969',
        'Spirits In The Material World',
        '31'
    ),
    (
        '1970',
        'Synchronicity II',
        '32'
    ),
    (
        '1971',
        'Walking On The Moon',
        '33'
    ),
    (
        '1972',
        'Wrapped Around Your Finger',
        '34'
    ),
    (
        '1973',
        'Some Like It Hot',
        '35'
    ),
    (
        '1974',
        'Back On The Chain Gang',
        '36'
    ),
    (
        '1975',
        'Brass In Pocket',
        '37'
    ),
    (
        '1976',
        'Don t Get Me Wrong',
        '38'
    ),
    (
        '1977',
        'Message of Love',
        '39'
    ),
    (
        '1978',
        'Middle Of The Road',
        '40'
    ),
    (
        '1979',
        'My City Was Gone',
        '41'
    ),
    (
        '1980',
        'Mystery Achievement',
        '42'
    ),
    (
        '1981',
        'TALK OF THE TOWN',
        '43'
    ),
    ('1982', 'Blitzkrieg Bop', '44'),
    (
        '1983',
        'Do You Remember Rock  n  Roll Radio',
        '45'
    ),
    (
        '1984',
        'I Wanna Be Sedated',
        '46'
    ),
    (
        '1985',
        'Rock  n  Roll High School',
        '47'
    ),
    ('1986', 'Rockaway Beach', '48'),
    (
        '1987',
        'Teenage Lobotomy',
        '49'
    ),
    (
        '1988',
        'TALKING IN YOUR SLEEP',
        '50'
    ),
    (
        '1989',
        'What I Like About You',
        '51'
    ),
    ('1990', 'Itchycoo Park', '1'),
    ('1991', 'A Girl Like You', '2'),
    ('1992', 'I m A Man', '3'),
    ('1993', 'Dirty Water', '4'),
    ('1994', 'End of the Line', '5'),
    (
        '1995',
        'Handle with Care',
        '6'
    ),
    (
        '1996',
        'Tweeter and the Monkey Man',
        '7'
    ),
    ('1997', 'She s a Beauty', '8'),
    (
        '1998',
        'Talk To Ya Later',
        '9'
    ),
    ('1999', 'One Headlight', '10'),
    ('2000', 'Seven Nation', '11'),
    (
        '2001',
        'Seven Nation Army',
        '12'
    ),
    (
        '2002',
        'ANOTHER TRICKY DAY',
        '13'
    ),
    ('2003', 'Athena', '14'),
    ('2004', 'Baba O Reilly', '15'),
    ('2005', 'Bargain', '16'),
    (
        '2006',
        'Behind Blue Eyes',
        '17'
    ),
    ('2007', 'Eminence Front', '18'),
    (
        '2008',
        'Getting In Tune',
        '19'
    ),
    ('2009', 'Going Mobile', '20'),
    ('2010', 'Happy Jack', '21'),
    (
        '2011',
        'I Can See For Miles',
        '22'
    ),
    (
        '2012',
        'I CAN T EXPLAIN',
        '23'
    ),
    ('2013', 'I m Free', '24'),
    ('2014', 'Join Together', '25'),
    ('2015', 'Long Live Rock', '26'),
    (
        '2016',
        'Love Reign O er Me',
        '27'
    ),
    ('2017', 'Magic Bus', '28'),
    ('2018', 'My Generation', '29'),
    ('2019', 'Pinball Wizard', '30'),
    (
        '2020',
        'Shakin  All Over',
        '31'
    ),
    ('2021', 'Squeeze Box', '32'),
    ('2022', 'Substitute', '33'),
    (
        '2023',
        'Summertime Blues',
        '34'
    ),
    (
        '2024',
        'The Kids Are Alright',
        '35'
    ),
    ('2025', 'The Real Me', '36'),
    ('2026', 'THE SEEKER', '37'),
    (
        '2027',
        'THE SONG IS OVER',
        '38'
    ),
    (
        '2028',
        'We re Not Gonna Take It',
        '39'
    ),
    ('2029', 'Who Are You', '40'),
    (
        '2030',
        'Won t Get Fooled Again',
        '41'
    ),
    (
        '2031',
        'You Better You Bet',
        '42'
    ),
    ('2032', 'Get Together', '43'),
    ('2033', 'Jailbreak', '44'),
    (
        '2034',
        'The Boys Are Back In Town',
        '45'
    ),
    (
        '2035',
        'The Cowboy Song',
        '46'
    ),
    (
        '2036',
        'Semi-Charmed Life',
        '47'
    ),
    (
        '2037',
        'Something In the Air',
        '48'
    ),
    (
        '2038',
        'Bang the Drum All Day',
        '49'
    ),
    ('2039', 'Hello It s Me', '50'),
    (
        '2040',
        'I Saw the Light',
        '51'
    ),
    (
        '2041',
        'We Gotta Get You a Woman',
        '1'
    ),
    (
        '2042',
        'Life Is a Highway',
        '2'
    ),
    (
        '2043',
        'A Face In The Crowd',
        '3'
    ),
    ('2044', 'A Woman In Love', '4'),
    (
        '2045',
        'American Dream Plan B',
        '5'
    ),
    ('2046', 'American Girl', '6'),
    ('2047', 'Breakdown', '7'),
    ('2048', 'Change of Heart', '8'),
    (
        '2049',
        'Don t Come Around Here No More',
        '9'
    ),
    (
        '2050',
        'Don t Do Me Like That',
        '10'
    ),
    (
        '2051',
        'Even the Losers',
        '11'
    ),
    (
        '2052',
        'Fooled Again (I Don t Like It)',
        '12'
    ),
    ('2053', 'Free Fallin ', '13'),
    (
        '2054',
        'Here Comes My Girl',
        '14'
    ),
    ('2055', 'I Need to Know', '15'),
    (
        '2056',
        'I Won t Back Down',
        '16'
    ),
    (
        '2057',
        'Into the Great Wide Open',
        '17'
    ),
    ('2058', 'Jammin  Me', '18'),
    (
        '2059',
        'Learning To Fly',
        '19'
    ),
    (
        '2060',
        'Listen To Your Heart',
        '20'
    ),
    (
        '2061',
        'Mary Jane s Last Dance',
        '21'
    ),
    ('2062', 'Refugee', '22'),
    (
        '2063',
        'Runnin  Down a Dream',
        '23'
    ),
    (
        '2064',
        'Stop Draggin  My Heart Around',
        '24'
    ),
    ('2065', 'The Waiting', '25'),
    ('2066', 'U Get Me High', '26'),
    ('2067', 'Yer So Bad', '27'),
    (
        '2068',
        'You Don t Know How It Feels',
        '28'
    ),
    (
        '2069',
        'You Get Me High',
        '29'
    ),
    ('2070', 'You Got Lucky', '30'),
    ('2071', 'You Wreck Me', '31'),
    (
        '2072',
        '867-5309 / Jenny',
        '32'
    ),
    (
        '2073',
        'If You Could Only See',
        '33'
    ),
    ('2074', 'AFRICA', '34'),
    ('2075', 'Hold The Line', '35'),
    (
        '2076',
        'Dear Mr. Fantasy',
        '36'
    ),
    ('2077', 'Empty Pages', '37'),
    ('2078', 'Medicated Goo', '38'),
    ('2079', 'Medusa', '39'),
    (
        '2080',
        'Fight The Good Fight',
        '40'
    ),
    ('2081', 'Hold On', '41'),
    ('2082', 'I Can Survive', '42'),
    (
        '2083',
        'Lay It On the Line',
        '43'
    ),
    ('2084', 'Magic Power', '44'),
    ('2085', 'Happy Together', '45'),
    ('2086', 'I Wanna Rock', '46'),
    (
        '2087',
        'We re Not Gonna Take It',
        '47'
    ),
    (
        '2088',
        'Angel Of Harlem',
        '48'
    ),
    ('2089', 'Bad', '49'),
    ('2090', 'Beautiful Day', '50'),
    (
        '2091',
        'Bullet the Blue Sky',
        '51'
    ),
    ('2092', 'Desire', '1'),
    (
        '2093',
        'Even Better Than the Real Thing',
        '2'
    ),
    (
        '2094',
        'I Still Haven t Found What I m Looking For',
        '3'
    ),
    ('2095', 'I Will Follow', '4'),
    ('2096', 'MLK/Pride', '5'),
    ('2097', 'Mysterious Ways', '6'),
    ('2098', 'New Year s Day', '7'),
    ('2099', 'One', '8'),
    (
        '2100',
        'Pride (In the Name of Love)',
        '9'
    ),
    (
        '2101',
        'Sunday Bloody Sunday',
        '10'
    ),
    ('2102', 'Sweetest Thing', '11'),
    ('2103', 'Vertigo', '12'),
    (
        '2104',
        'When Love Comes to Town',
        '13'
    ),
    (
        '2105',
        'Where the Streets Have No Name',
        '14'
    ),
    (
        '2106',
        'With Or Without You',
        '15'
    ),
    ('2107', 'Red Red Wine', '16'),
    (
        '2108',
        'Lights Out (Live)',
        '17'
    ),
    (
        '2109',
        'Too Hot To Handle',
        '18'
    ),
    ('2110', 'Easy Livin ', '19'),
    ('2111', 'Stealin ', '20'),
    ('2112', 'The Wizard', '21'),
    (
        '2113',
        '(Oh) Pretty Woman',
        '22'
    ),
    ('2114', '1984/jump', '23'),
    (
        '2115',
        'Ain t Talkin   bout Love',
        '24'
    ),
    (
        '2116',
        'And the Cradle Will Rock...',
        '25'
    ),
    ('2117', 'Atomic Punk', '26'),
    (
        '2118',
        'Beautiful Girls',
        '27'
    ),
    (
        '2119',
        'Best Of Both Worlds',
        '28'
    ),
    ('2120', 'Black And Blue', '29'),
    (
        '2121',
        'Dance the Night Away',
        '30'
    ),
    (
        '2122',
        'Dancing In the Street',
        '31'
    ),
    ('2123', 'Dreams', '32'),
    ('2124', 'Drop Dead Legs', '33'),
    (
        '2125',
        'Eruption - You Really Got Me',
        '34'
    ),
    (
        '2126',
        'Everybody Wants Some!!',
        '35'
    ),
    (
        '2127',
        'Feel Your Love Tonight',
        '36'
    ),
    ('2128', 'Feels So Good', '37'),
    (
        '2129',
        'Finish What Ya Started',
        '38'
    ),
    (
        '2130',
        'Hot for Teacher',
        '39'
    ),
    ('2131', 'I ll Wait', '40'),
    ('2132', 'I m the One', '41'),
    ('2133', 'Ice Cream Man', '42'),
    (
        '2134',
        'Intruder/ Pretty Woman',
        '43'
    ),
    ('2135', 'Jamie s Cryin ', '44'),
    ('2136', 'Jump', '45'),
    ('2137', 'Little Dreamer', '46'),
    ('2138', 'Little Guitars', '47'),
    ('2139', 'Love Walks In', '48'),
    ('2140', 'Mean Street', '49'),
    ('2141', 'Panama', '50'),
    ('2142', 'Poundcake', '51'),
    ('2143', 'PRETTY WOMAN', '1'),
    ('2144', 'Right Now', '2'),
    ('2145', 'Runaround', '3'),
    (
        '2146',
        'Runnin  with the Devil',
        '4'
    ),
    (
        '2147',
        'Somebody Get Me A Doctor',
        '5'
    ),
    ('2148', 'Summer Nights', '6'),
    (
        '2149',
        'Take Your Whiskey Home',
        '7'
    ),
    ('2150', 'Top Jimmy', '8'),
    (
        '2151',
        'Top of the World',
        '9'
    ),
    ('2152', 'Unchained', '10'),
    ('2153', 'When It s Love', '11'),
    (
        '2154',
        'Where Have All the Good Times Gone!',
        '12'
    ),
    (
        '2155',
        'Why Can t This Be Love',
        '13'
    ),
    (
        '2156',
        'You Really Got Me',
        '14'
    ),
    (
        '2157',
        'And It Stoned Me',
        '15'
    ),
    ('2158', 'BLUE MONEY', '16'),
    (
        '2159',
        'Brown Eyed Girl',
        '17'
    ),
    ('2160', 'CRAZY LOVE', '18'),
    ('2161', 'Domino', '19'),
    ('2162', 'Gloria', '20'),
    (
        '2163',
        'Into The Mystic',
        '21'
    ),
    (
        '2164',
        'Jackie Wilson Said',
        '22'
    ),
    ('2165', 'Moondance', '23'),
    ('2166', 'Wild Night', '24'),
    (
        '2167',
        'Blister In the Sun',
        '25'
    ),
    (
        '2168',
        'Edge of a Broken Heart',
        '26'
    ),
    ('2169', 'Low Rider', '27'),
    ('2170', 'Spill the Wine', '28'),
    ('2171', 'The Cisco Kid', '29'),
    (
        '2172',
        'Why Can t We Be Friends',
        '30'
    ),
    ('2173', 'Cherry Pie', '31'),
    (
        '2174',
        'Uncle Tom s Cabin',
        '32'
    ),
    (
        '2175',
        'Lawyers, Guns and Money   ',
        '33'
    ),
    (
        '2176',
        'Werewolves of London',
        '34'
    ),
    ('2177', 'Buddy Holly', '35'),
    (
        '2178',
        'Street Corner Serenade',
        '36'
    ),
    ('2179', 'Wait', '37'),
    (
        '2180',
        'Fool for Your Loving',
        '38'
    ),
    (
        '2181',
        'Here I Go Again',
        '39'
    ),
    ('2182', 'Is This Love', '40'),
    ('2183', 'Slide It In', '41'),
    ('2184', 'Slow An  Easy', '42'),
    (
        '2185',
        'Still of the Night',
        '43'
    ),
    ('2186', 'Who Are You?', '44'),
    (
        '2187',
        'PLAY THAT FUNKY MUSIC',
        '45'
    ),
    ('2188', 'Night Moves', '46'),
    (
        '2189',
        'We ve Got Tonight',
        '47'
    ),
    (
        '2190',
        'Can t Get Enough',
        '48'
    ),
    (
        '2191',
        'Headed For A Heartbreak',
        '49'
    ),
    ('2192', 'Seventeen', '50'),
    ('2193', 'Persephone', '51'),
    (
        '2194',
        'Summertime Girls',
        '1'
    ),
    ('2195', 'Changes', '2'),
    (
        '2196',
        'I ve Seen All Good People',
        '3'
    ),
    ('2197', 'It Can Happen', '4'),
    ('2198', 'Leave It', '5'),
    (
        '2199',
        'Long Distance Runaround',
        '6'
    ),
    (
        '2200',
        'Owner of a Lonely Heart',
        '7'
    ),
    ('2201', 'Roundabout', '8'),
    (
        '2202',
        'Starship Trooper',
        '9'
    ),
    (
        '2203',
        'Wonderous Stories',
        '10'
    ),
    (
        '2204',
        'Yours Is No Disgrace',
        '11'
    ),
    (
        '2205',
        'Tell Me What You Want',
        '12'
    ),
    (
        '2206',
        'Who s Behind The Door',
        '13'
    ),
    (
        '2207',
        'Time of the Season',
        '14'
    ),
    (
        '2208',
        'A Fool for Your Stockings',
        '15'
    ),
    (
        '2209',
        'Arrested For Driving While Blind',
        '16'
    ),
    (
        '2210',
        'Beer Drinkers & Hell Raisers',
        '17'
    ),
    (
        '2211',
        'Cheap Sunglasses',
        '18'
    ),
    (
        '2212',
        'Gimme All Your Lovin',
        '19'
    ),
    (
        '2213',
        'Got Me Under Pressure',
        '20'
    ),
    (
        '2214',
        'Heard It On the X',
        '21'
    ),
    ('2215', 'I Thank You', '22'),
    (
        '2216',
        'I m Bad, I m Nationwide   ',
        '23'
    ),
    (
        '2217',
        'Jesus Just Left Chicago',
        '24'
    ),
    ('2218', 'Just Got Paid', '25'),
    ('2219', 'La Grange', '26'),
    ('2220', 'Legs', '27'),
    (
        '2221',
        'My Head s In Mississippi',
        '28'
    ),
    (
        '2222',
        'Party On The Patio',
        '29'
    ),
    ('2223', 'Pearl Necklace', '30'),
    (
        '2224',
        'Sharp Dressed Man',
        '31'
    ),
    (
        '2225',
        'She Loves My Automobile',
        '32'
    ),
    (
        '2226',
        'Tube Snake Boogie',
        '33'
    ),
    ('2227', 'Tush', '34'),
    ('2228', 'TV Dinners', '35'),
    (
        '2229',
        'WAITIN  FOR THE BUS JESUS JUST LEFT CHICAGO',
        '35'
    );