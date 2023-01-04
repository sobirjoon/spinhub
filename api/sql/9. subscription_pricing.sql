-- newletter TABLE

CREATE TABLE `subscription_pricing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `membership_type` VARCHAR(128) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO Reviews(membership_type,price)
          VALUES ("Free", 0),
                  ("Pro", 10),
                  ("Premium", 20);