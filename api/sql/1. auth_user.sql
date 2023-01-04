DROP TABLE auth_user;

CREATE TABLE auth_user (
      userid INT NOT NULL AUTO_INCREMENT,
      username VARCHAR(50) NOT NULL,
      password VARCHAR(50) NOT NULL,
      status VARCHAR(50) NOT NULL DEFAULT 'member',
      PRIMARY KEY (userid),
      UNIQUE KEY (username)
   );

INSERT INTO auth_user(userid, username,password)
VALUES  (1000,"anna", "123",'admin'),
        (1001,"cyber", "123"),
        (1002,"david", "123"),
        (1003,"emma", "123"),
        (1004,"frank", "123"),
        (1005,"gina", "123"),
        (1006,"harry", "123"),
        (1007,"isabella", "123"),
        (1008,"james", "123"),
        (1009,"kate", "123"),
        (1010,"lisa", "123"),
        (1011,"mike", "123"),
        (1012,"nancy", "123"),
        (1013,"olivia", "123"),
        (1014,"peter", "123"),
        (1015,"quinn", "123"),
        (1016,"robert", "123"),
        (1017,"sarah", "123"),
        (1018,"tom", "123"),
        (1019,"ursula", "123"),
        (1020,"victor", "123"),
        (1021,"william", "123"),
        (1022,"xenia", "123"),
        (1023,"yvonne", "123"),
        (1024,"zoe", "123"),
        (1025,"michael", "123"),
         (1026,"jennifer", "123"),
         (1027,"daniel", "123"),
         (1028,"joshua", "123"),
         (1029,"jason", "123"),
         (1030,"joseph", "123"),
         (1031,"oliver", "123"),
         (1032,"john", "123"),
         (1033,"jose", "123"),
         (1034,"jacob", "123"),
         (1035,"juliii", "123"),
         (1036,"jessica", "123"),
         (1037,"judy", "123"),
         (1038,"jenni", "123"),
         (1039,"jordan", "123"),
         (1040,"jerry", "123"),
         (1041,"jimmy", "123"),
         (1042,"jim", "123"),
         (1043,"jane", "123"),
         (1044,"jake", "123"),
         (1045,"josh", "123"),
         (1046,"jenny", "123"),
         (1047,"julian", "123"),
         (1048,"juliet", "123"),
         (1049,"julius", "123"),
         (1050,"juliana", "123"),
         (1051,"julie", "123"),
         (1052,"julia", "123"),
         (1053,"elon", "123"),
         (1054,"bill", "123"),
         (1055,"steve", "123"),
         (1056,"messi", "123"),
         (1057,"ronaldo", "123"),
         (1058,"neymar", "123"),
         (1059,"kane", "123"),
         (1060,"hazard", "123"),
         (1061,"debruyne", "123"),
         (1062,"salah", "123"),
         (1063,"aguero", "123"),
         (1064,"suarez", "123"),
         (1065,"pogba", "123"),
         (1066,"mbappe", "123"),
         (1067,"griezmann", "123"),
         (1068,"benzema", "123"),
         (1069,"bale", "123"),
         (1070,"modric", "123"),
         (1071,"kroos", "123"),
         (1072,"ramos", "123"),
         (1073,"pique", "123"),
         (1074,"busquets", "123"),
         (1075,"iniesta", "123"),
         (1076,"alba", "123"),
         (1077,"terstegen", "123"),
         (1078,"neuer", "123"),
         (1079,"muller", "123"),
         (1080,"lewandowski", "123"),
         (1081,"robben", "123"),
         (1082,"hummels", "123"),
         (1083,"kimmich", "123"),
         (1084,"goretzka", "123"),
         (1085,"reus", "123"),
         (1086,"putin", "123"),
         (1087,"trump", "123"),
         (1088,"obama", "123"),
         (1089,"biden", "123"),
         (1090,"clinton", "123"),
         (1091,"bush", "123"),
         (1092,"reagan", "123"),
         (1093,"ron", "123"),
         (1094,"nixon", "123"),
         (1095,"ford", "123"),
         (1096,"carter", "123"),
         (1097,"eisenhower", "123"),
         (1098,"truman", "123"),
         (1099,"roosevelt", "123"),
         (1100,"muhammad", "123");