-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: reservasi
-- ------------------------------------------------------
-- Server version	10.4.24-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL AUTO_INCREMENT,
  `nama_admin` varchar(120) NOT NULL,
  `username` varchar(120) NOT NULL,
  `password` varchar(120) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `id_customer` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(120) NOT NULL,
  `username` varchar(120) NOT NULL,
  `alamat` varchar(120) NOT NULL,
  `no_telepon` varchar(20) NOT NULL,
  `password` varchar(120) NOT NULL,
  `terapis` varchar(100) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`id_customer`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (3,'auliarosyada','aulia','juuts@gmail.com','09875527382','25d55ad283aa400af464c76d713c07ad','',1),(9,'ica','binbin','Ds. Talang Rt. 4 Rt. 1','0899973014','25d55ad283aa400af464c76d713c07ad','',2),(13,'rosa','ros','Ds. Talang Rt. 4 Rt. 1','09875527382','d36b548c4c7a2369249fb4cc0e2eba46','',2),(14,'rosyada','caca','Ds. Talang Rt. 4 Rt. 1','abcdn','827ccb0eea8a706c4c34a16891f84e7b','',2),(15,'Ailsa Raina Syail','ailsaraina','Ds. Adiwerna','0899973014','25d55ad283aa400af464c76d713c07ad','',2),(16,'ayuu','ayu','Ds. Talang','0873467398','25d55ad283aa400af464c76d713c07ad','',2),(17,'hanum','hanum','Ds. Talang','0873467398','77dc6cd75abb1d2b8d22e3db4e5a94c6','',2),(18,'ahmad maulana','ahmad','kajen','0987654','25d55ad283aa400af464c76d713c07ad','',2);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservasi`
--

DROP TABLE IF EXISTS `reservasi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reservasi` (
  `id_reservasi` int(11) NOT NULL AUTO_INCREMENT,
  `id_customer` int(11) NOT NULL,
  `id_treatment` int(11) NOT NULL,
  `tgl_reservasi` date NOT NULL,
  `jam` time NOT NULL,
  `harga` varchar(120) NOT NULL,
  `status_reservasi` varchar(50) NOT NULL,
  PRIMARY KEY (`id_reservasi`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservasi`
--

LOCK TABLES `reservasi` WRITE;
/*!40000 ALTER TABLE `reservasi` DISABLE KEYS */;
INSERT INTO `reservasi` VALUES (1,13,14,'2022-05-30','16:48:00','200000','Reservasi'),(2,13,13,'2022-05-28','15:17:00','150000','Reservasi'),(3,13,14,'2022-06-02','19:17:00','200000','Reservasi'),(4,9,16,'2022-05-28','18:54:00','135000','Reservasi'),(5,18,15,'2022-05-28','12:31:00','135000','Reservasi'),(6,13,13,'2022-06-08','09:00:00','150000','Reservasi'),(7,9,14,'2022-06-01','11:16:00','150000','Reservasi');
/*!40000 ALTER TABLE `reservasi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_role` varchar(25) NOT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'admin'),(2,'customer');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaksi`
--

DROP TABLE IF EXISTS `transaksi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaksi` (
  `id_reservasi` int(11) NOT NULL AUTO_INCREMENT,
  `id_customer` int(11) NOT NULL,
  `id_treatment` int(11) NOT NULL,
  `tgl_reservasi` date NOT NULL,
  `jam` time NOT NULL,
  `harga` varchar(120) NOT NULL,
  `status_reservasi` varchar(50) NOT NULL,
  `status_pembayaran` int(11) NOT NULL,
  `bukti_pembayaran` varchar(120) NOT NULL,
  PRIMARY KEY (`id_reservasi`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaksi`
--

LOCK TABLES `transaksi` WRITE;
/*!40000 ALTER TABLE `transaksi` DISABLE KEYS */;
INSERT INTO `transaksi` VALUES (28,13,13,'2022-05-28','15:17:00','150000','Reservasi di setujui',1,''),(29,13,14,'2022-06-02','19:17:00','200000','Reservasi di setujui',1,''),(30,9,16,'2022-05-28','18:54:00','135000','Reservasi',1,''),(31,18,15,'2022-05-28','12:31:00','135000','Reservasi',1,''),(32,13,13,'2022-06-08','09:00:00','150000','Reservasi',0,'');
/*!40000 ALTER TABLE `transaksi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `treatment`
--

DROP TABLE IF EXISTS `treatment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `treatment` (
  `id_treatment` int(11) NOT NULL AUTO_INCREMENT,
  `kode_type` varchar(120) NOT NULL,
  `nama_treatment` varchar(120) NOT NULL,
  `deskripsi` varchar(120) NOT NULL,
  `harga` varchar(120) NOT NULL,
  `status` varchar(50) NOT NULL,
  `masker` int(11) NOT NULL,
  `cleansing` int(11) NOT NULL,
  `ekstrasi_komedo` int(11) NOT NULL,
  `cooling` int(11) NOT NULL,
  `message` int(11) NOT NULL,
  `uap` int(11) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  PRIMARY KEY (`id_treatment`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `treatment`
--

LOCK TABLES `treatment` WRITE;
/*!40000 ALTER TABLE `treatment` DISABLE KEYS */;
INSERT INTO `treatment` VALUES (13,'SST','Facial Caviar','Menyamarkan noda dan flek hitam, mencerahkan serta melembabkan kulit.','150000','0',1,1,0,1,1,0,'facialcaviar.PNG'),(14,'SST','Facial Serum Sensitif','Melembabkan kulit,menghilangkan noda hitam, hingga mengatasi kerutan di kulit.','150000','1',1,1,0,0,0,1,'facial_serumsensitif.PNG'),(15,'FC','Facial Platinum','Kombinasi facial menggunakan bahan dari korea dan peeling krim, menggunakan wine mask peel mampu meremajakam kulit dan b','135000','1',1,1,0,0,1,0,'facial_cavier.PNG'),(16,'FT','Hydra Facial','kombinasi treatment facial dan microdermabasi menggunakan alat khudus hydropel.','135000','1',1,1,0,0,1,1,'faciaaal.PNG'),(17,'WT','Facial Diamond Micro','Prosedur pengangkatan sel kulit mati, membantu mencerahkan,memperhalus,serta meratakan warna kulit.','200000','1',1,1,0,0,0,1,'ksd1.PNG'),(18,'BT','RF Perut','Berfungsi untuk mengecilkan perut yang buncit akibat lemak yang menumpuk serta mengecilkan lingkar pinggang.','395000','1',0,0,0,0,1,0,'body1.PNG'),(19,'BT','RF Mata dan Facial','Menstimulasikan Kolagen memberikan efek untuk membentuk kantuk mata yang indah serta memberikan efek kencang pada wajah.','315000','1',1,1,0,0,0,0,'lkdsc1.PNG'),(20,'LT','Laser Korea Blackdoll','Mencerahkan dan mengecilkan Pori','385000','1',1,1,0,1,0,1,'black_dool1.PNG'),(21,'LT','Laser Bekas Luka','Menyamarkan luka pada wajah','300000','1',0,1,0,0,1,0,'laasee1.PNG'),(22,'AT','Injeksi DNA Salmon','Sebagai anti-aging yang efektif karena mampu membuat terlihat lembab dan kencang.','1119000','1',1,0,0,0,1,0,'suntik1.PNG');
/*!40000 ALTER TABLE `treatment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type`
--

DROP TABLE IF EXISTS `type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `type` (
  `id_type` int(11) NOT NULL AUTO_INCREMENT,
  `kode_type` varchar(11) NOT NULL,
  `nama_type` varchar(50) NOT NULL,
  PRIMARY KEY (`id_type`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type`
--

LOCK TABLES `type` WRITE;
/*!40000 ALTER TABLE `type` DISABLE KEYS */;
INSERT INTO `type` VALUES (1,'FC','Facial Treatment'),(3,'SST','Serum SKin Treatment'),(4,'WT','Whitening Treatment'),(5,'BT','Body Treatment'),(6,'LT','Laser Treatment'),(7,'FT','Flek Treatment'),(8,'AT','Acne Treatment');
/*!40000 ALTER TABLE `type` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-03  1:46:28
