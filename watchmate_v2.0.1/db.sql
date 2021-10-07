-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: movielist
-- ------------------------------------------------------
-- Server version	8.0.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `app_review`
--

DROP TABLE IF EXISTS `app_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_review` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rating` int unsigned NOT NULL,
  `description` varchar(256) DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `created` datetime(6) NOT NULL,
  `update` datetime(6) NOT NULL,
  `watchlist_id` int NOT NULL,
  `reviewer_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `app_review_watchlist_id_e030fccf_fk_app_watchlist_id` (`watchlist_id`),
  KEY `app_review_reviewer_id_43078488_fk_auth_user_id` (`reviewer_id`),
  CONSTRAINT `app_review_reviewer_id_43078488_fk_auth_user_id` FOREIGN KEY (`reviewer_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `app_review_watchlist_id_e030fccf_fk_app_watchlist_id` FOREIGN KEY (`watchlist_id`) REFERENCES `app_watchlist` (`id`),
  CONSTRAINT `app_review_chk_1` CHECK ((`rating` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_review`
--

LOCK TABLES `app_review` WRITE;
/*!40000 ALTER TABLE `app_review` DISABLE KEYS */;
INSERT INTO `app_review` VALUES (14,5,'very funny',1,'2021-10-06 09:31:17.155289','2021-10-06 09:31:17.155289',3,1),(15,5,'The characters are so cool, and the story is very interesting',1,'2021-10-06 09:52:59.101652','2021-10-06 14:26:29.314271',10,1),(16,5,'interesting story',1,'2021-10-06 10:11:30.174266','2021-10-06 10:11:30.174266',10,2),(17,5,'reminds me of naruto, such a good series',1,'2021-10-06 11:31:49.017093','2021-10-06 11:31:49.017093',10,4),(19,4,'Very good',1,'2021-10-07 11:31:40.342697','2021-10-07 11:31:40.342697',2,2),(20,5,'funny',1,'2021-10-07 11:32:06.836780','2021-10-07 11:32:06.836780',7,6),(21,5,'i am lucky to born in the time when i can see rick and morty',1,'2021-10-07 11:32:58.792077','2021-10-07 11:32:58.792077',15,1),(22,5,'mind blowing',1,'2021-10-07 11:33:40.210206','2021-10-07 11:33:40.210206',15,3),(23,4,'best of best',1,'2021-10-07 11:34:32.585038','2021-10-07 11:34:32.585038',15,4),(24,5,'the puns are really great',1,'2021-10-07 11:37:02.520342','2021-10-07 11:37:02.520342',31,1),(25,4,'Makes me cry even i i think about the ending',0,'2021-10-07 11:37:37.990593','2021-10-07 13:23:01.856519',31,4),(26,5,'such a heart touching story',1,'2021-10-07 11:39:29.373182','2021-10-07 11:39:29.373182',14,3);
/*!40000 ALTER TABLE `app_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_streamplatform`
--

DROP TABLE IF EXISTS `app_streamplatform`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_streamplatform` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `about` longtext NOT NULL,
  `website` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_streamplatform`
--

LOCK TABLES `app_streamplatform` WRITE;
/*!40000 ALTER TABLE `app_streamplatform` DISABLE KEYS */;
INSERT INTO `app_streamplatform` VALUES (1,'Netflix','Netflix Inc. is an American over-the-top media service and original programming production company. It offers subscription-based video on demand from a library of films and television series, 40% of which is Netflix original programming produced in-house.','https://www.netflix.com/'),(2,'Prime Videos','Amazon Prime Video, or simply Prime Video, is a subscription video on-demand over-the-top streaming and rental service of Amazon.com, Inc., offered as a standalone service or as part of Amazon\'s Prime subscription.','https://www.primevideo.com/'),(3,'Disney+','Disney+ is an American subscription video on-demand over-the-top streaming service owned and operated by the Media and Entertainment Distribution division of The Walt Disney Company.','https://www.disneyplus.com'),(4,'Funimation','Funimation Global Group, LLC is an American entertainment company that specializes in the dubbing and distribution of East Asian media, most notably Japanese anime.','https://www.funimation.com/'),(5,'YouTube','YouTube is an American online video sharing and social media platform owned by Google. It was launched in February 2005 by Steve Chen, Chad Hurley, and Jawed Karim. It is the second most visited website, with more than one billion monthly users.','https://www.youtube.com/'),(6,'None','No description exists','http://www.example.com'),(7,'HBO Max','HBO Max is an American subscription video on demand streaming service owned by AT&T\'s WarnerMedia, through its WarnerMedia Direct subsidiary. The service was launched on May 27, 2020, in United States and in Latin America and the Caribbean on June 29, 2021.','https://www.hbomax.com/'),(8,'Crunchyroll','Crunchyroll, Inc. is an American distributor, publisher, production and licensing company focused on streaming anime and manga.','https://www.crunchyroll.com/'),(9,'Hulu','Hulu (/ˈhuːluː/) is an online streaming service owned by The Walt Disney Company and Comcast.\r\n\r\nHulu was initially established as a joint venture between News Corporation and NBC Universal, Providence Equity Partners, and later The Walt Disney Company, serving as an aggregation of recent episodes of television series from their respective television networks.','https://www.hulu.com');
/*!40000 ALTER TABLE `app_streamplatform` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_watchlist`
--

DROP TABLE IF EXISTS `app_watchlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_watchlist` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(256) NOT NULL,
  `storyline` longtext NOT NULL,
  `active` tinyint(1) NOT NULL,
  `created` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_watchlist`
--

LOCK TABLES `app_watchlist` WRITE;
/*!40000 ALTER TABLE `app_watchlist` DISABLE KEYS */;
INSERT INTO `app_watchlist` VALUES (2,'Fullmetal Alchemist: Brotherhood','After a horrific alchemy experiment goes wrong in the Elric household, brothers Edward and Alphonse are left in a catastrophic new reality. Ignoring the alchemical principle banning human transmutation, the boys attempted to bring their recently deceased mother back to life. Instead, they suffered brutal personal loss: Alphonse\'s body disintegrated while Edward lost a leg and then sacrificed an arm to keep Alphonse\'s soul in the physical realm by binding it to a hulking suit of armor.\r\n\r\nThe brothers are rescued by their neighbor Pinako Rockbell and her granddaughter Winry. Known as a bio-mechanical engineering prodigy, Winry creates prosthetic limbs for Edward by utilizing \"automail,\" a tough, versatile metal used in robots and combat armor. After years of training, the Elric brothers set off on a quest to restore their bodies by locating the Philosopher\'s Stone—a powerful gem that allows an alchemist to defy the traditional laws of Equivalent Exchange.\r\n\r\nAs Edward becomes an infamous alchemist and gains the nickname \"Fullmetal,\" the boys\' journey embroils them in a growing conspiracy that threatens the fate of the world.',1,'2021-10-05 15:08:25.675887'),(3,'Gintama','Gintoki, Shinpachi, and Kagura return as the fun-loving but broke members of the Yorozuya team! Living in an alternate-reality Edo, where swords are prohibited and alien overlords have conquered Japan, they try to thrive on doing whatever work they can get their hands on. However, Shinpachi and Kagura still haven\'t been paid... Does Gin-chan really spend all that cash playing pachinko?\r\n\r\nMeanwhile, when Gintoki drunkenly staggers home one night, an alien spaceship crashes nearby. A fatally injured crew member emerges from the ship and gives Gintoki a strange, clock-shaped device, warning him that it is incredibly powerful and must be safeguarded. Mistaking it for his alarm clock, Gintoki proceeds to smash the device the next morning and suddenly discovers that the world outside his apartment has come to a standstill. With Kagura and Shinpachi at his side, he sets off to get the device fixed; though, as usual, nothing is ever that simple for the Yorozuya team.\r\n\r\nFilled with tongue-in-cheek humor and moments of heartfelt emotion, Gintama\'s fourth season finds Gintoki and his friends facing both their most hilarious misadventures and most dangerous crises yet.',1,'2021-10-05 15:09:53.223697'),(4,'Steins;Gate','The self-proclaimed mad scientist Rintarou Okabe rents out a room in a rickety old building in Akihabara, where he indulges himself in his hobby of inventing prospective \"future gadgets\" with fellow lab members: Mayuri Shiina, his air-headed childhood friend, and Hashida Itaru, a perverted hacker nicknamed \"Daru.\" The three pass the time by tinkering with their most promising contraption yet, a machine dubbed the \"Phone Microwave,\" which performs the strange function of morphing bananas into piles of green gel.\r\n\r\nThough miraculous in itself, the phenomenon doesn\'t provide anything concrete in Okabe\'s search for a scientific breakthrough; that is, until the lab members are spurred into action by a string of mysterious happenings before stumbling upon an unexpected success—the Phone Microwave can send emails to the past, altering the flow of history.\r\n\r\nAdapted from the critically acclaimed visual novel by 5pb. and Nitroplus, Steins;Gate takes Okabe through the depths of scientific theory and practicality. Forced across the diverging threads of past and present, Okabe must shoulder the burdens that come with holding the key to the realm of time.',1,'2021-10-05 15:10:14.132214'),(5,'Shingeki no Kyojin','Seeking to restore humanity\'s diminishing hope, the Survey Corps embark on a mission to retake Wall Maria, where the battle against the merciless \"Titans\" takes the stage once again.\r\n\r\nReturning to the tattered Shiganshina District that was once his home, Eren Yeager and the Corps find the town oddly unoccupied by Titans. Even after the outer gate is plugged, they strangely encounter no opposition. The mission progresses smoothly until Armin Arlert, highly suspicious of the enemy\'s absence, discovers distressing signs of a potential scheme against them.\r\n\r\nShingeki no Kyojin Season 3 Part 2 follows Eren as he vows to take back everything that was once his. Alongside him, the Survey Corps strive—through countless sacrifices—to carve a path towards victory and uncover the secrets locked away in the Yeager family\'s basement.',1,'2021-10-05 15:10:36.817040'),(6,'Kimi no Na wa.','Mitsuha Miyamizu, a high school girl, yearns to live the life of a boy in the bustling city of Tokyo—a dream that stands in stark contrast to her present life in the countryside. Meanwhile in the city, Taki Tachibana lives a busy life as a high school student while juggling his part-time job and hopes for a future in architecture.\r\n\r\nOne day, Mitsuha awakens in a room that is not her own and suddenly finds herself living the dream life in Tokyo—but in Taki\'s body! Elsewhere, Taki finds himself living Mitsuha\'s life in the humble countryside. In pursuit of an answer to this strange phenomenon, they begin to search for one another.\r\n\r\nKimi no Na wa. revolves around Mitsuha and Taki\'s actions, which begin to have a dramatic impact on each other\'s lives, weaving them into a fabric held together by fate and circumstance.',1,'2021-10-05 15:11:02.540327'),(7,'Mob Psycho 100','Shigeo \"Mob\" Kageyama is now maturing and understanding his role as a supernatural psychic that has the power to drastically affect the livelihood of others. He and his mentor Reigen Arataka continue to deal with supernatural requests from clients, whether it be exorcizing evil spirits or tackling urban legends that haunt the citizens.\r\n\r\nWhile the workflow remains the same, Mob isn\'t just blindly following Reigen around anymore. With all his experiences as a ridiculously strong psychic, Mob\'s supernatural adventures now have more weight to them. Things take on a serious and darker tone as the dangers Mob and Reigen face are much more tangible and unsettling than ever before.',1,'2021-10-05 15:11:24.623921'),(8,'Monster','Dr. Kenzou Tenma, an elite neurosurgeon recently engaged to his hospital director\'s daughter, is well on his way to ascending the hospital hierarchy. That is until one night, a seemingly small event changes Dr. Tenma\'s life forever. While preparing to perform surgery on someone, he gets a call from the hospital director telling him to switch patients and instead perform life-saving brain surgery on a famous performer. His fellow doctors, fiancée, and the hospital director applaud his accomplishment; but because of the switch, a poor immigrant worker is dead, causing Dr. Tenma to have a crisis of conscience.\r\n\r\nSo when a similar situation arises, Dr. Tenma stands his ground and chooses to perform surgery on the young boy Johan Liebert instead of the town\'s mayor. Unfortunately, this choice leads to serious ramifications for Dr. Tenma—losing his social standing being one of them. However, with the mysterious death of the director and two other doctors, Dr. Tenma\'s position is restored. With no evidence to convict him, he is released and goes on to attain the position of hospital director.\r\n\r\nNine years later when Dr. Tenma saves the life of a criminal, his past comes back to haunt him—once again, he comes face to face with the monster he operated on. He must now embark on a quest of pursuit to make amends for the havoc spread by the one he saved.',1,'2021-10-05 15:11:44.174807'),(9,'Kimi no Suizou wo Tabetai','The aloof protagonist: a bookworm who is deeply detached from the world he resides in. He has no interest in others and is firmly convinced that nobody has any interest in him either. His story begins when he stumbles across a handwritten book, titled \"Living with Dying.\" He soon identifies it as a secret diary belonging to his popular, bubbly classmate Sakura Yamauchi. She then confides in him about the pancreatic disease she is suffering from and that her time left is finite. Only her family knows about her terminal illness; not even her best friends are aware. Despite this revelation, he shows zero sympathy for her plight, but caught in the waves of Sakura\'s persistent buoyancy, he eventually concedes to accompanying her for her remaining days.\r\n\r\nAs the pair of polar opposites interact, their connection strengthens, interweaving through their choices made with each passing day. Her apparent nonchalance and unpredictability disrupts the protagonist\'s impassive flow of life, gradually opening his heart as he discovers and embraces the true meaning of living.',1,'2021-10-05 15:12:01.553022'),(10,'Jujutsu Kaisen','With no particular purpose indulging in baseless paranormal activities with the Occult Club, high schooler Yuuji Itadori spends his days at either the clubroom or the hospital, where he visits his bedridden grandfather. However, this leisurely lifestyle soon takes a turn for the strange when he unknowingly encounters a cursed item. Triggering a chain of supernatural occurrences, Yuuji finds himself suddenly thrust into the world of Curses—dreadful beings formed from human malice and negativity—after swallowing the said item, revealed to be a finger belonging to the demon Sukuna Ryoumen, the \"King of Curses.\"\r\n\r\nYuuji experiences first-hand the threat these Curses pose to society as he discovers his own newfound powers. Introduced to the Tokyo Metropolitan Jujutsu Technical High School, he begins to walk down a path from which he cannot return—the path of a Jujutsu sorcerer.',1,'2021-10-06 07:53:53.296847'),(11,'Naruto: Shippuuden','It has been two and a half years since Naruto Uzumaki left Konohagakure, the Hidden Leaf Village, for intense training following events which fueled his desire to be stronger. Now Akatsuki, the mysterious organization of elite rogue ninja, is closing in on their grand plan which may threaten the safety of the entire shinobi world.\r\n\r\nAlthough Naruto is older and sinister events loom on the horizon, he has changed little in personality—still rambunctious and childish—though he is now far more confident and possesses an even greater determination to protect his friends and home. Come whatever may, Naruto will carry on with the fight for what is important to him, even at the expense of his own body, in the continuation of the saga about the boy who wishes to become Hokage.',1,'2021-10-06 13:46:30.416322'),(13,'Bleach','Ichigo Kurosaki is an ordinary high schooler—until his family is attacked by a Hollow, a corrupt spirit that seeks to devour human souls. It is then that he meets a Soul Reaper named Rukia Kuchiki, who gets injured while protecting Ichigo\'s family from the assailant. To save his family, Ichigo accepts Rukia\'s offer of taking her powers and becomes a Soul Reaper as a result.\r\n\r\nHowever, as Rukia is unable to regain her powers, Ichigo is given the daunting task of hunting down the Hollows that plague their town. However, he is not alone in his fight, as he is later joined by his friends—classmates Orihime Inoue, Yasutora Sado, and Uryuu Ishida—who each have their own unique abilities. As Ichigo and his comrades get used to their new duties and support each other on and off the battlefield, the young Soul Reaper soon learns that the Hollows are not the only real threat to the human world.',1,'2021-10-06 17:24:14.391137'),(14,'Kimetsu no Yaiba','Ever since the death of his father, the burden of supporting the family has fallen upon Tanjirou Kamado\'s shoulders. Though living impoverished on a remote mountain, the Kamado family are able to enjoy a relatively peaceful and happy life. One day, Tanjirou decides to go down to the local village to make a little money selling charcoal. On his way back, night falls, forcing Tanjirou to take shelter in the house of a strange man, who warns him of the existence of flesh-eating demons that lurk in the woods at night.\r\n\r\nWhen he finally arrives back home the next day, he is met with a horrifying sight—his whole family has been slaughtered. Worse still, the sole survivor is his sister Nezuko, who has been turned into a bloodthirsty demon. Consumed by rage and hatred, Tanjirou swears to avenge his family and stay by his only remaining sibling. Alongside the mysterious group calling themselves the Demon Slayer Corps, Tanjirou will do whatever it takes to slay the demons and protect the remnants of his beloved sister\'s humanity.',1,'2021-10-06 17:25:13.567744'),(15,'Rick And Morty','Rick is a mad scientist who drags his grandson, Morty, on crazy sci-fi adventures. Their escapades often have potentially harmful consequences for their family and the rest of the world. Join Rick and Morty on AdultSwim.com as they trek through alternate dimensions, explore alien planets, and terrorize Jerry, Beth, and Summer.',1,'2021-10-06 17:27:23.925724'),(16,'Gravity Falls','Twins Dipper and Mabel travel to the mysterious town of Gravity Falls in Oregon for their summer vacations but are shocked after they discover some strange occurrences.',1,'2021-10-06 17:28:13.257202'),(17,'The Simpsons','Working-class father Homer Simpson and his dysfunctional family deal with comical situations and the ups-and-downs of life in the town of Springfield.',1,'2021-10-06 17:28:58.574764'),(18,'Doctor Who','The Doctor, a mysterious 2,000-year-old time-travelling figure, and his companions journey across time and space in a ship known as TARDIS.',1,'2021-10-06 17:29:36.273902'),(19,'Family Guy','Peter Griffin and his family of two teenagers, a smart dog, a devilish baby, and his wife find themselves in some of the most hilarious scenarios.',1,'2021-10-06 17:31:26.535219'),(20,'The Big Bang Theory','Leonard and Sheldon are brilliant physicists—geniuses in the laboratory, but socially challenged everywhere else. Leonard believes he\'s found true love with beautiful, street-smart neighbor Penny, and they finally got engaged. Even Sheldon has found a female companion, entering into a \"Relationship Agreement\" with neurobiologist Amy Farrah Fowler, who recently asked him to take a break.',1,'2021-10-06 17:31:49.026937'),(21,'The Boys','In a world where superheroes embrace the darker side of their massive celebrity and fame, THE BOYS centers on a group of vigilantes known informally as “The Boys,” who set out to take down corrupt superheroes with no more than their blue collar grit and a willingness to fight dirty.',1,'2021-10-06 17:33:28.174946'),(22,'Good Omen','Aziraphale and Crowley, of Heaven and Hell respectively, have grown rather fond of the Earth. So it’s terrible news that it’s about to end. The armies of Good and Evil are amassing. The Four Horsemen are ready to ride. Everything is going according to the Divine Plan…except that someone seems to have misplaced the Antichrist. Can our heroes find him and stop Armageddon before it’s too late?',1,'2021-10-06 17:34:02.650155'),(23,'Dororo','The greedy samurai lord Daigo Kagemitsu\'s land is dying, and he would do anything for power, even renounce Buddha and make a pact with demons. His prayers are answered by 12 demons who grant him the power he desires by aiding his prefecture\'s growth, but at a price. When Kagemitsu\'s first son is born, the boy has no limbs, no nose, no eyes, no ears, nor even skin—yet still, he lives.\r\n\r\nThis child is disposed of in a river and forgotten. But as luck would have it, he is saved by a medicine man who provides him with prosthetics and weapons, allowing for him to survive and fend for himself. The boy lives and grows, and although he cannot see, hear, or feel anything, he must defeat the demons that took him as sacrifice. With the death of each one, he regains a part of himself that is rightfully his. For many years he wanders alone, until one day an orphan boy, Dororo, befriends him. The unlikely pair of castaways now fight for their survival and humanity in an unforgiving, demon-infested world.',1,'2021-10-06 17:36:47.574591'),(24,'Loki','The mercurial villain Loki resumes his role as the God of Mischief in a new series that takes place after the events of “Avengers: Endgame.',1,'2021-10-06 17:39:49.284229'),(25,'What If?','NEW EPISODE EVERY WEDNESDAY AT 12:30 PM. What If…? flips the script on the MCU, reimagining famous events from the films in unexpected ways.',1,'2021-10-06 17:40:37.853197'),(26,'Guardians Of The Galaxy','A stranded jet pilot in space must unite a diverse team of aliens to form a squad capable of defeating cosmic threats.',1,'2021-10-06 17:41:16.590934'),(31,'BoJack Horseman','A humanoid horse, BoJack Horseman -- lost in a sea of self-loathing and booze -- decides it\'s time for a comeback. Once the star of a \'90s sitcom, in which he was the adoptive father of three orphaned kids (two girls and a boy). The show was the hottest thing around, then suddenly, was canceled. Now 18 years later, BoJack wants to regain his dignity. With the aid of a human sidekick and a feline ex-girlfriend who is his agent, he sets out to make it happen. But Hollywood is vastly different from those days, and getting used to stuff like Twitter may take some time. This first animated series from Netflix -- with plenty of references to sex, drugs and alcohol -- is not for the little ones.',1,'2021-10-07 11:35:24.929159');
/*!40000 ALTER TABLE `app_watchlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_watchlist_platforms`
--

DROP TABLE IF EXISTS `app_watchlist_platforms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_watchlist_platforms` (
  `id` int NOT NULL AUTO_INCREMENT,
  `watchlist_id` int NOT NULL,
  `streamplatform_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_watchlist_platforms_watchlist_id_streamplatf_e98327f8_uniq` (`watchlist_id`,`streamplatform_id`),
  KEY `app_watchlist_platfo_streamplatform_id_58140d3c_fk_app_strea` (`streamplatform_id`),
  CONSTRAINT `app_watchlist_platfo_streamplatform_id_58140d3c_fk_app_strea` FOREIGN KEY (`streamplatform_id`) REFERENCES `app_streamplatform` (`id`),
  CONSTRAINT `app_watchlist_platfo_watchlist_id_2d10ae0f_fk_app_watch` FOREIGN KEY (`watchlist_id`) REFERENCES `app_watchlist` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_watchlist_platforms`
--

LOCK TABLES `app_watchlist_platforms` WRITE;
/*!40000 ALTER TABLE `app_watchlist_platforms` DISABLE KEYS */;
INSERT INTO `app_watchlist_platforms` VALUES (52,2,1),(53,2,4),(51,2,8),(54,2,9),(50,3,4),(49,3,8),(48,4,4),(47,4,8),(44,5,1),(45,5,4),(43,5,8),(46,5,9),(41,6,1),(42,6,4),(40,6,8),(38,7,1),(39,7,4),(37,7,8),(35,8,1),(36,8,4),(34,8,8),(33,9,4),(32,9,8),(31,10,4),(29,10,8),(30,10,9),(28,11,4),(26,11,8),(27,11,9),(25,13,4),(24,13,8),(22,14,1),(23,14,4),(21,14,8),(20,15,1),(19,16,3),(17,17,3),(18,17,7),(15,18,2),(16,18,7),(13,19,3),(14,19,7),(12,19,9),(9,20,1),(10,20,2),(11,20,7),(8,21,2),(7,22,2),(5,23,2),(6,23,4),(4,23,8),(3,24,3),(2,25,3),(1,26,3),(55,31,1);
/*!40000 ALTER TABLE `app_watchlist_platforms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add movie',7,'add_movie'),(26,'Can change movie',7,'change_movie'),(27,'Can delete movie',7,'delete_movie'),(28,'Can view movie',7,'view_movie'),(29,'Can add stream platform',8,'add_streamplatform'),(30,'Can change stream platform',8,'change_streamplatform'),(31,'Can delete stream platform',8,'delete_streamplatform'),(32,'Can view stream platform',8,'view_streamplatform'),(33,'Can add watch list',9,'add_watchlist'),(34,'Can change watch list',9,'change_watchlist'),(35,'Can delete watch list',9,'delete_watchlist'),(36,'Can view watch list',9,'view_watchlist'),(37,'Can add review',10,'add_review'),(38,'Can change review',10,'change_review'),(39,'Can delete review',10,'delete_review'),(40,'Can view review',10,'view_review'),(41,'Can add Token',11,'add_token'),(42,'Can change Token',11,'change_token'),(43,'Can delete Token',11,'delete_token'),(44,'Can view Token',11,'view_token'),(45,'Can add token',12,'add_tokenproxy'),(46,'Can change token',12,'change_tokenproxy'),(47,'Can delete token',12,'delete_tokenproxy'),(48,'Can view token',12,'view_tokenproxy');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$260000$alBLWidviaovnmZgvh83cV$4GPvNsZlvRy/fVZvfsUaCx3Zh7rpmSOEO1nHiz0nn2U=','2021-10-06 13:43:43.000000',1,'rahul','Rahul','Roy','rroy11705@gmail.com',1,1,'2021-10-05 11:39:01.000000'),(2,'pbkdf2_sha256$260000$P2QEDohIsjYFO63x5xH1ci$dK+7i6Nb+6bf9Vqx4KbkOGa+gZ+TBAZ6/1DFLho1GfU=','2021-10-06 13:39:52.489039',0,'john','John','Smith','js123@gmail.com',0,1,'2021-10-06 08:00:55.000000'),(3,'pbkdf2_sha256$260000$WCaHV8vnVkj4UGwMqtwq65$pK6x1xn5mCdPR2lrAxzQW/+dXz4qXZvqjndmdBdd7DA=',NULL,0,'martha','Martha','Jones','mj123@gmail.com',0,1,'2021-10-06 10:58:17.000000'),(4,'pbkdf2_sha256$260000$ruoCRQmP6xlVsbTf5onRLb$Jk73u3b46fG0X1pTWYjIqvB4WKSpbTUs3be1pbDHw2I=',NULL,0,'clara','Clara','Oswal','co123@gmail.com',0,1,'2021-10-06 11:23:13.000000'),(6,'pbkdf2_sha256$260000$4Py8nae3PASfo2jKPLPki9$NY6382vSZuduUXWJlnTY3wxxeWUtcn9hmqFClEyD5dY=',NULL,0,'rose','Rose','Tyler','rosetyler@gmail.com',0,1,'2021-10-06 20:42:09.000000');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authtoken_token`
--

DROP TABLE IF EXISTS `authtoken_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authtoken_token` (
  `key` varchar(40) NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`key`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `authtoken_token_user_id_35299eff_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authtoken_token`
--

LOCK TABLES `authtoken_token` WRITE;
/*!40000 ALTER TABLE `authtoken_token` DISABLE KEYS */;
INSERT INTO `authtoken_token` VALUES ('7a562633fc77d5d83d1ce9aa204188e62306ad45','2021-10-06 20:42:10.928873',6),('8d7d18e50b601af54901b9c99b4d0e2fe0c34796','2021-10-06 22:20:54.332301',1),('e1c508f08897cde50de7a81c7e905d5a26dd8c05','2021-10-06 11:23:13.996112',4);
/*!40000 ALTER TABLE `authtoken_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2021-10-05 11:43:35.762175','1','Pather Panchali',1,'[{\"added\": {}}]',7,1),(2,'2021-10-05 11:43:56.295271','2','Aparajito',1,'[{\"added\": {}}]',7,1),(3,'2021-10-05 11:44:47.035949','3','Apur Sansar',1,'[{\"added\": {}}]',7,1),(4,'2021-10-05 15:06:58.503251','1','Fullmetal Alchemist: Brotherhood',1,'[{\"added\": {}}]',9,1),(5,'2021-10-05 15:08:15.276690','1','Fullmetal Alchemist: Brotherhood',3,'',9,1),(6,'2021-10-05 15:08:25.805096','2','Fullmetal Alchemist: Brotherhood',1,'[{\"added\": {}}]',9,1),(7,'2021-10-05 15:09:53.366040','3','Gintama',1,'[{\"added\": {}}]',9,1),(8,'2021-10-05 15:10:14.146051','4','Steins;Gate',1,'[{\"added\": {}}]',9,1),(9,'2021-10-05 15:10:36.868543','5','Shingeki no Kyojin',1,'[{\"added\": {}}]',9,1),(10,'2021-10-05 15:11:02.692304','6','Kimi no Na wa.',1,'[{\"added\": {}}]',9,1),(11,'2021-10-05 15:11:24.673391','7','Mob Psycho 100',1,'[{\"added\": {}}]',9,1),(12,'2021-10-05 15:11:44.192068','8','Monster',1,'[{\"added\": {}}]',9,1),(13,'2021-10-05 15:12:01.572622','9','Kimi no Suizou wo Tabetai',1,'[{\"added\": {}}]',9,1),(14,'2021-10-05 15:17:03.184712','1','Netflix',1,'[{\"added\": {}}]',8,1),(15,'2021-10-05 15:17:50.417874','2','Prime Videos',1,'[{\"added\": {}}]',8,1),(16,'2021-10-05 15:19:21.920589','3','Disney+',1,'[{\"added\": {}}]',8,1),(17,'2021-10-05 15:19:56.522064','4','Funimation',1,'[{\"added\": {}}]',8,1),(18,'2021-10-05 15:26:19.012346','5','YouTube',1,'[{\"added\": {}}]',8,1),(19,'2021-10-05 15:26:36.457611','5','YouTube',2,'[{\"changed\": {\"fields\": [\"About\"]}}]',8,1),(20,'2021-10-05 16:03:58.589122','9','Kimi no Suizou wo Tabetai',2,'[{\"changed\": {\"fields\": [\"Platforms\"]}}]',9,1),(21,'2021-10-05 16:04:12.424820','8','Monster',2,'[{\"changed\": {\"fields\": [\"Platforms\"]}}]',9,1),(22,'2021-10-05 16:04:19.076279','7','Mob Psycho 100',2,'[{\"changed\": {\"fields\": [\"Platforms\"]}}]',9,1),(23,'2021-10-05 16:04:27.436285','6','Kimi no Na wa.',2,'[{\"changed\": {\"fields\": [\"Platforms\"]}}]',9,1),(24,'2021-10-05 16:04:34.978243','5','Shingeki no Kyojin',2,'[{\"changed\": {\"fields\": [\"Platforms\"]}}]',9,1),(25,'2021-10-05 16:04:40.961679','4','Steins;Gate',2,'[{\"changed\": {\"fields\": [\"Platforms\"]}}]',9,1),(26,'2021-10-05 16:04:50.460366','3','Gintama',2,'[{\"changed\": {\"fields\": [\"Platforms\"]}}]',9,1),(27,'2021-10-05 16:04:57.234894','2','Fullmetal Alchemist: Brotherhood',2,'[{\"changed\": {\"fields\": [\"Platforms\"]}}]',9,1),(28,'2021-10-05 16:54:16.227822','1','4 | Fullmetal Alchemist: Brotherhood',1,'[{\"added\": {}}]',10,1),(29,'2021-10-05 17:50:08.965408','4','5 | Fullmetal Alchemist: Brotherhood',3,'',10,1),(30,'2021-10-06 07:47:49.445521','6','None',1,'[{\"added\": {}}]',8,1),(31,'2021-10-06 07:52:41.203922','7','HBO Max',1,'[{\"added\": {}}]',8,1),(32,'2021-10-06 07:53:53.342325','10','Jujutsu Kaisen',1,'[{\"added\": {}}]',9,1),(33,'2021-10-06 07:59:00.714963','6','3 | Kimi no Na wa.',2,'[{\"changed\": {\"fields\": [\"Reviewer\"]}}]',10,1),(34,'2021-10-06 08:00:55.674099','2','john',1,'[{\"added\": {}}]',4,1),(35,'2021-10-06 08:01:28.612447','2','john',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\"]}}]',4,1),(36,'2021-10-06 08:01:47.926028','5','5 | Steins;Gate',2,'[{\"changed\": {\"fields\": [\"Reviewer\"]}}]',10,1),(37,'2021-10-06 08:01:52.777950','3','5 | Fullmetal Alchemist: Brotherhood',2,'[{\"changed\": {\"fields\": [\"Reviewer\"]}}]',10,1),(38,'2021-10-06 08:02:03.818591','3','5 | Fullmetal Alchemist: Brotherhood',2,'[{\"changed\": {\"fields\": [\"Reviewer\"]}}]',10,1),(39,'2021-10-06 08:02:12.322737','2','5 | Shingeki no Kyojin',2,'[{\"changed\": {\"fields\": [\"Reviewer\"]}}]',10,1),(40,'2021-10-06 08:02:18.394199','1','4 | Fullmetal Alchemist: Brotherhood',2,'[{\"changed\": {\"fields\": [\"Reviewer\"]}}]',10,1),(41,'2021-10-06 09:11:39.126042','13','5 | Gintama',3,'',10,1),(42,'2021-10-06 09:11:39.231045','12','5 | Gintama',3,'',10,1),(43,'2021-10-06 09:11:39.399661','11','5 | Gintama',3,'',10,1),(44,'2021-10-06 09:11:39.848939','10','5 | Gintama',3,'',10,1),(45,'2021-10-06 09:11:40.210152','9','5 | Gintama',3,'',10,1),(46,'2021-10-06 09:11:40.371852','8','5 | Gintama',3,'',10,1),(47,'2021-10-06 09:11:40.489883','7','5 | Gintama',3,'',10,1),(48,'2021-10-06 09:11:40.569617','6','3 | Kimi no Na wa.',3,'',10,1),(49,'2021-10-06 09:11:40.729820','5','5 | Steins;Gate',3,'',10,1),(50,'2021-10-06 09:11:41.095970','3','5 | Fullmetal Alchemist: Brotherhood',3,'',10,1),(51,'2021-10-06 09:11:41.174223','2','5 | Shingeki no Kyojin',3,'',10,1),(52,'2021-10-06 09:11:41.326777','1','4 | Fullmetal Alchemist: Brotherhood',3,'',10,1),(53,'2021-10-06 10:05:55.081404','1','738b824bb046203db43c78825b8969cb3bbf2373',1,'[{\"added\": {}}]',12,1),(54,'2021-10-06 10:06:00.523074','2','8837b2f3a858713b4d1d855566ac8ca77840616f',1,'[{\"added\": {}}]',12,1),(55,'2021-10-06 11:28:10.627862','2','john',2,'[{\"changed\": {\"fields\": [\"Last name\"]}}]',4,1),(56,'2021-10-06 11:28:27.321906','2','john',2,'[{\"changed\": {\"fields\": [\"Email address\"]}}]',4,1),(57,'2021-10-06 17:24:15.035505','13','Bleach',1,'[{\"added\": {}}]',9,1),(58,'2021-10-06 17:25:13.632206','14','Kimetsu no Yaiba',1,'[{\"added\": {}}]',9,1),(59,'2021-10-06 17:25:24.371699','14','Kimetsu no Yaiba',2,'[{\"changed\": {\"fields\": [\"Platforms\"]}}]',9,1),(60,'2021-10-06 17:27:24.029709','15','Rick And Morty',1,'[{\"added\": {}}]',9,1),(61,'2021-10-06 17:28:13.655160','16','Gravity Falls',1,'[{\"added\": {}}]',9,1),(62,'2021-10-06 17:28:59.263681','17','The Simpsons',1,'[{\"added\": {}}]',9,1),(63,'2021-10-06 17:29:36.402254','18','Doctor Who',1,'[{\"added\": {}}]',9,1),(64,'2021-10-06 17:31:26.559509','19','Family Guy',1,'[{\"added\": {}}]',9,1),(65,'2021-10-06 17:31:49.482854','20','The Big Bang Theory',1,'[{\"added\": {}}]',9,1),(66,'2021-10-06 17:32:29.761820','20','The Big Bang Theory',2,'[{\"changed\": {\"fields\": [\"Platforms\"]}}]',9,1),(67,'2021-10-06 17:33:28.287524','21','The Boys',1,'[{\"added\": {}}]',9,1),(68,'2021-10-06 17:34:02.698072','22','Good Omen',1,'[{\"added\": {}}]',9,1),(69,'2021-10-06 17:36:48.205256','23','Dororo',1,'[{\"added\": {}}]',9,1),(70,'2021-10-06 17:39:49.306483','24','Loki',1,'[{\"added\": {}}]',9,1),(71,'2021-10-06 17:39:52.838570','24','Loki',2,'[]',9,1),(72,'2021-10-06 17:40:37.876194','25','What If?',1,'[{\"added\": {}}]',9,1),(73,'2021-10-06 17:41:17.431160','26','Guardians Of The Galaxy',1,'[{\"added\": {}}]',9,1),(74,'2021-10-06 17:41:32.348628','16','Gravity Falls',2,'[{\"changed\": {\"fields\": [\"Platforms\"]}}]',9,1),(75,'2021-10-06 22:20:36.051620','1','738b824bb046203db43c78825b8969cb3bbf2373',2,'[]',12,1),(76,'2021-10-06 22:20:45.379705','1','738b824bb046203db43c78825b8969cb3bbf2373',3,'',12,1),(77,'2021-10-06 22:20:54.345887','1','8d7d18e50b601af54901b9c99b4d0e2fe0c34796',1,'[{\"added\": {}}]',12,1),(78,'2021-10-07 11:22:54.400582','26','Guardians Of The Galaxy',2,'[{\"changed\": {\"fields\": [\"Platforms\"]}}]',9,1),(79,'2021-10-07 11:23:01.809998','25','What If?',2,'[{\"changed\": {\"fields\": [\"Platforms\"]}}]',9,1),(80,'2021-10-07 11:23:08.411098','24','Loki',2,'[{\"changed\": {\"fields\": [\"Platforms\"]}}]',9,1),(81,'2021-10-07 11:23:19.795970','23','Dororo',2,'[{\"changed\": {\"fields\": [\"Platforms\"]}}]',9,1),(82,'2021-10-07 11:23:27.674942','22','Good Omen',2,'[{\"changed\": {\"fields\": [\"Platforms\"]}}]',9,1),(83,'2021-10-07 11:23:33.668625','21','The Boys',2,'[{\"changed\": {\"fields\": [\"Platforms\"]}}]',9,1),(84,'2021-10-07 11:23:49.523224','20','The Big Bang Theory',2,'[{\"changed\": {\"fields\": [\"Platforms\"]}}]',9,1),(85,'2021-10-07 11:24:50.243954','19','Family Guy',2,'[{\"changed\": {\"fields\": [\"Platforms\"]}}]',9,1),(86,'2021-10-07 11:25:10.987436','18','Doctor Who',2,'[{\"changed\": {\"fields\": [\"Platforms\"]}}]',9,1),(87,'2021-10-07 11:26:06.849243','17','The Simpsons',2,'[{\"changed\": {\"fields\": [\"Platforms\"]}}]',9,1),(88,'2021-10-07 11:26:12.337842','16','Gravity Falls',2,'[{\"changed\": {\"fields\": [\"Platforms\"]}}]',9,1),(89,'2021-10-07 11:26:34.154010','15','Rick And Morty',2,'[{\"changed\": {\"fields\": [\"Platforms\"]}}]',9,1),(90,'2021-10-07 11:26:57.365814','14','Kimetsu no Yaiba',2,'[{\"changed\": {\"fields\": [\"Platforms\"]}}]',9,1),(91,'2021-10-07 11:27:06.473914','13','Bleach',2,'[{\"changed\": {\"fields\": [\"Platforms\"]}}]',9,1),(92,'2021-10-07 11:27:51.096859','11','Naruto: Shippuuden',2,'[{\"changed\": {\"fields\": [\"Platforms\"]}}]',9,1),(93,'2021-10-07 11:28:00.804843','10','Jujutsu Kaisen',2,'[{\"changed\": {\"fields\": [\"Platforms\"]}}]',9,1),(94,'2021-10-07 11:28:13.394114','9','Kimi no Suizou wo Tabetai',2,'[{\"changed\": {\"fields\": [\"Platforms\"]}}]',9,1),(95,'2021-10-07 11:29:09.348803','8','Monster',2,'[{\"changed\": {\"fields\": [\"Platforms\"]}}]',9,1),(96,'2021-10-07 11:29:20.199295','7','Mob Psycho 100',2,'[{\"changed\": {\"fields\": [\"Platforms\"]}}]',9,1),(97,'2021-10-07 11:29:30.076427','6','Kimi no Na wa.',2,'[{\"changed\": {\"fields\": [\"Platforms\"]}}]',9,1),(98,'2021-10-07 11:29:45.467617','5','Shingeki no Kyojin',2,'[{\"changed\": {\"fields\": [\"Platforms\"]}}]',9,1),(99,'2021-10-07 11:29:54.089805','4','Steins;Gate',2,'[{\"changed\": {\"fields\": [\"Platforms\"]}}]',9,1),(100,'2021-10-07 11:30:02.772855','3','Gintama',2,'[{\"changed\": {\"fields\": [\"Platforms\"]}}]',9,1),(101,'2021-10-07 11:30:17.420330','2','Fullmetal Alchemist: Brotherhood',2,'[{\"changed\": {\"fields\": [\"Platforms\"]}}]',9,1),(102,'2021-10-07 11:31:41.272780','19','4 | Fullmetal Alchemist: Brotherhood | john',1,'[{\"added\": {}}]',10,1),(103,'2021-10-07 11:32:06.897800','20','5 | Mob Psycho 100 | rose',1,'[{\"added\": {}}]',10,1),(104,'2021-10-07 11:32:58.821131','21','5 | Rick And Morty | rahul',1,'[{\"added\": {}}]',10,1),(105,'2021-10-07 11:33:41.245218','22','5 | Rick And Morty | martha',1,'[{\"added\": {}}]',10,1),(106,'2021-10-07 11:34:32.588020','23','4 | Rick And Morty | clara',1,'[{\"added\": {}}]',10,1),(107,'2021-10-07 11:35:24.995641','31','BoJack Horseman',1,'[{\"added\": {}}]',9,1),(108,'2021-10-07 11:37:03.587136','24','5 | BoJack Horseman | rahul',1,'[{\"added\": {}}]',10,1),(109,'2021-10-07 11:37:38.032309','25','4 | BoJack Horseman | clara',1,'[{\"added\": {}}]',10,1),(110,'2021-10-07 11:37:52.739996','5','clar',3,'',4,1),(111,'2021-10-07 11:38:16.237950','4','clara',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\"]}}]',4,1),(112,'2021-10-07 11:38:28.451837','3','martha',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\"]}}]',4,1),(113,'2021-10-07 11:38:37.399861','1','rahul',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\"]}}]',4,1),(114,'2021-10-07 11:38:38.813112','1','rahul',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\"]}}]',4,1),(115,'2021-10-07 11:38:48.538673','6','rose',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\"]}}]',4,1),(116,'2021-10-07 11:39:30.928381','26','5 | Kimetsu no Yaiba | martha',1,'[{\"added\": {}}]',10,1),(117,'2021-10-07 11:45:25.307987','14','Kimetsu no Yaiba',2,'[{\"changed\": {\"fields\": [\"Avg rating\", \"Number rating\"]}}]',9,1),(118,'2021-10-07 11:45:52.417008','31','BoJack Horseman',2,'[{\"changed\": {\"fields\": [\"Avg rating\", \"Number rating\"]}}]',9,1),(119,'2021-10-07 11:46:51.464961','15','Rick And Morty',2,'[{\"changed\": {\"fields\": [\"Avg rating\", \"Number rating\"]}}]',9,1),(120,'2021-10-07 11:47:15.998879','7','Mob Psycho 100',2,'[{\"changed\": {\"fields\": [\"Avg rating\", \"Number rating\"]}}]',9,1),(121,'2021-10-07 11:48:42.840346','2','Fullmetal Alchemist: Brotherhood',2,'[{\"changed\": {\"fields\": [\"Avg rating\", \"Number rating\"]}}]',9,1),(122,'2021-10-07 11:49:11.617754','10','Jujutsu Kaisen',2,'[]',9,1),(123,'2021-10-07 13:23:01.890233','25','4',2,'[{\"changed\": {\"fields\": [\"Active\"]}}]',10,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(10,'app','review'),(8,'app','streamplatform'),(9,'app','watchlist'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(11,'authtoken','token'),(12,'authtoken','tokenproxy'),(5,'contenttypes','contenttype'),(7,'movielist_app','movie'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-10-05 11:35:57.740561'),(2,'auth','0001_initial','2021-10-05 11:36:39.580429'),(3,'admin','0001_initial','2021-10-05 11:36:58.082717'),(4,'admin','0002_logentry_remove_auto_add','2021-10-05 11:36:58.224366'),(5,'admin','0003_logentry_add_action_flag_choices','2021-10-05 11:36:58.393840'),(6,'contenttypes','0002_remove_content_type_name','2021-10-05 11:37:10.264163'),(7,'auth','0002_alter_permission_name_max_length','2021-10-05 11:37:16.481708'),(8,'auth','0003_alter_user_email_max_length','2021-10-05 11:37:17.739045'),(9,'auth','0004_alter_user_username_opts','2021-10-05 11:37:17.960396'),(10,'auth','0005_alter_user_last_login_null','2021-10-05 11:37:25.080060'),(11,'auth','0006_require_contenttypes_0002','2021-10-05 11:37:25.392983'),(12,'auth','0007_alter_validators_add_error_messages','2021-10-05 11:37:25.566553'),(13,'auth','0008_alter_user_username_max_length','2021-10-05 11:37:31.821631'),(14,'auth','0009_alter_user_last_name_max_length','2021-10-05 11:37:37.805613'),(15,'auth','0010_alter_group_name_max_length','2021-10-05 11:37:39.487604'),(16,'auth','0011_update_proxy_permissions','2021-10-05 11:37:39.821085'),(17,'auth','0012_alter_user_first_name_max_length','2021-10-05 11:37:43.677525'),(18,'movielist_app','0001_initial','2021-10-05 11:37:45.810111'),(19,'sessions','0001_initial','2021-10-05 11:37:51.398341'),(20,'app','0001_initial','2021-10-05 14:55:11.258289'),(21,'app','0002_auto_20211005_2036','2021-10-05 15:06:11.777363'),(22,'app','0003_auto_20211005_2130','2021-10-05 16:01:01.967713'),(23,'app','0004_watchlist_platforms','2021-10-05 16:03:41.948851'),(24,'app','0005_review','2021-10-05 16:52:40.978093'),(25,'app','0006_auto_20211006_1320','2021-10-06 07:50:47.386192'),(26,'app','0007_auto_20211006_1425','2021-10-06 08:56:12.692303'),(27,'app','0008_alter_review_reviewer','2021-10-06 09:12:14.488416'),(28,'authtoken','0001_initial','2021-10-06 10:05:20.462798'),(29,'authtoken','0002_auto_20160226_1747','2021-10-06 10:05:20.652481'),(30,'authtoken','0003_tokenproxy','2021-10-06 10:05:20.736207'),(31,'app','0009_alter_watchlist_platforms','2021-10-06 22:44:46.397421'),(32,'app','0010_auto_20211007_1045','2021-10-07 11:17:48.422361'),(33,'app','0011_remove_watchlist_number_rating','2021-10-07 12:03:07.790157'),(34,'app','0012_remove_watchlist_avg_rating','2021-10-07 12:06:06.071485');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('ec6qwshx7u0o7jmrjsyxyjv76gs0hoti','.eJxVjEEOwiAQRe_C2hCG4kBduu8ZyACDVA0kpV0Z765NutDtf-_9l_C0rcVvnRc_J3ERIE6_W6D44LqDdKd6azK2ui5zkLsiD9rl1BI_r4f7d1Col2-dE5MZwUVMAREsDMllZQHtOKBS7ExkCgE4Ko1szhqyJQMYM7khaxDvD-RMN8o:1mY7Cx:wzukzl-qrBcge5nx6Ha9ZCy8ogSSL5_96lPdI4i5XeM','2021-10-20 13:43:43.930970');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-07 20:15:50
