-- MySQL dump 10.13  Distrib 5.6.17, for osx10.9 (x86_64)
--
-- Host: localhost    Database: photosDevelopment
-- ------------------------------------------------------
-- Server version	5.6.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `photoStations`
--

DROP TABLE IF EXISTS `photoStations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photoStations` (
  `photoId` int(8) NOT NULL,
  `stationId` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photoStations`
--

LOCK TABLES `photoStations` WRITE;
/*!40000 ALTER TABLE `photoStations` DISABLE KEYS */;
INSERT INTO `photoStations` VALUES (1,297),(2,281),(3,242),(4,281),(5,161),(5,266),(6,128),(6,225),(6,262),(7,200),(7,230),(8,147);
/*!40000 ALTER TABLE `photoStations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photos`
--

DROP TABLE IF EXISTS `photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photos` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` mediumtext NOT NULL,
  `lng` varchar(30) NOT NULL,
  `lat` varchar(30) NOT NULL,
  `smallUrl` varchar(255) NOT NULL,
  `largeUrl` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photos`
--

LOCK TABLES `photos` WRITE;
/*!40000 ALTER TABLE `photos` DISABLE KEYS */;
INSERT INTO `photos` VALUES (1,'Houses of Parliament','This spot directly opposite the Houses of Parliament is a great place to go to get a view of this iconic building and the Elizabeth Tower which houses Big Ben.  The bridge itself works as a great leading line and there are a few different angles you can get around this spot using the tunnel, steps and hospital part behind you.<P>This spot is accessible 24 hours a day, but it\'s best to visit for sunset and blue hour where you can get some fantastic light coming from behind the subject.<P>The place can get busy with other photographers, especially during the summer, so if you really want to get a shot from a particular spot you may wish to arrive there early. ','-0.120032','51.500753','http://photos.murphyz.co.uk/Other/Portfolio/i-xTXDcPB/0/S/London%27s%20Burning-S.jpg','http://photos.murphyz.co.uk/Other/Portfolio/i-xTXDcPB/0/L/London%27s%20Burning-L.jpg'),(2,'London Eye','This is one of the icons of London that you will want to shoot on your visit, and there are some great angles to be had of it from both sides of the river. <P>Security immediately around the London Eye will not allow you to use a tripod. If you stand directly in front of the wheel they will likely also ask you to stop taking photos even if you\'re doing so handheld.  At low tide you can gain access to the area under the wheel via the beach, but this is private property and you will be shouted at to clear off. No signs are in place due to the water levels at full tide. <P>As such, speed is needed here so grab shots while you can before the security arrive and tell you to clear off.  Wearing headphones will allow you to ignore any calls to stop that they may shout in your direction which will of course buy you more time before they are suddenly stood beside you.<P>Try moving back a bit from the wheel to have less hassle.  The lovely Jubilee Gardens offers some nice vantage points, and you can go across the river directly opposite the Eye to get a straight on view. ','-0.117425','51.503935','http://photos.murphyz.co.uk/Other/London/i-Pj3XJbW/0/S/20130513-IMG_8209-Edit-S.jpg','http://photos.murphyz.co.uk/Other/London/i-Pj3XJbW/0/X2/20130513-IMG_8209-Edit-X2.jpg'),(3,'Tate Modern','The Tate Modern is a cool museum that\'s contained within an old power station. It can often have some great exhibits, some of which are on a large scale in the \"Turbine Hall\" and it also has a nice river facing view from the public cafe. <P>Being an old power station, the museum itself is also pretty cool to look at and you should be able to get some worthwhile shots from various angles simply looking up at the building. <P>I prefer to shoot this building during the daytime with interesting clouds in the sky.  The spotlights at the foot of the main tower at night time are pretty bright and don\'t look great in an image. ','-0.099514','51.50789','http://photos.murphyz.co.uk/Other/London/i-bHNtR5q/0/S/_-2-S.jpg','http://photos.murphyz.co.uk/Other/London/i-bHNtR5q/0/X2/_-2-X2.jpg'),(4,'Leake Street','This is an authorised graffiti tunnel stretching around 300 meters in length and is a great place to visit to get some urban grime in a central location - as it\'s a tunnel it\'s also a great spot to go and shoot if it\'s raining.<P>The tunnel is pretty active with people passing through, painting on the walls, shooting videos and - like you - taking photos.  ','-0.114246','51.501031','http://photos.murphyz.co.uk/Other/London/i-vkc4C24/0/S/Grate%20graffiti%20tunnel-S.jpg','http://photos.murphyz.co.uk/Other/London/i-vkc4C24/0/X2/Grate%20graffiti%20tunnel-X2.jpg'),(5,'Tower Bridge','What an icon this bridge is!<P>Though there are several viewing points to get a nice shot of the bridge, you should also consider taking an image from on the bridge itself. <P>Visiting at blue hour or night time will allow you to get some great long exposures of the busy traffic on the bridge, and there are plenty of buses going past to really make your light trails stand out. ','-0.074566','51.506795','http://photos.murphyz.co.uk/Other/Portfolio/i-LLHt5SM/0/S/tb-S.jpg','http://photos.murphyz.co.uk/Other/Portfolio/i-LLHt5SM/0/L/tb-L.jpg'),(6,'British Museum','This museum has some amazing architecture, so be sure to head inside even if you aren\'t really interested in any of the exhibitions. <P>After walking in the main entrance you will enter the Great Hall which has a beautiful roof designed by Norman Foster.  You can get many great images looking up at this from various parts of the hall. <P>If you come into the main entrance and go up some stairs on the left, instead of moving forward to the Great Hall, then you can get to a great viewing window which looks down on to the Great Hall itself (pictured here).<P>Then of course there are some good shots to be had at the exhibitions themselves, a particular favourite being the Egyptian Collection in wing 4 (left centre of the Great Hall). <P>No tripods are allowed within the museum or the grounds; though in some areas of the grounds you can often get away with it when away from the regular flow of people. ','-0.126212','51.518804','http://photos.murphyz.co.uk/Other/Portfolio/i-7Lj5FpL/0/S/bm-S.jpg','http://photos.murphyz.co.uk/Other/Portfolio/i-7Lj5FpL/0/L/bm-L.jpg'),(7,'Battersea Power Station View','Here\'s a great spot opposite the iconic Battersea Power Station, an old and abandoned power plant which is featured on the front cover of the album \'Animals\' by Pink Floyd.<P>This is a great spot at any time of day, but the plant really looks great by moonlight or at sunrise. <P>Be sure to get this image while you can - the plant is being redeveloped into a shopping mall and luxury accommodation so will not be in the current state for much longer. ','-0.146999','51.485736','http://photos.murphyz.co.uk/Other/London/i-6Hq7cSD/1/S/_-33-S.jpg','http://photos.murphyz.co.uk/Other/London/i-6Hq7cSD/1/X2/_-33-X2.jpg'),(8,'St Pancras International','This station is very busy, with passengers departing to various places around the UK, as well as being the Eurostar hub taking passengers to various European locations via high speed train. <P>The upper levels are oddly pretty quiet, and also home to the longest champagne bar in the world, and it\'s here that you well get some great images of the architecture and statues in the station.<P>Tripods are frowned upon, but in the upper levels when it\'s quiet you can often go ahead and use them, or at the least get your images taken prior to someone turning up and telling you not to take them.<P>If happen to be travelling on the Eurostar be sure to go ahead and grab a few images from the train platform prior to getting on the train or exiting the station, as that\'s the only chance you will have to get some angles. <P>This station actively participates in charity ventures and awareness campaigns so you may be lucky during your visit to see an art installation or event of some sort taking place.','-0.124906','51.529748','http://photos.murphyz.co.uk/Other/London/i-cQrc9RN/0/S/20130120-IMG_1303_4_5-S.jpg','http://photos.murphyz.co.uk/Other/London/i-cQrc9RN/0/X2/20130120-IMG_1303_4_5-X2.jpg');
/*!40000 ALTER TABLE `photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stations`
--

DROP TABLE IF EXISTS `stations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stations` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=309 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stations`
--

LOCK TABLES `stations` WRITE;
/*!40000 ALTER TABLE `stations` DISABLE KEYS */;
INSERT INTO `stations` VALUES (1,'Acton Town'),(2,'Aldgate'),(3,'Aldgate East'),(4,'All Saints'),(5,'Alperton'),(6,'Amersham'),(7,'Angel'),(8,'Archway'),(9,'Arnos Grove'),(10,'Arsenal'),(11,'Baker Street'),(12,'Balham'),(13,'Bank'),(14,'Barbican'),(15,'Barking'),(16,'Barkingside'),(17,'Barons Court'),(18,'Bayswater'),(19,'Beckton'),(20,'Beckton Park'),(21,'Becontree'),(22,'Belsize Park'),(23,'Bermondsey'),(24,'Bethnal Green'),(25,'Blackfriars'),(26,'Blackhorse Road'),(27,'Blackwall'),(28,'Bond Street'),(29,'Borough'),(30,'Boston Manor'),(31,'Bounds Green'),(32,'Bow Church'),(33,'Bow Road'),(34,'Brent Cross'),(35,'Brixton'),(36,'Bromley-by-Bow'),(37,'Buckhurst Hill'),(38,'Burnt Oak'),(39,'Caledonian Road'),(40,'Camden Town'),(41,'Canada Water'),(42,'Canary Wharf'),(43,'Canning Town'),(44,'Cannon Street'),(45,'Canons Park'),(46,'Chalfont & Latimer'),(47,'Chalk Farm'),(48,'Chancery Lane'),(49,'Charing Cross'),(50,'Chesham'),(51,'Chigwell'),(52,'Chiswick Park'),(53,'Chorleywood'),(54,'Clapham Common'),(55,'Clapham North'),(56,'Clapham South'),(57,'Cockfosters'),(58,'Colindale'),(59,'Colliers Wood'),(60,'Covent Garden'),(61,'Crossharbour'),(62,'Croxley'),(63,'Custom House for ExCeL'),(64,'Cutty Sark for Maritime Greenwich'),(65,'Cyprus'),(66,'Dagenham East'),(67,'Dagenham Heathway'),(68,'Debden'),(69,'Deptford Bridge'),(70,'Devons Road'),(71,'Dollis Hill'),(72,'Ealing Broadway'),(73,'Ealing Common'),(74,'Earl\'s Court'),(75,'East Acton'),(76,'East Finchley'),(77,'East Ham'),(78,'East India'),(79,'East Putney'),(80,'Eastcote'),(81,'Edgware'),(82,'Edgware Road'),(83,'Edgware Road'),(84,'Elephant & Castle'),(85,'Elm Park'),(86,'Elverson Road'),(87,'Embankment'),(88,'Epping'),(89,'Euston'),(90,'Euston Square'),(91,'Fairlop'),(92,'Farringdon'),(93,'Finchley Central'),(94,'Finchley Road'),(95,'Finsbury Park'),(96,'Fulham Broadway'),(97,'Gallions Reach'),(98,'Gants Hill'),(99,'Gloucester Road'),(100,'Golders Green'),(101,'Goldhawk Road'),(102,'Goodge Street'),(103,'Grange Hill'),(104,'Great Portland Street'),(105,'Green Park'),(106,'Greenford'),(107,'Greenwich'),(108,'Gunnersbury'),(109,'Hainault'),(110,'Hammersmith'),(111,'Hammersmith'),(112,'Hampstead'),(113,'Hanger Lane'),(114,'Harlesden'),(115,'Harrow & Wealdstone'),(116,'Harrow-on-the-Hill'),(117,'Hatton Cross'),(118,'Heathrow Terminal 4'),(119,'Heathrow Terminal 5'),(120,'Heathrow Terminals 1, 2, 3'),(121,'Hendon Central'),(122,'Heron Quays'),(123,'High Barnet'),(124,'High Street Kensington'),(125,'Highbury & Islington'),(126,'Highgate'),(127,'Hillingdon'),(128,'Holborn'),(129,'Holland Park'),(130,'Holloway Road'),(131,'Hornchurch'),(132,'Hounslow Central'),(133,'Hounslow East'),(134,'Hounslow West'),(135,'Hyde Park Corner'),(136,'Ickenham'),(137,'Island Gardens'),(138,'Kennington'),(139,'Kensal Green'),(140,'Kensington (Olympia)'),(141,'Kentish Town'),(142,'Kenton'),(143,'Kew Gardens'),(144,'Kilburn'),(145,'Kilburn Park'),(146,'King George V'),(147,'King\'s Cross St. Pancras'),(148,'Kingsbury'),(149,'Knightsbridge'),(150,'Ladbroke Grove'),(151,'Lambeth North'),(152,'Lancaster Gate'),(153,'Langdon Park'),(154,'Latimer Road'),(155,'Leicester Square'),(156,'Lewisham'),(157,'Leyton'),(158,'Leytonstone'),(159,'Limehouse'),(160,'Liverpool Street'),(161,'London Bridge'),(162,'London City Airport'),(163,'Loughton'),(164,'Maida Vale'),(165,'Manor House'),(166,'Mansion House'),(167,'Marble Arch'),(168,'Marylebone'),(169,'Mile End'),(170,'Mill Hill East'),(171,'Monument'),(172,'Moor Park'),(173,'Moorgate'),(174,'Morden'),(175,'Mornington Crescent'),(176,'Mudchute'),(177,'Neasden'),(178,'Newbury Park'),(179,'North Acton'),(180,'North Ealing'),(181,'North Greenwich'),(182,'North Harrow'),(183,'North Wembley'),(184,'Northfields'),(185,'Northolt'),(186,'Northwick Park'),(187,'Northwood'),(188,'Northwood Hills'),(189,'Notting Hill Gate'),(190,'Oakwood'),(191,'Old Street'),(192,'Osterley'),(193,'Oval'),(194,'Oxford Circus'),(195,'Paddington'),(196,'Park Royal'),(197,'Parsons Green'),(198,'Perivale'),(199,'Piccadilly Circus'),(200,'Pimlico'),(201,'Pinner'),(202,'Plaistow'),(203,'Pontoon Dock'),(204,'Poplar'),(205,'Preston Road'),(206,'Prince Regent'),(207,'Pudding Mill Lane'),(208,'Putney Bridge'),(209,'Queen\'s Park'),(210,'Queensbury'),(211,'Queensway'),(212,'Ravenscourt Park'),(213,'Rayners Lane'),(214,'Redbridge'),(215,'Regent\'s Park'),(216,'Richmond'),(217,'Rickmansworth'),(218,'Roding Valley'),(219,'Royal Albert'),(220,'Royal Oak'),(221,'Royal Victoria'),(222,'Ruislip'),(223,'Ruislip Gardens'),(224,'Ruislip Manor'),(225,'Russell Square'),(226,'Seven Sisters'),(227,'Shadwell'),(228,'Shepherd\'s Bush'),(229,'Shepherd\'s Bush Market'),(230,'Sloane Square'),(231,'Snaresbrook'),(232,'South Ealing'),(233,'South Harrow'),(234,'South Kensington'),(235,'South Kenton'),(236,'South Quay'),(237,'South Ruislip'),(238,'South Wimbledon'),(239,'South Woodford'),(240,'Southfields'),(241,'Southgate'),(242,'Southwark'),(243,'St. James\'s Park'),(244,'St. John\'s Wood'),(245,'St. Paul\'s'),(246,'Stamford Brook'),(247,'Stanmore'),(248,'Star Lane'),(249,'Stepney Green'),(250,'Stockwell'),(251,'Stonebridge Park'),(252,'Stratford'),(253,'Stratford High Street'),(254,'Stratford International'),(255,'Sudbury Hill'),(256,'Sudbury Town'),(257,'Swiss Cottage'),(258,'Temple'),(259,'Theydon Bois'),(260,'Tooting Bec'),(261,'Tooting Broadway'),(262,'Tottenham Court Road'),(263,'Tottenham Hale'),(264,'Totteridge & Whetstone'),(265,'Tower Gateway'),(266,'Tower Hill'),(267,'Tufnell Park'),(268,'Turnham Green'),(269,'Turnpike Lane'),(270,'Upminster'),(271,'Upminster Bridge'),(272,'Upney'),(273,'Upton Park'),(274,'Uxbridge'),(275,'Vauxhall'),(276,'Victoria'),(277,'Walthamstow Central'),(278,'Wanstead'),(279,'Warren Street'),(280,'Warwick Avenue'),(281,'Waterloo'),(282,'Watford'),(283,'Wembley Central'),(284,'Wembley Park'),(285,'West Acton'),(286,'West Brompton'),(287,'West Finchley'),(288,'West Ham'),(289,'West Hampstead'),(290,'West Harrow'),(291,'West India Quay'),(292,'West Kensington'),(293,'West Ruislip'),(294,'West Silvertown'),(295,'Westbourne Park'),(296,'Westferry'),(297,'Westminster'),(298,'White City'),(299,'Whitechapel'),(300,'Willesden Green'),(301,'Willesden Junction'),(302,'Wimbledon'),(303,'Wimbledon Park'),(304,'Wood Green'),(305,'Wood Lane'),(306,'Woodford'),(307,'Woodside Park'),(308,'Woolwich Arsenal');
/*!40000 ALTER TABLE `stations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tubeLineStations`
--

DROP TABLE IF EXISTS `tubeLineStations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tubeLineStations` (
  `lineId` int(8) NOT NULL,
  `stationId` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tubeLineStations`
--

LOCK TABLES `tubeLineStations` WRITE;
/*!40000 ALTER TABLE `tubeLineStations` DISABLE KEYS */;
INSERT INTO `tubeLineStations` VALUES (4,1),(10,1),(8,2),(3,2),(6,3),(4,3),(5,4),(10,5),(8,6),(9,7),(9,8),(10,9),(10,10),(8,11),(1,11),(3,11),(7,11),(6,11),(9,12),(12,13),(9,13),(2,13),(5,13),(8,14),(3,14),(6,14),(4,15),(6,15),(2,16),(4,17),(10,17),(4,18),(3,18),(5,19),(5,20),(4,21),(9,22),(7,23),(2,24),(4,25),(3,25),(11,26),(5,27),(2,28),(7,28),(9,29),(10,30),(10,31),(5,32),(4,33),(6,33),(9,34),(11,35),(4,36),(6,36),(2,37),(9,38),(10,39),(9,40),(7,41),(7,42),(5,42),(7,43),(5,43),(4,44),(3,44),(7,45),(8,46),(9,47),(2,48),(1,49),(9,49),(8,50),(2,51),(4,52),(8,53),(9,54),(9,55),(9,56),(10,57),(9,58),(9,59),(10,60),(5,61),(8,62),(5,63),(5,64),(5,65),(4,66),(4,67),(2,68),(5,69),(5,70),(7,71),(4,72),(2,72),(4,73),(10,73),(4,74),(10,74),(2,75),(9,76),(4,77),(6,77),(5,78),(4,79),(8,80),(10,80),(9,81),(6,82),(4,82),(3,82),(1,83),(9,84),(1,84),(4,85),(5,86),(4,87),(1,87),(9,87),(3,87),(2,88),(9,89),(11,89),(8,90),(3,90),(6,90),(2,91),(8,92),(3,92),(6,92),(9,93),(8,94),(7,94),(10,95),(11,95),(4,96),(5,97),(2,98),(4,99),(10,99),(3,99),(9,100),(6,101),(3,101),(9,102),(2,103),(8,104),(3,104),(6,104),(10,105),(11,105),(7,105),(2,106),(5,107),(4,108),(2,109),(4,110),(10,110),(6,111),(3,111),(9,112),(2,113),(1,114),(1,115),(8,116),(10,117),(10,118),(10,119),(10,120),(9,121),(5,122),(9,123),(4,124),(3,124),(11,125),(9,126),(8,127),(10,127),(2,128),(10,128),(2,129),(10,130),(4,131),(10,132),(10,133),(10,134),(10,135),(8,136),(10,136),(5,137),(9,138),(1,139),(4,140),(9,141),(1,142),(4,143),(7,144),(1,145),(5,146),(8,147),(9,147),(10,147),(3,147),(11,147),(7,148),(10,149),(6,150),(3,150),(1,151),(2,152),(5,153),(6,154),(3,154),(10,155),(9,155),(5,156),(2,157),(2,158),(5,159),(8,160),(2,160),(3,160),(6,160),(9,161),(7,161),(5,162),(2,163),(1,164),(10,165),(4,166),(3,166),(2,167),(1,168),(4,169),(6,169),(2,169),(9,170),(4,171),(3,171),(8,172),(8,173),(9,173),(3,173),(6,173),(9,174),(9,175),(5,176),(7,177),(2,178),(2,179),(10,180),(7,181),(8,182),(1,183),(10,184),(2,185),(8,186),(8,187),(8,188),(4,189),(2,189),(3,189),(10,190),(9,191),(10,192),(9,193),(2,194),(1,194),(11,194),(6,195),(4,195),(3,195),(1,195),(10,196),(4,197),(2,198),(1,199),(10,199),(11,200),(8,201),(4,202),(6,202),(5,203),(5,204),(8,205),(5,206),(5,207),(4,208),(1,209),(7,210),(2,211),(4,212),(8,213),(10,213),(2,214),(1,215),(4,216),(8,217),(2,218),(5,219),(6,220),(3,220),(5,221),(8,222),(10,222),(2,223),(8,224),(10,224),(10,225),(11,226),(5,227),(2,228),(6,229),(3,229),(4,230),(3,230),(2,231),(10,232),(10,233),(4,234),(10,234),(3,234),(1,235),(5,236),(2,237),(9,238),(2,239),(4,240),(10,241),(7,242),(4,243),(3,243),(7,244),(2,245),(4,246),(7,247),(5,248),(4,249),(6,249),(9,250),(11,250),(1,251),(2,252),(7,252),(5,252),(5,253),(5,254),(10,255),(10,256),(7,257),(4,258),(3,258),(2,259),(9,260),(9,261),(2,262),(9,262),(11,263),(9,264),(5,265),(4,266),(3,266),(9,267),(4,268),(10,268),(10,269),(4,270),(4,271),(4,272),(4,273),(6,273),(8,274),(10,274),(11,275),(4,276),(3,276),(11,276),(11,277),(2,278),(9,279),(11,279),(1,280),(12,281),(1,281),(9,281),(7,281),(8,282),(1,283),(8,284),(7,284),(2,285),(4,286),(9,287),(4,288),(6,288),(7,288),(5,288),(7,289),(8,290),(5,291),(4,292),(2,293),(5,294),(6,295),(3,295),(5,296),(4,297),(3,297),(7,297),(2,298),(4,299),(6,299),(7,300),(1,301),(4,302),(4,303),(10,304),(6,305),(3,305),(2,306),(9,307),(5,308);
/*!40000 ALTER TABLE `tubeLineStations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tubeLines`
--

DROP TABLE IF EXISTS `tubeLines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tubeLines` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `color` varchar(7) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tubeLines`
--

LOCK TABLES `tubeLines` WRITE;
/*!40000 ALTER TABLE `tubeLines` DISABLE KEYS */;
INSERT INTO `tubeLines` VALUES (1,'Bakerloo','#996633'),(2,'Central','#CC3333'),(3,'Circle','#FFCC00'),(4,'District','#006633'),(5,'Dockland\'s Light Railway','#009999'),(6,'Hammersmith & City','#CC9999'),(7,'Jubilee','#868F98'),(8,'Metropolitan','#660066'),(9,'Northern','#000000'),(10,'Piccadilly','#000099'),(11,'Victoria','#0099CC'),(12,'Waterloo & City','#66CCCC');
/*!40000 ALTER TABLE `tubeLines` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-04-12 21:11:54
