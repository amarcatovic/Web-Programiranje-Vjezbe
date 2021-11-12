-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: zadaca2-1
-- ------------------------------------------------------
-- Server version	8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `novost`
--

DROP TABLE IF EXISTS `novost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `novost` (
  `id` int NOT NULL AUTO_INCREMENT,
  `naslov` varchar(255) DEFAULT NULL,
  `opis` varchar(255) DEFAULT NULL,
  `slika` varchar(255) DEFAULT NULL,
  `sadrzaj` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `novost`
--

LOCK TABLES `novost` WRITE;
/*!40000 ALTER TABLE `novost` DISABLE KEYS */;
INSERT INTO `novost` VALUES (19,'Najava desetog kola Prvenstva BiH u košarci za muškarce – OKK Čelik gostuje ekipi Slobode u Tuzlu','Najava desetog kola Prvenstva BiH u košarci za muškarce – OKK Čelik...','https://www.zenicablog.com/wp-content/uploads/2020/12/Trener-Pandza-sa-kos.Celika-990x557.jpg','Najava desetog kola Prvenstva BiH u košarci za muškarce – OKK Čelik gostuje ekipi Slobode u Tuzlu – Predstojećeg vikenda, 12./ 13.12.2020. godine na rasporedu je 10.kolo Prvenstva BiH u košarci za muškarce, u kojoj nastupa i zenički OKK Čelik.\r\n\r\nZenički OKK Čelik se nakon pet godina vratio u najviši rang bh. košarke i u narednom, 10. kolu je gost ekipi Sloboda iz Tuzle, koja je na skoru od četiri pobjede i tri poraza. Utakmica se igra ove subote od 19 sati u KSRC Mejdan u Tuzli, a sudit će je Haris Bijedić, Nermin i Tarik Nikšić, a delegat će biti Jadran Lasetović. OKK Čelik je na skoru od četiri pobjede i četiri poraza, a u drugom kolu bili su slobodni. Trenutno su u grupi timova koji su sakupili po 10 bodova.\r\n\r\nU dosadašnjem dijelu prvenstva Zeničani su doživjeli četiri gostujuća poraza, Široki 70:59, Promo Donji Vakuf 76:58, Čapljina 80:75 i Zrinjski 85:80, ostvarili tri domaće pobjede, Mladost Mrkonjić Grad 91:76, Kakanj 96:75 i Bratunac 83:80, te jednu gostujuću pobjedu, Bosna Royal 66:78, u drugom kolu su bili slobodni. U izjavi za Zenicainfo pred utakmicu u Tuzli, trener Čelika Josip Pandža kaže:\r\n\r\n-Pripremamo se za Slobodu, nemamo povreda i ja se nadam da ćemo dobro izgledati. Moramo igrati puno više od maksimuma da bi došli do pobjede, a ja vjerujem u ove momke, jer su pokazali u više navrata da vrijedimo više i ja se nadam dobrom rezultatu –, optimista je Pandža pred gostovanje u Tuzli.\r\n\r\nEvo rasporeda 10.kola, 12.12. prema nominaciji iz KS BiH:\r\n\r\nSloboda – Čelik (19h)\r\n\r\nLeotar – Zrinjski (17)\r\n\r\nBorac – Bratunac (12./13.12.)\r\n\r\nŠiroki – Kakanj (17)\r\n\r\nPromo D.V. – Mladost (M.G.) (17)\r\n\r\nSpars Realway – Bosna Royal (18)\r\n\r\n(Slobodna je ekipa Čapljina)\r\n\r\nUtakmice će se igrati bez prisustva navijača zbog pandemije koronavirusa (COVID-19) u cijelom svijetu.\r\n\r\nE.Imamović, Foto arhiva'),(20,'Jedna osoba poginula u saobraćajnoj nesreći kod Zenice','Jedna osoba smrtno je stradala u saobraćajnoj nesreći koja u dogodila u 14.45 sati na magistralnom putu M-17 Vranduk-Zenica, kod mjesta Donja Gračanica.','https://www.zenicablog.com/wp-content/uploads/2020/12/d7b6dbc70bd7a5e0584da1b19e4064a8.jpg','Jedna osoba smrtno je stradala u saobraćajnoj nesreći koja u dogodila u 14.45 sati na magistralnom putu M-17 Vranduk-Zenica, kod mjesta Donja Gračanica.\r\n\r\nKako nam je kazao dežurni operativni u MUP-u Zeničko-dobojskog kantona (ZDK), u nesreći su učestvovala dva putnička automobila “BMW X6”, kojim je upravljao Z. E. iz Tuzle, i “golf” za čijim volanom je bila osoba inicijala H. A. (1936.).\r\n\r\n– Ljekari Kantonalne bolnice Zenica u 15.20 sati kod H. A. konstatovali su smrt – istakao je dežurni operativni.\r\n\r\nPrema riječima policijskog službenika, zbog nesreće saobraćaj je u ovom dijelu magistralnog puta potpuno obustavljen, a za vozila koja mogu saobraćati, koristit će se alternativni pravac preko Nemile.\r\n\r\nUviđaj obavljaju službenici Policijske uprave jedan pod nadzorom dežurnog kantonalnog tužioca.\r\n\r\nNakon završenog uviđaja saobraćajne nezgode i uklanjanja vozila, BIHAMK je u 17,30 objavio kako je normaliziran saobraćaj na magistralnom putu M-17 Vranduk-Zenica, kod mjesta Donja Gračanica.\r\n\r\nS obzirom da su se sa obje strane formirale duže kolone vozila, mole se vozači da voze opreznije, bez rizičnih preticanja.\r\n\r\nIzvor: Faktor');
/*!40000 ALTER TABLE `novost` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-10 21:24:56
