-- MySQL dump 10.13  Distrib 8.0.16, for macos10.14 (x86_64)
--
-- Host: 127.0.0.1    Database: js2
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `act_evt_log`
--

DROP TABLE IF EXISTS `act_evt_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `act_evt_log` (
  `LOG_NR_` bigint(20) NOT NULL AUTO_INCREMENT,
  `TYPE_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `TIME_STAMP_` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `USER_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `DATA_` longblob,
  `LOCK_OWNER_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `LOCK_TIME_` timestamp(3) NULL DEFAULT NULL,
  `IS_PROCESSED_` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`LOG_NR_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_evt_log`
--

LOCK TABLES `act_evt_log` WRITE;
/*!40000 ALTER TABLE `act_evt_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_evt_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ge_bytearray`
--

DROP TABLE IF EXISTS `act_ge_bytearray`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `act_ge_bytearray` (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `BYTES_` longblob,
  `GENERATED_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_BYTEARR_DEPL` (`DEPLOYMENT_ID_`),
  CONSTRAINT `ACT_FK_BYTEARR_DEPL` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `act_re_deployment` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ge_bytearray`
--

LOCK TABLES `act_ge_bytearray` WRITE;
/*!40000 ALTER TABLE `act_ge_bytearray` DISABLE KEYS */;
INSERT INTO `act_ge_bytearray` VALUES ('cb608f0d526f4c5282ec617a559ec410',1,'test_audit.png','809b52df107d48c98625937c3f17b1e9',_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\Ü\0\0|\0\0\0=Ó³\Ú\0\0S\âIDATx\Ú\í\İ|TõÿÿS Š·¿h©Ë²ül\êeÕ®Z1†‹4–X \â­K]Š¬RVV©\"\ÔZ/À\"\Z1…c\nÄ€‘†šD.I\ácŒ1f¥˜E\Ä\Òc\ã÷>\ß9\ç03™I2I˜\ÌL^\Ï\Ç\ãó\È\\\Î\\2\çû>s>sÎœ1\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0€\î§/\0\0\0\0\0+Á,eı\0\0\0\0\0 Ş¬/\ÌJ²ş\á%\0\0\0\0 sšm»É–-ÜŸ\Ñt\0\0\0\0\Ğy\Ívk—\0\0\0\0€V$´\ÒT\Û\×ón\0\0\0\0\0‚l¶[k¦\Ù\Ò\r\0\0\0\0@\ÅÁm¹vz\0\0\0\0\0ºm³=¦·«£\é\0\0\0\0 óš\íÎº=\0\0\0\0\0Q§µ¤…ú~\0\0\0\0\0ˆšf»³vgK7\0\0\0\0 \Ûó=\à\Ù÷Ìº\Óú\ß\Ûq 5\0\0\0\0@·o¶\Çx4\Í\Ë\ÌR\Öß¶6İnG\Ó\r\0\0\0\0\èöÍ¶¸\ÓjšUM·g³m\×D\ëùN7\0\0\0\0 \Û\Ôûk[jºıMŸ\êgz¾\Ó\r\0\0\0\0\è6\ÍvBM´¿¦»­Í¶o\Ó\Í\î\å\0\0\0\0€¨\ÓÖ¦·µ¦;\Øf\Ûóñ?3\Ø\Ò\r\0\0\0\0ˆ\Âf»­\Ín ¦»G;›m\ß\é\0\0\0\0t\Ûf»¥¦»ª\ÍvGŸ\0\0\0\0\0a££[”ı5\İi¶}›n¾\Ó\r\0\0\0\0],Î¬\Ç\Í\Ê6k§Õ¬)ªM•\ÔÁ\×^v#÷İ²]e]\ŞI\ÌŠ¢(Š¢(*ÊªÎ¬j³r\Íz\Æpoh\êE;‡p\Ô\×\Z¤ŸšUd\Ö³Æ™u±Y}xyÚ¤µ£’·¦¥-\Ümù\î@\Ø\Â\r\0\0€h$}\Ê Ã½‡©ô2[\Í:h¸76õ\ã\åA¸˜l5Ú‹Íº€—£C¤¹­3N\Ìw¸\Û\Ótón\0\0\0t\'\ÌJ¶Ögòr +\É\îo˜•o¸·d£óš\î`¶(ú\é/G)¦\é\æ(\å\0\0\0\è®d\Ëw¹\áşš\ì\é¼\è\n\Òlg|\Ï\áD6İ­5»­ı\Îvk¿\Ó\Èƒ\ß\á\0\0@÷\Ö\Ç\êw²\éyj²y>\ï„jmskÍ¶\ÑÎ¦\ÛŞ­}³\0\0\0\04\İzK÷#¼9@š|g›\İ\ÈO¼@[º\Û\Úl\ÛtÛG³\r\0\0\0¸\É\î\å²÷\'RCH\Èü’yB&Áh¾{÷Fğ¿³\í¯\é\èó8|g\0\0\0hNúŸ$^„‚l\İ\æh\ä¡oº=¤\æ\Ù<·¥\Ù6Z¹?ı\0\0\0&G/—Ÿ\ã+µ8¡\â÷\ïl#ô|w/—fy¢üO}ùŞ®£¿ÿ\r\0\0\0t[YgÆ‰ö”YsxÂ¦\é\î(»«\0\0\0hNú gxp\"\É!ñ9 Vt4İİ¼\0\0\0\ÑLÖ›syp\"\í48:y8\è\èn\à\ìF\0\0\0GV^\ÍË€Iš´>¼a\Õt»…š¤\0\0\0Á“>¨—\'’\â%+Á\î\În\ä\0\0\0\0ı`\è\ä&zˆ\áşD\ï\à\0\0\0ôC`€¡¬f:¡…\ë?£\Ù\0\0\0\è‡À\0Cğm\éf7r\0\0\0€~0tr\ÓM³\r\0\0\0\Ğ†Nnº“h¶\0\0\0ú!0ÀĞ¹¦YóŠŸş\0\0\0\è‡À\0C\'Ê²\æU/^\n\0\0\0€~0t8³\\[¸\0\0\0ú!0ÀĞ©2­ù$µ“—\0\0\0 7\Ä8¾u\Û.š\0\0\0\Ğ†\Êòi¶\í­\Ü|—\0\0\0 \í\äo\ë¶]\ãxy\0\0\0\0ú!0À\Ğ>\Ùšm©\"^\0\0\0€~0¯¥­\Û|—\0\0\0 \í”\ÕJ³\Í\Ë\0\0\0ú!0ÀÀ¼\0\0\0X\Ç\Ì+\0\0\0€ul€Æ¼\0\0\0À:6``^\0\0\0¬cƒ\æ\0\0\0À:6À\0c^\0\0\0`00¯\0\0\0\0Ö±Á\0ó\n\0\0\0``€1¯\0\0\0\0°\r˜W\0\0\0\0\ë\Ø`€y\0\0\0°\r0À˜W\0\0\0\0X\Ç\Ì+\0\0\0€ul0ÀÀ¼\0\0\0X\Ç`\Ì+\0\0\0\0¬cƒ\æ\0\0\0À:6``^\0\0\0¬c0\æ\0\0\0\0Ö±Á\0ó\n\0\0\0`00¯\0\0\0\0Ö±ó\n\0\0\0\0\ë\Ø`€y\0\0\0°\r˜W\0\0\0\0\ë\Ø\0Œy\0\0\0°\r0À˜W¼\0\0\0\0\ë\Ø`€y\0\0\0°\r˜W\0\0\0\0\ë\Ø\0Œy\0\0\0€ul0ÀÀ¼\0\0\0X\Ç\Ì+\0\0\0€ul€Æ¼\0\0\0À:6``^\0\0\0¬cƒ\æ\0\0\0À:6À\0c^\0\0\0`00¯\0\0\0\0Ö±Á\0ó\n\0\0\0``€1¯\0\0\0\0°\r˜W\0\0\0\0\ë\Ø`€y\0\0\0°\r0À˜W\0\0\0\0X\Ç,¤ÿ°R½SRRfNœ8qolllC\ïŞ½•õ:PP={öü\îüó\Ïÿløğ\áÍ¿#‰\0\0\0\è‡À\0\ë–-[v\ÏÈ‘#\ëcbbÔœ9³U~~jhø\Ê\ìÁ¿£:©\äõ,**T‰‰Ï©6ö\ï\ß¯ù\Ò_L\Ô\0\0\0@?X”JM}e}¿~ıTR\Ò\Ê\åj4›\Ã&*•œ¼Hõ\é\Ó\ç«SO=õ&\â\0\0\0ú!0À¢°Ù¾\à‚TQ\Ñv³	ü–\nq•——©¾}ûşÃœcˆ\0\0\0\è‡À\0‹Ë–-½G¶lm3›?—W-]ú’\Z3&A\Zu½ºşúk\Ô\rñ#Uò¢¤f\ÓQ¯òò½\ê”SNù\Â`÷r\0\0\0\ĞÿœR½G¼¦>)\éyó\ä7^µbùR5ú\ç£Ô­·Œ\Õ5vÌ*>şZ5t\èj‘nº¿¡:¹\çŞ«W¯<b\0\0\0ú!0À\"\\J\ÊÂ™11?R.W½\Ùğ5zUÂ¨x\İh\ßp\ÃH§~ö³\ë\ÔğaWšMwl³\é©Î©³\Ï>ûSs\Ö\Ä=\0\0\0\ĞÁ&Nœ°wÎœ\'\ÍF\ï\ëf5bxœzaÁ|•õV†Jy1IoÙ¾j\ÄP}¹œv¹¾ô{;ªc5mÚ½;\ÍY“Hô\0\0\0@?X‹ÒŸŸc6z\r\Í\ê\î»\'ªƒıTm\İò\Êş\Óµ\ê\ÕTµ>sú¸úCõ?S\'«o¿ı\Ò\ï\í¨Õ»\ï\æ0g\ÍN¢\0\0\0ú!0À\"X\ïŞ½UC\Ã\çf£Wß¬›õ*.Ú¢voU»w•\è’\Ó;vlW=ö\ß\ÛP/™\æ¬q=\0\0\0\Ğ\áÿŸR_6+—\ë\ïjÖ¬™j\Êo&©’’BUş\Ş]»v\íP\Ó\îûo5\ãÁû\Ô\×_\î÷¶TÇ‹\0\0\0\è‡À\0‹Š†»Î«\Z?W\ëÖ½¦bcªª?ªTN¿Ï«JK‹Õ\Ë/U¯¯NU\r\rŸ5»=\ÕñbÁ\0\0\0ú!0À¢¢\áş‡S\ß}wL½µ!]\r\Z«jª«\Ô{e»U\î\æ*ó\Í?ª´\×Wª\ÔW^2›ñ4½{ù•W^®\Ò\ÓW¨o¿ı\Â\ë>¨6\0\0\0\Ğ\r÷1§¶nÙ¤k[šì¼¼\Í\êÍŒt\İh¯X¾D½¼x‘Jz\áYõÌ¼§õ\Ô¿´P]{\Íµñ\í5^÷Au¼X°\0\0€~°¨h¸ÿ\î\Ôc³~§D.õ²\ÔÅº–¼œ¬’-P\Ï\'\ÎSÿ;÷Iõ\Ä\ïQ3güV=ùÄ£f³©~7ó~¯û :^,\Ø\0\0\0@?XT4\Ü_8%\r·ü\Ø\í·İ¬\ŞH{U7\Ú\Ò|?;š;\ç	õÜ³su\Ó-Mø˜\Ñ	js\Î\ÛV\ÃıÕ‰Å‚\r\0\0\0ôC`€EE\Ã}Ô©½{·©G™¡~yû8\İPË®\äş*.nˆúõ„ñzkwi\é»^÷Au¼X°\0\0€~°¨h¸?÷*\×7S_~ù©J|\îi•0\ê:5bø•j\è\Ğ+TÜ•C\ÔP³Ñ¾\æ\ê\á\êû\ïQÇıEO\ë{{ª\ãÅ‚\r\0\0\0ôC`€EE\Ã}„\n³bÁ\0\0\0ú!0À¢¢\áşŒ\n³bÁ\0\0\0ú!0À¢¢\á>L…Y±`\0\0\0ı`Q\Ñpÿ\n³bÁ\0\0\0ú!0À¢¢\á>D…Y±`\0\0\0ı`Q\Ñp¤Â¬X°\0\0€~°¨h¸PaVmwO˜\Õ@<\0\0@?XX7\Ü¥Â¬Zw\Òhm]\Ï\Â\0\0\0ôC`€…w\Ã]\ë·äº…g«\Ä\Ä\Çu\í\ÛW¬/+)\Ùğ6Á–\Ü_ffªs:\'\çu}ººz[ÀÛ”—¿£ö\ì\Éñz¾\ÏK\ÎÏš5­\ÙcÍŸ?KŸ>th\×uUU[ôõG”7{¼\Ú\Ú\Òf—UV\è\ékj\nõù\r–«3\Î8½\İÿ»¿\ëZi´i¸\0\0@?Xø7ÜŸú­\ã\r¡÷eYY+¼.»ù\æ5yò¯Ì†¼H—œ¾÷\Ş;ór›¹sr¦\ïÙ³§JN\ã\\\çn\æİ§\Ë\Ëÿl6\Îo«3\Ï<CO[]½U?\İ`n\Üøª\Z?şjÂ„[ôi¹¬¶v§ş+\Óz>Ï•+_pN\ïß¿Cÿ­¬\ÌWkõiyL\Ï\égÏ©}_ÿ\Ïr~Ê”ÿtÃ¾/\Ï\éü·^\ç/¿ü\'zúÑ£¯\×\ÏÏ¾\î\ÆGª\é\Ó£\ï\ÜsÿEÍ˜1\Ålğ\ßÕ·©¨\Èø\Ú[óg\á\Şu\\(\0\0\0€~°ğm¸÷û-»©LL|L—\İoÙ².\àm¤.¼ğ\Ç*6ö\Ò§±\ï_š\ÏÃ‡÷\èó”\ê¿yy\éúºúú*}^[ÎŸrJo\İ|o6\Ãw˜\Í\íJ}ù±cX[¸³Ô¡C»Ë—,™¯ŸKF\Æµ`Á\ïõeuu•úoAÁ\Z\çyH.—55\í\Ó«ª\Ü[¯\åù¬Y³XmØ°\Ì\ëy\Û\Óeg¯R¥¥Unnš~\Îr^şû±ıı\Ïò?\È\ëw\Î9?PÃ†]®Ÿ«ı|÷\ï/özmÿ[´i¸\0\0@?X\ä4\ÜiVee›Ô=Ùª±ñc¯ª­İ¡D·±\ëx\Ã\íÿú‚‚?ªk¯S99¯©””9\ê´\ÓN5›\æ\nuò\É\'©;\î¸\Élb\ß6›\ÚOœ\é\í\æR¦­«û@¥§¿¨<O-\\ø”¾\\¦w7\Óx\İF¦—\Ó.W*/ß¬/KM}N?VEÅŸõu‡\íÒ—§¥-Rƒ_ ›yûööı\Ê\ë §\íû^µ*\É\Úú¿T\İ|ó(\çq\ìç“›ûzÀÿ]¶\Ü\Ëõ2¼\Æöc\É}yN×†F›¢(Š¢(wÕ™µÇ¬l³1+Ş¬^¬\ÂôC`€…IÃ½¯Y-Y2O]tÑ¿ª-[Ö¨Õ«ÿ ®»n˜š=ûA}^nSXø¦\ß\ÛI¹\îK^/e\è-\É\î-\Ëó\æ=¤\Ùc\í^¬¯—ó\Ó&%=¡øg³©®P\É\ÉO\ëË¦N`}Wû^½›º=}ccµó&\\]] ²²–©Wx•\\·m\Û:=}vö«ª¦f‹\×\ãz+øõmûö=[o–Ë-SkÖ¤\è†úô»U|ü}\ÙO~2H}¾oy.ò\á\\nß—L\'\×\Å\ÄP—\\2\ØlºW{=–\\\çûúXó\ç³¾5\Âsw³™5Æ¬\Ç\Í\Ê5\ë YIfõc\Ñ#i¶’#€÷#€~°¨j¸?iVrù]wıRŸNK[¨·B{^—™¹\Ä\ï\í¤.¼0\Æj¸›_W_ÿõ]\ç\åú~d‹¶œ.+\Ëv\î÷¬³\ÎÔ»\\\ï\ß_\è<4©\éºÙ–¦Uš\ÛU«^°¾‹½\Íù+Ó§¦Î·¶Lo´\Z\ëµ~ÿ?û8zt¯õ}\ê\Íú|mm‘ó\Ü\ìiW¯NÒ§\Ş\å\\&\Íø7^«O.[¸ğI\İh74|¨ÿO\Ï\Ç\Ê\ÈXìœ—\rššjœı\İõœf\Ï\Ïg>½\Z ñ7¬¦AVt\îañ´;G\Éf}a\ÖL^€÷#€~°ˆn¸ÿ¯Y¹\îÛ\ÓÓ§\ß\åu]f\æ\Ë~o\'u¼\áö}qñ›úöv#+»rWW»·v»\\\Õ\Í\î_\Î/^,»“¿¯(V\é\é‹Ì¦ıbUS\ãnV*±¾Ã½\Şld?V))³­¤\å\ê\ÛoØ°T7õ“&İ¦\Ënö\åú††J§y•\é\n×©‹.ºP7\é\î&<\Çj\æ·6{}Æ½^\İzk‚\Ù,o\Òÿó‘#»Tvö\n\ëh\ë¯zM\ën¸½_‡\Ä\ÄGõYY©~_ÿ\0ó\Ëw‹w¸’-\r²…a­Y§³Ú£rÃ½›,9x?\è‡À\0‹Ì†»¦Yú\'ÁPõõ\ï[JK7›\Ğ5fC[m6¬\Ëü\ŞÆ®\ã\r·ÿ\ëkk\Õò\å\ÏZ?\Óõ\Ùl\ç©ó\Îûj\î\Ü\Çv7\ÜÇŸKrò“º¡İ·o‹n¸\å²\Æ\Æ­­\Äy\Ö.\àif½\Ùl\Ú?²šù>\Ï\Ç8v¬\Ìy^rÿ†>`Z‘\ÙHg[\ß\Ú\ï\í¥\á¶ÿOy\\ù~öwüB\ßV®_°`–3­\\ô\ènu\Ùeÿ¦fÏ®/—\×\Ô\Ğ\ßù^\å÷ş[™oö\ïp&ßŸË²Vr\0´O+G\Ù\ßIx?\è‡À\0‹Ä†ûc¿u\äH©õ³]\èó›œ­Á\r\rú²Ã‡K\ÔM7\Å\ëš2e¼\Ù<¾ª·Ú{n}Z*--\É:\Ùz}CWz»\Õ,¿£ZC%ü#\çú\Ì\Ì\Å\ÎóóÃ†ı\ÔlôSUFFŠJM}F?†}Ü‡¡wñ^\êu›òò?©\ÂÂµº	–š4\éV]r?\î&8\Çl‚\İM\ë\×ï‡ª¬\Ì}´¼¼\Õ\Îó[¼x¶µõ{‰\×kc\è°=c6ı•ú¹\İ{\ïu\èP±š7o¦úş÷{\éûòœVjÕª\çÿQCS^û1}\ï?ŠVrd\Ë»ókºeK÷#¼\0\ïG\0ı`\×pW{UN\Î\nİ¼ö\ï\Ùt\ïlv½\ÜfÚ´‰\Îù††÷›M¨\Z?\Ğ\Ó\Ëı\Ëı>¼\Ãj8_óºwó|ü|II†>\ír}h\á;KŸojªr¦)(x\İ\ë6<ª§÷÷<\äú\â\âuúô¾}ú¯|w¼¦&O\ß\Ï\àÁ\ç;\Ó\Êc¹?0\Èôºı…úºm\Û\Ò\Õ\è\Ñ×ª[o\å÷ñ\ä¹Û—WTd««¯¾B7ò¾÷¿zõ¯û¢1&»ó}jp\à\Z £9úŒ¼ôC`€E\\\ÃıQDUSÓ‡2M¨K{¦\Âq\'®IbqtH29x?\è‡À\0‹¸†»Š\n³Š\Âq\'G‹•#\ÅòT€\ä ºS\Ãı!f¥\ãN¾;—À\"è­\ä\àı ,¢\Z\îJ*\Ì*J\Ç\İ\ã†{W>\0\í7‡¼ôC`€ET\Ãıf¥\ãnŒ\áşi#\0\ËQ./Àû@?X\Ä4\ÜT˜U”;9:\ì)@‡sT\Í\Ë\0ğ~\Ğ1\r÷ûT˜U”;ù-\á:)\09\È@?t£†»œ\n³Š\âq\Ç G\09\ÈĞ\Z\î÷¨0+\Zn\0\ä G\0y,*\Z\î2*ÌŠ†\09\È@^À\0‹Š†{/fE\Ã\r€\ä /`€EEÃ½‡\n³¢\á@\0r0À¢¢\á\ŞM…Y\Ñp G\09\È`\î\ä“Oú®¡¡\ÈlòvQaR_}U¸Ïœ5.ò€\ä /`€E°Áƒ|(?‰\Ù\è•RaR\ë\×?ÿ¶9kv’\'\0\ä G\0y,‚]u\Õe\ë\æÌ™J£F5v\ìUi\æ¬I$O\0\È@\0òX0\à±œóËµƒf7<\ê“=zT˜³&< G\09\È`®ÿ–&%=H³5f\ÌUK\ÍY’K\0#€\ä°\è0\è\Ì3O«/*ZA\ÓÛ…•Ÿ¿t½9/šu1y@\0r0À¢Gü9\çœıwš\î®k¶{ô\èQcÎ‡1\ä	\09\È@^À\0‹Â¦û¤“¾lŞ¼û>\ç;İ¡ûÎ¶µùÁn\Ğl³À\È@\0òt\ë6¨g\Ï\ï\åœ~ú©‡§L¹e÷¦M/lh(¤1\î\Äú\ê«\íûä§¿\äh\ä\Ö\Ò\ä;\Û“\'\0\ä G\0y¬{¸Ô¬9fm5«Áz¨\Î)—\áşmù\é¯8ò€\ä /`€!œeYóª/y\È\0r0À\Ğ9d+±ËšW	¼\ä	 G\0\È@^À\0C\ç\È4ï®½“—ƒ<\ä\09\È`\è¸!\Æñ­\Ûv\áe!O\09@\0ò:&\Ëh~P2\Ù\Ê\Íw¹\É@\0#€¼€†vò·uÛ®q¼<\ä	 G\0\È@^À\0Cûdz«ˆ—‡<\ä\09\È`^K[·ù.7y\È\0r0À\ĞNY­4\Û±œ<\ä\09\È``^1\0#€\ä00¯À<\È@\0ò0À˜W`\ä\09\È``^1\0#€\ä00¯À<\È@\0ò0À˜W`\ä\09\È``^1\0#€\ä00¯À<\È@\0ò0À˜W`\ä G\0\È``^1\0#€\ä00¯À<\È@\0ò0À˜W`\ä G\0\È``^1\0#€\ä00¯À<\È@\0ò0À˜W`\ä G\0\È``^1\0r€\ä00¯À<\È@\0ò0À˜W`\ä G\0\ÈNˆ,k@µT;y™X€y#€\ä\Î³\\­4\Ücx™X€y#€\ä^v\Ív‘Y½x‰X€y#€\äŞ\Z\îq¼<,À<\È@\0ò´Ÿ¿\ïr\Ëw·Ùº\Í\Â\0\Ì#€\ä /@øû.7\ß\İfa\0\æ@\0r d\Zl\İfa\0\æ@\0r \Ó\Åy4\Ü	¼,À<\È@\0òtû»\Ül\İfa\0\æ@\0r \ra€±0\0ó G\09\È\"g)\Õ;%%e\æÄ‰÷\Æ\Æ\Æ6ô\î\İ;\Ğ\ÏpQ-TÏ=¿;ÿüó?>|øFó\ïHF\æ@\0#€¼tcË–-»g\äÈ‘õ111jÎœ\Ù*??O54|eö\à\ßQA–¼nEE…*1ñ95p\àÀ\Æşıû\ï5_\â‹Y€y#\0\ä /\İLj\ê+\ëûõë§’’^P.W£\Ù46QX\ÉÉ‹TŸ>}¾:õ\ÔSoba\0\æ@\0#€¼t£fû‚.PEE\Û\Í\æğ[\êUyy™\êÛ·\ï?Œ\îù»\á,˜G\09@\0òÒ½,[¶ôÙ²]T´\Íl\n]^µt\éKjÌ˜5j\Ôõ\êú\ë¯Q7ÄTÉ‹’šMGµ½\Ê\Ë÷ªSN9\å£û\í^\ÎÂ€y#\0\ä /\İh\î(\Õ{\ä\Èkê“’7O~\ãU+–/U£>J\İz\ËX]c\ÇÜ¨\â\ã¯UC‡^¡\é¦ûª•˜8ÿó^½z\å±0\0ó G\0\È@^¢TJ\ÊÂ™11?R.W½\Ù6zUÂ¨x\İh\ßp\ÃH§~ö³\ë\ÔğaWšMwl³\é©\à\ê\ì³\ÏşÔœq,À<\È\0r—(4qâ„½s\æ<i6€_7«\Ã\ã\Ôæ«¬·2TÊ‹Iz\ËöU#†\ê\Ë\å´\Ëõ¥\ß\ÛQm«i\Ó\î\İiÎ‚D`\ä\09\ÈKŠÒŸŸc6€\r\Í\ê\î»\'ªƒıTm\İò\Êş\Óµ\ê\ÕTµ>sú¸úCõ?S\'«o¿ı\Ò\ï\í¨¶Õ»\ï\æ0gÁN`\ä\09\ÈK\êİ»·jhø\Ül\0\ë›\Õc³R\ÅE[Ô\â­j÷®]rzÇ\í\ê±\Çò{ª\í%¯»9\\\İd¨%XƒR\Ç G\0\È@^º\ÍR\ê\Ëf\årı]Íš5SMù\Í$URR¨\Ê\ßÛ£k×®j\Ú}ÿ­f<xŸúú\ë\ÏıŞ–j{u“€Ä›%GeO²ş!v,°r€ä¥›4\Üu^\Õ\Øø¹Z·\î5ûSUıQ¥zpú}^UZZ¬†\\~©z}uªjhø¬\Ù\í©¶W7H¼O“-[¸?£\éf\r#\0\ä /İ¤\áş‡S\ß}wL½µ!]\r\Z«jª«\Ô{e»U\î\æ*ó\Í?ª´\×Wª\ÔW^2›ñ4½{ù•W^®\Ò\ÓW¨o¿ı\Â\ë>¨¶W”Ä·\Ùn\ír°À\È\0r—hk¸9µu\Ë&ı[\Û\Òd\ç\åmVof¤\ëF{\Åò%\ê\åÅ‹T\ÒÏªg\æ=­ ¶ø¥…\ê\ÚkF¨o¯ñºª\í\ÅIh¥©¶¯\ç;\İ,°r€Qš—f\İg\ÖZ³ªÍª³pƒYŸ˜•i\ÖLkº(n¸ÿ\î\Ôc³~§D.õ²\ÔÅº–¼œ¬’-P\Ï\'\ÎSÿ;÷Iõ\Ä\ïQ3güV=ùÄ£f³©~7ó~¯û \Ú^Qú†\Ò\Öfš-\İ,°r€Q˜—qf\åZMö+f\İf\Ö ³N·®—¿1V#dM—oÖ„\èl¸¿pJ\Znù	°\Ûo»Y½‘öªn´¥ù~vş5w\Î\ê¹g\ç\ê¦[šğ1£\Ôæœ·­†ûª…o(ñFp[®ƒ¬\à\0\ä G\0\Â4/\ÒDg›Un5Ó½‚¸­4ò›\É[Íº º\Z\î£N\íİ»M=ú\Èõ\Ë\Û\Ç\é†Zv%÷WqqCÔ¯\'Œ\×[»KK\ßõºª\íeo(\í\İb-·«£\éf\r#\0\äˆÜ¼Œ7\ë \á\ŞE¼W\î\ç>\ë~¢ek·\Ùø}\îU®oş¦¾üòS•ø\Ü\Ó*a\Ôuj\Äğ+\ÕĞ¡W¨¸+‡¨¡f£}\Í\Õ\Ã\Õ÷ß£û‹\Ö÷öT\Û+Š\ŞP:º{8»—³À\È\0rDh^d%^¾“\×I÷w©u“££\á>BuQE\ÉJkHõı€€\ä /!2\Şjc:ù~c¬ûô-\İf\ã÷\ÕEo(}´q¶t³‚#\0\äˆ¼HS,»Ç û¿ÔºÿA‘\İp¦º¨\"ü\r\Å÷€g\ß3\ëN\ëo0|oÇ\ÔXÁ\È@\0D@^\äH\ä3Oğc\Èwº·Fv\Ãı7ª‹*‚\ßP|·DK³¼\Ìú–\ÑtºM7+8\09\È€0Î‹üô—¼wk¹»–›\ß!ª‹*B\ßPü\íö}§õ¿¨ šn\ÏfÛ®‰\×ónVp\0r#\0aš—\Ü®¨K©[¹\Í\Æ\ï \ÕEo(š`\ÍsKM·¿\éSıL\ÏwºYÁ\È@\0„Y^\îšõ\n\ácV`¶~\à0¢m\r÷ª‹ª‹\ÒÖ±¨\ÙN¢‰ö\×t·µ\ÙömºÙ½œ€\ä@\äE¾W½8Ä™hœø\ï‹û\Â+«¹Šk¹\áşk‡J\î#3s™s:\'\'MŸ®®\Şğ6\å\å\ï¨={6«’’^÷\ãyŞ®}ûv¨“O>©M\Ïcüø›š]¶f\Í¿\Ógg¯VgyF»ÿç””yòÚ…ñ\ØhO\Ó\ÛZ\Ól³\íùøŸl\éf G\09\Ğ\åyYk\Öm!~Li²Â°\á¶+\Ûğ¿U\Ólüjƒ®={ª\ä\ä9f3\\¬\ï?1ñq\ç´4\Ó\Ò8»›\ÙZ³ñŞ¦²²V:\Ïe\ã\ÆUº10\á}Z.«­-\ÕeZ\'×rJ\ï€\Ï\çĞ¡=zšşY\ßgÿşÿ¤\Ò\Ò^4›\âÿU]ô¯\Î\ã;V\Ù\ì~+*òTMM¡\æ\Ö[®&Oş•3}qq–®°pƒ¾lÒ¤_\ê¿ò8qq?Õ§¥6lX®\Î;\ïÜ _\Ç.n¸[¾\Ív[›\İ@Mwv6\Û6¾\Ó\Í\n@\0r ò\"»w_\âÇŒ1\ë\Ó0n¸=·jğn¸?mw\É\ígÌ˜¢Ş«\Ï8°Kÿ\Í\Ëû£¾®¾ş#}^\Zr»i\Î\ÊZ¡Æ½AM™òŸf³úª\Óz÷\Ûzúòò?\ë\æWJ¦‘\æ¹_¿\êÇ²o3q\âmzZ—\ë\İğ\Êii´×«k¯ª\æ\Í{\Øy\Òx\Û\ÏùÈ‘÷Ô°aCôı\Ø\Ï\Ë~Ş†\ŞZŸ\êœ\Î\ÈX\êœ^³f±s²\Å]nkŸÿş÷{©\Çÿm»^¿0\íi¶[jº«:\Ğlwôù€€\ä /¤Î¬\ÓCü˜òx\r\Ğp{nÕŒs7\Üûƒ®‚‚5º©\Í\ÉYm6³s\Õi§j6\Í\èFô;Æ©\ÒÒª©iŸ3½ı¸2m]]¥JOOQ¯.|Z_.\Ó\Ë_¹\Î\ß\ã]x\áUl\ì¥Ÿ<\î\è\Ñ×©I“n7\é•jñ\âyz´4\èöerÿii\É\Îm\äù\Ée••ùª¬,\Çl\ÜÿOŸ\Ï\Î^\å<gyrº¡¡Z•—\çš\Íz™.¹n\å\Êôéššmº\Ño\Ï\ëf\r·\ï\Ø\è\èeMwGšmß¦›\ït³‚#€\ä¥…TEb)õ—v•Ü¶ª*_ÿ7\ï!³ù\Ük\í¾C_/\ç=§MJzB\ïŠ]W÷JN­/›:õ\×ú\ï¬Y÷\é\İ\Ô=\Öñ†»ùuö\ã\î\ß_¤ÿ\ï4\ÙYY\Ëõ‡ûöªŠŠ?{\İ\î‰\'\î\×[\Üo¿}´Ú²e­ª®~W\ßşĞ¡]\Îs\Î\ÈX\âõ?¤¥-R[[Â—\ê\Ó\ÙÙ¯\ê\Çh\ïk\æ•\ÔÁL\Èn\ä¾[¶«¬\Ë;\"Éº¯>,cYÁ\È@\0òZl\á\Ü@\í4\Ü[,\í#¸›ß¾ ª¾¾R]~ùOÌ†v…¾\Ï;\î¸IŸ.+\Û\ä4¢gu¦:\çœ\è&Xn#—_r\É`UPğG³\Ù~Z\Å\Ä\Ğ[¤W­zA_·o\ßv\ç¯ı8Û¶­S“\'W¹¹«õ\î\äRò8Ë—\'\êi]®›=7ûñ\íó\Õú2¹\ß\é**r\×\å\è\Ñ2³¡¿D\ÅÇğš&#\ãe¯ó#F\\\áü\ßò\Ü\ä´lİ¾ù\æQA¿ö}†ñ\Øh\í¨\ä­iiw[~§;¶p³‚#€\èÂ¼ğ\îÖ›)\ãx\ÃıI\ĞU\\œi6¶Kô}¯^¤¾@UW8°»ñ]\âL/\ç/–\İ\É+Ô;Tzz²n\Úkj\ì­\Ê;­\ïpopn\Ó\Øø‘sú\ÂctC\Ü\Úó’û\é&Mº\Íl†—«¬¬e\êŒ3Nóšfß¾mú¾¥}TõU*//\Íjø·9m\è\İ\ËWzİ·ı?ú\ào\Ëõii\æ\İˆşu“†;\ĞØ°›\Û:\ã\Ä|‡»=M7\ß\áf G\09\Ğ\Åy\á(\åÇ›š\"³\Æ“\Ülüş/èª­-TË—?§cşü‡\Ìf;_¥{\î\Üúzwsú²3½œON~J9²\Ëlj·š\r÷\"}Ycc•utr÷®\éoø}¼\ã\rw\Ë\ÏK\î\ã\á‡\ïÑa—»q^\ÑlZû±kj\n\Ô\áÃ¥\Îóëªª\Şq®ó¼\ïøø\áº\Ñ6ô\îÿĞ§ûö=KÍ˜1¹]¯c7Ü­\r\ß&·­[”ıô—¿£”\Óts”rVp\0r#\0a~‡»å­–>\rwM\Ğe\è\ïjZMjJIqü¬©©Ú¹\Ş\İpŸ~\Ø0ù­e*#\ã%•šúŒ\Ş\åÜ¾N\îCşfe½\â÷ñ7\Ü\îó.\×GÖ®à»›=/\ÏÇµ/ów¿õõ\ï[[µ·X\ßß¦Ÿ‡\\.»¼\Ëóm\éÿ—ÿ¥=¯\ïı„ñ\Øğ\×t·\Ö\ì¶ö;Û­ıNw C~‡›€\ä@X\äe€YŸ\ÙPt”\ì\Æ‰3H©ƒª\Æ\ÆJ\Õ\ĞPa6±Ku\Ãtøp‰ş›—·Ú™\Æ\İ\ä.õ:_Rò¦>\ír¹·,—•½­\Ï75}\äLSPf6¼\å\ê\æ›¦\æ\Î}P%&>b6\Äïª©SÿSM›6QŸ–*,\\«N;\íu\ì\Ø^¯\çf8»”ßªk\ã\ÆT«¡§\ÙÿQW÷u\à¶ÿ\Ô\Ï\É~.òa€\ïÿ\ã[†\Şj¾<\è\×\Î\ßıD\ĞXimskÍ¶\ÑÎ¦\ÛŞ­}\ËSVp\0r#\0á‘—\\#t[Ã¤!\Ø\Z©3H©\êWSSUD\İ\ï‰zœ|C	´¥»­\Ív°M·ıx4Û¬\à\0\ä G\0\Â(/²‚^n„f+·\ì¢;!rî¨.ª}C‘-İ¾»w\ßiÿ;\Ûşš\î‰>\Ãw¶YÁ\È@\0„i^òÿ½jù¾øV#´»¯wr\Ã]EuQEğŠ\ïO†y6\Ïmi¶Vn\ÇO±‚#€ó¼Ä˜uĞ¬¸tÿ—Z÷?(’gRR]Tş†\â»{¹4\Ë\à\ê\Ë÷vııo°‚#€\ä%D\Æ\î¨Åœ€f^\îwB¤\Ï ¥*©.ª(xC\é\ì\ß\Åö·»:XÁ\È@\0„q^&Y\Íqgm\é¾Ôº¿G¢a)õ\ÕE%o(\ÕtwvóVp\0r#€¼„ˆl\é–-gò\î|\ßZ¾³}\Ğj\â£b)UAuQE\ÑJGwg7r\Ø\09@€\ÏKŒ\áş¹°òv¬\Ø\ËÖ·\"\Ã}€´A\Ñ4ƒ”zŸê¢Š²7”öUœ¤±À\È\0rDQ^n³\Zo\Ù-|±\áş	±\Ì:İºşt«9— Ñ¬j«ÑdD\î\Ñ\È[h¸Ë©.ª(|C	v·pv#g\r#\0\äˆÒ¼0\ë³\ÖZ\Íwƒõ„\å\ï§fe\î]\Ğc¢y)õ\ÕE¥o(mm¢‡˜Ug}\à\Ø\09@\0ò\rw\ÕE\ÅI°š\é„®ÿŒf›6@\0#€¼DyÃ½—ê¢Šò€\Ú\Ò\Ín\ä,°r€ä¥»4\Ü{¨.ªn\ß\æšf›6@\0#€¼t\'Ÿ|\Òw\r\r\Åfó·›\nq}õU\á>s¸ºÁ0³›\ì$šm\Ø\09@\0ò\Òmü\ãCùùK\Íp\âZ¿ş…·\ÍY°³›µkaÀO±À\È\0r—\îáª«.[7g\ÎT³,¥B\\c\Ç^•f¸v…˜G\09@\0òmøA\ì€\ç|\ãr\í 	m}Ò£G\nsÄ±0\0ó G\0\È@^¢Tÿş?,MJz&8„5f\ÌUKÍ—>—…˜G\09@\0ò\İy\æiõEE+h†CPùùK×›¯ùA³.fa\0\æ@\0#€¼D¿øs\Î9û\ï4\İ\'¾\Ù\îÑ£G\Ñ=\Ô\ÍÂ€y#\0\ä /İ·\é>\é¤\ï›7\ï¾\ÏùNw\çg\ÛÚü \Ñ}‹…ó G\0\È@^ºµA={~/\çô\ÓO=<e\Ê-»7mzñ`CC!\rs;ê«¯¶\ï[¿şù·\åh\ä\Ö\Ò\ä;\Û³0\0ó G\0\È@^º·KÍšc\ÖV³\Z¬IW.\Ãı;\Ûò\Ó_q)\Ì#€ G\0yÀÂ€y€\ä /\0X€y#€\ä\00\0r€\ä\0\æ\0r#€¼\0`a\0\æ@\0r\0,À<\È\0r\0,˜G\0\È@\0ò€…˜G\09\È@^\0°0\0ó G\0\È@^\0°0` G\09\È\0`\ä G\0yÀ\Â\0\Ì#€ G\0yÀÂ€y€\ä /\0X€y#€\ä\00\0r#\0\ä\0\æ\0r#€¼\0`a\0\æ@\0r\0,À<\È@\0\0,˜G\0\È@\0ò€…˜G\09\È@^\0°0\0ó G\09@^\0°0`\ä\09\È\0`\ä G\0yÀ\Â\0\Ì#€\ä\0yÀÂ€y#\0\ä /\0X0x	\0r#€¼\0`a\0\æ@\0r\0`aÀ<\È\0r\0,˜G\0\È@\0ò€…˜G\09\È@^\0°0\0ó G\0\È@^\0´[–ş–j\'/l€ G\0yœ!f¹Zi¸\Çğ2±À\È\0r\0Á\Ën¡\Ù.2«/l€ G\0y¼!-4\Ü\ãxyX`\ä\09\È€öó÷]nù\î6[·Y`\ä\09\È€ğ÷]n¾»\Í G\0\È@^\0t‚Lƒ­\Û,°r€\ä@§‹óh¸x9X`\ä\09\È€\Îc—›­\Û,°r€\ä@\'\Z\ÂÂ€6@\0#€¼\0\áŸ*¥z§¤¤Ìœ8q\â\Ş\Ø\ØØ†Ş½{úù-*ˆ\êÙ³\çw\çŸşgÃ‡\ßhş\É›Q\äˆ‘#rD\È9\"/@7²lÙ²{FY£\æÌ™­òóóTC\ÃW\æ²ú;ªƒ%¯cQQ¡JL|N\r8°±ÿş{Í—übVp\ÈE\È9\"G\äˆ‘#òD¹\Ô\ÔW\Ö÷\ë\×O%%½ \\®Fsa\ÒDÀJN^¤úô\éóÕ©§z+8\äˆ\"G\äˆ‘#rD\Èy¢x¡|Á¨¢¢\í\æB\ã[*DU^^¦úö\íû£{ü~¸\"G9\"G\äˆ‘#rD\ÈĞ­,[¶ôù´¨h›¹°py\ÕÒ¥/©1cÔ¨Q×«ë¯¿F\İ?R%/Jj6\Õş*/ß«N9\å”/Œ\èßO‘#rD\È9\"G\äˆ‘#òtr ‘#¯©OJz\Ş<ùW­X¾Tşù(u\ë-cus£Š¿V\rz…Z¤\Î\ßPT‰‰ó?\ïÕ«W+8\äˆ\"G\äˆ‘#rD\Èy¢DJ\ÊÂ™11?R.W½¹€hôª„Qñz|\Ã\r#ú\ÙÏ®SÃ‡]i.œc›MOu¬\Î>û\ìO\ÍY\Ç\n9¢\È9\"G\äˆ‘#rD^€(0qâ„½s\æ<i.¾nV#†Ç©\ÌWYoe¨”“ô\' Wª/—\Ó.×—~oGµ¯¦M»w§9KYÁ!G9\"G\äˆ‘#rD\Èbc‡4\ä\ç\ç˜††fu÷\İ\ÕÁ¿~ª¶nyGeÿiƒZõjªZŸ¹F}\\ı¡úŸ©“Õ·\ß~\é÷vTû\ê\İws˜³d\'+8\äˆ\"G\äˆ‘#rD\Èy¢@\ïŞ½UC\Ã\çæ‚¡¾Y=6\ë!U\\´E\í(Şªv\ï*\Ñ%§w\ìØ®{\ì!¿·¡\Ú_2\ÌY\âb‡Q\äˆ‘#rD\È9\"/@”¼\é(õe³r¹ş®fÍš©¦üf’*))T\å\ï\íÑµk\×5\í¾ÿV3¼O}ıõ\ç~oKµ¿¢|¡¦\È9\"G\äˆ‘#rD\ÈyºY\Ã]\çUŸ«u\ë^S±±?U\ÕUª§\ß\çU¥¥\Åj\Èå—ª\×W§ª††Ïšİj±‚C(rD\È9\"G\äˆ‘ ª\Ìÿp\ê»ï©·6¤«aCcUMu•z¯l·\Êİ¼Qe¾ùG•öúJ•ú\ÊK\æB;M\ï†tå•—«ôô\ê\Ûo¿ğºªı\Å\n9¢\È9\"G\äˆ‘#rD^€¨Z0sj\ë–Mú7eaœ—·Y½™‘®\È+–/Q//^¤’^xV=3\ïi} \Å/-T\×^3Bm|{\×}P\í/Vp\ÈE\È9\"G\äˆ‘#òDÕ‚ù\ïN=6\ëwúˆ•²\0^–ºX×’—“Uò¢\êù\Äy\ê\ç>©øı#j\æŒßª\'Ÿx\Ô\\(gª\ßÍ¼\ß\ë>¨ö+8\äˆ\"G\äˆ‘#rD\Èy¢jÁü…S²`–ŸŠ¸ı¶›\Õi¯\ê²,¤Ÿ?GÍó„z\îÙ¹z\á,\ë1£\Ôæœ·­óT\'+8\äˆ\"G\äˆ‘#rD\Èy¢jÁ|Ô©½{·©G™¡~yû8½\à•]üU\\\Üõ\ë	\ãõ§¢¥¥\ïz\İ\Õşb‡Q\äˆ‘#rD\È9\ê\"Y\Ösn©v\Z\0‚]0\îU®oş¦¾üòS•ø\Ü\Ó*a\Ôuj\Äğ+\ÕĞ¡W¨¸+‡¨¡\æùš«‡«\î¿G;ö=­\ï\í©ö+8\äˆ\"G\äˆ‘#rD\ÈQb¸;¼¥†{\íô‚ù&\Å\n9¢\È9¢\È9\"G\ä¨e·\Ğl™Õ‹ö	zÁü&\Å\n9¢\È9¢\È9\"G\ä¨\ri¡\áG\ë´kÁ|˜\n“Šâ•€\ëK G9\"G\äˆ‘#rDÂš¿\ïr\Ëw·Ùº\r´oÁü7*L*JWp\â\ÍúÂ¬$\ë\ïrD‘#rD\È9\"G\ä(lùû.7\ß\İÚ¿`>D…IE\á\nN¼\ÏJlQø,\nÚŒ_rD\È9\"GäˆŠ¦e\Zl\İ:kÁ|\n“Š²œø\0[\â£p\Ë\ã—‘#rD\È9¢¢)Gq\rw´~Õ‚ù\0&E+8	­¬\Ä\Ø\×\'#Š‘#rD\È9\"Ga\Éş.7[·-˜ÿJ…IE\É\nN[W^¢i\Ë\ã—‘#rD\È9¢\"=GÌºÏ¬µfU›Uoı\rf}b¸w3ŸiM \í\æZ*L*\nVp\âƒ\ÜR\ìô\äˆ\"G\äˆ\"G\äˆ‘£\Î%?÷•k5Öª•o\ÖZ) M\æO©0©_Ái\ï¹]]„¯\ä0~\É9\"G\äˆ‘#*\ÒrcVvM¶¿\Új\Ö´T@‹\æıT˜T¯\àttw¼HßñK\È9\"G\äˆQ‘”£ñ†ûHıÍ³\ËjÀ\'›u±Y}­iû˜5Èº\ìn\î»%\\>¨bk7xÁü*L*BWpZ; M¨\ï‡‘#rD(rD(r\Ø\Ãûw¶\åt¢\á\Ş\â\İı¬\é}«{2­\àwÁ¼\n“ŠÀœ\Î>ºk¤nY`ü’#rD\È9\"GT$\äh¼O£\\i¸·f·‡Ü®Ü§\éfK7\Ğ|ÁüI›K¦ß¶m­ª¬ü³>}\àÀ¿\Ó\åå¥©#†¨É“ÿCMšt›WmÜ¸\\ee-S-=¶\\7mÚm~^«W\'©ó\Î;7\àõ55\ï\êû¬¯ÿ@×†\r¯¨\Ïs®ß·o›\×ô%%TYY¶>-?jVr\éÍ÷ò\å\Ï9\ç\ë\ê*‚~}#h\ìø`\æ{f\İiı\r†\ï\í\"ñÀ5\äˆ‘£\çˆ:±E\È•9Š1¼w#—\ï_÷\í\à}\Ê\îæ¹†÷\î\åƒh±\0¯óÿµ©JK\ß\ÒAºù\æQze_N\ß{\ï¯õ\é3\Ï<C-\\ø„3­œ—\é<oß¿ÿ?©k¯Ó§«TK-\×\İt\Ó\rm~nıúıP]}ul‹\ÓHc \ÓTW\ç\ëûn6,©\Îÿ\â^Á÷~o\è¿\'Ş¢¶lù£F\Î?õ\Ôı\ê;~¡rs_\ÓÓ–”¬\×\×/Xğ˜¾^.\Ï\ÈX¬.º\èB}›}û¶\ê\Ë/\Ó\âsŒ \ßOşe\åd™õü—±’\èv‘¶’C\È9\na¨_\äˆQQ™#\ÏÆ¸²šmÏ¦»Ü§‘p|Á\\\Ój;V¦tù\å;—\Éù\ÌÌ—õ\é={²¼¦w7\n?óº,=}‘¹R¾\Ì\\i\Şb6\nª–[®“\Æ\"\ĞõMM\Õú>\ì:\ãŒ\Ó\Ô\è\Ñ#óG\îV……\ëœ\éKJ2u3Q\\œ¡.»\ì\ßô\í{ö\ì©W\ä\åù\Ô×¿\ïL\ër}¤ÿ\Êe2½<—Ã‡wª\Ô\Ôg\Ôi§ªÿ‡5k’UL\Ì\0\ç6r½¼ö\ã\Ëmö\ïß¦ÿ\Êôö\ë\çû:ùû¿#p\åÆ°¶x\îNÔ–•Ï•»&z\\Iß¡#G\äˆ…(GThŠ‘#*\êr4\Îğş\ÎöÅ|ÿŞ»ª³k9p|Áüq‹UW÷\Z0 Ÿ\Ê\ÊZªN9¥·züñ{Un\î«:L“&İªOŸ{n¯\Ûô\í{–\Ê\Î^®FºJM™2\Ş\\YN\ÕÓŸv\Ú)fÃ°PUW¿£=vS“{7Si6ZzN²«\íØ±\×9\ÏeÂ„›ôi©yófz\İi\ézk\å}«>Ÿ“³RŸ·#GJi+*6\é\Ëjk·«¼¼\Õ\Îõ\î\Æh±F\Ã÷ù\Éõw\İu»ª¬\ÌÑ§+õ\ß}ûÜ»\á\Êsh\íµ€œ@+şVVZZ\Éñ7}ªŸ\é#\å;t\äˆ‘£\äˆ\n]‘#rDE]<·n\' \Çx\Æ`+7\àoÁ\\\İb\ÕÕ•\é¿7¾¢‚œœ\æ\ÊoSa\á\ZU^¾Qw\Şÿóº\Íñ-s\îóyy¯Y»·\Æ\ëó¨@½g\Ï[Ö–¹sÌ¦¡ª\Õ\ç\'%Ó§§ÿÁ9¿a\Ã\Ë*&\æ_œó)j\àÀ«ªª\Í\ê’K©Ù³p®+.^§o/[\ì<\ï\ïw¿›l64¶š÷V¶Y³¦\êÿ=--É¹y}bcÿ]M›6\Ñl2õ\ã\È4©©ó\ÔYgi6;õm\í×±µÿ#D\ÜX¹Ib¥\Å\ßJN[Wn|Wrºbw¾¶¾V\äˆ‘£\äˆ\n]‘#rDEUÇ·>»¬ó\'‚½\Üó\'\Ãbhµ\0½`ş¨M•™ù’:ù\ä“tÃ°j\ÕszWÒ‡¢\Ïÿû½ô_{Zw£pƒ>½o_¾\Ó$\Ø\Ó46V¨@-—}­¹¿VŸnjú°\Å\çe\ße\å&\ç2Ù’8b\Ä\å^\Óee-Ñ»\ÌNŸş_jÒ¤[t\Éó‘\Ûfd¼\è÷y:T\èÜ·ü•†@n#MŒıÿI¹\\•\êÀ\í\Îù\Ò\Ò7õó¶\ïûÈ‘\ë\àX\Û[ü_B´`¶G\Ğqm¼M[W2Z[\É	v\å\Æóñ?\ë‚-m}­\È9\"G!\Ìu\â‹‘#*ªrtŸ\ÇtY\'øù¬õx¬™´Z€^0WµXlS¹¹+Ôµ\×Æªo¼ZŸ;÷¤yóTS¦ü‡¾LÎ—”¬Ó·±…\Ê\Êlke¿RoÉ’û\ë\ßWş[¦“\Ë\Ó\Ò\èórzÁ‚GZ|~2\Íüù3›]vû\í	^—mÜ¸T\×Ô¾şê«¯pNoØ°Ø™nÿş=­\\\Ş\Ğğş[U•£òòV9\Ï;1ñ!³‰\Ø\îÜ¦¾~¯¾\Ü~}\ì\Û\È\ß\ì\ìT\çq23SZı_B¸`¶+»•OFƒİ.\ĞJNv®\Üøn\Ñ\åJN[_+rD\ÈQr\ä9·m{\ÃÉ†\ä\Ë\ßt2\Ş\äC£É“ow> :şA\ÑR••õ²\ß\Õ\ÖnÑ·õ|<É©¿\Ç(/[_\ïr} \ê\êö8U]½Yh\Ô\Òÿ!\ãy^2PSó\çÿï””\'[}m~ø7\Îi\Ï\ì\ìÙ³>¨×˜Ew\Ú2\ìå­œ\Î\ÉY¦O\Ë\ØtÉƒŒ3û}Ì¾­\ïùY³\î	ø\äù¾ e¿9²£\Õ\Ù%\Ï\Õóy\Ê\í\å\ëS·¼O=ºS¦«-[^WÓ¦ıZÿ•=\ÏZ\Ëq„\äÈ³	t‚Ÿ\Ïø6÷@¤4\Ü¶XMM˜+\ÎyY\é-t7\İt½µğm~i\n.º\è½°;z´\Ä\\`¿h\í^z·¾¾±±\\ù{l¹l\ê\Ô_9ç«ª6y4\ÍGv;•\Çñw?«V=\ëu™¬Xı\ä\'ÿ\Ú\ìz÷\n\É+\Ín?l\Øe\æB6C_·¾µò\ï~>ıúõ\Õ\×\Ù\Ó\ÛÿOn\îr\çö••\Ò·lY­/—\Óyy¯¶øZwÑ‚\Ùó“\Ñ\\¹ii%§ª+7}>\'úµ\"G\äˆ… GR2f}¤ÿÌ¦y‰u¤ÿÿÔ§\İGúÌ™öø^\"\Ço/{V¸?´\nœ!{\Éc\Õ\Õ\í¶š\ÕÌ€\Ó=şøT}º¤d­:v¬Ô¹\Íøñ£\é)V\é\é/\èLH—/Ÿ§§±›ş)S~\éd\Ü^V\ÈÊ¿ü_“&İ¬ÿ\Ê^\'qq—\è\ÓR6¼d}\Åûù¬\\9\ß9½f\ÍšnK‘£\è\ÎQ ’½®’“¯ö\í\Ës>µO——g\é1\î>öÆ‡ú½\É¿†>¸\å=\æ\'Lø…“\Í\ÚZ÷ñ7\ÜÍ¯ÿ1j¿7\Èò¾ \à5\ë¸y^\ÓÏı[¯÷AÉ‹ıö}Ê°\Ü\Îı!]š\×õ’Ó²²\rúº\'¸Wÿo†şšWº^6\Ø\Ë\Ém{_\Ï0\ÊQµ\Ç\åŸ\à\ç3\È\ã±>¥\Õô‚¹²MU]\íş„±¢\âm½“\İBí…¤¬45U8ÓºWr\âó‡m³\Öo\éó\ï)\ß\Ç6ô›~\Ñ\ìq7lH±\ì|‘ª¯\ß\ã\\.\Ïá¬³ş?\çü‘#E\æ‚±¹°^e­”¯ôºy.\×û\æ\nG’nt\Ê\Ê\Ö\ëï¡}ª©\Ù\Üì¹¤¥=¯Zu\ì\ØN\ë\Ë\Ûõ\ã\Ëi™^ş&%=ª§oh\Økm\í\âñ&S`½i¼c¾<c6U©­¾\Æ]¼`öüd4®>Á÷·’Ó‘•ß•œ„0z­\È9\"G!È‘=d{\ÎoY	—\Óî¦¸2`†¤d\åYÆ—Œ)’1½zõsz\\\ËtrBù{\î¹ÿ¬\æÍ›\î5­dÑ¾½¡·>?¡OŸs\Î¬¯cøŸröiY\È_y\Ì¶X[òŠœ\ë%köm%s‰‰¿s\Î\Ë\×P\Ü\Í~¥^Ø¹¹\îº8•‘±\Èjtrœûª¬Ü¨ÿ¿¶,«\ÈQô¿µ6ÿg\Ìø/½Ì–ó26å¯¼\'\ÈuöûˆŒG9/•÷±cGz5\ÃvfKJ\Ö\è÷ûò%KV^ø#=N,x\Ø:F\Ç.\ë§$W9\ÏCÆ¬¡÷ğª°>°µ÷jÙ¢³!\ïm¾\Ï]\Ş[\är¹ûƒ\Ú\ì\ì¥:\Ër{ÿ«½±sb¿\ïØ·\í\È\ë&c\ã+ó}Oğó\é\ãñX\r´Z€^0\Ğb\Õ\Ö\æ\ë–©S\Ç;—m\Üø²¹22\Ğ9/+\nö\nƒ}^Vˆ¦O¿S7%·µWşe\ÚÃ‡·é•†\ÂÂ´€\ÏA®s¯|\ç›ù\İz\Ë\ßSO\İ\Ûlº\ÒÒµ\Î\'Ÿ———oPÛ¶­\Ö[\æ,x\È\ëº={\Şt\ŞX<§—µººRsee“¾\ìÀw­\ï\Ğ^§\ÏÛ—K54\Ø\rD>Ÿ›»Lÿ5ôwO¶ú\Z\ÛÕ†…f¨+©ƒã«‡Ÿ-	U\Ö\å‘n¯9\"G\ä\è\Ä\æH\ÆÑ€ÿd®Ô¿d\éÿ=F\ì«\ä´4Å·q\é©\Z5j„\Õ¼\ìq¤ÿzüù>®Üd\É÷ñ7\ï\îóû÷\ç9\r±\ì!?T_––¨O\Ë_yœC‡¶6Ÿò<\ZË¬­g<¶p\'\ë-ğ™9R¨Ë½5o>-9ñœ\Öóşe\Zû´| f/+\ì\×\Ëİ¤£\îú~\ÔR¼ª÷\0\É\ÉyE¥¤ü^\ác\ÇJô‡=w\Ü1F¿?45½\ßlœÈ´’QÏ²\×\ÔÂ…³¬-\Ìk­fº\Ô\ë62½œv¹\Êõ—\ËRS\ç\èÇª¨\È\Ò\×Iv\Ü\Ü&ªÁƒ\Ï\ÓÍ¼}{û~\å½GN{şò~\è\ŞR\ÖlL\Ëóó7\Ö/~\Òy²—ò<‚}ÿ‰€…\ê¨\é¡~< \ÜîŠ «©©¼]·£Z®.ş$t§µõ —5]kG\í\È…¶ü.j8oQğ}­\È9\"G\'8Guu;õß\ë\ÆZ\Z‚}ûr­\ë\×Í•öõ\ê¼óx\İ\æx“\ì>Ÿ—·\Â\ãŸ\n³\éİ«|777\Õj¸+Z¼¯\nôtösØ¿ÿk—öGi\Ê\Ê2­-v+õcefº·:/_>\×l8·\Z‘V\ãş‚\ÙHo·4¸\Åk<K\Ãa?W¹9\í\Şú\îoüK\Ãc?vi\é\Z\çò\Ë.Lx?jÓ¼¯ª\Úh»\àg\\\Ö\Ö\æ\é\ë\å¼\ç´II\ë\Ãd,\'\'?f}­i¼õ]\í)z7u{z{»\ÛlıšdÚ³½û÷j=½Œsùp\Éóñ\íL\Ém\åCµa\Ã.õzşöóµ\ï\Ãó¹º›\ç\ãË”ôô\çõ\å·\Şzƒ^†¸·»÷¬²3\äy›~?ªc7Ğ¥\r÷ûT˜T-˜}ß¬}W&\êŒó¹ö¬\ätõw\æ½VŒ_rDB”£\ÌÌ…Ö‘ş_R«V=c®\Ì÷P?|·>\ï>\ÒÿKÎ´gyº\Ù$_¯O\ïÛ·\Ùi¶\íi\Z÷(\ß\Ç\Í\Í}\Å\Ú\nœ¬\î¸c´ºë®›õô†>\Ù\İ^\Ó=Zh\í6[l®\ä\Ë\×-\Êô}Ú•“³\Ô\\y\Ïo6>\í\Çw7\Ğ­­ô\ãô\ém\Û^k6ıˆ?u\Ã\äÉ·\ê\Ó\î£ü_\ïLW\\œ¦&L\ã4#÷oŸ\Î\Èø9\"G«¾¾T]~ù¿9cMÆ¿œ.+{\ÓK²\Ç\Ä9çœ­ö\ïÿ³3NdO-s\ÉÉ³ôS£G_­³i\èİ²7;eú\Ô\Ô\ÙÖ–\éuVSüšß±g[;côyiº\í\çfO»zõ|¯\Û\×Ô¸·PË‡\0Ë—\Ï\Ñ_SZ²\äI\çq[z<C\ïR\åÜ¯¡¿Æ•\r\ïG|‡\èÚ†»<\ä\åş„s¾®nG«Ó¯Y³À9\ßØ¸\Û:Ò«­\Ş.%\å±V§‘*\ßû\Î\ÉY\Ò%¯K\ÌEf°bÓ‘OğıÔŠ¿£\Â³’Ó•G…m\íµ\ê\Ô1½XgBN=º=\àt\ã\Ç\ß\ØbN<\ëÀ<\çş\Ê\Ê2ôJÔ†\r‹ô§úö\ÊUFF’3ıµ\×^¡n¼q„¹’”£g\è’Ó¾\Ù\r\ÇÜ‘£\èÌ‘Œai†\í±)§\çÎfm…»_M™r›\Ó,—”¼¡oc7Ü••oY\ß-3‚şú><Ç\ç\ã\ÔÖ¾£W°÷\ï\Ï\ÕÍ¼3\É\Î\á\Ã[œ\é\ä¾\ä¶\Òü§§\'š+ù\ÙjÖ¬\ß8%+\ëGl5›˜\ÍÆ§Ü·ü?r\Ù=v¬H_\î;½»(÷h\Ö\Ëõÿ*ÿŸ=Ëµ\×Yn\Ø\Ë\ß\Û\Ês³“ñ~ä¯Š‹_w>’1,»rWWo´\æ·\×kL\Ù\ãdñ\â\ß\ë±\'cW² M»\äÁ\Ğ{k8™”±\'\ï\röX”\Û\ËûŒ\éI“n\Òe¿\Éõ\r\r¥\Îü‘\é\nW\ë¯olÛ¶\Êj\Â\×[\Í|\×ÿ`\ç\Î\Ğ[\Ñ7\ê\ïr\Ç\Ç\Ç9c_\î\×w¬\Ë\ã\És–½F\ä¹ÎŸ?\İ\Ú\Íı\éhy?\â(\å@\×6\Üï…¬JJ\Ò\Ì&y¥Z°`¦õ}²¥\æJş\æô|s%~¶¹\Ğ\Üd-¼÷º\\–œü¨>\ír¹·HÈ›€\ïı¾f.¬S¬…vŠşt3.\î\ßõi)Y`»w9ô¾oYñ¯«+\Ö\ÏM\ÊĞ»Cı\Ò9-×…\âõ	Ñ‚¹¥-ı$¿µ\ß5m\íwQbt\Íï¶õµ\ê”ù_U•e5/;ã¡´4½\Ùt‡\å;Ÿ\ŞË¸\î\ßÿ‡*-\íY½\"#Y’\Ë\Ü[\İ\n\Û$&>¨?»¦\æO\Îe2)\Ü\ßs‘-²‚\âoŒ¦§?Ö¹#GÑ™£¦¦½zùoŸŸ7\ï·Ö‘şG:™ñ-i®%\Õ\Õo›\ró6³Qøƒu¤ÿIúú\Æ\Æ]\Êóq÷\ìY£?ğ’†A¦‘\Çt7\rùfş¦¹ş€~L{zÏŒUTd\ê\é\í1(\ïm¾\ÏGòl\è­\ì#õs’Ç²ó*ù‘¬H\Ã\ã;%‹öt“\'ß¢O÷\í\ÛGÍ˜q§\ßñ¿r\å\\\ç´üOò\Şk\è]eß±v\Î\"G¼ù­\Ú\Ú?\ëõ1CÿL\×zœ\Êò[>Ü²Ç…\ä\Èwı\ìÈ‘-zN\Ş\ä2;[r{C\ïu±\Ülj78\ëp«W?\Ó\âØ³\ÃÎ˜</{QÆ±\äñø‡»\ïGóø‡l\Çß³\ìõIÉ û\ì¯üÚ™±SşFøû¿\Ã\rtm\Ã]²:|¸@¿ù76–\êrÒŸc}jÿ¢^°\Ú+·³~G¼kıLÅƒ~\ï\ßı\É~¢s\Ş}D\×\ãÓº\è:EŸnh(QYY\Éú6s\ç\Şg­\à™ñ\çñ\ì\ç\ÙÔ´\'$¯\Ş—h\íı\ÖVnŒv®\äØ»‹ö¹·\Ôı\Ö9/[¯¤õœ\Æ\å\Úm®”/Ô§¥\Ñ.,\\e®Hqn\ç^™\åu›úú^+™™Iú;°\'Õ—Ù—K\Ã`\ßFVšd\×Ai:oyx\ÑZÊ²l¹#GÑ#öx•1{±ó>\"\ã\ÔsÜ¸·p_\çœ?t\Èşy£}\Ş~’\ÓGnu\Ş\äÃ©\ÛoÿY³qe?¶œ¯­uw[²$yq7Ç§u7\Üe\Ö\Ñùœ\ÇŞ²eE‹\ï]öôÆ¶ü\Ïş®“Ç·jÉ¸¼†s­2\çÿ6ô®ñw‘#Ş\Îw{l\Ëx—÷C\ï²Ç¹^Æ—\çôòj—2\æSSŸ\Ò\ØúfF–û·‘±(\ï_w\Üñs]¾\ï3••\ëL\Ê\Ãeek­_\ÎHuŸlœ1ô\Ö\ï…~ÿ;\ÃÆ¨\Ë.\äu\İüù÷{ıŸr¹™»\î\Z\çL\'\Ï\ÃĞ»¾¿\Z\é\ïG\ÌrY\Ï\Çe?ú\î\ïm\Ûÿ{­ \Ì{CZöÂ¬²2\Óút§\Õd[[ô\Òü\Şfõ\êy\Öb\ßwC\Ãs!¾N7\ævs¾r\å}º¦\æmİ ø»\ï±c¯ñ:/÷!o\îŸü¾6a>^mYh\ë\ÊM°+9öã‹öú;i7ú½|ÄˆË¼.“†vô\è«Ì•“_è•“Å‹\Ó[”gÌ˜\è\\f\è-=\ã\ÜGY\Ù\ZsE\åsf‹\Ùüş\ÆúY—b=\Î\íi²²9![4|Wª©i·“-¹¯p\Ì9Š\Î\Õ\Ön\ÖÍ³ûC(÷e2\Ö/¹\ä_óò>a¿_\Ø\çekõô\ét6<Kn»a\Ã”¿Ç•÷£i\Ó~¥)w~ƒ\ß\çdŸ–\Çq\ï\Ù\á¾_ù+uõÕ—7{_“\ìH 9–i$ûò¾(§‡\r»D\å\æ.	8¶³³S¾Fr\çû¨»9?~İ¨Q\Ãôc¶%_\ä¨û½\Éú˜,\Ï\å½À^»›\ÜW¼Æ…\ç{…ûƒ\Ò\×õi—k—ó~c¿_\Ø\Ó,óºÍ‚3ôô\Æ^qñkN\å¯|\È+\ï\'r?ƒÿØ™V\Ëór’i°=s\"ÿ\Ç\Ãÿ—\Ş+Dê©§\îqŞ¿ìª¨x\Óy\Ï\ç±p\áC\Î\ß(x?\Êõ\ã‰\'\è1ñxŒ­´Y€³`\Ş’ª«Û®·DL›6^/e¸oßŸTj\ê“z!w\äHµµk»^\Î\ßz\ëõz\ZC\ïfû’^IZ²\äq•˜8]_—·\ÔZñ\×y»\Ñhl,±>‰}AŸ–…¯»a?şœ\\®\ã\ß’\ÛÈŠ•l-,.^e½©,\Ù\ëc?÷3²eÁwwº;\à\×\Ô\ßJ\Î\Ä ¶`DMrs_6W\Êª\ÇÛªUsu³;cÆ¯Í•e÷–`i\ì±l\çdÿşl§iu7\Éúö2\Æ%ú¾eºr½²aŸ¶?ô*/_\Ûl¼WU­wš}YI—œ\Æ\ÅıDÿ•Ú½`OX\æuŸ55\í\n\é2º«+”ÿ/9\ê\ïG¡£\á˜\Ûõœ\Â,G\ã<Æ·l\å\îìƒ§]lßŠ.56pÌ»CV.\×Ns\å³s¾´ôus!Wj\í~÷¼\ÙL\ä[\ß\Ï\Ù\ìu;÷\'¨¯™\ÄFkW¥À\ánd÷¦E\Ö÷\İnÖ§¥I¸ù\æ‘^Ó®^=\×ú\äõ³1xQß¿}{ö¼\á±\Õ14¯9¿W\èû-++mY¹1Z¹](j¥KsTW·M{ûü†\rI\Î·³QU•i6¯;ü—\Ì\Ì\Îy™\Æ\Ğ\ÇFX\ì5]m\í&³_§ª«7\èû–ñ\î\Şzñ\Õx¿\é\Ñ\è¶<>§L¹E\ßnË–ea›;r\ÔırDñ~D\È9j“|†¸\Òè¼Ÿ“Ÿ+7¼·n÷2\0\Ø\æ]!«úz÷o#\Şx\ãp³)x\Éj&Ş´v“K\Ö\Óo\"\ß\Î\Ğ\åx\È9=u\êm\Ãóö†ş¾\Û\"}Z\Ï}D\×\ã\Ó._ş¤\Ş}oŞ¼ûôù††\"\ëû<\ë\Í\æ\ã\ÖÁrrCöúD\Ğ\n\çJ\È••‰Fğ?­\â{»ş\ŞjD\ç\È\Ğ\ßmş}º®n«\Õ@¿p\Ú\ØØ‹Ô¤Icõ8—1{\Æ§¼\ï¦&û\ëo[ß]\ëŒwCN¶J«\Ë/¬\ï¯_¿¨û\ïÿ•sÿ2\Í\è\Ñ#t¾~ò“\Â6w\äˆQ¼‘#Šùc¸÷\nñlŒ;\ÚtK³\í¹»º\ç`-\àµ`.\rY56y4¥\ÖÖµuÖd^qšğ¼¼—½nw¼\á.UGº<s\Ê)\'›\rÉ–fa\è#ºÆš+ü­-m\ãôi÷]\'8\Ó\Õ\ÖşI¹\\;ôÏ¾\È455¬£Ï–\ê\Æ\Ã\Ğ\ß!Z\Ò\×\'\ÂVpü­\ätÆ–Š®8úkX\ä\èÈ‘wœ,\ÈùmÛ–Y\Í\ç\æ€\ã\å\á‡\ï4\è,§\Ü^-jv¿«V\ÍV+W>¥\ê\ë·\é\Ë\n\n–š\ròóºA—LUWg6»yo\è²=ğ¹„K\î\ÈQ÷\Î\Åû9bü’£\É\Ïvy\îú-[ºÛ»{¹\Ü\Îs\Ë6»’]½`nhp…\\¾¯j¯˜\Ë\n¸{«[–nrr^ô»À’\ï\ÊÁq\ìf$#\ã9\'\Ül\n¸ “\Çima8a\ÂÏ\ç\'GT¾ıöx\ç:÷î°¬\à„`%§³W–\"*Gv6\Ò\Óç©¦¦}™\Û`Ø°oq¼H\Ó\ì{YVVR³i\Îõ\Øz^ª›h;;’;C\ïÎ\æ÷1,˜®uCÿ&\é\ï\Û4»2w\ä¨û\æˆ\âıˆ‘#r\Ô&“|šn9-R\ë\×\Æ\Û\Ët\ÏøÜ‡\Ô#´V@˜4Ü²UK\Î{n\é–\Ú\ßm¤ù\ë§Mû¿\×û\Û\Ê\í¹ ó\İ\Ú\ço\Zy²\Å\ï¼óşEo}ó\İ\"ª-\İº‚co	\è\Ènw‘¸\Û^§å¨´ô5ı\İj{\ì\É\ßY³\îr>ˆji¼Ø»”»wû^híš\éwzù°JKşø#¯\ë$2ş\å6)\éA\ë\0kl\Ó8\î\ÊÜ‘£\î™#Š÷#rD\ÈQP\Æ[c]ù4\ŞYVC.[¯\í\İ\Íe·ñA\Öm\Ş0Ü»{Ş®Îº\r€\î¶`¶·vt\Z\ÌA­¤»E \ÒH69\n§±N¹#G\äˆ\"G\äˆ\"Gmcxÿº=µ\Õ\à;\Û\0f\Ì!\ìnx‘¼\Û9\"G\äˆ‘#rD¨h\È\ÑmV\ã\í\n²Ñdp4r€3\æ°]\Éb¸wA\ZG(rD\È9\"G\äˆu¹f=`\ÖZ³>1«Áú\äï§†{wó™†{\Ë8\0\Ì,˜»P‚µò’\Ğ\ÂõŸE\É\Ê\r9\"G\äˆ‘#rD¨h\Î\0\Ì,˜#h\ËB´\ì¶G\È9\"G\äˆ‘#Š†\0f\Ìa³’+7\äˆ‘#rD\È9¢h¸°`fÁÜ¥+9IQºrC\È9\"G\äˆ‘#Š†\0f\Ì]&Áú\ß\ÈE\È9\"G\äˆ‘#\04\Ü\æ\ÎÕ‡Q\äˆ‘#rD\È9@\ÃM±`9\"G G\ä\äˆ\"G\0X0³`9¢\È9¢\È\È9À‚™bÁL(rrD@\È\0\Ìf#rrD@(r€3f#rD\ÈE\ÈE\0°`¦X0“#Š‘##r€3Å‚\äˆ‘##Š`ÁÌ‚\äˆQ\äˆQ\ä\0fŠ39¢\È¿\ä\äˆˆ.\'Ÿ|\Òw\r\r…,Ã ¾újû>s–¸•\äˆ\"G\äˆ\"G G\ä@<øÇ‡òó—°`ƒZ¿şù·\ÍY²“QI(rD(rrD\0D«®ºlİœ9SY0†A{Uš9K•\äˆ\"G\äˆ\"G G\ä@0\à±œóËµƒ…c\×\Ö\'=zô¨0gI£’Q\äˆ1\É\È9%ú÷ÿaiRÒƒ,»°ÆŒ¹j©9+r\äˆ\"G\äˆ‘##r º:ó\Ì\Óê‹ŠV°\ì‚\Ê\Ï_ºŞœÍº˜¡H(rD\È99\"G\0¢Oü9\çœıwÎ¡_(÷\èÑ£\Æ|ı\Ç0\ÉE@\È\È9\Å\ç“Núş±yó\îûœ\ïşœø\ïöX»d¡L(rrD@\È€\îaPÏ\ß\Ë9ıôSO™r\Ë\îM›^<\È\ï9v\Ş\ï1\ÊOD\ÈQ+­i\Èw{\ØİˆQ\ä\äˆ‘#\0\İÌ¥f\Í1k«Y\rf)ª\Ã\å2Ü¿\Ç(?ÁQ+\ÉE@\È\È9\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¢\ßÿğ9‹­\æ6BX\0\0\0\0IEND®B`‚',0),('e6a33d903772421a97cd3d4c531156b7',1,'test_audit.bpmn20.xml','809b52df107d48c98625937c3f17b1e9',_binary '<?xml version=\'1.0\' encoding=\'UTF-8\'?>\r\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.activiti.org/test\">\r\n  <process id=\"test_audit\" name=\"æµç¨‹å®¡æ‰¹æµ‹è¯•æµç¨‹\" isExecutable=\"true\">\r\n    <startEvent id=\"start\" name=\"å¯åŠ¨å®¡æ‰¹\" activiti:initiator=\"apply\" activiti:formKey=\"/oa/testAudit/form\"/>\r\n    <endEvent id=\"end\" name=\"ç»“æŸå®¡æ‰¹\"/>\r\n    <userTask id=\"modify\" name=\"å‘˜å·¥è–ªé…¬æ¡£çº§ä¿®æ”¹\" activiti:assignee=\"${apply}\"/>\r\n    <userTask id=\"audit\" name=\"è–ªé…¬ä¸»ç®¡åˆå®¡\" activiti:assignee=\"thinkgem\"/>\r\n    <exclusiveGateway id=\"sid-C28BB5F6-013D-4570-B432-61B380C1F46F\"/>\r\n    <userTask id=\"audit2\" name=\"é›†å›¢äººåŠ›èµ„æºéƒ¨éƒ¨é•¿å®¡æ ¸\" activiti:assignee=\"thinkgem\"/>\r\n    <exclusiveGateway id=\"sid-ED46FE41-A0FD-496D-86DC-2C97AF5735F0\"/>\r\n    <sequenceFlow id=\"sid-EF2F51BB-1D99-4F0B-ACF2-B6C1300A7D2B\" sourceRef=\"audit2\" targetRef=\"sid-ED46FE41-A0FD-496D-86DC-2C97AF5735F0\"/>\r\n    <userTask id=\"audit3\" name=\"é›†å›¢äººåŠ›èµ„æºéƒ¨åˆ†ç®¡é¢†å¯¼å®¡æ ¸\" activiti:assignee=\"thinkgem\"/>\r\n    <exclusiveGateway id=\"sid-FE485B2D-9A23-4236-BD0D-D788CA6E30E4\"/>\r\n    <sequenceFlow id=\"sid-3DBCD661-5720-4480-8156-748BE0275FEF\" sourceRef=\"audit3\" targetRef=\"sid-FE485B2D-9A23-4236-BD0D-D788CA6E30E4\"/>\r\n    <userTask id=\"audit4\" name=\"é›†å›¢æ€»ç»ç†å®¡æ‰¹\" activiti:assignee=\"thinkgem\"/>\r\n    <exclusiveGateway id=\"sid-3F53B6BD-F8F3-496B-AC08-50630BD11477\"/>\r\n    <userTask id=\"apply_end\" name=\"è–ªé…¬æ¡£çº§å…‘ç°\" activiti:assignee=\"thinkgem\"/>\r\n    <sequenceFlow id=\"sid-02DB2AD9-1332-4198-AC8D-22A35169D15C\" sourceRef=\"audit4\" targetRef=\"sid-3F53B6BD-F8F3-496B-AC08-50630BD11477\"/>\r\n    <sequenceFlow id=\"sid-2AB7C01A-50EE-4AAC-8C8F-F6E1935B3DA7\" sourceRef=\"audit\" targetRef=\"sid-C28BB5F6-013D-4570-B432-61B380C1F46F\"/>\r\n    <sequenceFlow id=\"sid-36E50C8B-6C7C-4968-B02D-EBAA425BF4BE\" sourceRef=\"start\" targetRef=\"audit\"/>\r\n    <sequenceFlow id=\"sid-7D723190-1432-411D-A4A4-774225E54CD9\" name=\"æ˜¯\" sourceRef=\"sid-3F53B6BD-F8F3-496B-AC08-50630BD11477\" targetRef=\"apply_end\">\r\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${pass==1}]]></conditionExpression>\r\n    </sequenceFlow>\r\n    <sequenceFlow id=\"sid-D44CAD43-0271-4920-A524-9B8533E52550\" name=\"æ˜¯\" sourceRef=\"sid-FE485B2D-9A23-4236-BD0D-D788CA6E30E4\" targetRef=\"audit4\">\r\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${pass==1}]]></conditionExpression>\r\n    </sequenceFlow>\r\n    <sequenceFlow id=\"sid-53258502-43EE-4DE8-B1A4-DBD11922B8AF\" name=\"å¦\" sourceRef=\"sid-C28BB5F6-013D-4570-B432-61B380C1F46F\" targetRef=\"modify\">\r\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${pass==0}]]></conditionExpression>\r\n    </sequenceFlow>\r\n    <exclusiveGateway id=\"sid-5FED02D6-C388-48C6-870E-097DB2131EA0\"/>\r\n    <sequenceFlow id=\"sid-163DBC60-DBC9-438B-971A-67738FB7715A\" sourceRef=\"modify\" targetRef=\"sid-5FED02D6-C388-48C6-870E-097DB2131EA0\"/>\r\n    <sequenceFlow id=\"sid-72258A41-203E-428C-B71D-CA3506252D73\" name=\"æ˜¯\" sourceRef=\"sid-C28BB5F6-013D-4570-B432-61B380C1F46F\" targetRef=\"audit2\">\r\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${pass==1}]]></conditionExpression>\r\n    </sequenceFlow>\r\n    <sequenceFlow id=\"sid-8448EF4A-B62E-4899-ABC2-0E2DB2AE6838\" name=\"é‡æ–°ç”³è¯·\" sourceRef=\"sid-5FED02D6-C388-48C6-870E-097DB2131EA0\" targetRef=\"audit\">\r\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${pass==1}]]></conditionExpression>\r\n    </sequenceFlow>\r\n    <sequenceFlow id=\"sid-A7589084-4623-4FEA-A774-00A70DDC1D20\" name=\"æ˜¯\" sourceRef=\"sid-ED46FE41-A0FD-496D-86DC-2C97AF5735F0\" targetRef=\"audit3\">\r\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${pass==1}]]></conditionExpression>\r\n    </sequenceFlow>\r\n    <sequenceFlow id=\"sid-FA618636-3708-4D0C-8514-29A4BB8BC926\" name=\"å¦\" sourceRef=\"sid-ED46FE41-A0FD-496D-86DC-2C97AF5735F0\" targetRef=\"modify\">\r\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${pass==0}]]></conditionExpression>\r\n    </sequenceFlow>\r\n    <sequenceFlow id=\"sid-1525BFF4-3E9D-4D8A-BF80-1F63AFE16289\" name=\"å¦\" sourceRef=\"sid-FE485B2D-9A23-4236-BD0D-D788CA6E30E4\" targetRef=\"modify\">\r\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${pass==0}]]></conditionExpression>\r\n    </sequenceFlow>\r\n    <sequenceFlow id=\"sid-35CC8C6C-1067-4398-991C-CCF955115965\" name=\"å¦\" sourceRef=\"sid-3F53B6BD-F8F3-496B-AC08-50630BD11477\" targetRef=\"modify\">\r\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${pass==0}]]></conditionExpression>\r\n    </sequenceFlow>\r\n    <sequenceFlow id=\"sid-BDB0AAB2-7E50-4D35-80EE-CE0BECDD9F57\" sourceRef=\"apply_end\" targetRef=\"end\"/>\r\n    <sequenceFlow id=\"sid-44AFB9C1-4057-4C48-B1F2-1EC897A52CB7\" name=\"é”€æ¯\" sourceRef=\"sid-5FED02D6-C388-48C6-870E-097DB2131EA0\" targetRef=\"end\">\r\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${pass==0}]]></conditionExpression>\r\n    </sequenceFlow>\r\n  </process>\r\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_test_audit\">\r\n    <bpmndi:BPMNPlane bpmnElement=\"test_audit\" id=\"BPMNPlane_test_audit\">\r\n      <bpmndi:BPMNShape bpmnElement=\"start\" id=\"BPMNShape_start\">\r\n        <omgdc:Bounds height=\"30.0\" width=\"30.0\" x=\"30.0\" y=\"245.0\"/>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"end\" id=\"BPMNShape_end\">\r\n        <omgdc:Bounds height=\"28.0\" width=\"28.0\" x=\"975.0\" y=\"356.0\"/>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"modify\" id=\"BPMNShape_modify\">\r\n        <omgdc:Bounds height=\"58.0\" width=\"102.0\" x=\"209.0\" y=\"135.0\"/>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"audit\" id=\"BPMNShape_audit\">\r\n        <omgdc:Bounds height=\"57.0\" width=\"96.0\" x=\"105.0\" y=\"231.5\"/>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"sid-C28BB5F6-013D-4570-B432-61B380C1F46F\" id=\"BPMNShape_sid-C28BB5F6-013D-4570-B432-61B380C1F46F\">\r\n        <omgdc:Bounds height=\"40.0\" width=\"40.0\" x=\"240.0\" y=\"240.0\"/>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"audit2\" id=\"BPMNShape_audit2\">\r\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"210.0\" y=\"330.0\"/>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"sid-ED46FE41-A0FD-496D-86DC-2C97AF5735F0\" id=\"BPMNShape_sid-ED46FE41-A0FD-496D-86DC-2C97AF5735F0\">\r\n        <omgdc:Bounds height=\"40.0\" width=\"40.0\" x=\"345.0\" y=\"350.0\"/>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"audit3\" id=\"BPMNShape_audit3\">\r\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"420.0\" y=\"330.0\"/>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"sid-FE485B2D-9A23-4236-BD0D-D788CA6E30E4\" id=\"BPMNShape_sid-FE485B2D-9A23-4236-BD0D-D788CA6E30E4\">\r\n        <omgdc:Bounds height=\"40.0\" width=\"40.0\" x=\"555.0\" y=\"350.0\"/>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"audit4\" id=\"BPMNShape_audit4\">\r\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"630.0\" y=\"330.0\"/>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"sid-3F53B6BD-F8F3-496B-AC08-50630BD11477\" id=\"BPMNShape_sid-3F53B6BD-F8F3-496B-AC08-50630BD11477\">\r\n        <omgdc:Bounds height=\"40.0\" width=\"40.0\" x=\"765.0\" y=\"350.0\"/>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"apply_end\" id=\"BPMNShape_apply_end\">\r\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"840.0\" y=\"330.0\"/>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"sid-5FED02D6-C388-48C6-870E-097DB2131EA0\" id=\"BPMNShape_sid-5FED02D6-C388-48C6-870E-097DB2131EA0\">\r\n        <omgdc:Bounds height=\"40.0\" width=\"40.0\" x=\"240.0\" y=\"45.0\"/>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-3DBCD661-5720-4480-8156-748BE0275FEF\" id=\"BPMNEdge_sid-3DBCD661-5720-4480-8156-748BE0275FEF\">\r\n        <omgdi:waypoint x=\"520.0\" y=\"370.0\"/>\r\n        <omgdi:waypoint x=\"555.0\" y=\"370.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-44AFB9C1-4057-4C48-B1F2-1EC897A52CB7\" id=\"BPMNEdge_sid-44AFB9C1-4057-4C48-B1F2-1EC897A52CB7\">\r\n        <omgdi:waypoint x=\"280.0\" y=\"65.0\"/>\r\n        <omgdi:waypoint x=\"989.0\" y=\"65.0\"/>\r\n        <omgdi:waypoint x=\"989.0\" y=\"356.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-8448EF4A-B62E-4899-ABC2-0E2DB2AE6838\" id=\"BPMNEdge_sid-8448EF4A-B62E-4899-ABC2-0E2DB2AE6838\">\r\n        <omgdi:waypoint x=\"240.0\" y=\"65.0\"/>\r\n        <omgdi:waypoint x=\"153.0\" y=\"65.0\"/>\r\n        <omgdi:waypoint x=\"153.0\" y=\"231.5\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-A7589084-4623-4FEA-A774-00A70DDC1D20\" id=\"BPMNEdge_sid-A7589084-4623-4FEA-A774-00A70DDC1D20\">\r\n        <omgdi:waypoint x=\"385.0\" y=\"370.0\"/>\r\n        <omgdi:waypoint x=\"420.0\" y=\"370.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-35CC8C6C-1067-4398-991C-CCF955115965\" id=\"BPMNEdge_sid-35CC8C6C-1067-4398-991C-CCF955115965\">\r\n        <omgdi:waypoint x=\"785.0\" y=\"350.0\"/>\r\n        <omgdi:waypoint x=\"785.0\" y=\"164.0\"/>\r\n        <omgdi:waypoint x=\"311.0\" y=\"164.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-EF2F51BB-1D99-4F0B-ACF2-B6C1300A7D2B\" id=\"BPMNEdge_sid-EF2F51BB-1D99-4F0B-ACF2-B6C1300A7D2B\">\r\n        <omgdi:waypoint x=\"310.0\" y=\"370.0\"/>\r\n        <omgdi:waypoint x=\"345.0\" y=\"370.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-7D723190-1432-411D-A4A4-774225E54CD9\" id=\"BPMNEdge_sid-7D723190-1432-411D-A4A4-774225E54CD9\">\r\n        <omgdi:waypoint x=\"805.0\" y=\"370.0\"/>\r\n        <omgdi:waypoint x=\"840.0\" y=\"370.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-2AB7C01A-50EE-4AAC-8C8F-F6E1935B3DA7\" id=\"BPMNEdge_sid-2AB7C01A-50EE-4AAC-8C8F-F6E1935B3DA7\">\r\n        <omgdi:waypoint x=\"201.0\" y=\"260.0\"/>\r\n        <omgdi:waypoint x=\"240.0\" y=\"260.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-D44CAD43-0271-4920-A524-9B8533E52550\" id=\"BPMNEdge_sid-D44CAD43-0271-4920-A524-9B8533E52550\">\r\n        <omgdi:waypoint x=\"595.0\" y=\"370.0\"/>\r\n        <omgdi:waypoint x=\"630.0\" y=\"370.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-FA618636-3708-4D0C-8514-29A4BB8BC926\" id=\"BPMNEdge_sid-FA618636-3708-4D0C-8514-29A4BB8BC926\">\r\n        <omgdi:waypoint x=\"365.0\" y=\"350.0\"/>\r\n        <omgdi:waypoint x=\"365.0\" y=\"164.0\"/>\r\n        <omgdi:waypoint x=\"311.0\" y=\"164.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-02DB2AD9-1332-4198-AC8D-22A35169D15C\" id=\"BPMNEdge_sid-02DB2AD9-1332-4198-AC8D-22A35169D15C\">\r\n        <omgdi:waypoint x=\"730.0\" y=\"370.0\"/>\r\n        <omgdi:waypoint x=\"765.0\" y=\"370.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-36E50C8B-6C7C-4968-B02D-EBAA425BF4BE\" id=\"BPMNEdge_sid-36E50C8B-6C7C-4968-B02D-EBAA425BF4BE\">\r\n        <omgdi:waypoint x=\"60.0\" y=\"260.0\"/>\r\n        <omgdi:waypoint x=\"105.0\" y=\"260.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-53258502-43EE-4DE8-B1A4-DBD11922B8AF\" id=\"BPMNEdge_sid-53258502-43EE-4DE8-B1A4-DBD11922B8AF\">\r\n        <omgdi:waypoint x=\"260.0\" y=\"240.0\"/>\r\n        <omgdi:waypoint x=\"260.0\" y=\"193.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-163DBC60-DBC9-438B-971A-67738FB7715A\" id=\"BPMNEdge_sid-163DBC60-DBC9-438B-971A-67738FB7715A\">\r\n        <omgdi:waypoint x=\"260.0\" y=\"135.0\"/>\r\n        <omgdi:waypoint x=\"260.0\" y=\"85.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-BDB0AAB2-7E50-4D35-80EE-CE0BECDD9F57\" id=\"BPMNEdge_sid-BDB0AAB2-7E50-4D35-80EE-CE0BECDD9F57\">\r\n        <omgdi:waypoint x=\"940.0\" y=\"370.0\"/>\r\n        <omgdi:waypoint x=\"975.0\" y=\"370.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-1525BFF4-3E9D-4D8A-BF80-1F63AFE16289\" id=\"BPMNEdge_sid-1525BFF4-3E9D-4D8A-BF80-1F63AFE16289\">\r\n        <omgdi:waypoint x=\"575.0\" y=\"350.0\"/>\r\n        <omgdi:waypoint x=\"575.0\" y=\"164.0\"/>\r\n        <omgdi:waypoint x=\"311.0\" y=\"164.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-72258A41-203E-428C-B71D-CA3506252D73\" id=\"BPMNEdge_sid-72258A41-203E-428C-B71D-CA3506252D73\">\r\n        <omgdi:waypoint x=\"260.0\" y=\"280.0\"/>\r\n        <omgdi:waypoint x=\"260.0\" y=\"330.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n    </bpmndi:BPMNPlane>\r\n  </bpmndi:BPMNDiagram>\r\n</definitions>',0);
/*!40000 ALTER TABLE `act_ge_bytearray` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ge_property`
--

DROP TABLE IF EXISTS `act_ge_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `act_ge_property` (
  `NAME_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `VALUE_` varchar(300) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  PRIMARY KEY (`NAME_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ge_property`
--

LOCK TABLES `act_ge_property` WRITE;
/*!40000 ALTER TABLE `act_ge_property` DISABLE KEYS */;
INSERT INTO `act_ge_property` VALUES ('next.dbid','1',1),('schema.history','create(5.21.0.0)',1),('schema.version','5.21.0.0',1);
/*!40000 ALTER TABLE `act_ge_property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_actinst`
--

DROP TABLE IF EXISTS `act_hi_actinst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `act_hi_actinst` (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `ACT_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `TASK_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `CALL_PROC_INST_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `ACT_NAME_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `ACT_TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `ASSIGNEE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `START_TIME_` datetime(3) NOT NULL,
  `END_TIME_` datetime(3) DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `TENANT_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_ACT_INST_START` (`START_TIME_`),
  KEY `ACT_IDX_HI_ACT_INST_END` (`END_TIME_`),
  KEY `ACT_IDX_HI_ACT_INST_PROCINST` (`PROC_INST_ID_`,`ACT_ID_`),
  KEY `ACT_IDX_HI_ACT_INST_EXEC` (`EXECUTION_ID_`,`ACT_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_actinst`
--

LOCK TABLES `act_hi_actinst` WRITE;
/*!40000 ALTER TABLE `act_hi_actinst` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_actinst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_attachment`
--

DROP TABLE IF EXISTS `act_hi_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `act_hi_attachment` (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `USER_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `URL_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `CONTENT_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `TIME_` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_attachment`
--

LOCK TABLES `act_hi_attachment` WRITE;
/*!40000 ALTER TABLE `act_hi_attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_comment`
--

DROP TABLE IF EXISTS `act_hi_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `act_hi_comment` (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `TIME_` datetime(3) NOT NULL,
  `USER_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `ACTION_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `MESSAGE_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `FULL_MSG_` longblob,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_comment`
--

LOCK TABLES `act_hi_comment` WRITE;
/*!40000 ALTER TABLE `act_hi_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_detail`
--

DROP TABLE IF EXISTS `act_hi_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `act_hi_detail` (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `ACT_INST_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `VAR_TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TIME_` datetime(3) NOT NULL,
  `BYTEARRAY_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_DETAIL_PROC_INST` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_DETAIL_ACT_INST` (`ACT_INST_ID_`),
  KEY `ACT_IDX_HI_DETAIL_TIME` (`TIME_`),
  KEY `ACT_IDX_HI_DETAIL_NAME` (`NAME_`),
  KEY `ACT_IDX_HI_DETAIL_TASK_ID` (`TASK_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_detail`
--

LOCK TABLES `act_hi_detail` WRITE;
/*!40000 ALTER TABLE `act_hi_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_identitylink`
--

DROP TABLE IF EXISTS `act_hi_identitylink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `act_hi_identitylink` (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `GROUP_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `USER_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_USER` (`USER_ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_TASK` (`TASK_ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_PROCINST` (`PROC_INST_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_identitylink`
--

LOCK TABLES `act_hi_identitylink` WRITE;
/*!40000 ALTER TABLE `act_hi_identitylink` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_identitylink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_procinst`
--

DROP TABLE IF EXISTS `act_hi_procinst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `act_hi_procinst` (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `BUSINESS_KEY_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `START_TIME_` datetime(3) NOT NULL,
  `END_TIME_` datetime(3) DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `START_USER_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `START_ACT_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `END_ACT_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `SUPER_PROCESS_INSTANCE_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '',
  `NAME_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `PROC_INST_ID_` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_PRO_INST_END` (`END_TIME_`),
  KEY `ACT_IDX_HI_PRO_I_BUSKEY` (`BUSINESS_KEY_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_procinst`
--

LOCK TABLES `act_hi_procinst` WRITE;
/*!40000 ALTER TABLE `act_hi_procinst` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_procinst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_taskinst`
--

DROP TABLE IF EXISTS `act_hi_taskinst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `act_hi_taskinst` (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `TASK_DEF_KEY_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `PARENT_TASK_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `OWNER_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `ASSIGNEE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `START_TIME_` datetime(3) NOT NULL,
  `CLAIM_TIME_` datetime(3) DEFAULT NULL,
  `END_TIME_` datetime(3) DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `PRIORITY_` int(11) DEFAULT NULL,
  `DUE_DATE_` datetime(3) DEFAULT NULL,
  `FORM_KEY_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_TASK_INST_PROCINST` (`PROC_INST_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_taskinst`
--

LOCK TABLES `act_hi_taskinst` WRITE;
/*!40000 ALTER TABLE `act_hi_taskinst` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_taskinst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_varinst`
--

DROP TABLE IF EXISTS `act_hi_varinst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `act_hi_varinst` (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `VAR_TYPE_` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` datetime(3) DEFAULT NULL,
  `LAST_UPDATED_TIME_` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_PROCVAR_PROC_INST` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_PROCVAR_NAME_TYPE` (`NAME_`,`VAR_TYPE_`),
  KEY `ACT_IDX_HI_PROCVAR_TASK_ID` (`TASK_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_varinst`
--

LOCK TABLES `act_hi_varinst` WRITE;
/*!40000 ALTER TABLE `act_hi_varinst` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_varinst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_id_group`
--

DROP TABLE IF EXISTS `act_id_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `act_id_group` (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_id_group`
--

LOCK TABLES `act_id_group` WRITE;
/*!40000 ALTER TABLE `act_id_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_id_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_id_info`
--

DROP TABLE IF EXISTS `act_id_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `act_id_info` (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `USER_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `VALUE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `PASSWORD_` longblob,
  `PARENT_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_id_info`
--

LOCK TABLES `act_id_info` WRITE;
/*!40000 ALTER TABLE `act_id_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_id_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_id_membership`
--

DROP TABLE IF EXISTS `act_id_membership`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `act_id_membership` (
  `USER_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `GROUP_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`USER_ID_`,`GROUP_ID_`),
  KEY `ACT_FK_MEMB_GROUP` (`GROUP_ID_`),
  CONSTRAINT `ACT_FK_MEMB_GROUP` FOREIGN KEY (`GROUP_ID_`) REFERENCES `act_id_group` (`ID_`),
  CONSTRAINT `ACT_FK_MEMB_USER` FOREIGN KEY (`USER_ID_`) REFERENCES `act_id_user` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_id_membership`
--

LOCK TABLES `act_id_membership` WRITE;
/*!40000 ALTER TABLE `act_id_membership` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_id_membership` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_id_user`
--

DROP TABLE IF EXISTS `act_id_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `act_id_user` (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `FIRST_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `LAST_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `EMAIL_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `PWD_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `PICTURE_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_id_user`
--

LOCK TABLES `act_id_user` WRITE;
/*!40000 ALTER TABLE `act_id_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_id_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_procdef_info`
--

DROP TABLE IF EXISTS `act_procdef_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `act_procdef_info` (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `INFO_JSON_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `ACT_UNIQ_INFO_PROCDEF` (`PROC_DEF_ID_`),
  KEY `ACT_IDX_INFO_PROCDEF` (`PROC_DEF_ID_`),
  KEY `ACT_FK_INFO_JSON_BA` (`INFO_JSON_ID_`),
  CONSTRAINT `ACT_FK_INFO_JSON_BA` FOREIGN KEY (`INFO_JSON_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_INFO_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_procdef_info`
--

LOCK TABLES `act_procdef_info` WRITE;
/*!40000 ALTER TABLE `act_procdef_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_procdef_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_re_deployment`
--

DROP TABLE IF EXISTS `act_re_deployment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `act_re_deployment` (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `NAME_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '',
  `DEPLOY_TIME_` timestamp(3) NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_re_deployment`
--

LOCK TABLES `act_re_deployment` WRITE;
/*!40000 ALTER TABLE `act_re_deployment` DISABLE KEYS */;
INSERT INTO `act_re_deployment` VALUES ('809b52df107d48c98625937c3f17b1e9','SpringAutoDeployment',NULL,'','2017-11-14 07:12:37.285');
/*!40000 ALTER TABLE `act_re_deployment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_re_model`
--

DROP TABLE IF EXISTS `act_re_model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `act_re_model` (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `LAST_UPDATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `VERSION_` int(11) DEFAULT NULL,
  `META_INFO_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `EDITOR_SOURCE_VALUE_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `EDITOR_SOURCE_EXTRA_VALUE_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_MODEL_SOURCE` (`EDITOR_SOURCE_VALUE_ID_`),
  KEY `ACT_FK_MODEL_SOURCE_EXTRA` (`EDITOR_SOURCE_EXTRA_VALUE_ID_`),
  KEY `ACT_FK_MODEL_DEPLOYMENT` (`DEPLOYMENT_ID_`),
  CONSTRAINT `ACT_FK_MODEL_DEPLOYMENT` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `act_re_deployment` (`ID_`),
  CONSTRAINT `ACT_FK_MODEL_SOURCE` FOREIGN KEY (`EDITOR_SOURCE_VALUE_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_MODEL_SOURCE_EXTRA` FOREIGN KEY (`EDITOR_SOURCE_EXTRA_VALUE_ID_`) REFERENCES `act_ge_bytearray` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_re_model`
--

LOCK TABLES `act_re_model` WRITE;
/*!40000 ALTER TABLE `act_re_model` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_re_model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_re_procdef`
--

DROP TABLE IF EXISTS `act_re_procdef`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `act_re_procdef` (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `CATEGORY_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `VERSION_` int(11) NOT NULL,
  `DEPLOYMENT_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `RESOURCE_NAME_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `DGRM_RESOURCE_NAME_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `HAS_START_FORM_KEY_` tinyint(4) DEFAULT NULL,
  `HAS_GRAPHICAL_NOTATION_` tinyint(4) DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `TENANT_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `ACT_UNIQ_PROCDEF` (`KEY_`,`VERSION_`,`TENANT_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_re_procdef`
--

LOCK TABLES `act_re_procdef` WRITE;
/*!40000 ALTER TABLE `act_re_procdef` DISABLE KEYS */;
INSERT INTO `act_re_procdef` VALUES ('test_audit:1:a0b53ecd268c42b2ba57bca3f5d1078c',1,'http://www.activiti.org/test','æµç¨‹å®¡æ‰¹æµ‹è¯•æµç¨‹','test_audit',1,'809b52df107d48c98625937c3f17b1e9','test_audit.bpmn20.xml','test_audit.png',NULL,1,1,1,'');
/*!40000 ALTER TABLE `act_re_procdef` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_event_subscr`
--

DROP TABLE IF EXISTS `act_ru_event_subscr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `act_ru_event_subscr` (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `EVENT_TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `EVENT_NAME_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `ACTIVITY_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `CONFIGURATION_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `CREATED_` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `PROC_DEF_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_EVENT_SUBSCR_CONFIG_` (`CONFIGURATION_`),
  KEY `ACT_FK_EVENT_EXEC` (`EXECUTION_ID_`),
  CONSTRAINT `ACT_FK_EVENT_EXEC` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_event_subscr`
--

LOCK TABLES `act_ru_event_subscr` WRITE;
/*!40000 ALTER TABLE `act_ru_event_subscr` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_event_subscr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_execution`
--

DROP TABLE IF EXISTS `act_ru_execution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `act_ru_execution` (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `BUSINESS_KEY_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `PARENT_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `SUPER_EXEC_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `ACT_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `IS_ACTIVE_` tinyint(4) DEFAULT NULL,
  `IS_CONCURRENT_` tinyint(4) DEFAULT NULL,
  `IS_SCOPE_` tinyint(4) DEFAULT NULL,
  `IS_EVENT_SCOPE_` tinyint(4) DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `CACHED_ENT_STATE_` int(11) DEFAULT NULL,
  `TENANT_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '',
  `NAME_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `LOCK_TIME_` timestamp(3) NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_EXEC_BUSKEY` (`BUSINESS_KEY_`),
  KEY `ACT_FK_EXE_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_EXE_PARENT` (`PARENT_ID_`),
  KEY `ACT_FK_EXE_SUPER` (`SUPER_EXEC_`),
  KEY `ACT_FK_EXE_PROCDEF` (`PROC_DEF_ID_`),
  CONSTRAINT `ACT_FK_EXE_PARENT` FOREIGN KEY (`PARENT_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_EXE_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_EXE_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ACT_FK_EXE_SUPER` FOREIGN KEY (`SUPER_EXEC_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_execution`
--

LOCK TABLES `act_ru_execution` WRITE;
/*!40000 ALTER TABLE `act_ru_execution` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_execution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_identitylink`
--

DROP TABLE IF EXISTS `act_ru_identitylink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `act_ru_identitylink` (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `GROUP_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `USER_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_IDENT_LNK_USER` (`USER_ID_`),
  KEY `ACT_IDX_IDENT_LNK_GROUP` (`GROUP_ID_`),
  KEY `ACT_IDX_ATHRZ_PROCEDEF` (`PROC_DEF_ID_`),
  KEY `ACT_FK_TSKASS_TASK` (`TASK_ID_`),
  KEY `ACT_FK_IDL_PROCINST` (`PROC_INST_ID_`),
  CONSTRAINT `ACT_FK_ATHRZ_PROCEDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_IDL_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_TSKASS_TASK` FOREIGN KEY (`TASK_ID_`) REFERENCES `act_ru_task` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_identitylink`
--

LOCK TABLES `act_ru_identitylink` WRITE;
/*!40000 ALTER TABLE `act_ru_identitylink` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_identitylink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_job`
--

DROP TABLE IF EXISTS `act_ru_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `act_ru_job` (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `LOCK_EXP_TIME_` timestamp(3) NULL DEFAULT NULL,
  `LOCK_OWNER_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `RETRIES_` int(11) DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `DUEDATE_` timestamp(3) NULL DEFAULT NULL,
  `REPEAT_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_JOB_EXCEPTION` (`EXCEPTION_STACK_ID_`),
  CONSTRAINT `ACT_FK_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_job`
--

LOCK TABLES `act_ru_job` WRITE;
/*!40000 ALTER TABLE `act_ru_job` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_task`
--

DROP TABLE IF EXISTS `act_ru_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `act_ru_task` (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `PARENT_TASK_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `TASK_DEF_KEY_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `OWNER_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `ASSIGNEE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `DELEGATION_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `PRIORITY_` int(11) DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `DUE_DATE_` datetime(3) DEFAULT NULL,
  `CATEGORY_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `TENANT_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '',
  `FORM_KEY_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_TASK_CREATE` (`CREATE_TIME_`),
  KEY `ACT_FK_TASK_EXE` (`EXECUTION_ID_`),
  KEY `ACT_FK_TASK_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_TASK_PROCDEF` (`PROC_DEF_ID_`),
  CONSTRAINT `ACT_FK_TASK_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_TASK_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_TASK_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_task`
--

LOCK TABLES `act_ru_task` WRITE;
/*!40000 ALTER TABLE `act_ru_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_variable`
--

DROP TABLE IF EXISTS `act_ru_variable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `act_ru_variable` (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `NAME_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_VARIABLE_TASK_ID` (`TASK_ID_`),
  KEY `ACT_FK_VAR_EXE` (`EXECUTION_ID_`),
  KEY `ACT_FK_VAR_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_VAR_BYTEARRAY` (`BYTEARRAY_ID_`),
  CONSTRAINT `ACT_FK_VAR_BYTEARRAY` FOREIGN KEY (`BYTEARRAY_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_VAR_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_VAR_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_variable`
--

LOCK TABLES `act_ru_variable` WRITE;
/*!40000 ALTER TABLE `act_ru_variable` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_variable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_article`
--

DROP TABLE IF EXISTS `cms_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cms_article` (
  `id` varchar(64) NOT NULL COMMENT 'ç¼–å·',
  `category_id` varchar(64) NOT NULL COMMENT 'æ ç›®ç¼–å·',
  `title` varchar(255) NOT NULL COMMENT 'æ ‡é¢˜',
  `link` varchar(255) DEFAULT NULL COMMENT 'æ–‡ç« é“¾æ¥',
  `color` varchar(50) DEFAULT NULL COMMENT 'æ ‡é¢˜é¢œè‰²',
  `image` varchar(255) DEFAULT NULL COMMENT 'æ–‡ç« å›¾ç‰‡',
  `keywords` varchar(255) DEFAULT NULL COMMENT 'å…³é”®å­—',
  `description` varchar(255) DEFAULT NULL COMMENT 'æè¿°ã€æ‘˜è¦',
  `weight` int(11) DEFAULT '0' COMMENT 'æƒé‡ï¼Œè¶Šå¤§è¶Šé å‰',
  `weight_date` datetime DEFAULT NULL COMMENT 'æƒé‡æœŸé™',
  `hits` int(11) DEFAULT '0' COMMENT 'ç‚¹å‡»æ•°',
  `posid` varchar(10) DEFAULT NULL COMMENT 'æ¨èä½ï¼Œå¤šé€‰',
  `custom_content_view` varchar(255) DEFAULT NULL COMMENT 'è‡ªå®šä¹‰å†…å®¹è§†å›¾',
  `view_config` text COMMENT 'è§†å›¾é…ç½®',
  `create_by` varchar(64) DEFAULT NULL COMMENT 'åˆ›å»ºè€…',
  `create_date` datetime DEFAULT NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  `update_by` varchar(64) DEFAULT NULL COMMENT 'æ›´æ–°è€…',
  `update_date` datetime DEFAULT NULL COMMENT 'æ›´æ–°æ—¶é—´',
  `remarks` varchar(255) DEFAULT NULL COMMENT 'å¤‡æ³¨ä¿¡æ¯',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT 'åˆ é™¤æ ‡è®°',
  PRIMARY KEY (`id`),
  KEY `cms_article_create_by` (`create_by`),
  KEY `cms_article_title` (`title`),
  KEY `cms_article_keywords` (`keywords`),
  KEY `cms_article_del_flag` (`del_flag`),
  KEY `cms_article_weight` (`weight`),
  KEY `cms_article_update_date` (`update_date`),
  KEY `cms_article_category_id` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='æ–‡ç« è¡¨';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_article`
--

LOCK TABLES `cms_article` WRITE;
/*!40000 ALTER TABLE `cms_article` DISABLE KEYS */;
INSERT INTO `cms_article` VALUES ('1','3','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,'green',NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('10','4','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('11','5','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('12','5','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('13','5','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('14','7','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('15','7','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('16','7','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('17','7','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('18','8','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('19','8','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('2','3','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,'red',NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('20','8','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('21','8','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('22','9','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('23','9','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('24','9','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('25','9','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('26','9','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('27','11','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('28','11','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('29','11','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('3','3','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('30','11','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('31','11','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('32','12','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('33','12','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('34','12','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('35','12','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('36','12','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('37','13','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('38','13','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('39','13','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('4','3','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,'green',NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('40','13','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('41','14','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('42','14','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('43','14','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('44','14','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('45','14','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('46','15','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('47','15','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('48','15','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('49','16','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('5','3','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('50','17','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('51','17','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('52','26','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('53','26','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('6','3','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('7','4','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('8','4','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,'blue',NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('9','4','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0');
/*!40000 ALTER TABLE `cms_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_article_data`
--

DROP TABLE IF EXISTS `cms_article_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cms_article_data` (
  `id` varchar(64) NOT NULL COMMENT 'ç¼–å·',
  `content` text COMMENT 'æ–‡ç« å†…å®¹',
  `copyfrom` varchar(255) DEFAULT NULL COMMENT 'æ–‡ç« æ¥æº',
  `relation` varchar(255) DEFAULT NULL COMMENT 'ç›¸å…³æ–‡ç« ',
  `allow_comment` char(1) DEFAULT NULL COMMENT 'æ˜¯å¦å…è®¸è¯„è®º',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='æ–‡ç« è¯¦è¡¨';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_article_data`
--

LOCK TABLES `cms_article_data` WRITE;
/*!40000 ALTER TABLE `cms_article_data` DISABLE KEYS */;
INSERT INTO `cms_article_data` VALUES ('1','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('10','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('11','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('12','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('13','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('14','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('15','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('16','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('17','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('18','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('19','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('2','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('20','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('21','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('22','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('23','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('24','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('25','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('26','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('27','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('28','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('29','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('3','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('30','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('31','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('32','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('33','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('34','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('35','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('36','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('37','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('38','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('39','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('4','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('40','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('41','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('42','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('43','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('44','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('45','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('46','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('47','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('48','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('49','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('5','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('50','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('51','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('52','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('53','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('6','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('7','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('8','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('9','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1');
/*!40000 ALTER TABLE `cms_article_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_category`
--

DROP TABLE IF EXISTS `cms_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cms_category` (
  `id` varchar(64) NOT NULL COMMENT 'ç¼–å·',
  `parent_id` varchar(64) NOT NULL COMMENT 'çˆ¶çº§ç¼–å·',
  `parent_ids` varchar(2000) NOT NULL COMMENT 'æ‰€æœ‰çˆ¶çº§ç¼–å·',
  `site_id` varchar(64) DEFAULT '1' COMMENT 'ç«™ç‚¹ç¼–å·',
  `office_id` varchar(64) DEFAULT NULL COMMENT 'å½’å±æœºæ„',
  `module` varchar(20) DEFAULT NULL COMMENT 'æ ç›®æ¨¡å—',
  `name` varchar(100) NOT NULL COMMENT 'æ ç›®åç§°',
  `image` varchar(255) DEFAULT NULL COMMENT 'æ ç›®å›¾ç‰‡',
  `href` varchar(255) DEFAULT NULL COMMENT 'é“¾æ¥',
  `target` varchar(20) DEFAULT NULL COMMENT 'ç›®æ ‡',
  `description` varchar(255) DEFAULT NULL COMMENT 'æè¿°',
  `keywords` varchar(255) DEFAULT NULL COMMENT 'å…³é”®å­—',
  `sort` int(11) DEFAULT '30' COMMENT 'æ’åºï¼ˆå‡åºï¼‰',
  `in_menu` char(1) DEFAULT '1' COMMENT 'æ˜¯å¦åœ¨å¯¼èˆªä¸­æ˜¾ç¤º',
  `in_list` char(1) DEFAULT '1' COMMENT 'æ˜¯å¦åœ¨åˆ†ç±»é¡µä¸­æ˜¾ç¤ºåˆ—è¡¨',
  `show_modes` char(1) DEFAULT '0' COMMENT 'å±•ç°æ–¹å¼',
  `allow_comment` char(1) DEFAULT NULL COMMENT 'æ˜¯å¦å…è®¸è¯„è®º',
  `is_audit` char(1) DEFAULT NULL COMMENT 'æ˜¯å¦éœ€è¦å®¡æ ¸',
  `custom_list_view` varchar(255) DEFAULT NULL COMMENT 'è‡ªå®šä¹‰åˆ—è¡¨è§†å›¾',
  `custom_content_view` varchar(255) DEFAULT NULL COMMENT 'è‡ªå®šä¹‰å†…å®¹è§†å›¾',
  `view_config` text COMMENT 'è§†å›¾é…ç½®',
  `create_by` varchar(64) DEFAULT NULL COMMENT 'åˆ›å»ºè€…',
  `create_date` datetime DEFAULT NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  `update_by` varchar(64) DEFAULT NULL COMMENT 'æ›´æ–°è€…',
  `update_date` datetime DEFAULT NULL COMMENT 'æ›´æ–°æ—¶é—´',
  `remarks` varchar(255) DEFAULT NULL COMMENT 'å¤‡æ³¨ä¿¡æ¯',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT 'åˆ é™¤æ ‡è®°',
  PRIMARY KEY (`id`),
  KEY `cms_category_parent_id` (`parent_id`),
  KEY `cms_category_module` (`module`),
  KEY `cms_category_name` (`name`),
  KEY `cms_category_sort` (`sort`),
  KEY `cms_category_del_flag` (`del_flag`),
  KEY `cms_category_office_id` (`office_id`),
  KEY `cms_category_site_id` (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='æ ç›®è¡¨';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_category`
--

LOCK TABLES `cms_category` WRITE;
/*!40000 ALTER TABLE `cms_category` DISABLE KEYS */;
INSERT INTO `cms_category` VALUES ('1','0','0,','0','1',NULL,'é¡¶çº§æ ç›®',NULL,NULL,NULL,NULL,NULL,0,'1','1','0','0','1',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('10','1','0,1,','1','4','article','è½¯ä»¶ä»‹ç»',NULL,NULL,NULL,NULL,NULL,20,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('11','10','0,1,10,','1','4','article','ç½‘ç»œå·¥å…·',NULL,NULL,NULL,NULL,NULL,30,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('12','10','0,1,10,','1','4','article','æµè§ˆå·¥å…·',NULL,NULL,NULL,NULL,NULL,40,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('13','10','0,1,10,','1','4','article','æµè§ˆè¾…åŠ©',NULL,NULL,NULL,NULL,NULL,50,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('14','10','0,1,10,','1','4','article','ç½‘ç»œä¼˜åŒ–',NULL,NULL,NULL,NULL,NULL,50,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('15','10','0,1,10,','1','4','article','é‚®ä»¶å¤„ç†',NULL,NULL,NULL,NULL,NULL,50,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('16','10','0,1,10,','1','4','article','ä¸‹è½½å·¥å…·',NULL,NULL,NULL,NULL,NULL,50,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('17','10','0,1,10,','1','4','article','æœç´¢å·¥å…·',NULL,NULL,NULL,NULL,NULL,50,'1','1','2','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('18','1','0,1,','1','5','link','å‹æƒ…é“¾æ¥',NULL,NULL,NULL,NULL,NULL,90,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('19','18','0,1,18,','1','5','link','å¸¸ç”¨ç½‘ç«™',NULL,NULL,NULL,NULL,NULL,50,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('2','1','0,1,','1','3','article','ç»„ç»‡æœºæ„',NULL,NULL,NULL,NULL,NULL,10,'1','1','0','0','1',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('20','18','0,1,18,','1','5','link','é—¨æˆ·ç½‘ç«™',NULL,NULL,NULL,NULL,NULL,50,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('21','18','0,1,18,','1','5','link','è´­ç‰©ç½‘ç«™',NULL,NULL,NULL,NULL,NULL,50,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('22','18','0,1,18,','1','5','link','äº¤å‹ç¤¾åŒº',NULL,NULL,NULL,NULL,NULL,50,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('23','18','0,1,18,','1','5','link','éŸ³ä¹è§†é¢‘',NULL,NULL,NULL,NULL,NULL,50,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('24','1','0,1,','1','6',NULL,'ç™¾åº¦ä¸€ä¸‹',NULL,'http://www.baidu.com','_blank',NULL,NULL,90,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('25','1','0,1,','1','6',NULL,'å…¨æ–‡æ£€ç´¢',NULL,'/search',NULL,NULL,NULL,90,'0','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('26','1','0,1,','2','6','article','æµ‹è¯•æ ç›®',NULL,NULL,NULL,NULL,NULL,90,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('27','1','0,1,','1','6',NULL,'å…¬å…±ç•™è¨€',NULL,'/guestbook',NULL,NULL,NULL,90,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('3','2','0,1,2,','1','3','article','ç½‘ç«™ç®€ä»‹',NULL,NULL,NULL,NULL,NULL,30,'1','1','0','0','1',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('4','2','0,1,2,','1','3','article','å†…éƒ¨æœºæ„',NULL,NULL,NULL,NULL,NULL,40,'1','1','0','0','1',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('5','2','0,1,2,','1','3','article','åœ°æ–¹æœºæ„',NULL,NULL,NULL,NULL,NULL,50,'1','1','0','0','1',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('6','1','0,1,','1','3','article','è´¨é‡æ£€éªŒ',NULL,NULL,NULL,NULL,NULL,20,'1','1','1','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('7','6','0,1,6,','1','3','article','äº§å“è´¨é‡',NULL,NULL,NULL,NULL,NULL,30,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('8','6','0,1,6,','1','3','article','æŠ€æœ¯è´¨é‡',NULL,NULL,NULL,NULL,NULL,40,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('9','6','0,1,6,','1','3','article','å·¥ç¨‹è´¨é‡',NULL,NULL,NULL,NULL,NULL,50,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0');
/*!40000 ALTER TABLE `cms_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_comment`
--

DROP TABLE IF EXISTS `cms_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cms_comment` (
  `id` varchar(64) NOT NULL COMMENT 'ç¼–å·',
  `category_id` varchar(64) NOT NULL COMMENT 'æ ç›®ç¼–å·',
  `content_id` varchar(64) NOT NULL COMMENT 'æ ç›®å†…å®¹çš„ç¼–å·',
  `title` varchar(255) DEFAULT NULL COMMENT 'æ ç›®å†…å®¹çš„æ ‡é¢˜',
  `content` varchar(255) DEFAULT NULL COMMENT 'è¯„è®ºå†…å®¹',
  `name` varchar(100) DEFAULT NULL COMMENT 'è¯„è®ºå§“å',
  `ip` varchar(100) DEFAULT NULL COMMENT 'è¯„è®ºIP',
  `create_date` datetime NOT NULL COMMENT 'è¯„è®ºæ—¶é—´',
  `audit_user_id` varchar(64) DEFAULT NULL COMMENT 'å®¡æ ¸äºº',
  `audit_date` datetime DEFAULT NULL COMMENT 'å®¡æ ¸æ—¶é—´',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT 'åˆ é™¤æ ‡è®°',
  PRIMARY KEY (`id`),
  KEY `cms_comment_category_id` (`category_id`),
  KEY `cms_comment_content_id` (`content_id`),
  KEY `cms_comment_status` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='è¯„è®ºè¡¨';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_comment`
--

LOCK TABLES `cms_comment` WRITE;
/*!40000 ALTER TABLE `cms_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_guestbook`
--

DROP TABLE IF EXISTS `cms_guestbook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cms_guestbook` (
  `id` varchar(64) NOT NULL COMMENT 'ç¼–å·',
  `type` char(1) NOT NULL COMMENT 'ç•™è¨€åˆ†ç±»',
  `content` varchar(255) NOT NULL COMMENT 'ç•™è¨€å†…å®¹',
  `name` varchar(100) NOT NULL COMMENT 'å§“å',
  `email` varchar(100) NOT NULL COMMENT 'é‚®ç®±',
  `phone` varchar(100) NOT NULL COMMENT 'ç”µè¯',
  `workunit` varchar(100) NOT NULL COMMENT 'å•ä½',
  `ip` varchar(100) NOT NULL COMMENT 'IP',
  `create_date` datetime NOT NULL COMMENT 'ç•™è¨€æ—¶é—´',
  `re_user_id` varchar(64) DEFAULT NULL COMMENT 'å›å¤äºº',
  `re_date` datetime DEFAULT NULL COMMENT 'å›å¤æ—¶é—´',
  `re_content` varchar(100) DEFAULT NULL COMMENT 'å›å¤å†…å®¹',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT 'åˆ é™¤æ ‡è®°',
  PRIMARY KEY (`id`),
  KEY `cms_guestbook_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ç•™è¨€æ¿';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_guestbook`
--

LOCK TABLES `cms_guestbook` WRITE;
/*!40000 ALTER TABLE `cms_guestbook` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_guestbook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_link`
--

DROP TABLE IF EXISTS `cms_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cms_link` (
  `id` varchar(64) NOT NULL COMMENT 'ç¼–å·',
  `category_id` varchar(64) NOT NULL COMMENT 'æ ç›®ç¼–å·',
  `title` varchar(255) NOT NULL COMMENT 'é“¾æ¥åç§°',
  `color` varchar(50) DEFAULT NULL COMMENT 'æ ‡é¢˜é¢œè‰²',
  `image` varchar(255) DEFAULT NULL COMMENT 'é“¾æ¥å›¾ç‰‡',
  `href` varchar(255) DEFAULT NULL COMMENT 'é“¾æ¥åœ°å€',
  `weight` int(11) DEFAULT '0' COMMENT 'æƒé‡ï¼Œè¶Šå¤§è¶Šé å‰',
  `weight_date` datetime DEFAULT NULL COMMENT 'æƒé‡æœŸé™',
  `create_by` varchar(64) DEFAULT NULL COMMENT 'åˆ›å»ºè€…',
  `create_date` datetime DEFAULT NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  `update_by` varchar(64) DEFAULT NULL COMMENT 'æ›´æ–°è€…',
  `update_date` datetime DEFAULT NULL COMMENT 'æ›´æ–°æ—¶é—´',
  `remarks` varchar(255) DEFAULT NULL COMMENT 'å¤‡æ³¨ä¿¡æ¯',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT 'åˆ é™¤æ ‡è®°',
  PRIMARY KEY (`id`),
  KEY `cms_link_category_id` (`category_id`),
  KEY `cms_link_title` (`title`),
  KEY `cms_link_del_flag` (`del_flag`),
  KEY `cms_link_weight` (`weight`),
  KEY `cms_link_create_by` (`create_by`),
  KEY `cms_link_update_date` (`update_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='å‹æƒ…é“¾æ¥';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_link`
--

LOCK TABLES `cms_link` WRITE;
/*!40000 ALTER TABLE `cms_link` DISABLE KEYS */;
INSERT INTO `cms_link` VALUES ('1','19','JeeSite',NULL,NULL,'http://thinkgem.github.com/jeesite',0,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('10','22','58åŒåŸ',NULL,NULL,'http://www.58.com/',0,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('11','23','è§†é¢‘å¤§å…¨',NULL,NULL,'http://v.360.cn/',0,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('12','23','å‡¤å‡°ç½‘',NULL,NULL,'http://www.ifeng.com/',0,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('2','19','ThinkGem',NULL,NULL,'http://thinkgem.iteye.com/',0,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('3','19','ç™¾åº¦ä¸€ä¸‹',NULL,NULL,'http://www.baidu.com',0,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('4','19','è°·æ­Œæœç´¢',NULL,NULL,'http://www.google.com',0,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('5','20','æ–°æµªç½‘',NULL,NULL,'http://www.sina.com.cn',0,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('6','20','è…¾è®¯ç½‘',NULL,NULL,'http://www.qq.com/',0,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('7','21','æ·˜å®ç½‘',NULL,NULL,'http://www.taobao.com/',0,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('8','21','æ–°åç½‘',NULL,NULL,'http://www.xinhuanet.com/',0,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('9','22','èµ¶é›†ç½‘',NULL,NULL,'http://www.ganji.com/',0,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0');
/*!40000 ALTER TABLE `cms_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_site`
--

DROP TABLE IF EXISTS `cms_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cms_site` (
  `id` varchar(64) NOT NULL COMMENT 'ç¼–å·',
  `name` varchar(100) NOT NULL COMMENT 'ç«™ç‚¹åç§°',
  `title` varchar(100) NOT NULL COMMENT 'ç«™ç‚¹æ ‡é¢˜',
  `logo` varchar(255) DEFAULT NULL COMMENT 'ç«™ç‚¹Logo',
  `domain` varchar(255) DEFAULT NULL COMMENT 'ç«™ç‚¹åŸŸå',
  `description` varchar(255) DEFAULT NULL COMMENT 'æè¿°',
  `keywords` varchar(255) DEFAULT NULL COMMENT 'å…³é”®å­—',
  `theme` varchar(255) DEFAULT 'default' COMMENT 'ä¸»é¢˜',
  `copyright` text COMMENT 'ç‰ˆæƒä¿¡æ¯',
  `custom_index_view` varchar(255) DEFAULT NULL COMMENT 'è‡ªå®šä¹‰ç«™ç‚¹é¦–é¡µè§†å›¾',
  `create_by` varchar(64) DEFAULT NULL COMMENT 'åˆ›å»ºè€…',
  `create_date` datetime DEFAULT NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  `update_by` varchar(64) DEFAULT NULL COMMENT 'æ›´æ–°è€…',
  `update_date` datetime DEFAULT NULL COMMENT 'æ›´æ–°æ—¶é—´',
  `remarks` varchar(255) DEFAULT NULL COMMENT 'å¤‡æ³¨ä¿¡æ¯',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT 'åˆ é™¤æ ‡è®°',
  PRIMARY KEY (`id`),
  KEY `cms_site_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ç«™ç‚¹è¡¨';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_site`
--

LOCK TABLES `cms_site` WRITE;
/*!40000 ALTER TABLE `cms_site` DISABLE KEYS */;
INSERT INTO `cms_site` VALUES ('1','é»˜è®¤ç«™ç‚¹','JeeSite Web',NULL,NULL,'JeeSite','JeeSite','basic','Copyright &copy; 2012-2013 <a href=\'http://thinkgem.iteye.com\' target=\'_blank\'>ThinkGem</a> - Powered By <a href=\'https://github.com/thinkgem/jeesite\' target=\'_blank\'>JeeSite</a> V1.0',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('2','å­ç«™ç‚¹æµ‹è¯•','JeeSite Subsite',NULL,NULL,'JeeSite subsite','JeeSite subsite','basic','Copyright &copy; 2012-2013 <a href=\'http://thinkgem.iteye.com\' target=\'_blank\'>ThinkGem</a> - Powered By <a href=\'https://github.com/thinkgem/jeesite\' target=\'_blank\'>JeeSite</a> V1.0',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0');
/*!40000 ALTER TABLE `cms_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demo_data`
--

DROP TABLE IF EXISTS `demo_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `demo_data` (
  `id` varchar(64) NOT NULL COMMENT 'ç¼–å·',
  `user_id` varchar(64) DEFAULT NULL COMMENT 'å½’å±ç”¨æˆ·',
  `office_id` varchar(64) DEFAULT NULL COMMENT 'å½’å±éƒ¨é—¨',
  `area_id` varchar(64) DEFAULT NULL COMMENT 'å½’å±åŒºåŸŸ',
  `name` varchar(100) DEFAULT NULL COMMENT 'åç§°',
  `sex` char(1) DEFAULT NULL COMMENT 'æ€§åˆ«',
  `in_date` date DEFAULT NULL COMMENT 'åŠ å…¥æ—¥æœŸ',
  `create_by` varchar(64) NOT NULL COMMENT 'åˆ›å»ºè€…',
  `create_date` datetime NOT NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  `update_by` varchar(64) NOT NULL COMMENT 'æ›´æ–°è€…',
  `update_date` datetime NOT NULL COMMENT 'æ›´æ–°æ—¶é—´',
  `remarks` varchar(255) DEFAULT NULL COMMENT 'å¤‡æ³¨ä¿¡æ¯',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT 'åˆ é™¤æ ‡è®°',
  PRIMARY KEY (`id`),
  KEY `test_data_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='å®ä¾‹æ•°æ®è¡¨';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demo_data`
--

LOCK TABLES `demo_data` WRITE;
/*!40000 ALTER TABLE `demo_data` DISABLE KEYS */;
INSERT INTO `demo_data` VALUES ('1f7ffd949a8d4675ae13379a913fb89b','4','','','33','',NULL,'1','2019-09-04 20:40:26','1','2019-09-04 20:48:46','4','0'),('c411c00d85a6450d9e0a78f24a005528','','','','44','',NULL,'1','2019-09-04 20:13:29','1','2019-09-04 20:48:32','333','0');
/*!40000 ALTER TABLE `demo_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gen_scheme`
--

DROP TABLE IF EXISTS `gen_scheme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `gen_scheme` (
  `id` varchar(64) NOT NULL COMMENT 'ç¼–å·',
  `name` varchar(200) DEFAULT NULL COMMENT 'åç§°',
  `category` varchar(2000) DEFAULT NULL COMMENT 'åˆ†ç±»',
  `package_name` varchar(500) DEFAULT NULL COMMENT 'ç”ŸæˆåŒ…è·¯å¾„',
  `module_name` varchar(30) DEFAULT NULL COMMENT 'ç”Ÿæˆæ¨¡å—å',
  `sub_module_name` varchar(30) DEFAULT NULL COMMENT 'ç”Ÿæˆå­æ¨¡å—å',
  `function_name` varchar(500) DEFAULT NULL COMMENT 'ç”ŸæˆåŠŸèƒ½å',
  `function_name_simple` varchar(100) DEFAULT NULL COMMENT 'ç”ŸæˆåŠŸèƒ½åï¼ˆç®€å†™ï¼‰',
  `function_author` varchar(100) DEFAULT NULL COMMENT 'ç”ŸæˆåŠŸèƒ½ä½œè€…',
  `gen_table_id` varchar(200) DEFAULT NULL COMMENT 'ç”Ÿæˆè¡¨ç¼–å·',
  `create_by` varchar(64) DEFAULT NULL COMMENT 'åˆ›å»ºè€…',
  `create_date` datetime DEFAULT NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  `update_by` varchar(64) DEFAULT NULL COMMENT 'æ›´æ–°è€…',
  `update_date` datetime DEFAULT NULL COMMENT 'æ›´æ–°æ—¶é—´',
  `remarks` varchar(255) DEFAULT NULL COMMENT 'å¤‡æ³¨ä¿¡æ¯',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT 'åˆ é™¤æ ‡è®°ï¼ˆ0ï¼šæ­£å¸¸ï¼›1ï¼šåˆ é™¤ï¼‰',
  PRIMARY KEY (`id`),
  KEY `gen_scheme_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ç”Ÿæˆæ–¹æ¡ˆ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_scheme`
--

LOCK TABLES `gen_scheme` WRITE;
/*!40000 ALTER TABLE `gen_scheme` DISABLE KEYS */;
INSERT INTO `gen_scheme` VALUES ('35a13dc260284a728a270db3f382664b','æ ‘ç»“æ„','treeTable','com.thinkgem.jeesite.modules','test',NULL,'æ ‘ç»“æ„ç”Ÿæˆ','æ ‘ç»“æ„','ThinkGem','f6e4dafaa72f4c509636484715f33a96','1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('9c9de9db6da743bb899036c6546061ac','å•è¡¨','curd','com.thinkgem.jeesite.modules','test',NULL,'å•è¡¨ç”Ÿæˆ','å•è¡¨','ThinkGem','aef6f1fc948f4c9ab1c1b780bc471cc2','1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('e6d905fd236b46d1af581dd32bdfb3b0','ä¸»å­è¡¨','curd_many','com.thinkgem.jeesite.modules','test',NULL,'ä¸»å­è¡¨ç”Ÿæˆ','ä¸»å­è¡¨','ThinkGem','43d6d5acffa14c258340ce6765e46c6f','1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0');
/*!40000 ALTER TABLE `gen_scheme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gen_table`
--

DROP TABLE IF EXISTS `gen_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `gen_table` (
  `id` varchar(64) NOT NULL COMMENT 'ç¼–å·',
  `name` varchar(200) DEFAULT NULL COMMENT 'åç§°',
  `comments` varchar(500) DEFAULT NULL COMMENT 'æè¿°',
  `class_name` varchar(100) DEFAULT NULL COMMENT 'å®ä½“ç±»åç§°',
  `parent_table` varchar(200) DEFAULT NULL COMMENT 'å…³è”çˆ¶è¡¨',
  `parent_table_fk` varchar(100) DEFAULT NULL COMMENT 'å…³è”çˆ¶è¡¨å¤–é”®',
  `create_by` varchar(64) DEFAULT NULL COMMENT 'åˆ›å»ºè€…',
  `create_date` datetime DEFAULT NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  `update_by` varchar(64) DEFAULT NULL COMMENT 'æ›´æ–°è€…',
  `update_date` datetime DEFAULT NULL COMMENT 'æ›´æ–°æ—¶é—´',
  `remarks` varchar(255) DEFAULT NULL COMMENT 'å¤‡æ³¨ä¿¡æ¯',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT 'åˆ é™¤æ ‡è®°ï¼ˆ0ï¼šæ­£å¸¸ï¼›1ï¼šåˆ é™¤ï¼‰',
  PRIMARY KEY (`id`),
  KEY `gen_table_name` (`name`),
  KEY `gen_table_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ä¸šåŠ¡è¡¨';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_table`
--

LOCK TABLES `gen_table` WRITE;
/*!40000 ALTER TABLE `gen_table` DISABLE KEYS */;
INSERT INTO `gen_table` VALUES ('43d6d5acffa14c258340ce6765e46c6f','test_data_main','ä¸šåŠ¡æ•°æ®è¡¨','TestDataMain',NULL,NULL,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('6e05c389f3c6415ea34e55e9dfb28934','test_data_child','ä¸šåŠ¡æ•°æ®å­è¡¨','TestDataChild','test_data_main','test_data_main_id','1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('aef6f1fc948f4c9ab1c1b780bc471cc2','test_data','ä¸šåŠ¡æ•°æ®è¡¨','TestData',NULL,NULL,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('f6e4dafaa72f4c509636484715f33a96','test_tree','æ ‘ç»“æ„è¡¨','TestTree',NULL,NULL,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0');
/*!40000 ALTER TABLE `gen_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gen_table_column`
--

DROP TABLE IF EXISTS `gen_table_column`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `gen_table_column` (
  `id` varchar(64) NOT NULL COMMENT 'ç¼–å·',
  `gen_table_id` varchar(64) DEFAULT NULL COMMENT 'å½’å±è¡¨ç¼–å·',
  `name` varchar(200) DEFAULT NULL COMMENT 'åç§°',
  `comments` varchar(500) DEFAULT NULL COMMENT 'æè¿°',
  `jdbc_type` varchar(100) DEFAULT NULL COMMENT 'åˆ—çš„æ•°æ®ç±»å‹çš„å­—èŠ‚é•¿åº¦',
  `java_type` varchar(500) DEFAULT NULL COMMENT 'JAVAç±»å‹',
  `java_field` varchar(200) DEFAULT NULL COMMENT 'JAVAå­—æ®µå',
  `is_pk` char(1) DEFAULT NULL COMMENT 'æ˜¯å¦ä¸»é”®',
  `is_null` char(1) DEFAULT NULL COMMENT 'æ˜¯å¦å¯ä¸ºç©º',
  `is_insert` char(1) DEFAULT NULL COMMENT 'æ˜¯å¦ä¸ºæ’å…¥å­—æ®µ',
  `is_edit` char(1) DEFAULT NULL COMMENT 'æ˜¯å¦ç¼–è¾‘å­—æ®µ',
  `is_list` char(1) DEFAULT NULL COMMENT 'æ˜¯å¦åˆ—è¡¨å­—æ®µ',
  `is_query` char(1) DEFAULT NULL COMMENT 'æ˜¯å¦æŸ¥è¯¢å­—æ®µ',
  `query_type` varchar(200) DEFAULT NULL COMMENT 'æŸ¥è¯¢æ–¹å¼ï¼ˆç­‰äºã€ä¸ç­‰äºã€å¤§äºã€å°äºã€èŒƒå›´ã€å·¦LIKEã€å³LIKEã€å·¦å³LIKEï¼‰',
  `show_type` varchar(200) DEFAULT NULL COMMENT 'å­—æ®µç”Ÿæˆæ–¹æ¡ˆï¼ˆæ–‡æœ¬æ¡†ã€æ–‡æœ¬åŸŸã€ä¸‹æ‹‰æ¡†ã€å¤é€‰æ¡†ã€å•é€‰æ¡†ã€å­—å…¸é€‰æ‹©ã€äººå‘˜é€‰æ‹©ã€éƒ¨é—¨é€‰æ‹©ã€åŒºåŸŸé€‰æ‹©ï¼‰',
  `dict_type` varchar(200) DEFAULT NULL COMMENT 'å­—å…¸ç±»å‹',
  `settings` varchar(2000) DEFAULT NULL COMMENT 'å…¶å®ƒè®¾ç½®ï¼ˆæ‰©å±•å­—æ®µJSONï¼‰',
  `sort` decimal(10,0) DEFAULT NULL COMMENT 'æ’åºï¼ˆå‡åºï¼‰',
  `create_by` varchar(64) DEFAULT NULL COMMENT 'åˆ›å»ºè€…',
  `create_date` datetime DEFAULT NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  `update_by` varchar(64) DEFAULT NULL COMMENT 'æ›´æ–°è€…',
  `update_date` datetime DEFAULT NULL COMMENT 'æ›´æ–°æ—¶é—´',
  `remarks` varchar(255) DEFAULT NULL COMMENT 'å¤‡æ³¨ä¿¡æ¯',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT 'åˆ é™¤æ ‡è®°ï¼ˆ0ï¼šæ­£å¸¸ï¼›1ï¼šåˆ é™¤ï¼‰',
  PRIMARY KEY (`id`),
  KEY `gen_table_column_table_id` (`gen_table_id`),
  KEY `gen_table_column_name` (`name`),
  KEY `gen_table_column_sort` (`sort`),
  KEY `gen_table_column_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ä¸šåŠ¡è¡¨å­—æ®µ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_table_column`
--

LOCK TABLES `gen_table_column` WRITE;
/*!40000 ALTER TABLE `gen_table_column` DISABLE KEYS */;
INSERT INTO `gen_table_column` VALUES ('0902a0cb3e8f434280c20e9d771d0658','aef6f1fc948f4c9ab1c1b780bc471cc2','sex','æ€§åˆ«','char(1)','String','sex','0','1','1','1','1','1','=','radiobox','sex',NULL,6,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('103fc05c88ff40639875c2111881996a','aef6f1fc948f4c9ab1c1b780bc471cc2','create_date','åˆ›å»ºæ—¶é—´','timestamp(6)','java.util.Date','createDate','0','0','1','0','0','0','=','dateselect',NULL,NULL,9,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('12fa38dd986e41908f7fefa5839d1220','6e05c389f3c6415ea34e55e9dfb28934','create_by','åˆ›å»ºè€…','varchar2(64)','com.thinkgem.jeesite.modules.modules.sys.entity.User','createBy.id','0','0','1','0','0','0','=','input',NULL,NULL,4,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('195ee9241f954d008fe01625f4adbfef','f6e4dafaa72f4c509636484715f33a96','create_by','åˆ›å»ºè€…','varchar2(64)','com.thinkgem.jeesite.modules.modules.sys.entity.User','createBy.id','0','0','1','0','0','0','=','input',NULL,NULL,6,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('19c6478b8ff54c60910c2e4fc3d27503','43d6d5acffa14c258340ce6765e46c6f','id','ç¼–å·','varchar2(64)','String','id','1','0','1','0','0','0','=','input',NULL,NULL,1,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('1ac6562f753d4e599693840651ab2bf7','43d6d5acffa14c258340ce6765e46c6f','in_date','åŠ å…¥æ—¥æœŸ','date(7)','java.util.Date','inDate','0','1','1','1','0','0','=','dateselect',NULL,NULL,7,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('1b8eb55f65284fa6b0a5879b6d8ad3ec','aef6f1fc948f4c9ab1c1b780bc471cc2','in_date','åŠ å…¥æ—¥æœŸ','date(7)','java.util.Date','inDate','0','1','1','1','0','1','between','dateselect',NULL,NULL,7,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('1d5ca4d114be41e99f8dc42a682ba609','aef6f1fc948f4c9ab1c1b780bc471cc2','user_id','å½’å±ç”¨æˆ·','varchar2(64)','com.thinkgem.jeesite.modules.modules.sys.entity.User','user.id|name','0','1','1','1','1','1','=','userselect',NULL,NULL,2,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('21756504ffdc487eb167a823f89c0c06','43d6d5acffa14c258340ce6765e46c6f','update_by','æ›´æ–°è€…','varchar2(64)','com.thinkgem.jeesite.modules.modules.sys.entity.User','updateBy.id','0','0','1','1','0','0','=','input',NULL,NULL,10,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('24bbdc0a555e4412a106ab1c5f03008e','f6e4dafaa72f4c509636484715f33a96','parent_ids','æ‰€æœ‰çˆ¶çº§ç¼–å·','varchar2(2000)','String','parentIds','0','0','1','1','0','0','like','input',NULL,NULL,3,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('33152ce420904594b3eac796a27f0560','6e05c389f3c6415ea34e55e9dfb28934','id','ç¼–å·','varchar2(64)','String','id','1','0','1','0','0','0','=','input',NULL,NULL,1,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('35af241859624a01917ab64c3f4f0813','aef6f1fc948f4c9ab1c1b780bc471cc2','del_flag','åˆ é™¤æ ‡è®°ï¼ˆ0ï¼šæ­£å¸¸ï¼›1ï¼šåˆ é™¤ï¼‰','char(1)','String','delFlag','0','0','1','0','0','0','=','radiobox','del_flag',NULL,13,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('398b4a03f06940bfb979ca574e1911e3','aef6f1fc948f4c9ab1c1b780bc471cc2','create_by','åˆ›å»ºè€…','varchar2(64)','com.thinkgem.jeesite.modules.modules.sys.entity.User','createBy.id','0','0','1','0','0','0','=','input',NULL,NULL,8,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('3a7cf23ae48a4c849ceb03feffc7a524','43d6d5acffa14c258340ce6765e46c6f','area_id','å½’å±åŒºåŸŸ','nvarchar2(64)','com.thinkgem.jeesite.modules.modules.sys.entity.Area','area.id|name','0','1','1','1','0','0','=','areaselect',NULL,NULL,4,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('3d9c32865bb44e85af73381df0ffbf3d','43d6d5acffa14c258340ce6765e46c6f','update_date','æ›´æ–°æ—¶é—´','timestamp(6)','java.util.Date','updateDate','0','0','1','1','1','0','=','dateselect',NULL,NULL,11,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('416c76d2019b4f76a96d8dc3a8faf84c','f6e4dafaa72f4c509636484715f33a96','update_date','æ›´æ–°æ—¶é—´','timestamp(6)','java.util.Date','updateDate','0','0','1','1','1','0','=','dateselect',NULL,NULL,9,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('46e6d8283270493687085d29efdecb05','f6e4dafaa72f4c509636484715f33a96','del_flag','åˆ é™¤æ ‡è®°ï¼ˆ0ï¼šæ­£å¸¸ï¼›1ï¼šåˆ é™¤ï¼‰','char(1)','String','delFlag','0','0','1','0','0','0','=','radiobox','del_flag',NULL,11,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('4a0a1fff86ca46519477d66b82e01991','aef6f1fc948f4c9ab1c1b780bc471cc2','name','åç§°','nvarchar2(100)','String','name','0','1','1','1','1','1','like','input',NULL,NULL,5,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('4c8ef12cb6924b9ba44048ba9913150b','43d6d5acffa14c258340ce6765e46c6f','create_date','åˆ›å»ºæ—¶é—´','timestamp(6)','java.util.Date','createDate','0','0','1','0','0','0','=','dateselect',NULL,NULL,9,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('53d65a3d306d4fac9e561db9d3c66912','6e05c389f3c6415ea34e55e9dfb28934','del_flag','åˆ é™¤æ ‡è®°ï¼ˆ0ï¼šæ­£å¸¸ï¼›1ï¼šåˆ é™¤ï¼‰','char(1)','String','delFlag','0','0','1','0','0','0','=','radiobox','del_flag',NULL,9,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('56fa71c0bd7e4132931874e548dc9ba5','6e05c389f3c6415ea34e55e9dfb28934','update_by','æ›´æ–°è€…','varchar2(64)','com.thinkgem.jeesite.modules.modules.sys.entity.User','updateBy.id','0','0','1','1','0','0','=','input',NULL,NULL,6,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('5a4a1933c9c844fdba99de043dc8205e','aef6f1fc948f4c9ab1c1b780bc471cc2','update_by','æ›´æ–°è€…','varchar2(64)','com.thinkgem.jeesite.modules.modules.sys.entity.User','updateBy.id','0','0','1','1','0','0','=','input',NULL,NULL,10,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('5e5c69bd3eaa4dcc9743f361f3771c08','aef6f1fc948f4c9ab1c1b780bc471cc2','id','ç¼–å·','varchar2(64)','String','id','1','0','1','0','0','0','=','input',NULL,NULL,1,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('633f5a49ec974c099158e7b3e6bfa930','f6e4dafaa72f4c509636484715f33a96','name','åç§°','nvarchar2(100)','String','name','0','0','1','1','1','1','like','input',NULL,NULL,4,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('652491500f2641ffa7caf95a93e64d34','6e05c389f3c6415ea34e55e9dfb28934','update_date','æ›´æ–°æ—¶é—´','timestamp(6)','java.util.Date','updateDate','0','0','1','1','1','0','=','dateselect',NULL,NULL,7,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('6763ff6dc7cd4c668e76cf9b697d3ff6','f6e4dafaa72f4c509636484715f33a96','sort','æ’åº','number(10)','Integer','sort','0','0','1','1','1','0','=','input',NULL,NULL,5,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('67d0331f809a48ee825602659f0778e8','43d6d5acffa14c258340ce6765e46c6f','name','åç§°','nvarchar2(100)','String','name','0','1','1','1','1','1','like','input',NULL,NULL,5,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('68345713bef3445c906f70e68f55de38','6e05c389f3c6415ea34e55e9dfb28934','test_data_main_id','ä¸šåŠ¡ä¸»è¡¨','varchar2(64)','String','testDataMain.id','0','1','1','1','0','0','=','input',NULL,NULL,2,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('71ea4bc10d274911b405f3165fc1bb1a','aef6f1fc948f4c9ab1c1b780bc471cc2','area_id','å½’å±åŒºåŸŸ','nvarchar2(64)','com.thinkgem.jeesite.modules.modules.sys.entity.Area','area.id|name','0','1','1','1','1','1','=','areaselect',NULL,NULL,4,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('7f871058d94c4d9a89084be7c9ce806d','6e05c389f3c6415ea34e55e9dfb28934','remarks','å¤‡æ³¨ä¿¡æ¯','nvarchar2(255)','String','remarks','0','1','1','1','1','0','=','input',NULL,NULL,8,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('8b48774cfe184913b8b5eb17639cf12d','43d6d5acffa14c258340ce6765e46c6f','create_by','åˆ›å»ºè€…','varchar2(64)','com.thinkgem.jeesite.modules.modules.sys.entity.User','createBy.id','0','0','1','0','0','0','=','input',NULL,NULL,8,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('8b7cf0525519474ebe1de9e587eb7067','6e05c389f3c6415ea34e55e9dfb28934','create_date','åˆ›å»ºæ—¶é—´','timestamp(6)','java.util.Date','createDate','0','0','1','0','0','0','=','dateselect',NULL,NULL,5,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('8b9de88df53e485d8ef461c4b1824bc1','43d6d5acffa14c258340ce6765e46c6f','user_id','å½’å±ç”¨æˆ·','varchar2(64)','com.thinkgem.jeesite.modules.modules.sys.entity.User','user.id|name','0','1','1','1','1','1','=','userselect',NULL,NULL,2,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('8da38dbe5fe54e9bb1f9682c27fbf403','aef6f1fc948f4c9ab1c1b780bc471cc2','remarks','å¤‡æ³¨ä¿¡æ¯','nvarchar2(255)','String','remarks','0','1','1','1','1','0','=','textarea',NULL,NULL,12,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('92481c16a0b94b0e8bba16c3c54eb1e4','f6e4dafaa72f4c509636484715f33a96','create_date','åˆ›å»ºæ—¶é—´','timestamp(6)','java.util.Date','createDate','0','0','1','0','0','0','=','dateselect',NULL,NULL,7,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('9a012c1d2f934dbf996679adb7cc827a','f6e4dafaa72f4c509636484715f33a96','parent_id','çˆ¶çº§ç¼–å·','varchar2(64)','This','parent.id|name','0','0','1','1','0','0','=','treeselect',NULL,NULL,2,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('ad3bf0d4b44b4528a5211a66af88f322','aef6f1fc948f4c9ab1c1b780bc471cc2','office_id','å½’å±éƒ¨é—¨','varchar2(64)','com.thinkgem.jeesite.modules.modules.sys.entity.Office','office.id|name','0','1','1','1','1','1','=','officeselect',NULL,NULL,3,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('bb1256a8d1b741f6936d8fed06f45eed','f6e4dafaa72f4c509636484715f33a96','update_by','æ›´æ–°è€…','varchar2(64)','com.thinkgem.jeesite.modules.modules.sys.entity.User','updateBy.id','0','0','1','1','0','0','=','input',NULL,NULL,8,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('ca68a2d403f0449cbaa1d54198c6f350','43d6d5acffa14c258340ce6765e46c6f','office_id','å½’å±éƒ¨é—¨','varchar2(64)','com.thinkgem.jeesite.modules.modules.sys.entity.Office','office.id|name','0','1','1','1','0','0','=','officeselect',NULL,NULL,3,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('cb9c0ec3da26432d9cbac05ede0fd1d0','43d6d5acffa14c258340ce6765e46c6f','remarks','å¤‡æ³¨ä¿¡æ¯','nvarchar2(255)','String','remarks','0','1','1','1','1','0','=','textarea',NULL,NULL,12,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('cfcfa06ea61749c9b4c4dbc507e0e580','f6e4dafaa72f4c509636484715f33a96','id','ç¼–å·','varchar2(64)','String','id','1','0','1','0','0','0','=','input',NULL,NULL,1,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('d5c2d932ae904aa8a9f9ef34cd36fb0b','43d6d5acffa14c258340ce6765e46c6f','sex','æ€§åˆ«','char(1)','String','sex','0','1','1','1','0','1','=','select','sex',NULL,6,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('e64050a2ebf041faa16f12dda5dcf784','6e05c389f3c6415ea34e55e9dfb28934','name','åç§°','nvarchar2(100)','String','name','0','1','1','1','1','1','like','input',NULL,NULL,3,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('e8d11127952d4aa288bb3901fc83127f','43d6d5acffa14c258340ce6765e46c6f','del_flag','åˆ é™¤æ ‡è®°ï¼ˆ0ï¼šæ­£å¸¸ï¼›1ï¼šåˆ é™¤ï¼‰','char(1)','String','delFlag','0','0','1','0','0','0','=','radiobox','del_flag',NULL,13,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('eb2e5afd13f147a990d30e68e7f64e12','aef6f1fc948f4c9ab1c1b780bc471cc2','update_date','æ›´æ–°æ—¶é—´','timestamp(6)','java.util.Date','updateDate','0','0','1','1','1','0','=','dateselect',NULL,NULL,11,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('f5ed8c82bad0413fbfcccefa95931358','f6e4dafaa72f4c509636484715f33a96','remarks','å¤‡æ³¨ä¿¡æ¯','nvarchar2(255)','String','remarks','0','1','1','1','1','0','=','textarea',NULL,NULL,10,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0');
/*!40000 ALTER TABLE `gen_table_column` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gen_template`
--

DROP TABLE IF EXISTS `gen_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `gen_template` (
  `id` varchar(64) NOT NULL COMMENT 'ç¼–å·',
  `name` varchar(200) DEFAULT NULL COMMENT 'åç§°',
  `category` varchar(2000) DEFAULT NULL COMMENT 'åˆ†ç±»',
  `file_path` varchar(500) DEFAULT NULL COMMENT 'ç”Ÿæˆæ–‡ä»¶è·¯å¾„',
  `file_name` varchar(200) DEFAULT NULL COMMENT 'ç”Ÿæˆæ–‡ä»¶å',
  `content` text COMMENT 'å†…å®¹',
  `create_by` varchar(64) DEFAULT NULL COMMENT 'åˆ›å»ºè€…',
  `create_date` datetime DEFAULT NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  `update_by` varchar(64) DEFAULT NULL COMMENT 'æ›´æ–°è€…',
  `update_date` datetime DEFAULT NULL COMMENT 'æ›´æ–°æ—¶é—´',
  `remarks` varchar(255) DEFAULT NULL COMMENT 'å¤‡æ³¨ä¿¡æ¯',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT 'åˆ é™¤æ ‡è®°ï¼ˆ0ï¼šæ­£å¸¸ï¼›1ï¼šåˆ é™¤ï¼‰',
  PRIMARY KEY (`id`),
  KEY `gen_template_del_falg` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ä»£ç æ¨¡æ¿è¡¨';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_template`
--

LOCK TABLES `gen_template` WRITE;
/*!40000 ALTER TABLE `gen_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `gen_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oa_leave`
--

DROP TABLE IF EXISTS `oa_leave`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oa_leave` (
  `id` varchar(64) NOT NULL COMMENT 'ç¼–å·',
  `process_instance_id` varchar(64) DEFAULT NULL COMMENT 'æµç¨‹å®ä¾‹ç¼–å·',
  `start_time` datetime DEFAULT NULL COMMENT 'å¼€å§‹æ—¶é—´',
  `end_time` datetime DEFAULT NULL COMMENT 'ç»“æŸæ—¶é—´',
  `leave_type` varchar(20) DEFAULT NULL COMMENT 'è¯·å‡ç±»å‹',
  `reason` varchar(255) DEFAULT NULL COMMENT 'è¯·å‡ç†ç”±',
  `apply_time` datetime DEFAULT NULL COMMENT 'ç”³è¯·æ—¶é—´',
  `reality_start_time` datetime DEFAULT NULL COMMENT 'å®é™…å¼€å§‹æ—¶é—´',
  `reality_end_time` datetime DEFAULT NULL COMMENT 'å®é™…ç»“æŸæ—¶é—´',
  `create_by` varchar(64) NOT NULL COMMENT 'åˆ›å»ºè€…',
  `create_date` datetime NOT NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  `update_by` varchar(64) NOT NULL COMMENT 'æ›´æ–°è€…',
  `update_date` datetime NOT NULL COMMENT 'æ›´æ–°æ—¶é—´',
  `remarks` varchar(255) DEFAULT NULL COMMENT 'å¤‡æ³¨ä¿¡æ¯',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT 'åˆ é™¤æ ‡è®°',
  PRIMARY KEY (`id`),
  KEY `oa_leave_create_by` (`create_by`),
  KEY `oa_leave_process_instance_id` (`process_instance_id`),
  KEY `oa_leave_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='è¯·å‡æµç¨‹è¡¨';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oa_leave`
--

LOCK TABLES `oa_leave` WRITE;
/*!40000 ALTER TABLE `oa_leave` DISABLE KEYS */;
/*!40000 ALTER TABLE `oa_leave` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oa_notify`
--

DROP TABLE IF EXISTS `oa_notify`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oa_notify` (
  `id` varchar(64) NOT NULL COMMENT 'ç¼–å·',
  `type` char(1) DEFAULT NULL COMMENT 'ç±»å‹',
  `title` varchar(200) DEFAULT NULL COMMENT 'æ ‡é¢˜',
  `content` varchar(2000) DEFAULT NULL COMMENT 'å†…å®¹',
  `files` varchar(2000) DEFAULT NULL COMMENT 'é™„ä»¶',
  `status` char(1) DEFAULT NULL COMMENT 'çŠ¶æ€',
  `create_by` varchar(64) NOT NULL COMMENT 'åˆ›å»ºè€…',
  `create_date` datetime NOT NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  `update_by` varchar(64) NOT NULL COMMENT 'æ›´æ–°è€…',
  `update_date` datetime NOT NULL COMMENT 'æ›´æ–°æ—¶é—´',
  `remarks` varchar(255) DEFAULT NULL COMMENT 'å¤‡æ³¨ä¿¡æ¯',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT 'åˆ é™¤æ ‡è®°',
  PRIMARY KEY (`id`),
  KEY `oa_notify_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='é€šçŸ¥é€šå‘Š';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oa_notify`
--

LOCK TABLES `oa_notify` WRITE;
/*!40000 ALTER TABLE `oa_notify` DISABLE KEYS */;
/*!40000 ALTER TABLE `oa_notify` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oa_notify_record`
--

DROP TABLE IF EXISTS `oa_notify_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oa_notify_record` (
  `id` varchar(64) NOT NULL COMMENT 'ç¼–å·',
  `oa_notify_id` varchar(64) DEFAULT NULL COMMENT 'é€šçŸ¥é€šå‘ŠID',
  `user_id` varchar(64) DEFAULT NULL COMMENT 'æ¥å—äºº',
  `read_flag` char(1) DEFAULT '0' COMMENT 'é˜…è¯»æ ‡è®°',
  `read_date` date DEFAULT NULL COMMENT 'é˜…è¯»æ—¶é—´',
  PRIMARY KEY (`id`),
  KEY `oa_notify_record_notify_id` (`oa_notify_id`),
  KEY `oa_notify_record_user_id` (`user_id`),
  KEY `oa_notify_record_read_flag` (`read_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='é€šçŸ¥é€šå‘Šå‘é€è®°å½•';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oa_notify_record`
--

LOCK TABLES `oa_notify_record` WRITE;
/*!40000 ALTER TABLE `oa_notify_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `oa_notify_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oa_test_audit`
--

DROP TABLE IF EXISTS `oa_test_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oa_test_audit` (
  `id` varchar(64) NOT NULL COMMENT 'ç¼–å·',
  `PROC_INS_ID` varchar(64) DEFAULT NULL COMMENT 'æµç¨‹å®ä¾‹ID',
  `USER_ID` varchar(64) DEFAULT NULL COMMENT 'å˜åŠ¨ç”¨æˆ·',
  `OFFICE_ID` varchar(64) DEFAULT NULL COMMENT 'å½’å±éƒ¨é—¨',
  `POST` varchar(255) DEFAULT NULL COMMENT 'å²—ä½',
  `AGE` char(1) DEFAULT NULL COMMENT 'æ€§åˆ«',
  `EDU` varchar(255) DEFAULT NULL COMMENT 'å­¦å†',
  `CONTENT` varchar(255) DEFAULT NULL COMMENT 'è°ƒæ•´åŸå› ',
  `OLDA` varchar(255) DEFAULT NULL COMMENT 'ç°è¡Œæ ‡å‡† è–ªé…¬æ¡£çº§',
  `OLDB` varchar(255) DEFAULT NULL COMMENT 'ç°è¡Œæ ‡å‡† æœˆå·¥èµ„é¢',
  `OLDC` varchar(255) DEFAULT NULL COMMENT 'ç°è¡Œæ ‡å‡† å¹´è–ªæ€»é¢',
  `NEWA` varchar(255) DEFAULT NULL COMMENT 'è°ƒæ•´åæ ‡å‡† è–ªé…¬æ¡£çº§',
  `NEWB` varchar(255) DEFAULT NULL COMMENT 'è°ƒæ•´åæ ‡å‡† æœˆå·¥èµ„é¢',
  `NEWC` varchar(255) DEFAULT NULL COMMENT 'è°ƒæ•´åæ ‡å‡† å¹´è–ªæ€»é¢',
  `ADD_NUM` varchar(255) DEFAULT NULL COMMENT 'æœˆå¢èµ„',
  `EXE_DATE` varchar(255) DEFAULT NULL COMMENT 'æ‰§è¡Œæ—¶é—´',
  `HR_TEXT` varchar(255) DEFAULT NULL COMMENT 'äººåŠ›èµ„æºéƒ¨é—¨æ„è§',
  `LEAD_TEXT` varchar(255) DEFAULT NULL COMMENT 'åˆ†ç®¡é¢†å¯¼æ„è§',
  `MAIN_LEAD_TEXT` varchar(255) DEFAULT NULL COMMENT 'é›†å›¢ä¸»è¦é¢†å¯¼æ„è§',
  `create_by` varchar(64) NOT NULL COMMENT 'åˆ›å»ºè€…',
  `create_date` datetime NOT NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  `update_by` varchar(64) NOT NULL COMMENT 'æ›´æ–°è€…',
  `update_date` datetime NOT NULL COMMENT 'æ›´æ–°æ—¶é—´',
  `remarks` varchar(255) DEFAULT NULL COMMENT 'å¤‡æ³¨ä¿¡æ¯',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT 'åˆ é™¤æ ‡è®°',
  PRIMARY KEY (`id`),
  KEY `OA_TEST_AUDIT_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='å®¡æ‰¹æµç¨‹æµ‹è¯•è¡¨';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oa_test_audit`
--

LOCK TABLES `oa_test_audit` WRITE;
/*!40000 ALTER TABLE `oa_test_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `oa_test_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_blob_triggers`
--

DROP TABLE IF EXISTS `qrtz_blob_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `qrtz_blob_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `BLOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `SCHED_NAME` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_blob_triggers`
--

LOCK TABLES `qrtz_blob_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_blob_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_blob_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_calendars`
--

DROP TABLE IF EXISTS `qrtz_calendars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `qrtz_calendars` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `CALENDAR_NAME` varchar(200) NOT NULL,
  `CALENDAR` blob NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_calendars`
--

LOCK TABLES `qrtz_calendars` WRITE;
/*!40000 ALTER TABLE `qrtz_calendars` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_calendars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_cron_triggers`
--

DROP TABLE IF EXISTS `qrtz_cron_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `qrtz_cron_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `CRON_EXPRESSION` varchar(120) NOT NULL,
  `TIME_ZONE_ID` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_cron_triggers`
--

LOCK TABLES `qrtz_cron_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_cron_triggers` DISABLE KEYS */;
INSERT INTO `qrtz_cron_triggers` VALUES ('ctopScheduler','TASK_5a00beb69be648849d6e2c7638f7f417','DEFAULT','0 */2 * * * ?','Asia/Shanghai');
/*!40000 ALTER TABLE `qrtz_cron_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_fired_triggers`
--

DROP TABLE IF EXISTS `qrtz_fired_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `qrtz_fired_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `ENTRY_ID` varchar(95) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `FIRED_TIME` bigint(13) NOT NULL,
  `SCHED_TIME` bigint(13) NOT NULL,
  `PRIORITY` int(11) NOT NULL,
  `STATE` varchar(16) NOT NULL,
  `JOB_NAME` varchar(200) DEFAULT NULL,
  `JOB_GROUP` varchar(200) DEFAULT NULL,
  `IS_NONCONCURRENT` varchar(1) DEFAULT NULL,
  `REQUESTS_RECOVERY` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`ENTRY_ID`),
  KEY `IDX_QRTZ_FT_TRIG_INST_NAME` (`SCHED_NAME`,`INSTANCE_NAME`),
  KEY `IDX_QRTZ_FT_INST_JOB_REQ_RCVRY` (`SCHED_NAME`,`INSTANCE_NAME`,`REQUESTS_RECOVERY`),
  KEY `IDX_QRTZ_FT_J_G` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_FT_JG` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_FT_T_G` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_FT_TG` (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_fired_triggers`
--

LOCK TABLES `qrtz_fired_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_fired_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_fired_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_job_details`
--

DROP TABLE IF EXISTS `qrtz_job_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `qrtz_job_details` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(250) NOT NULL,
  `IS_DURABLE` varchar(1) NOT NULL,
  `IS_NONCONCURRENT` varchar(1) NOT NULL,
  `IS_UPDATE_DATA` varchar(1) NOT NULL,
  `REQUESTS_RECOVERY` varchar(1) NOT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_J_REQ_RECOVERY` (`SCHED_NAME`,`REQUESTS_RECOVERY`),
  KEY `IDX_QRTZ_J_GRP` (`SCHED_NAME`,`JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_job_details`
--

LOCK TABLES `qrtz_job_details` WRITE;
/*!40000 ALTER TABLE `qrtz_job_details` DISABLE KEYS */;
INSERT INTO `qrtz_job_details` VALUES ('ctopScheduler','TASK_5a00beb69be648849d6e2c7638f7f417','DEFAULT',NULL,'com.ctop.modules.job.utils.QuartzJob','0','0','0','0',_binary '¬\í\0sr\0org.quartz.JobDataMapŸ°ƒè¿©°\Ë\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap‚\è\Ãû\Å](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap\æ.­(v\n\Î\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap\ÚÁ\Ã`\Ñ\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\rJOB_PARAM_KEYsr\0\'com.ctop.modules.job.entity.ScheduleJob\0\0\0\0\0\0\0\0L\0beanNamet\0Ljava/lang/String;L\0cronExpressionq\0~\0	L\0\nmethodNameq\0~\0	L\0paramsq\0~\0	L\0statusq\0~\0	xr\0&com.ctop.common.persistence.DataEntity\0\0\0\0\0\0\0\0L\0createByt\0\"Lcom/ctop/modules/sys/entity/User;L\0\ncreateDatet\0Ljava/util/Date;L\0delFlagq\0~\0	L\0remarksq\0~\0	L\0updateByq\0~\0L\0\nupdateDateq\0~\0xr\0&com.ctop.common.persistence.BaseEntity\0\0\0\0\0\0\0\0Z\0isNewRecordL\0currentUserq\0~\0L\0idq\0~\0	L\0paget\0\"Lcom/ctop/common/persistence/Page;L\0sqlMapq\0~\0xp\0pt\0 5a00beb69be648849d6e2c7638f7f417ppsr\0 com.ctop.modules.sys.entity.User\0\0\0\0\0\0\0\0L\0companyt\0$Lcom/ctop/modules/sys/entity/Office;L\0emailq\0~\0	L\0	loginDateq\0~\0L\0	loginFlagq\0~\0	L\0loginIpq\0~\0	L\0	loginNameq\0~\0	L\0mobileq\0~\0	L\0nameq\0~\0	L\0newPasswordq\0~\0	L\0noq\0~\0	L\0officeq\0~\0L\0oldLoginDateq\0~\0L\0\noldLoginIpq\0~\0	L\0oldLoginNameq\0~\0	L\0passwordq\0~\0	L\0phoneq\0~\0	L\0photoq\0~\0	L\0rolet\0\"Lcom/ctop/modules/sys/entity/Role;L\0roleListt\0Ljava/util/List;L\0userTypeq\0~\0	xq\0~\0\n\0pt\01ppsq\0~\0\0pt\01ppppt\00ppppppt\01ppppppppppppppsr\0java.util.ArrayListx\Ò™\Ça\0I\0sizexp\0\0\0\0w\0\0\0\nxpsr\0java.util.DatehjKYt\0\0xpw\0\0>\ãH\Ğ\0xt\00t\0æœ€é«˜ç®¡ç†å‘˜sq\0~\0\0pt\01ppppq\0~\0ppppppq\0~\0\Zppppppppppppppsq\0~\0\0\0\0\0w\0\0\0\nxpsq\0~\0w\0\0>\ãH\Ğ\0xsr\0\"com.ctop.modules.sys.entity.Office\0\0\0\0\0\0\0\0L\0addressq\0~\0	L\0areat\0\"Lcom/ctop/modules/sys/entity/Area;L\0\rchildDeptListq\0~\0L\0codeq\0~\0	L\0deputyPersonq\0~\0L\0emailq\0~\0	L\0faxq\0~\0	L\0gradeq\0~\0	L\0masterq\0~\0	L\0phoneq\0~\0	L\0\rprimaryPersonq\0~\0L\0typeq\0~\0	L\0useableq\0~\0	L\0zipCodeq\0~\0	xr\0&com.ctop.common.persistence.TreeEntity\0\0\0\0\0\0\0\0L\0nameq\0~\0	L\0parentt\0Ljava/lang/Object;L\0	parentIdsq\0~\0	L\0sortt\0Ljava/lang/Integer;xq\0~\0\n\0pt\01ppppq\0~\0pppt\0å±±ä¸œçœæ€»å…¬å¸sq\0~\0%\0pt\00ppppq\0~\0ppppppsr\0java.lang.Integerâ ¤÷‡8\0I\0valuexr\0java.lang.Number†¬•”\à‹\0\0xp\0\0\0pppppppppppt\02ppt\00,q\0~\01psr\0 com.ctop.modules.sys.entity.Area\0\0\0\0\0\0\0\0L\0codeq\0~\0	L\0typeq\0~\0	xq\0~\0\'\0pt\02ppppq\0~\0pppt\0	å±±ä¸œçœsq\0~\04\0pt\01ppppq\0~\0ppppppq\0~\01ppt\00,1,q\0~\01pppppppppppq\0~\02ppt\0thinkgem@163.comsq\0~\0w\0\0`r\â!lxt\01t\0\r192.168.0.239t\0admint\08675t\0ç³»ç»Ÿç®¡ç†å‘˜pt\00001sq\0~\0%\0pt\02ppppq\0~\0pppt\0å…¬å¸é¢†å¯¼sq\0~\0%\0pt\01ppppq\0~\0ppppppq\0~\01pppppppppppq\0~\02ppt\00,1,q\0~\01psq\0~\04\0pt\02ppppq\0~\0pppt\0	å±±ä¸œçœsq\0~\04\0pt\01ppppq\0~\0ppppppq\0~\01ppt\00,1,q\0~\01pppppppppppq\0~\02ppsq\0~\0w\0\0`r\İü\Øxt\0\r192.168.0.239pt\0802a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032t\08675ppsq\0~\0\0\0\0w\0\0\0\nsr\0 com.ctop.modules.sys.entity.Role\0\0\0\0\0\0\0\0L\0	dataScopeq\0~\0	L\0ennameq\0~\0	L\0menuListq\0~\0L\0nameq\0~\0	L\0officeq\0~\0L\0\nofficeListq\0~\0L\0	oldEnnameq\0~\0	L\0oldNameq\0~\0	L\0roleTypeq\0~\0	L\0sysDataq\0~\0	L\0useableq\0~\0	L\0userq\0~\0xq\0~\0\n\0pt\02ppppq\0~\0pppt\02t\0hrsq\0~\0\0\0\0\0w\0\0\0\nxt\0å…¬å¸ç®¡ç†å‘˜psq\0~\0\0\0\0\0w\0\0\0\nxppt\0\nassignmentpt\01psq\0~\0T\0pt\01ppppq\0~\0pppt\01t\0deptsq\0~\0\0\0\0\0w\0\0\0\nxt\0ç³»ç»Ÿç®¡ç†å‘˜psq\0~\0\0\0\0\0w\0\0\0\nxppt\0\nassignmentpt\01pxpsq\0~\0w\0\0`r\äP?xq\0~\0t\0\r1åˆ†é’Ÿä¸€æ¬¡q\0~\0q\0~\0gt\0testTaskt\0\r0 */1 * * * ?t\0testt\0æ€ç‰¹å®šæ—¶å™¨t\00x\0');
/*!40000 ALTER TABLE `qrtz_job_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_locks`
--

DROP TABLE IF EXISTS `qrtz_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `qrtz_locks` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `LOCK_NAME` varchar(40) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`LOCK_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_locks`
--

LOCK TABLES `qrtz_locks` WRITE;
/*!40000 ALTER TABLE `qrtz_locks` DISABLE KEYS */;
INSERT INTO `qrtz_locks` VALUES ('ctopScheduler','STATE_ACCESS'),('ctopScheduler','TRIGGER_ACCESS');
/*!40000 ALTER TABLE `qrtz_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_paused_trigger_grps`
--

DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `qrtz_paused_trigger_grps` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_paused_trigger_grps`
--

LOCK TABLES `qrtz_paused_trigger_grps` WRITE;
/*!40000 ALTER TABLE `qrtz_paused_trigger_grps` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_paused_trigger_grps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_scheduler_state`
--

DROP TABLE IF EXISTS `qrtz_scheduler_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `qrtz_scheduler_state` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `LAST_CHECKIN_TIME` bigint(13) NOT NULL,
  `CHECKIN_INTERVAL` bigint(13) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`INSTANCE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_scheduler_state`
--

LOCK TABLES `qrtz_scheduler_state` WRITE;
/*!40000 ALTER TABLE `qrtz_scheduler_state` DISABLE KEYS */;
INSERT INTO `qrtz_scheduler_state` VALUES ('ctopScheduler','192.168.3.151567043275449',1567043306480,15000);
/*!40000 ALTER TABLE `qrtz_scheduler_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_simple_triggers`
--

DROP TABLE IF EXISTS `qrtz_simple_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `qrtz_simple_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `REPEAT_COUNT` bigint(7) NOT NULL,
  `REPEAT_INTERVAL` bigint(12) NOT NULL,
  `TIMES_TRIGGERED` bigint(10) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_simple_triggers`
--

LOCK TABLES `qrtz_simple_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_simple_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_simple_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_simprop_triggers`
--

DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `qrtz_simprop_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `STR_PROP_1` varchar(512) DEFAULT NULL,
  `STR_PROP_2` varchar(512) DEFAULT NULL,
  `STR_PROP_3` varchar(512) DEFAULT NULL,
  `INT_PROP_1` int(11) DEFAULT NULL,
  `INT_PROP_2` int(11) DEFAULT NULL,
  `LONG_PROP_1` bigint(20) DEFAULT NULL,
  `LONG_PROP_2` bigint(20) DEFAULT NULL,
  `DEC_PROP_1` decimal(13,4) DEFAULT NULL,
  `DEC_PROP_2` decimal(13,4) DEFAULT NULL,
  `BOOL_PROP_1` varchar(1) DEFAULT NULL,
  `BOOL_PROP_2` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_simprop_triggers`
--

LOCK TABLES `qrtz_simprop_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_simprop_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_simprop_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_triggers`
--

DROP TABLE IF EXISTS `qrtz_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `qrtz_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PREV_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) NOT NULL,
  `TRIGGER_TYPE` varchar(8) NOT NULL,
  `START_TIME` bigint(13) NOT NULL,
  `END_TIME` bigint(13) DEFAULT NULL,
  `CALENDAR_NAME` varchar(200) DEFAULT NULL,
  `MISFIRE_INSTR` smallint(2) DEFAULT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_T_J` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_T_JG` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_T_C` (`SCHED_NAME`,`CALENDAR_NAME`),
  KEY `IDX_QRTZ_T_G` (`SCHED_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_T_STATE` (`SCHED_NAME`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_N_STATE` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_N_G_STATE` (`SCHED_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_NEXT_FIRE_TIME` (`SCHED_NAME`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_ST` (`SCHED_NAME`,`TRIGGER_STATE`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_MISFIRE` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_ST_MISFIRE` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_NFT_ST_MISFIRE_GRP` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) REFERENCES `qrtz_job_details` (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_triggers`
--

LOCK TABLES `qrtz_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_triggers` DISABLE KEYS */;
INSERT INTO `qrtz_triggers` VALUES ('ctopScheduler','TASK_5a00beb69be648849d6e2c7638f7f417','DEFAULT','TASK_5a00beb69be648849d6e2c7638f7f417','DEFAULT',NULL,1513756320000,1513756200000,5,'PAUSED','CRON',1513756056000,0,NULL,2,_binary '¬\í\0sr\0org.quartz.JobDataMapŸ°ƒè¿©°\Ë\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap‚\è\Ãû\Å](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap\æ.­(v\n\Î\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap\ÚÁ\Ã`\Ñ\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\rJOB_PARAM_KEYsr\0\'com.ctop.modules.job.entity.ScheduleJob\0\0\0\0\0\0\0\0L\0beanNamet\0Ljava/lang/String;L\0cronExpressionq\0~\0	L\0\nmethodNameq\0~\0	L\0paramsq\0~\0	L\0statusq\0~\0	xr\0&com.ctop.common.persistence.DataEntity\0\0\0\0\0\0\0\0L\0createByt\0\"Lcom/ctop/modules/sys/entity/User;L\0\ncreateDatet\0Ljava/util/Date;L\0delFlagq\0~\0	L\0remarksq\0~\0	L\0updateByq\0~\0L\0\nupdateDateq\0~\0xr\0&com.ctop.common.persistence.BaseEntity\0\0\0\0\0\0\0\0Z\0isNewRecordL\0currentUserq\0~\0L\0idq\0~\0	L\0paget\0\"Lcom/ctop/common/persistence/Page;L\0sqlMapq\0~\0xp\0pt\0 5a00beb69be648849d6e2c7638f7f417ppsr\0 com.ctop.modules.sys.entity.User\0\0\0\0\0\0\0\0L\0companyt\0$Lcom/ctop/modules/sys/entity/Office;L\0emailq\0~\0	L\0	loginDateq\0~\0L\0	loginFlagq\0~\0	L\0loginIpq\0~\0	L\0	loginNameq\0~\0	L\0mobileq\0~\0	L\0nameq\0~\0	L\0newPasswordq\0~\0	L\0noq\0~\0	L\0officeq\0~\0L\0oldLoginDateq\0~\0L\0\noldLoginIpq\0~\0	L\0oldLoginNameq\0~\0	L\0passwordq\0~\0	L\0phoneq\0~\0	L\0photoq\0~\0	L\0rolet\0\"Lcom/ctop/modules/sys/entity/Role;L\0roleListt\0Ljava/util/List;L\0userTypeq\0~\0	xq\0~\0\n\0pt\01ppppt\00ppppppt\01ppppppppppppppsr\0java.util.ArrayListx\Ò™\Ça\0I\0sizexp\0\0\0\0w\0\0\0\nxpsr\0java.util.DatehjKYt\0\0xpw\0\0`r\äNxt\00t\0æµ‹è¯•ä»»åŠ¡ï¼Œä»¥ä¾›å‚è€ƒsq\0~\0\0pt\01ppsq\0~\0\0pt\01ppppq\0~\0ppppppq\0~\0ppppppppppppppsq\0~\0\0\0\0\0w\0\0\0\nxpsq\0~\0w\0\0>\ãH\Ğ\0xt\00t\0æœ€é«˜ç®¡ç†å‘˜sq\0~\0\0pt\01ppppq\0~\0ppppppq\0~\0ppppppppppppppsq\0~\0\0\0\0\0w\0\0\0\nxpsq\0~\0w\0\0>\ãH\Ğ\0xsr\0\"com.ctop.modules.sys.entity.Office\0\0\0\0\0\0\0\0L\0addressq\0~\0	L\0areat\0\"Lcom/ctop/modules/sys/entity/Area;L\0\rchildDeptListq\0~\0L\0codeq\0~\0	L\0deputyPersonq\0~\0L\0emailq\0~\0	L\0faxq\0~\0	L\0gradeq\0~\0	L\0masterq\0~\0	L\0phoneq\0~\0	L\0\rprimaryPersonq\0~\0L\0typeq\0~\0	L\0useableq\0~\0	L\0zipCodeq\0~\0	xr\0&com.ctop.common.persistence.TreeEntity\0\0\0\0\0\0\0\0L\0nameq\0~\0	L\0parentt\0Ljava/lang/Object;L\0	parentIdsq\0~\0	L\0sortt\0Ljava/lang/Integer;xq\0~\0\n\0pt\01ppppq\0~\0pppt\0å±±ä¸œçœæ€»å…¬å¸sq\0~\0+\0pt\00ppppq\0~\0ppppppsr\0java.lang.Integerâ ¤÷‡8\0I\0valuexr\0java.lang.Number†¬•”\à‹\0\0xp\0\0\0pppppppppppt\02ppt\00,q\0~\07psr\0 com.ctop.modules.sys.entity.Area\0\0\0\0\0\0\0\0L\0codeq\0~\0	L\0typeq\0~\0	xq\0~\0-\0pt\02ppppq\0~\0pppt\0	å±±ä¸œçœsq\0~\0:\0pt\01ppppq\0~\0ppppppq\0~\07ppt\00,1,q\0~\07pppppppppppq\0~\08ppt\0thinkgem@163.comsq\0~\0w\0\0`r\â!lxt\01t\0\r192.168.0.239t\0admint\08675t\0ç³»ç»Ÿç®¡ç†å‘˜pt\00001sq\0~\0+\0pt\02ppppq\0~\0pppt\0å…¬å¸é¢†å¯¼sq\0~\0+\0pt\01ppppq\0~\0ppppppq\0~\07pppppppppppq\0~\08ppt\00,1,q\0~\07psq\0~\0:\0pt\02ppppq\0~\0pppt\0	å±±ä¸œçœsq\0~\0:\0pt\01ppppq\0~\0ppppppq\0~\07ppt\00,1,q\0~\07pppppppppppq\0~\08ppsq\0~\0w\0\0`r\İü\Øxt\0\r192.168.0.239pt\0802a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032t\08675ppsq\0~\0\0\0\0w\0\0\0\nsr\0 com.ctop.modules.sys.entity.Role\0\0\0\0\0\0\0\0L\0	dataScopeq\0~\0	L\0ennameq\0~\0	L\0menuListq\0~\0L\0nameq\0~\0	L\0officeq\0~\0L\0\nofficeListq\0~\0L\0	oldEnnameq\0~\0	L\0oldNameq\0~\0	L\0roleTypeq\0~\0	L\0sysDataq\0~\0	L\0useableq\0~\0	L\0userq\0~\0xq\0~\0\n\0pt\02ppppq\0~\0pppt\02t\0hrsq\0~\0\0\0\0\0w\0\0\0\nxt\0å…¬å¸ç®¡ç†å‘˜psq\0~\0\0\0\0\0w\0\0\0\nxppt\0\nassignmentpt\01psq\0~\0Z\0pt\01ppppq\0~\0pppt\01t\0deptsq\0~\0\0\0\0\0w\0\0\0\nxt\0ç³»ç»Ÿç®¡ç†å‘˜psq\0~\0\0\0\0\0w\0\0\0\nxppt\0\nassignmentpt\01pxpsq\0~\0w\0\0`r\åÊ¬xt\0testTaskt\0\r0 */2 * * * ?t\0testt\0æ€ç‰¹å®šæ—¶å™¨t\00x\0');
/*!40000 ALTER TABLE `qrtz_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule_job`
--

DROP TABLE IF EXISTS `schedule_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `schedule_job` (
  `id` varchar(64) NOT NULL COMMENT 'ç¼–å·',
  `bean_name` varchar(200) DEFAULT NULL COMMENT 'spring beanåç§°',
  `method_name` varchar(100) DEFAULT NULL COMMENT 'æ–¹æ³•å',
  `params` varchar(2000) DEFAULT NULL COMMENT 'å‚æ•°',
  `cron_expression` varchar(100) DEFAULT NULL COMMENT 'cronè¡¨è¾¾å¼',
  `status` char(1) DEFAULT NULL COMMENT 'ä»»åŠ¡çŠ¶æ€',
  `create_by` varchar(64) NOT NULL COMMENT 'åˆ›å»ºè€…',
  `create_date` datetime NOT NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  `update_by` varchar(64) NOT NULL COMMENT 'æ›´æ–°è€…',
  `update_date` datetime NOT NULL COMMENT 'æ›´æ–°æ—¶é—´',
  `remarks` varchar(255) DEFAULT NULL COMMENT 'å¤‡æ³¨ä¿¡æ¯',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT 'åˆ é™¤æ ‡è®°',
  PRIMARY KEY (`id`),
  KEY `schedule_job_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='å®šæ—¶ä»»åŠ¡è¡¨';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule_job`
--

LOCK TABLES `schedule_job` WRITE;
/*!40000 ALTER TABLE `schedule_job` DISABLE KEYS */;
INSERT INTO `schedule_job` VALUES ('373f0a1b2bb84a3594df213b504350f4','testTask','test','params','0 */1 * * * ?','0','1','2017-12-20 15:35:35','1','2017-12-20 15:35:35','æµ‹è¯•ä»»åŠ¡ï¼Œä»¥ä¾›å‚è€ƒ222','1'),('5a00beb69be648849d6e2c7638f7f417','testTask','test','æ€ç‰¹å®šæ—¶å™¨','0 */2 * * * ?','1','1','2017-12-20 15:47:33','1','2017-12-20 15:49:10','æµ‹è¯•ä»»åŠ¡ï¼Œä»¥ä¾›å‚è€ƒ','0'),('b1c2c56e2f9845fdbd28e0ae2b2dc963','testTask','test','cccc','0 */1 * * * ?','0','1','2017-12-20 15:13:57','1','2017-12-20 15:13:57','æµ‹è¯•ä»»åŠ¡ï¼Œä»¥ä¾›å‚è€ƒ','1');
/*!40000 ALTER TABLE `schedule_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule_job_log`
--

DROP TABLE IF EXISTS `schedule_job_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `schedule_job_log` (
  `id` varchar(64) NOT NULL COMMENT 'ç¼–å·',
  `job_id` varchar(64) DEFAULT NULL COMMENT 'ä»»åŠ¡id',
  `bean_name` varchar(200) DEFAULT NULL COMMENT 'spring beanåç§°',
  `method_name` varchar(100) DEFAULT NULL COMMENT 'æ–¹æ³•å',
  `params` varchar(2000) DEFAULT NULL COMMENT 'å‚æ•°',
  `job_result` char(1) NOT NULL COMMENT 'æ‰§è¡Œç»“æœ',
  `error` varchar(2000) DEFAULT NULL COMMENT 'å¤±è´¥ä¿¡æ¯',
  `times` int(11) NOT NULL COMMENT 'è€—æ—¶(å•ä½ï¼šæ¯«ç§’)',
  `create_by` varchar(64) NOT NULL COMMENT 'åˆ›å»ºè€…',
  `create_date` datetime NOT NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  `update_by` varchar(64) NOT NULL COMMENT 'æ›´æ–°è€…',
  `update_date` datetime NOT NULL COMMENT 'æ›´æ–°æ—¶é—´',
  `remarks` varchar(255) DEFAULT NULL COMMENT 'å¤‡æ³¨ä¿¡æ¯',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT 'åˆ é™¤æ ‡è®°',
  PRIMARY KEY (`id`),
  KEY `schedule_job_log_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='å®šæ—¶ä»»åŠ¡æ—¥å¿—	';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule_job_log`
--

LOCK TABLES `schedule_job_log` WRITE;
/*!40000 ALTER TABLE `schedule_job_log` DISABLE KEYS */;
INSERT INTO `schedule_job_log` VALUES ('19e25d68c2d54e1baccec95324d5c158','5a00beb69be648849d6e2c7638f7f417','testTask','test','æ€ç‰¹å®šæ—¶å™¨','0',NULL,1003,'1','2017-12-20 15:48:05','1','2017-12-20 15:48:05',NULL,'0'),('389197a48a024a4fb83fce430cba1383','373f0a1b2bb84a3594df213b504350f4','testTask','test','params','0',NULL,1020,'1','2017-12-20 15:40:35','1','2017-12-20 15:40:35',NULL,'0'),('43eccef992b34e1d83f621b673b5cdb5','b1c2c56e2f9845fdbd28e0ae2b2dc963','testTask','test','cccc','0',NULL,1004,'1','2017-12-20 15:25:25','1','2017-12-20 15:25:25',NULL,'0'),('5fc758beecad406585b49b04c80c0101','373f0a1b2bb84a3594df213b504350f4','testTask','test','params','0',NULL,1019,'1','2017-12-20 15:46:15','1','2017-12-20 15:46:15',NULL,'0'),('660483a5223545bcb9c21857f0af1709','b1c2c56e2f9845fdbd28e0ae2b2dc963','testTask','test','cccc','0',NULL,1004,'1','2017-12-20 15:26:21','1','2017-12-20 15:26:21',NULL,'0'),('6fed387a76c44503ab97cf4f142ec827','373f0a1b2bb84a3594df213b504350f4','testTask','test','params','0',NULL,1004,'1','2017-12-20 15:46:42','1','2017-12-20 15:46:42',NULL,'0'),('7caec134c7204ac38bbcab96af5c28ba','5a00beb69be648849d6e2c7638f7f417','testTask','test','æ€ç‰¹å®šæ—¶å™¨','0',NULL,1003,'1','2017-12-20 15:49:04','1','2017-12-20 15:49:04',NULL,'0'),('82be6bd023a4490994f33f84bed38375','b1c2c56e2f9845fdbd28e0ae2b2dc963','testTask','test','cccc','0',NULL,1003,'1','2017-12-20 15:24:08','1','2017-12-20 15:24:08',NULL,'0'),('9173d138ce944acdb9b15b87a1623762','5a00beb69be648849d6e2c7638f7f417','testTask','test','æ€ç‰¹å®šæ—¶å™¨','0',NULL,1002,'1','2017-12-20 15:50:04','1','2017-12-20 15:50:04',NULL,'0'),('ca74812b262745f6a5834d64f99a81c8','b1c2c56e2f9845fdbd28e0ae2b2dc963','testTask','test','cccc','0',NULL,1017,'1','2017-12-20 15:23:06','1','2017-12-20 15:23:06',NULL,'0'),('d7230afd687a4e56bcc7f48c849396d8','373f0a1b2bb84a3594df213b504350f4','testTask','test','params','0',NULL,1021,'1','2017-12-20 15:36:03','1','2017-12-20 15:36:03',NULL,'0'),('f59e44c5dbad47c59f824bef26292f25','373f0a1b2bb84a3594df213b504350f4','testTask','test','params','0',NULL,1004,'1','2017-12-20 15:38:04','1','2017-12-20 15:38:04',NULL,'0');
/*!40000 ALTER TABLE `schedule_job_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_area`
--

DROP TABLE IF EXISTS `sys_area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_area` (
  `id` varchar(64) NOT NULL COMMENT 'ç¼–å·',
  `parent_id` varchar(64) NOT NULL COMMENT 'çˆ¶çº§ç¼–å·',
  `parent_ids` varchar(2000) NOT NULL COMMENT 'æ‰€æœ‰çˆ¶çº§ç¼–å·',
  `name` varchar(100) NOT NULL COMMENT 'åç§°',
  `sort` decimal(10,0) NOT NULL COMMENT 'æ’åº',
  `code` varchar(100) DEFAULT NULL COMMENT 'åŒºåŸŸç¼–ç ',
  `type` char(1) DEFAULT NULL COMMENT 'åŒºåŸŸç±»å‹',
  `create_by` varchar(64) NOT NULL COMMENT 'åˆ›å»ºè€…',
  `create_date` datetime NOT NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  `update_by` varchar(64) NOT NULL COMMENT 'æ›´æ–°è€…',
  `update_date` datetime NOT NULL COMMENT 'æ›´æ–°æ—¶é—´',
  `remarks` varchar(255) DEFAULT NULL COMMENT 'å¤‡æ³¨ä¿¡æ¯',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT 'åˆ é™¤æ ‡è®°',
  PRIMARY KEY (`id`),
  KEY `sys_area_parent_id` (`parent_id`),
  KEY `sys_area_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='åŒºåŸŸè¡¨';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_area`
--

LOCK TABLES `sys_area` WRITE;
/*!40000 ALTER TABLE `sys_area` DISABLE KEYS */;
INSERT INTO `sys_area` VALUES ('1','0','0,','ä¸­å›½',10,'100000','1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('2','1','0,1,','å±±ä¸œçœ',20,'110000','2','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('3','2','0,1,2,','æµå—å¸‚',30,'110101','3','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('4','3','0,1,2,3,','å†åŸåŒº',40,'110102','4','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('5','3','0,1,2,3,','å†ä¸‹åŒº',50,'110104','4','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('6','3','0,1,2,3,','é«˜æ–°åŒº',60,'110105','4','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0');
/*!40000 ALTER TABLE `sys_area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dict`
--

DROP TABLE IF EXISTS `sys_dict`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_dict` (
  `id` varchar(64) NOT NULL COMMENT 'ç¼–å·',
  `value` varchar(100) NOT NULL COMMENT 'æ•°æ®å€¼',
  `label` varchar(100) NOT NULL COMMENT 'æ ‡ç­¾å',
  `type` varchar(100) NOT NULL COMMENT 'ç±»å‹',
  `description` varchar(100) NOT NULL COMMENT 'æè¿°',
  `sort` decimal(10,0) NOT NULL COMMENT 'æ’åºï¼ˆå‡åºï¼‰',
  `parent_id` varchar(64) DEFAULT '0' COMMENT 'çˆ¶çº§ç¼–å·',
  `create_by` varchar(64) NOT NULL COMMENT 'åˆ›å»ºè€…',
  `create_date` datetime NOT NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  `update_by` varchar(64) NOT NULL COMMENT 'æ›´æ–°è€…',
  `update_date` datetime NOT NULL COMMENT 'æ›´æ–°æ—¶é—´',
  `remarks` varchar(255) DEFAULT NULL COMMENT 'å¤‡æ³¨ä¿¡æ¯',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT 'åˆ é™¤æ ‡è®°',
  PRIMARY KEY (`id`),
  KEY `sys_dict_value` (`value`),
  KEY `sys_dict_label` (`label`),
  KEY `sys_dict_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='å­—å…¸è¡¨';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dict`
--

LOCK TABLES `sys_dict` WRITE;
/*!40000 ALTER TABLE `sys_dict` DISABLE KEYS */;
INSERT INTO `sys_dict` VALUES ('1','0','æ­£å¸¸','del_flag','åˆ é™¤æ ‡è®°',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('10','yellow','é»„è‰²','color','é¢œè‰²å€¼',40,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('100','java.util.Date','Date','gen_java_type','Javaç±»å‹\0\0',50,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('101','com.thinkgem.jeesite.modules.sys.entity.User','User','gen_java_type','Javaç±»å‹\0\0',60,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('102','com.thinkgem.jeesite.modules.sys.entity.Office','Office','gen_java_type','Javaç±»å‹\0\0',70,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('103','com.thinkgem.jeesite.modules.sys.entity.Area','Area','gen_java_type','Javaç±»å‹\0\0',80,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('104','Custom','Custom','gen_java_type','Javaç±»å‹\0\0',90,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('105','1','ä¼šè®®é€šå‘Š\0\0\0\0','oa_notify_type','é€šçŸ¥é€šå‘Šç±»å‹',10,'0','1','2013-11-08 08:00:00','1','2013-11-08 08:00:00',NULL,'0'),('106','2','å¥–æƒ©é€šå‘Š\0\0\0\0','oa_notify_type','é€šçŸ¥é€šå‘Šç±»å‹',20,'0','1','2013-11-08 08:00:00','1','2013-11-08 08:00:00',NULL,'0'),('107','3','æ´»åŠ¨é€šå‘Š\0\0\0\0','oa_notify_type','é€šçŸ¥é€šå‘Šç±»å‹',30,'0','1','2013-11-08 08:00:00','1','2013-11-08 08:00:00',NULL,'0'),('108','0','è‰ç¨¿','oa_notify_status','é€šçŸ¥é€šå‘ŠçŠ¶æ€',10,'0','1','2013-11-08 08:00:00','1','2013-11-08 08:00:00',NULL,'0'),('109','1','å‘å¸ƒ','oa_notify_status','é€šçŸ¥é€šå‘ŠçŠ¶æ€',20,'0','1','2013-11-08 08:00:00','1','2013-11-08 08:00:00',NULL,'0'),('11','orange','æ©™è‰²','color','é¢œè‰²å€¼',50,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('110','0','æœªè¯»','oa_notify_read','é€šçŸ¥é€šå‘ŠçŠ¶æ€',10,'0','1','2013-11-08 08:00:00','1','2013-11-08 08:00:00',NULL,'0'),('111','1','å·²è¯»','oa_notify_read','é€šçŸ¥é€šå‘ŠçŠ¶æ€',20,'0','1','2013-11-08 08:00:00','1','2013-11-08 08:00:00',NULL,'0'),('12','default','é»˜è®¤ä¸»é¢˜','theme','ä¸»é¢˜æ–¹æ¡ˆ',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('13','cerulean','å¤©è“ä¸»é¢˜','theme','ä¸»é¢˜æ–¹æ¡ˆ',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('14','readable','æ©™è‰²ä¸»é¢˜','theme','ä¸»é¢˜æ–¹æ¡ˆ',30,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('15','united','çº¢è‰²ä¸»é¢˜','theme','ä¸»é¢˜æ–¹æ¡ˆ',40,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('16','flat','Flatä¸»é¢˜','theme','ä¸»é¢˜æ–¹æ¡ˆ',60,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('17','1','å›½å®¶','sys_area_type','åŒºåŸŸç±»å‹',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('18','2','çœä»½ã€ç›´è¾–å¸‚','sys_area_type','åŒºåŸŸç±»å‹',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('19','3','åœ°å¸‚','sys_area_type','åŒºåŸŸç±»å‹',30,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('2','1','åˆ é™¤','del_flag','åˆ é™¤æ ‡è®°',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('20','4','åŒºå¿','sys_area_type','åŒºåŸŸç±»å‹',40,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('21','1','å…¬å¸','sys_office_type','æœºæ„ç±»å‹',60,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('22','2','éƒ¨é—¨','sys_office_type','æœºæ„ç±»å‹',70,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('23','3','å°ç»„','sys_office_type','æœºæ„ç±»å‹',80,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('24','4','å…¶å®ƒ','sys_office_type','æœºæ„ç±»å‹',90,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('25','1','ç»¼åˆéƒ¨','sys_office_common','å¿«æ·é€šç”¨éƒ¨é—¨',30,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('26','2','å¼€å‘éƒ¨','sys_office_common','å¿«æ·é€šç”¨éƒ¨é—¨',40,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('27','3','äººåŠ›éƒ¨','sys_office_common','å¿«æ·é€šç”¨éƒ¨é—¨',50,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('28','1','ä¸€çº§','sys_office_grade','æœºæ„ç­‰çº§',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('29','2','äºŒçº§','sys_office_grade','æœºæ„ç­‰çº§',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('3','1','æ˜¾ç¤º','show_hide','æ˜¾ç¤º/éšè—',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('30','3','ä¸‰çº§','sys_office_grade','æœºæ„ç­‰çº§',30,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('31','4','å››çº§','sys_office_grade','æœºæ„ç­‰çº§',40,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('32','1','æ‰€æœ‰æ•°æ®','sys_data_scope','æ•°æ®èŒƒå›´',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('33','2','æ‰€åœ¨å…¬å¸åŠä»¥ä¸‹æ•°æ®','sys_data_scope','æ•°æ®èŒƒå›´',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('34','3','æ‰€åœ¨å…¬å¸æ•°æ®','sys_data_scope','æ•°æ®èŒƒå›´',30,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('35','4','æ‰€åœ¨éƒ¨é—¨åŠä»¥ä¸‹æ•°æ®','sys_data_scope','æ•°æ®èŒƒå›´',40,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('36','5','æ‰€åœ¨éƒ¨é—¨æ•°æ®','sys_data_scope','æ•°æ®èŒƒå›´',50,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('37','8','ä»…æœ¬äººæ•°æ®','sys_data_scope','æ•°æ®èŒƒå›´',90,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('38','9','æŒ‰æ˜ç»†è®¾ç½®','sys_data_scope','æ•°æ®èŒƒå›´',100,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('39','1','ç³»ç»Ÿç®¡ç†','sys_user_type','ç”¨æˆ·ç±»å‹',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('4','0','éšè—','show_hide','æ˜¾ç¤º/éšè—',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('40','2','éƒ¨é—¨ç»ç†','sys_user_type','ç”¨æˆ·ç±»å‹',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('41','3','æ™®é€šç”¨æˆ·','sys_user_type','ç”¨æˆ·ç±»å‹',30,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('42','basic','åŸºç¡€ä¸»é¢˜','cms_theme','ç«™ç‚¹ä¸»é¢˜',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('43','blue','è“è‰²ä¸»é¢˜','cms_theme','ç«™ç‚¹ä¸»é¢˜',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('44','red','çº¢è‰²ä¸»é¢˜','cms_theme','ç«™ç‚¹ä¸»é¢˜',30,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('45','article','æ–‡ç« æ¨¡å‹','cms_module','æ ç›®æ¨¡å‹',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('46','picture','å›¾ç‰‡æ¨¡å‹','cms_module','æ ç›®æ¨¡å‹',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('47','download','ä¸‹è½½æ¨¡å‹','cms_module','æ ç›®æ¨¡å‹',30,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('48','link','é“¾æ¥æ¨¡å‹','cms_module','æ ç›®æ¨¡å‹',40,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('49','special','ä¸“é¢˜æ¨¡å‹','cms_module','æ ç›®æ¨¡å‹',50,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('5','1','æ˜¯','yes_no','æ˜¯/å¦',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('50','0','é»˜è®¤å±•ç°æ–¹å¼','cms_show_modes','å±•ç°æ–¹å¼',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('51','1','é¦–æ ç›®å†…å®¹åˆ—è¡¨','cms_show_modes','å±•ç°æ–¹å¼',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('52','2','æ ç›®ç¬¬ä¸€æ¡å†…å®¹','cms_show_modes','å±•ç°æ–¹å¼',30,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('53','0','å‘å¸ƒ','cms_del_flag','å†…å®¹çŠ¶æ€',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('54','1','åˆ é™¤','cms_del_flag','å†…å®¹çŠ¶æ€',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('55','2','å®¡æ ¸','cms_del_flag','å†…å®¹çŠ¶æ€',15,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('56','1','é¦–é¡µç„¦ç‚¹å›¾','cms_posid','æ¨èä½',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('57','2','æ ç›®é¡µæ–‡ç« æ¨è','cms_posid','æ¨èä½',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('58','1','å’¨è¯¢','cms_guestbook','ç•™è¨€æ¿åˆ†ç±»',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('59','2','å»ºè®®','cms_guestbook','ç•™è¨€æ¿åˆ†ç±»',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('6','0','å¦','yes_no','æ˜¯/å¦',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('60','3','æŠ•è¯‰','cms_guestbook','ç•™è¨€æ¿åˆ†ç±»',30,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('61','4','å…¶å®ƒ','cms_guestbook','ç•™è¨€æ¿åˆ†ç±»',40,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('62','1','å…¬ä¼‘','oa_leave_type','è¯·å‡ç±»å‹',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('63','2','ç—…å‡','oa_leave_type','è¯·å‡ç±»å‹',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('64','3','äº‹å‡','oa_leave_type','è¯·å‡ç±»å‹',30,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('65','4','è°ƒä¼‘','oa_leave_type','è¯·å‡ç±»å‹',40,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('66','5','å©šå‡','oa_leave_type','è¯·å‡ç±»å‹',60,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('67','1','æ¥å…¥æ—¥å¿—','sys_log_type','æ—¥å¿—ç±»å‹',30,'0','1','2013-06-03 08:00:00','1','2013-06-03 08:00:00',NULL,'0'),('68','2','å¼‚å¸¸æ—¥å¿—','sys_log_type','æ—¥å¿—ç±»å‹',40,'0','1','2013-06-03 08:00:00','1','2013-06-03 08:00:00',NULL,'0'),('69','leave','è¯·å‡æµç¨‹','act_type','æµç¨‹ç±»å‹',10,'0','1','2013-06-03 08:00:00','1','2013-06-03 08:00:00',NULL,'0'),('7','red','çº¢è‰²','color','é¢œè‰²å€¼',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('70','test_audit','å®¡æ‰¹æµ‹è¯•æµç¨‹','act_type','æµç¨‹ç±»å‹',20,'0','1','2013-06-03 08:00:00','1','2013-06-03 08:00:00',NULL,'0'),('71','1','åˆ†ç±»1','act_category','æµç¨‹åˆ†ç±»',10,'0','1','2013-06-03 08:00:00','1','2013-06-03 08:00:00',NULL,'0'),('72','2','åˆ†ç±»2','act_category','æµç¨‹åˆ†ç±»',20,'0','1','2013-06-03 08:00:00','1','2013-06-03 08:00:00',NULL,'0'),('73','crud','å¢åˆ æ”¹æŸ¥','gen_category','ä»£ç ç”Ÿæˆåˆ†ç±»',10,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('74','crud_many','å¢åˆ æ”¹æŸ¥ï¼ˆåŒ…å«ä»è¡¨ï¼‰','gen_category','ä»£ç ç”Ÿæˆåˆ†ç±»',20,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('75','tree','æ ‘ç»“æ„','gen_category','ä»£ç ç”Ÿæˆåˆ†ç±»',30,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('76','=','=','gen_query_type','æŸ¥è¯¢æ–¹å¼',10,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('77','!=','!=','gen_query_type','æŸ¥è¯¢æ–¹å¼',20,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('78','&gt;','&gt;','gen_query_type','æŸ¥è¯¢æ–¹å¼',30,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('79','&lt;','&lt;','gen_query_type','æŸ¥è¯¢æ–¹å¼',40,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('8','green','ç»¿è‰²','color','é¢œè‰²å€¼',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('80','between','Between','gen_query_type','æŸ¥è¯¢æ–¹å¼',50,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('81','like','Like','gen_query_type','æŸ¥è¯¢æ–¹å¼',60,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('82','left_like','Left Like','gen_query_type','æŸ¥è¯¢æ–¹å¼',70,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('83','right_like','Right Like','gen_query_type','æŸ¥è¯¢æ–¹å¼',80,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('84','input','æ–‡æœ¬æ¡†','gen_show_type','å­—æ®µç”Ÿæˆæ–¹æ¡ˆ',10,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('85','textarea','æ–‡æœ¬åŸŸ','gen_show_type','å­—æ®µç”Ÿæˆæ–¹æ¡ˆ',20,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('86','select','ä¸‹æ‹‰æ¡†','gen_show_type','å­—æ®µç”Ÿæˆæ–¹æ¡ˆ',30,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('87','checkbox','å¤é€‰æ¡†','gen_show_type','å­—æ®µç”Ÿæˆæ–¹æ¡ˆ',40,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('88','radiobox','å•é€‰æ¡†','gen_show_type','å­—æ®µç”Ÿæˆæ–¹æ¡ˆ',50,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('89','dateselect','æ—¥æœŸé€‰æ‹©','gen_show_type','å­—æ®µç”Ÿæˆæ–¹æ¡ˆ',60,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('9','blue','è“è‰²','color','é¢œè‰²å€¼',30,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('90','userselect','äººå‘˜é€‰æ‹©\0','gen_show_type','å­—æ®µç”Ÿæˆæ–¹æ¡ˆ',70,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('91','officeselect','éƒ¨é—¨é€‰æ‹©','gen_show_type','å­—æ®µç”Ÿæˆæ–¹æ¡ˆ',80,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('92','areaselect','åŒºåŸŸé€‰æ‹©','gen_show_type','å­—æ®µç”Ÿæˆæ–¹æ¡ˆ',90,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('93','String','String','gen_java_type','Javaç±»å‹',10,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('94','Long','Long','gen_java_type','Javaç±»å‹',20,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('95','dao','ä»…æŒä¹…å±‚','gen_category','ä»£ç ç”Ÿæˆåˆ†ç±»\0\0\0\0\0\0',40,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('96','1','ç”·','sex','æ€§åˆ«',10,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'0'),('97','2','å¥³','sex','æ€§åˆ«',20,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'0'),('98','Integer','Integer','gen_java_type','Javaç±»å‹\0\0',30,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('99','Double','Double','gen_java_type','Javaç±»å‹\0\0',40,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1');
/*!40000 ALTER TABLE `sys_dict` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_log`
--

DROP TABLE IF EXISTS `sys_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_log` (
  `id` varchar(64) NOT NULL COMMENT 'ç¼–å·',
  `type` char(1) DEFAULT '1' COMMENT 'æ—¥å¿—ç±»å‹',
  `title` varchar(255) DEFAULT '' COMMENT 'æ—¥å¿—æ ‡é¢˜',
  `create_by` varchar(64) DEFAULT NULL COMMENT 'åˆ›å»ºè€…',
  `create_date` datetime DEFAULT NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  `remote_addr` varchar(255) DEFAULT NULL COMMENT 'æ“ä½œIPåœ°å€',
  `user_agent` varchar(255) DEFAULT NULL COMMENT 'ç”¨æˆ·ä»£ç†',
  `request_uri` varchar(255) DEFAULT NULL COMMENT 'è¯·æ±‚URI',
  `method` varchar(5) DEFAULT NULL COMMENT 'æ“ä½œæ–¹å¼',
  `params` text COMMENT 'æ“ä½œæäº¤çš„æ•°æ®',
  `exception` text COMMENT 'å¼‚å¸¸ä¿¡æ¯',
  PRIMARY KEY (`id`),
  KEY `sys_log_create_by` (`create_by`),
  KEY `sys_log_request_uri` (`request_uri`),
  KEY `sys_log_type` (`type`),
  KEY `sys_log_create_date` (`create_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='æ—¥å¿—è¡¨';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_log`
--

LOCK TABLES `sys_log` WRITE;
/*!40000 ALTER TABLE `sys_log` DISABLE KEYS */;
INSERT INTO `sys_log` VALUES ('00e57088fc2b4a65a4eac3f1dd14367e','1','åœ¨çº¿åŠå…¬-é€šçŸ¥é€šå‘Š-æˆ‘çš„é€šå‘Š','1','2017-11-14 15:16:44','182.110.0.154','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36 LBBROWSER','/jeesite/a/oa/oaNotify/self','GET','',''),('043e7e30ede3477c8c7170cd99b5d811','1','å†…å®¹ç®¡ç†-å†…å®¹ç®¡ç†','1','2017-11-14 15:15:15','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/cms/none','GET','',''),('06608af720204256a88fc08131051189','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†','1','2019-09-06 00:48:17','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/','GET','',''),('068eab30bf8141ad860a4cebb1a8d054','1','åœ¨çº¿åŠå…¬-é€šçŸ¥é€šå‘Š-æˆ‘çš„é€šå‘Š','1','2017-11-14 15:14:18','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/oa/oaNotify/self','GET','',''),('0ad3eddec8a8477298d1143092f60a05','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-è§’è‰²ç®¡ç†','1','2019-09-06 00:53:36','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/role/','GET','',''),('0d00aa19ed25436a9d741088df25f928','1','æˆ‘çš„é¢æ¿-ä¸ªäººä¿¡æ¯-ä¸ªäººä¿¡æ¯','1','2017-11-14 15:15:11','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/sys/user/info','GET','tabPageId=jerichotabiframe_0',''),('0d237e422c394bc69ddcb9147d8a370b','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†-æŸ¥çœ‹','1','2019-09-06 00:49:25','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/form','GET','id=27',''),('0d95a25e800e4d958715eab7a885f664','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†','1','2019-09-06 00:50:10','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/','GET','',''),('0f3952f9b46344b9ba0944716d0b60d1','1','æˆ‘çš„é¢æ¿-ä¸ªäººä¿¡æ¯-ä¸ªäººä¿¡æ¯','1','2017-11-14 15:14:22','119.97.201.18','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36','/jeesite/a/sys/user/info','GET','',''),('0fd9bfe1dea948b39db37f6227c7c6b6','1','å®ä¾‹ç¤ºä¾‹-å‚è€ƒç¤ºä¾‹','1','2019-09-06 00:54:10','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('109a13ae1c5044d6b19c59dcfad66586','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-è§’è‰²ç®¡ç†','1','2019-09-06 00:53:42','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/role/','GET','repage=',''),('12e62bcee18f4fed918b4c0292fd4c46','1','ä»£ç ç”Ÿæˆ-ä»£ç ç”Ÿæˆ-ä¸šåŠ¡è¡¨é…ç½®','1','2017-11-14 15:14:19','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/gen/genTable','GET','',''),('14f943ac34d347aebea42a81f894b06c','1','å†…å®¹ç®¡ç†-å†…å®¹ç®¡ç†','1','2017-11-14 15:14:28','119.97.201.18','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36','/jeesite/a/cms/none','GET','',''),('153170b6dbf1424c930eeda206258c8d','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†-æŸ¥çœ‹','1','2019-09-06 00:51:24','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/form','GET','id=65d779ccec984ff0b31df79b87ed9d56',''),('15a4175e1b3c47978e11b86126ecb7bd','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†','1','2019-09-06 00:48:25','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/','GET','',''),('15b3bd4235084b27903890e9fe2f0d11','1','ä»£ç ç”Ÿæˆ-ä»£ç ç”Ÿæˆ-ä¸šåŠ¡è¡¨é…ç½®','1','2019-09-06 00:44:59','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genTable','GET','',''),('17569f66de9443cca19177a65b41ee21','1','å†…å®¹ç®¡ç†-å†…å®¹ç®¡ç†','1','2017-11-14 15:18:42','220.160.68.3','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36','/jeesite/a/cms/none','GET','',''),('1b0589815ea348cbbe2cb687a54b56b2','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-è§’è‰²ç®¡ç†-ä¿®æ”¹','1','2019-09-06 00:52:16','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/role/save','POST','id=1&office.id=1&office.name=å±±ä¸œçœæ€»å…¬å¸&oldName=ç³»ç»Ÿç®¡ç†å‘˜&name=ç³»ç»Ÿç®¡ç†å‘˜&oldEnname=dept&enname=dept&roleType=assignment&sysData=1&useable=1&dataScope=1&menuIds=1,27,28,29,30,71,56,57,58,59,62,88,89,90,63,73,74,64,65,66,69,70,72,2,13,20,21,22,17,18,19,14,15,...&officeIds=&remarks=',''),('1d4309edcc9b466d9b4aa8c944c58ed6','1','å†…å®¹ç®¡ç†-å†…å®¹ç®¡ç†-å†…å®¹å‘å¸ƒ-æ–‡ç« æ¨¡å‹-æŸ¥çœ‹','1','2017-11-14 15:16:34','119.97.201.18','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36','/jeesite/a/cms/article/form','GET','id=32',''),('1ddabc8a032d4feebccfb2dbd4d5e8ad','1','å†…å®¹ç®¡ç†-å†…å®¹ç®¡ç†-å†…å®¹å‘å¸ƒ-æ–‡ç« æ¨¡å‹','1','2017-11-14 15:15:52','119.97.201.18','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36','/jeesite/a/cms/article/','GET','category.id=12',''),('1e5ed9d4fe4c471cb5bd3dad04f6056f','1','å†…å®¹ç®¡ç†-å†…å®¹ç®¡ç†-å†…å®¹å‘å¸ƒ-æ–‡ç« æ¨¡å‹','1','2017-11-14 15:15:12','119.97.201.18','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36','/jeesite/a/cms/article/','GET','category.id=5',''),('1f66c7b7572b439ba61b6c8827a4e83a','1','å†…å®¹ç®¡ç†-å†…å®¹ç®¡ç†-å†…å®¹å‘å¸ƒ-æ–‡ç« æ¨¡å‹','1','2017-11-14 15:14:30','119.97.201.18','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36','/jeesite/a/cms/article/','GET','category.id=3',''),('2101451eb9424170b63dbb9e4f81bee6','1','å†…å®¹ç®¡ç†-å†…å®¹ç®¡ç†','1','2017-11-14 15:14:18','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/cms/tree','GET','',''),('2718775cfc4b478da43a63dcfadbc418','1','æˆ‘çš„é¢æ¿-ä¸ªäººä¿¡æ¯-ä¸ªäººä¿¡æ¯','1','2017-11-14 15:14:44','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/sys/user/info','GET','',''),('291b3a20e88643c2b325cd15808bb024','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†-æŸ¥çœ‹','1','2019-09-06 00:51:03','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/form','GET','id=65d779ccec984ff0b31df79b87ed9d56',''),('297d7f5ba4b74198bc4e009b63536f44','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†','1','2019-09-06 00:54:00','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/','GET','',''),('2a2796681fd9492f8236bfb5a33f63b2','1','å†…å®¹ç®¡ç†-å†…å®¹ç®¡ç†-å†…å®¹å‘å¸ƒ','1','2017-11-14 15:16:46','182.110.0.154','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36 LBBROWSER','/jeesite/a/cms/','GET','',''),('2a6bd9b0c3d5481eb106aba7dfe97c54','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†-ä¿®æ”¹','1','2019-09-06 00:48:25','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/delete','GET','id=23',''),('2af981a1ba8a4479bcdc739d9582c183','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†-ä¿®æ”¹','1','2019-09-06 00:50:59','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/save','POST','id=&parent.id=a91e496aa0ab42239c11617d7095034a&parent.name=å®ä¾‹ç¤ºä¾‹&name=å®ä¾‹ç¤ºä¾‹&href=demo/demoData&target=&icon=&sort=30&isShow=1&permission=&remarks=',''),('2e5288d55b234bc5ac3a92af17044206','1','æˆ‘çš„é¢æ¿-ä¸ªäººä¿¡æ¯-ä¸ªäººä¿¡æ¯','1','2017-11-14 15:14:31','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/sys/user/info','GET','',''),('306975578d9c450b8c1fbaaa740a0857','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†','1','2019-09-06 00:49:21','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/','GET','',''),('3148169938d942d8817cc3af02e94441','1','åœ¨çº¿åŠå…¬-é€šçŸ¥é€šå‘Š-æˆ‘çš„é€šå‘Š','1','2017-11-14 15:14:22','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/oa/oaNotify/self','GET','',''),('352f19f9ed9c4ab6a2e34f97b62ed3e1','1','åœ¨çº¿åŠå…¬-é€šçŸ¥é€šå‘Š-æˆ‘çš„é€šå‘Š','1','2017-11-14 15:14:34','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/oa/oaNotify/self','GET','',''),('3939455f47ae4e45bf032da450a60ea1','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†','1','2019-09-06 00:48:10','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/','GET','',''),('3dc1db99ca27447caf0ca2eef6231219','1','ä»£ç ç”Ÿæˆ-ç”Ÿæˆç¤ºä¾‹-æ ‘ç»“æ„','1','2019-09-06 00:45:08','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/test/testTree','GET','',''),('3fa83b8d216d45828feab9a8923a2cab','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†-æŸ¥çœ‹','1','2019-09-06 00:54:02','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/form','GET','id=3fa3250a18ce4883a67e0de89588232b',''),('475fe8e8f4e644839d97b74508a12da1','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†-æŸ¥çœ‹','1','2019-09-06 00:46:23','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/form','GET','id=27',''),('498f15345cdd4be88bbcab67b132035d','1','ä»£ç ç”Ÿæˆ-ç”Ÿæˆç¤ºä¾‹-æ ‘ç»“æ„','1','2017-11-14 15:14:40','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/test/testTree','GET','',''),('4990f67c7c944a0aa67ff635ee7958c9','1','å†…å®¹ç®¡ç†-å†…å®¹ç®¡ç†-å†…å®¹å‘å¸ƒ-æ–‡ç« æ¨¡å‹','1','2017-11-14 15:14:45','119.97.201.18','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36','/jeesite/a/cms/article/','GET','category.id=4',''),('4b543ba6d1f54366b71056c676b9b05a','1','å†…å®¹ç®¡ç†-å†…å®¹ç®¡ç†-å†…å®¹å‘å¸ƒ-æ–‡ç« æ¨¡å‹','1','2017-11-14 15:14:37','119.97.201.18','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36','/jeesite/a/cms/article/','GET','category.id=5',''),('4bf4884ec8344e9a93942f342fbfff69','1','ç³»ç»Ÿç™»å½•','1','2017-11-14 15:14:21','61.129.6.148','Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E; InfoPath.3; rv:11.0) like Gecko','/jeesite/a;JSESSIONID=24e6cee7284249468b869f63bee5d881','GET','',''),('4ddc24ce3b1d4b12aecd6bc65a97c4be','1','å†…å®¹ç®¡ç†-å†…å®¹ç®¡ç†-å†…å®¹å‘å¸ƒ','1','2017-11-14 15:18:41','220.160.68.3','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36','/jeesite/a/cms/','GET','',''),('53415bdb7bb14869b77920791cf7a3e4','1','æˆ‘çš„é¢æ¿-ä¸ªäººä¿¡æ¯-ä¸ªäººä¿¡æ¯','1','2017-11-14 15:14:33','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/sys/user/info','GET','',''),('54bb46ef624d4bf588a8bc7440672380','1','ä»£ç ç”Ÿæˆ-ç”Ÿæˆç¤ºä¾‹-ä¸»å­è¡¨','1','2017-11-14 15:14:40','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/test/testDataMain','GET','',''),('566b8432491144ddba53b30bbe1849c3','1','æˆ‘çš„é¢æ¿-ä¸ªäººä¿¡æ¯-ä¸ªäººä¿¡æ¯','1','2017-11-14 15:14:14','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/sys/user/info','GET','',''),('58937116d8614fa3b13e633714393f6c','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†','1','2019-09-06 00:48:34','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/','GET','',''),('58e6205e961344e28805867f398f810f','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†','1','2019-09-06 00:53:29','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/','GET','',''),('59fae9bd2c08444f8638cc5911cf3d3d','1','ä»£ç ç”Ÿæˆ-ç”Ÿæˆç¤ºä¾‹-å•è¡¨','1','2019-09-06 00:45:02','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/test/testData','GET','',''),('5a417264d9af43a6bbcacc51c2479aaa','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†','1','2019-09-06 00:49:39','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/','GET','',''),('5d526bb862da4474a121366c60fc42a0','1','ä»£ç ç”Ÿæˆ-ä»£ç ç”Ÿæˆ-ä¸šåŠ¡è¡¨é…ç½®','1','2017-11-14 15:16:48','182.110.0.154','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36 LBBROWSER','/jeesite/a/gen/genTable','GET','',''),('5e92e006c814454fb48feb18c201d6d0','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-è§’è‰²ç®¡ç†-ä¿®æ”¹','1','2019-09-06 00:53:42','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/role/save','POST','id=1&office.id=1&office.name=å±±ä¸œçœæ€»å…¬å¸&oldName=ç³»ç»Ÿç®¡ç†å‘˜&name=ç³»ç»Ÿç®¡ç†å‘˜&oldEnname=dept&enname=dept&roleType=assignment&sysData=1&useable=1&dataScope=1&menuIds=1,27,28,29,30,71,56,57,58,59,62,88,89,90,63,73,74,64,65,66,69,70,72,2,13,20,21,22,17,18,19,14,15,...&officeIds=&remarks=',''),('62a4b060a9574b69b927d1e0b8127b3a','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†','1','2019-09-06 00:47:07','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/','GET','',''),('631405808c2942fab8051a76e215b505','1','å†…å®¹ç®¡ç†-å†…å®¹ç®¡ç†-å†…å®¹å‘å¸ƒ-æ–‡ç« æ¨¡å‹-æŸ¥çœ‹','1','2017-11-14 15:15:55','119.97.201.18','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36','/jeesite/a/cms/article/form','GET','id=32',''),('632e0201a19043eb8a2c5f1d04a42f2e','1','ä»£ç ç”Ÿæˆ-ç”Ÿæˆç¤ºä¾‹-å•è¡¨-æŸ¥çœ‹','1','2019-09-06 00:45:03','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/test/testData/getListData','POST','_search=false&nd=1567748702460&rows=10&cuPage=1&sidx=&sord=asc',''),('648ffbeb0faa491687fb25589c9a26b6','1','ç³»ç»Ÿç™»å½•','1','2019-09-06 00:53:46','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a','GET','login=',''),('6587dcd5bbfe4e3490e1b49563cded55','1','ä»£ç ç”Ÿæˆ-ä»£ç ç”Ÿæˆ-ä¸šåŠ¡è¡¨é…ç½®','1','2017-11-14 15:19:15','182.110.0.154','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36 LBBROWSER','/jeesite/a/gen/genTable','GET','',''),('659557586297489196c5da24fafbda7c','1','ç³»ç»Ÿè®¾ç½®-æœºæ„ç”¨æˆ·-ç”¨æˆ·ç®¡ç†-æŸ¥çœ‹','1','2017-11-14 15:18:56','220.160.68.3','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36','/jeesite/a/sys/user/export','POST','pageNo=1&pageSize=30&orderBy=&company.id=&company.name=&loginName=&office.id=2&office.name=å…¬å¸é¢†å¯¼&name=',''),('67c1f7b2dc534eb7a9d098bd9015e4f2','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†-ä¿®æ”¹','1','2019-09-06 00:48:17','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/delete','GET','id=31',''),('68e2fe17b1d94145b1de2e1761b934e3','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†-æŸ¥çœ‹','1','2019-09-06 00:45:30','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/form','GET','',''),('691c1f4f45d449b79a2672d53f63c1ff','1','ç³»ç»Ÿç™»å½•','1','2017-11-14 15:14:13','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a','GET','login=',''),('6aab7d1a6d704a9791a1a294d002ccd6','1','å†…å®¹ç®¡ç†-å†…å®¹ç®¡ç†-å†…å®¹å‘å¸ƒ-æ–‡ç« æ¨¡å‹','1','2017-11-14 15:14:45','119.97.201.18','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36','/jeesite/a/cms/article/','GET','category.id=3',''),('6bc64aaee6d94256aec4daeb9feade76','1','å®ä¾‹ç¤ºä¾‹-å®ä¾‹ç¤ºä¾‹','1','2019-09-06 00:53:50','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/list','GET','',''),('6beb5473259d48baa69c552083df5727','1','å†…å®¹ç®¡ç†-å†…å®¹ç®¡ç†-å†…å®¹å‘å¸ƒ-æ–‡ç« æ¨¡å‹-æŸ¥çœ‹','1','2017-11-14 15:16:34','119.97.201.18','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36','/jeesite/a/cms/article/findByIds','GET','ids=1,2,3',''),('6de671769ce04a5987fdfb5a101d65fa','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†-ä¿®æ”¹','1','2019-09-06 00:49:58','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/save','POST','id=79&parent.id=1&parent.name=åŠŸèƒ½èœå•&name=ä»£ç ç”Ÿæˆ&href=&target=&icon=desktop&sort=5000&isShow=1&permission=&remarks=',''),('6defa67b84d94d498b50199e9743bc96','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-è§’è‰²ç®¡ç†-æŸ¥çœ‹','1','2019-09-06 00:52:01','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/role/form','GET','id=1',''),('6f69cd4c81b64b40975cca1f2e43c1f6','1','å®ä¾‹ç¤ºä¾‹-å®ä¾‹ç¤ºä¾‹','1','2019-09-06 00:54:55','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/list','GET','',''),('6fc249058d8e49bfaae087cf765ce54a','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†','1','2019-09-06 00:53:12','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/','GET','',''),('70c38c1a5edc4a26a9ed5b8de5876e62','1','å†…å®¹ç®¡ç†-å†…å®¹ç®¡ç†','1','2017-11-14 15:14:28','119.97.201.18','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36','/jeesite/a/cms/tree','GET','',''),('70f8012c22364b1098a511371c0b3366','1','å†…å®¹ç®¡ç†-å†…å®¹ç®¡ç†-å†…å®¹å‘å¸ƒ-æ–‡ç« æ¨¡å‹','1','2017-11-14 15:14:35','119.97.201.18','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36','/jeesite/a/cms/article/','GET','category.id=3',''),('7483ebdef78a4a959dc39b26c1542305','1','æˆ‘çš„é¢æ¿-ä¸ªäººä¿¡æ¯-ä¸ªäººä¿¡æ¯','1','2017-11-14 15:15:38','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/sys/user/info','GET','tabPageId=jerichotabiframe_0',''),('79b14036a5e745f3a3c0441a0032dd5d','1','ä»£ç ç”Ÿæˆ-ä»£ç ç”Ÿæˆ-ç”Ÿæˆæ–¹æ¡ˆé…ç½®','1','2017-11-14 15:18:31','182.110.0.154','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36 LBBROWSER','/jeesite/a/gen/genScheme','GET','',''),('7c1686fedf1d427f85efcad33c8c9afd','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†','1','2019-09-06 00:48:02','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/','GET','',''),('7c5a70d9cb7944fe9b790ab81da2fda3','1','ä»£ç ç”Ÿæˆ-ç”Ÿæˆç¤ºä¾‹-ä¸»å­è¡¨','1','2019-09-06 00:45:05','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/test/testDataMain','GET','',''),('7cda6c9d4d244bb3b39ce4ab76e77c47','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†','1','2019-09-06 00:47:32','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/','GET','',''),('7dd0b9d568814b7f992ee32a9bf7a236','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†-ä¿®æ”¹','1','2019-09-06 00:49:21','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/save','POST','id=2&parent.id=1&parent.name=åŠŸèƒ½èœå•&name=ç³»ç»Ÿè®¾ç½®&href=&target=&icon=th-large&sort=900&isShow=1&permission=&remarks=',''),('7fba6f2158294bbb947592e8c562bca3','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†-ä¿®æ”¹','1','2019-09-06 00:47:48','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/save','POST','id=27&parent.id=1&parent.name=åŠŸèƒ½èœå•&name=æˆ‘çš„é¢æ¿&href=&target=&icon=bookmark&sort=100&isShow=1&permission=&remarks=',''),('82ad49c51a124f33a8cc88a55f6db600','1','åœ¨çº¿åŠå…¬-é€šçŸ¥é€šå‘Š-æˆ‘çš„é€šå‘Š','1','2017-11-14 15:15:14','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/oa/oaNotify/self','GET','tabPageId=jerichotabiframe_2',''),('851122eeee314dd8acf4993691b0a279','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†-ä¿®æ”¹','1','2019-09-06 00:46:18','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/save','POST','id=&parent.id=1&parent.name=åŠŸèƒ½èœå•&name=å®ä¾‹ç¤ºä¾‹&href=&target=&icon=indent-right&sort=5030&isShow=1&permission=&remarks=',''),('859277c486e64a60b77d1478a3725759','1','åœ¨çº¿åŠå…¬-æµç¨‹ç®¡ç†-æµç¨‹ç®¡ç†','1','2017-11-14 15:14:25','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/act/process','GET','',''),('85d2169900bc49f6aa1ef5365bddfd67','1','å†…å®¹ç®¡ç†-å†…å®¹ç®¡ç†','1','2017-11-14 15:14:18','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/cms/none','GET','',''),('86012efabf944bf19541c3c2ae5a7e10','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†-ä¿®æ”¹','1','2019-09-06 00:51:10','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/save','POST','id=65d779ccec984ff0b31df79b87ed9d56&parent.id=a91e496aa0ab42239c11617d7095034a&parent.name=å®ä¾‹ç¤ºä¾‹&name=å®ä¾‹ç¤ºä¾‹&href=/demo/demoData/list&target=&icon=&sort=30&isShow=1&permission=&remarks=',''),('8749e32b48464d9083c661b00c80cbf2','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†','1','2019-09-06 00:51:44','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/','GET','',''),('89642c42bc424cef8baf990e29bd2a48','1','å†…å®¹ç®¡ç†-å†…å®¹ç®¡ç†','1','2017-11-14 15:15:15','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/cms/tree','GET','',''),('8a418f9c1b114658a5f39e7033bceebc','1','å†…å®¹ç®¡ç†-å†…å®¹ç®¡ç†-å†…å®¹å‘å¸ƒ-æ–‡ç« æ¨¡å‹','1','2017-11-14 15:14:36','119.97.201.18','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36','/jeesite/a/cms/article/','GET','category.id=4',''),('8bac0363c22a400d8f3848e63a09a5d5','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†','1','2019-09-06 00:46:18','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/','GET','',''),('8cb7b57cabcb4ae1a9676d89510ccbdb','1','å†…å®¹ç®¡ç†-å†…å®¹ç®¡ç†-å†…å®¹å‘å¸ƒ-æ–‡ç« æ¨¡å‹','1','2017-11-14 15:14:33','119.97.201.18','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36','/jeesite/a/cms/article/','GET','category.id=4',''),('902cab2ac6c64f0092adc6bd6d57659e','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†','1','2019-09-06 00:51:10','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/','GET','',''),('92c240a9fca54c3693fa742c6c89d3e5','1','æˆ‘çš„é¢æ¿-ä¸ªäººä¿¡æ¯-ä¿®æ”¹å¯†ç ','1','2017-11-14 15:14:32','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/sys/user/modifyPwd','GET','',''),('945fb8693d13410480e120dd82ed1d31','1','ç³»ç»Ÿç™»å½•','1','2019-09-06 00:44:51','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a;JSESSIONID=404326fb196d497f8383330de102c541','GET','login=',''),('979835433e7a4eb0abd84ab762326953','1','ç³»ç»Ÿè®¾ç½®-æœºæ„ç”¨æˆ·-ç”¨æˆ·ç®¡ç†-æŸ¥çœ‹','1','2017-11-14 15:18:42','220.160.68.3','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36','/jeesite/a/sys/user/list','GET','',''),('97b7c8cb20ab42a6a4ed82d943557d36','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†','1','2019-09-06 00:51:21','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/','GET','',''),('984e9275aa9c41c5a80ff29debbd1e04','1','åœ¨çº¿åŠå…¬-ä¸ªäººåŠå…¬-å®¡æ‰¹æµ‹è¯•','1','2017-11-14 15:15:00','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/oa/testAudit','GET','tabPageId=jerichotabiframe_6',''),('98c5c752fcd446ca9e8816bac19f5fac','1','ä»£ç ç”Ÿæˆ-ç”Ÿæˆç¤ºä¾‹-å•è¡¨','1','2017-11-14 15:14:39','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/test/testData','GET','',''),('99dd3cf5b7a04d77ae1ea835fb5e3a81','1','åœ¨çº¿åŠå…¬-é€šçŸ¥é€šå‘Š-æˆ‘çš„é€šå‘Š','1','2017-11-14 15:14:58','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/oa/oaNotify/self','GET','tabPageId=jerichotabiframe_4',''),('9a875a00593f46bebecbfc3627e6bd55','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†-ä¿®æ”¹','1','2019-09-06 00:48:02','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/save','POST','id=62&parent.id=1&parent.name=åŠŸèƒ½èœå•&name=åœ¨çº¿åŠå…¬&href=&target=&icon=dashboard&sort=200&isShow=1&permission=&remarks=',''),('9cd99673c187479cb275c8fc1e757802','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-è§’è‰²ç®¡ç†','1','2019-09-06 00:51:59','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/role/','GET','',''),('9ed4baa24fb04994a7694aeeb81a6d77','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†-æŸ¥çœ‹','1','2019-09-06 00:50:13','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/form','GET','parent.id=a91e496aa0ab42239c11617d7095034a',''),('a00748782f2047e3a8eca8833699a667','1','å†…å®¹ç®¡ç†-å†…å®¹ç®¡ç†-å†…å®¹å‘å¸ƒ-æ–‡ç« æ¨¡å‹','1','2017-11-14 15:16:26','119.97.201.18','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36','/jeesite/a/cms/article/','GET','category.id=12',''),('a4ee0bbf11b2497db56884bf70d2f51a','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†-ä¿®æ”¹','1','2019-09-06 00:51:44','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/save','POST','id=65d779ccec984ff0b31df79b87ed9d56&parent.id=a91e496aa0ab42239c11617d7095034a&parent.name=å®ä¾‹ç¤ºä¾‹&name=å®ä¾‹ç¤ºä¾‹&href=/demo/demoData/list&target=&icon=&sort=30&isShow=1&permission=demo:demoData:view,demo:demoData:edit&remarks=',''),('a5dce4d7d50541cc86bdd52788edfe53','1','å®ä¾‹ç¤ºä¾‹-å‚è€ƒç¤ºä¾‹','1','2019-09-06 00:56:11','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('a6c4248f1ddf40a78c7355f26c25f9c0','1','å®ä¾‹ç¤ºä¾‹-å®ä¾‹ç¤ºä¾‹','1','2019-09-06 00:51:13','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/list','GET','',''),('a8c6befda8764df18742a774b5e9778c','1','æˆ‘çš„é¢æ¿-ä¸ªäººä¿¡æ¯-ä¿®æ”¹å¯†ç ','1','2017-11-14 15:18:38','220.160.68.3','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36','/jeesite/a/sys/user/modifyPwd','GET','',''),('a8f3148b182c45e9b3e777285b7356ef','1','å†…å®¹ç®¡ç†-å†…å®¹ç®¡ç†','1','2017-11-14 15:16:46','182.110.0.154','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36 LBBROWSER','/jeesite/a/cms/none','GET','',''),('a900e5ad672c4dd792d00a571eb9bd79','1','å†…å®¹ç®¡ç†-å†…å®¹ç®¡ç†','1','2017-11-14 15:16:46','182.110.0.154','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36 LBBROWSER','/jeesite/a/cms/tree','GET','',''),('aa3df978217c4f84b9267f5aae5a9c1d','1','å†…å®¹ç®¡ç†-å†…å®¹ç®¡ç†-å†…å®¹å‘å¸ƒ','1','2017-11-14 15:15:15','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/cms/','GET','tabPageId=jerichotabiframe_3',''),('aa48e15fc8224c909d9a375bc677e442','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-è§’è‰²ç®¡ç†','1','2019-09-06 00:51:54','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/role/','GET','',''),('aadb24143ad0455ca198095b7b653dfa','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†','1','2019-09-06 00:45:22','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/','GET','',''),('aae94721425a4dd5a90f3c9b99ba12b3','1','åœ¨çº¿åŠå…¬-é€šçŸ¥é€šå‘Š-æˆ‘çš„é€šå‘Š','1','2017-11-14 15:15:56','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/oa/oaNotify/self','GET','tabPageId=jerichotabiframe_1',''),('acf6e1b95110409cb32098cfd171c848','1','æˆ‘çš„é¢æ¿-ä¸ªäººä¿¡æ¯-ä¸ªäººä¿¡æ¯','1','2017-11-14 15:18:35','220.160.68.3','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36','/jeesite/a/sys/user/info','GET','',''),('b3fde77c59b24abb8e389d020bea48fd','1','å†…å®¹ç®¡ç†-å†…å®¹ç®¡ç†-å†…å®¹å‘å¸ƒ','1','2017-11-14 15:14:28','119.97.201.18','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36','/jeesite/a/cms/','GET','',''),('b4b2c424ce404d80a4eeaca9e7029430','1','å†…å®¹ç®¡ç†-å†…å®¹ç®¡ç†-å†…å®¹å‘å¸ƒ-æ–‡ç« æ¨¡å‹-æŸ¥çœ‹','1','2017-11-14 15:15:25','119.97.201.18','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36','/jeesite/a/cms/article/form','GET','id=11',''),('b91ff20303234af291caba2edfab0ffd','1','æˆ‘çš„é¢æ¿-ä¸ªäººä¿¡æ¯-ä¸ªäººä¿¡æ¯','1','2017-11-14 15:18:39','220.160.68.3','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36','/jeesite/a/sys/user/info','GET','',''),('bbf83cea2817479087bcadbf7df07286','1','æˆ‘çš„é¢æ¿-ä¸ªäººä¿¡æ¯-ä¸ªäººä¿¡æ¯','1','2017-11-14 15:14:47','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/sys/user/info','GET','',''),('bc315e1a7ce84944aaaee177f026a877','1','æˆ‘çš„é¢æ¿-ä¸ªäººä¿¡æ¯-ä¸ªäººä¿¡æ¯','1','2017-11-14 15:16:26','182.110.0.154','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36 LBBROWSER','/jeesite/a/sys/user/info','GET','',''),('bc5a1c412d4f422d9ec209ed09b03ae2','1','æˆ‘çš„é¢æ¿-ä¸ªäººä¿¡æ¯-ä¸ªäººä¿¡æ¯','1','2017-11-14 15:14:52','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/sys/user/info','GET','tabPageId=jerichotabiframe_0',''),('bcd102a3c55f4a2c867f5fc96af12a06','1','æˆ‘çš„é¢æ¿-ä¸ªäººä¿¡æ¯-ä¿®æ”¹å¯†ç ','1','2017-11-14 15:14:56','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/sys/user/modifyPwd','GET','tabPageId=jerichotabiframe_2',''),('bce9ac9ffd55407c898376e4283f81c1','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†-æŸ¥çœ‹','1','2019-09-06 00:48:41','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/form','GET','id=2',''),('bdc8ac40eccb47e4813b49786eb429fd','1','ç³»ç»Ÿè®¾ç½®-æœºæ„ç”¨æˆ·-ç”¨æˆ·ç®¡ç†-æŸ¥çœ‹','1','2017-11-14 15:14:20','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/sys/user/list','GET','',''),('bfac41a51f814a9db409095ee793e3cc','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†-ä¿®æ”¹','1','2019-09-06 00:49:39','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/save','POST','id=27&parent.id=1&parent.name=åŠŸèƒ½èœå•&name=æˆ‘çš„é¢æ¿&href=&target=&icon=user&sort=100&isShow=1&permission=&remarks=',''),('bfcd3e570c33417498ec3c630110e9ab','1','å†…å®¹ç®¡ç†-å†…å®¹ç®¡ç†-å†…å®¹å‘å¸ƒ-æ–‡ç« æ¨¡å‹','1','2017-11-14 15:14:46','119.97.201.18','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36','/jeesite/a/cms/article/','GET','category.id=5',''),('c2314f427b6d4ad087e1f5d7b0dffc3d','1','æˆ‘çš„é¢æ¿-ä¸ªäººä¿¡æ¯-ä¸ªäººä¿¡æ¯','1','2017-11-14 15:14:49','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/sys/user/info','GET','',''),('c585ebbf983e4c0984d6eba403ce3c03','1','ä»£ç ç”Ÿæˆ-ä»£ç ç”Ÿæˆ-ä¸šåŠ¡è¡¨é…ç½®','1','2017-11-14 15:17:15','182.110.0.154','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36 LBBROWSER','/jeesite/a/gen/genTable','GET','',''),('c58bb4a93a5b4573950eaab13952b19e','1','å®ä¾‹ç¤ºä¾‹-å®ä¾‹ç¤ºä¾‹','1','2019-09-06 00:51:48','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/list','GET','',''),('c71acf6ac29d453f8cc4ab4c2108e0f3','1','æˆ‘çš„é¢æ¿-ä¸ªäººä¿¡æ¯-ä¸ªäººä¿¡æ¯','1','2017-11-14 15:14:54','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/sys/user/info','GET','tabPageId=jerichotabiframe_0',''),('c7f4cf66864b44c1b19141eba28db492','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-è§’è‰²ç®¡ç†','1','2019-09-06 00:52:16','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/role/','GET','repage=',''),('c826074245b248f58bccb13c0cd5b624','1','æˆ‘çš„é¢æ¿-ä¸ªäººä¿¡æ¯-ä¿®æ”¹å¯†ç ','1','2017-11-14 15:14:17','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/sys/user/modifyPwd','GET','',''),('c87d3bdb158340b69bee60131abc934f','1','æˆ‘çš„é¢æ¿-ä¸ªäººä¿¡æ¯-ä¿®æ”¹å¯†ç ','1','2017-11-14 15:15:13','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/sys/user/modifyPwd','GET','tabPageId=jerichotabiframe_1',''),('c8e2245966914a37a700b8d4b51b1889','1','åœ¨çº¿åŠå…¬-æµç¨‹ç®¡ç†-æ¨¡å‹ç®¡ç†','1','2017-11-14 15:14:24','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/act/model','GET','',''),('cb615174b8e84fe99e3fe19c746df356','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†-æŸ¥çœ‹','1','2019-09-06 00:47:53','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/form','GET','id=62',''),('cd35b46e3b0c44bcafa1392b183131c0','1','ç³»ç»Ÿç™»å½•','1','2019-09-06 00:52:23','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a','GET','login=',''),('cd9bae4bb4504534a63bd787f526729a','1','åœ¨çº¿åŠå…¬-é€šçŸ¥é€šå‘Š-æˆ‘çš„é€šå‘Š','1','2017-11-14 15:18:39','220.160.68.3','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36','/jeesite/a/oa/oaNotify/self','GET','',''),('cee2629463384fa08e9cf17da8160ff2','1','åœ¨çº¿åŠå…¬-æµç¨‹ç®¡ç†-æµç¨‹ç®¡ç†','1','2017-11-14 15:14:23','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/act/process','GET','',''),('d0d7ad6daff74e2382f911ccca37f409','1','å®ä¾‹ç¤ºä¾‹-å®ä¾‹ç¤ºä¾‹','1','2019-09-06 00:52:26','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/list','GET','',''),('d1beed71093c49f38e9dfce72cdb0e74','1','ç³»ç»Ÿç™»å½•','1','2017-11-14 15:18:35','220.160.68.3','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36','/jeesite/a','GET','login=',''),('d46442b54c224af989fa83742415aafa','1','ä»£ç ç”Ÿæˆ-ä»£ç ç”Ÿæˆ-ä¸šåŠ¡è¡¨é…ç½®','1','2017-11-14 15:14:35','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/gen/genTable','GET','',''),('d7ba8debfc4e4178bc7f3a18ece2a206','1','å†…å®¹ç®¡ç†-å†…å®¹ç®¡ç†-å†…å®¹å‘å¸ƒ-æ–‡ç« æ¨¡å‹','1','2017-11-14 15:14:35','119.97.201.18','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36','/jeesite/a/cms/article/','GET','category.id=5',''),('d9357b8ea4cf4b7b8e8991ec49d7b7fa','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†','1','2019-09-06 00:50:59','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/','GET','',''),('d9cd43a891574c7cab3fb38f31277dfa','1','åœ¨çº¿åŠå…¬-ä¸ªäººåŠå…¬-æˆ‘çš„ä»»åŠ¡','1','2017-11-14 15:15:00','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/act/task/todo/','GET','tabPageId=jerichotabiframe_7',''),('da6b7a420dca438c9f7c2f7738c0eff5','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†-ä¿®æ”¹','1','2019-09-06 00:53:12','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/save','POST','id=&parent.id=a91e496aa0ab42239c11617d7095034a&parent.name=å®ä¾‹ç¤ºä¾‹&name=å‚è€ƒç¤ºä¾‹&href=demo/demoData/page&target=&icon=&sort=60&isShow=1&permission=&remarks=',''),('dad187ed1b04404bac819ea025b17a57','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†','1','2019-09-06 00:47:48','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/','GET','',''),('db6bffc11e594073b8af2de073898e3c','1','ç³»ç»Ÿç™»å½•','1','2017-11-14 15:16:25','182.110.0.154','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36 LBBROWSER','/jeesite/a','GET','login=',''),('db907d8efb3441cf8f7dc96837663b1f','1','ä»£ç ç”Ÿæˆ-ç”Ÿæˆç¤ºä¾‹-å•è¡¨-æŸ¥çœ‹','1','2017-11-14 15:17:02','182.110.0.154','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36 LBBROWSER','/jeesite/a/test/testData/form','GET','',''),('ddf0a7df5ae04260aefe7739a13e6f22','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-è§’è‰²ç®¡ç†-ä¿®æ”¹','1','2019-09-06 00:51:57','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/role/assign','GET','id=1',''),('dea3922c12c44aaca437d87630563668','1','å†…å®¹ç®¡ç†-å†…å®¹ç®¡ç†-å†…å®¹å‘å¸ƒ-æ–‡ç« æ¨¡å‹-æŸ¥çœ‹','1','2017-11-14 15:15:31','119.97.201.18','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36','/jeesite/a/cms/article/findByIds','GET','ids=1,2,3',''),('df846f7497a04e798abebd830c4a1078','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†','1','2019-09-06 00:49:58','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/','GET','',''),('dfc114e583934b54bb2220c1436a5fd4','1','å†…å®¹ç®¡ç†-å†…å®¹ç®¡ç†-å†…å®¹å‘å¸ƒ-æ–‡ç« æ¨¡å‹-æŸ¥çœ‹','1','2017-11-14 15:15:55','119.97.201.18','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36','/jeesite/a/cms/article/findByIds','GET','ids=1,2,3',''),('e0b4d86ecba641f4a5b70d9189db8a12','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†','1','2019-09-06 00:52:47','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/','GET','',''),('e3326eda10e44b769bb13ed154d88327','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†-æŸ¥çœ‹','1','2019-09-06 00:47:35','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/form','GET','id=27',''),('e3fcffa4e32249e99bd812a2eecc7236','1','ç³»ç»Ÿè®¾ç½®-æœºæ„ç”¨æˆ·-ç”¨æˆ·ç®¡ç†','1','2017-11-14 15:14:20','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/sys/user/index','GET','',''),('e4e46c6b17904bcdac1826533c670085','1','å†…å®¹ç®¡ç†-å†…å®¹ç®¡ç†-å†…å®¹å‘å¸ƒ-æ–‡ç« æ¨¡å‹','1','2017-11-14 15:14:46','119.97.201.18','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36','/jeesite/a/cms/article/','GET','category.id=4',''),('e4f30a328d71405cbb09b7a6cc9750e2','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†-æŸ¥çœ‹','1','2019-09-06 00:49:47','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/form','GET','id=79',''),('e778c415528544119c236f6aa2805e03','1','å®ä¾‹ç¤ºä¾‹-å®ä¾‹ç¤ºä¾‹','1','2019-09-06 00:56:26','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/list','GET','',''),('e9f48def1b9c4a60ba7806e5507594a8','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†','1','2019-09-06 00:54:07','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/','GET','',''),('eab80460864a4f7f98a141f15718e2c5','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†-æŸ¥çœ‹','1','2019-09-06 00:52:53','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/form','GET','parent.id=a91e496aa0ab42239c11617d7095034a',''),('ebb17910af684d0e93a65660c47c3ee5','1','å†…å®¹ç®¡ç†-å†…å®¹ç®¡ç†-å†…å®¹å‘å¸ƒ','1','2017-11-14 15:14:18','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/cms/','GET','',''),('ece4daceec4749539e8a1078f74ba1b9','1','ä»£ç ç”Ÿæˆ-ç”Ÿæˆç¤ºä¾‹-å•è¡¨','1','2017-11-14 15:16:56','182.110.0.154','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36 LBBROWSER','/jeesite/a/test/testData','GET','',''),('ed10a7f3f4f444539e18188bf8a2cc83','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†-ä¿®æ”¹','1','2019-09-06 00:54:07','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/save','POST','id=3fa3250a18ce4883a67e0de89588232b&parent.id=a91e496aa0ab42239c11617d7095034a&parent.name=å®ä¾‹ç¤ºä¾‹&name=å‚è€ƒç¤ºä¾‹&href=/demo/demoData/page&target=&icon=&sort=60&isShow=1&permission=&remarks=',''),('efe2ef92722b46629b5badb434e15c24','1','å†…å®¹ç®¡ç†-å†…å®¹ç®¡ç†','1','2017-11-14 15:18:42','220.160.68.3','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36','/jeesite/a/cms/tree','GET','',''),('f68dc9b508c341fb9b9d7aacc26850df','1','åœ¨çº¿åŠå…¬-é€šçŸ¥é€šå‘Š-é€šå‘Šç®¡ç†','1','2017-11-14 15:14:58','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/oa/oaNotify','GET','tabPageId=jerichotabiframe_5',''),('f9b58eb4749c4262b952215cb54cded3','1','å®ä¾‹ç¤ºä¾‹-å‚è€ƒç¤ºä¾‹','1','2019-09-06 00:54:56','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('fa7e6045f2d34ab1b298b48855d9a793','1','å†…å®¹ç®¡ç†-å†…å®¹ç®¡ç†-å†…å®¹å‘å¸ƒ-æ–‡ç« æ¨¡å‹','1','2017-11-14 15:15:11','119.97.201.18','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36','/jeesite/a/cms/article/','GET','category.id=4',''),('fabb1a1e71e5492e9a8340bd9733c8c3','1','å®ä¾‹ç¤ºä¾‹-å®ä¾‹ç¤ºä¾‹','1','2019-09-06 00:52:20','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/list','GET','',''),('fb7818377679461c9b19195c1517d7a3','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-è§’è‰²ç®¡ç†-æŸ¥çœ‹','1','2019-09-06 00:53:39','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/role/form','GET','id=1',''),('fc1a8b723deb44bb87a479ab3d2d4268','1','ç³»ç»Ÿè®¾ç½®-æœºæ„ç”¨æˆ·-ç”¨æˆ·ç®¡ç†','1','2017-11-14 15:18:42','220.160.68.3','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36','/jeesite/a/sys/user/index','GET','',''),('fda9efdf591541b8a7fef1d9097907e6','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†-ä¿®æ”¹','1','2019-09-06 00:47:07','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/save','POST','id=27&parent.id=1&parent.name=åŠŸèƒ½èœå•&name=æˆ‘çš„é¢æ¿&href=&target=&icon=flag&sort=100&isShow=1&permission=&remarks=','');
/*!40000 ALTER TABLE `sys_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_mdict`
--

DROP TABLE IF EXISTS `sys_mdict`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_mdict` (
  `id` varchar(64) NOT NULL COMMENT 'ç¼–å·',
  `parent_id` varchar(64) NOT NULL COMMENT 'çˆ¶çº§ç¼–å·',
  `parent_ids` varchar(2000) NOT NULL COMMENT 'æ‰€æœ‰çˆ¶çº§ç¼–å·',
  `name` varchar(100) NOT NULL COMMENT 'åç§°',
  `sort` decimal(10,0) NOT NULL COMMENT 'æ’åº',
  `description` varchar(100) DEFAULT NULL COMMENT 'æè¿°',
  `create_by` varchar(64) NOT NULL COMMENT 'åˆ›å»ºè€…',
  `create_date` datetime NOT NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  `update_by` varchar(64) NOT NULL COMMENT 'æ›´æ–°è€…',
  `update_date` datetime NOT NULL COMMENT 'æ›´æ–°æ—¶é—´',
  `remarks` varchar(255) DEFAULT NULL COMMENT 'å¤‡æ³¨ä¿¡æ¯',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT 'åˆ é™¤æ ‡è®°',
  PRIMARY KEY (`id`),
  KEY `sys_mdict_parent_id` (`parent_id`),
  KEY `sys_mdict_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='å¤šçº§å­—å…¸è¡¨';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_mdict`
--

LOCK TABLES `sys_mdict` WRITE;
/*!40000 ALTER TABLE `sys_mdict` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_mdict` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_menu`
--

DROP TABLE IF EXISTS `sys_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_menu` (
  `id` varchar(64) NOT NULL COMMENT 'ç¼–å·',
  `parent_id` varchar(64) NOT NULL COMMENT 'çˆ¶çº§ç¼–å·',
  `parent_ids` varchar(2000) NOT NULL COMMENT 'æ‰€æœ‰çˆ¶çº§ç¼–å·',
  `name` varchar(100) NOT NULL COMMENT 'åç§°',
  `sort` decimal(10,0) NOT NULL COMMENT 'æ’åº',
  `href` varchar(2000) DEFAULT NULL COMMENT 'é“¾æ¥',
  `target` varchar(20) DEFAULT NULL COMMENT 'ç›®æ ‡',
  `icon` varchar(100) DEFAULT NULL COMMENT 'å›¾æ ‡',
  `is_show` char(1) NOT NULL COMMENT 'æ˜¯å¦åœ¨èœå•ä¸­æ˜¾ç¤º',
  `permission` varchar(200) DEFAULT NULL COMMENT 'æƒé™æ ‡è¯†',
  `create_by` varchar(64) NOT NULL COMMENT 'åˆ›å»ºè€…',
  `create_date` datetime NOT NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  `update_by` varchar(64) NOT NULL COMMENT 'æ›´æ–°è€…',
  `update_date` datetime NOT NULL COMMENT 'æ›´æ–°æ—¶é—´',
  `remarks` varchar(255) DEFAULT NULL COMMENT 'å¤‡æ³¨ä¿¡æ¯',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT 'åˆ é™¤æ ‡è®°',
  PRIMARY KEY (`id`),
  KEY `sys_menu_parent_id` (`parent_id`),
  KEY `sys_menu_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='èœå•è¡¨';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_menu`
--

LOCK TABLES `sys_menu` WRITE;
/*!40000 ALTER TABLE `sys_menu` DISABLE KEYS */;
INSERT INTO `sys_menu` VALUES ('0b2ebd4d639e4c2b83c2dd0764522f24','ba8092291b40482db8fe7fc006ea3d76','0,1,79,3c92c17886944d0687e73e286cada573,ba8092291b40482db8fe7fc006ea3d76,','ç¼–è¾‘',60,'','','','0','test:testData:edit','1','2013-08-12 13:10:05','1','2013-08-12 13:10:05','','0'),('0ca004d6b1bf4bcab9670a5060d82a55','3c92c17886944d0687e73e286cada573','0,1,79,3c92c17886944d0687e73e286cada573,','æ ‘ç»“æ„',90,'/test/testTree','','','1','','1','2013-08-12 13:10:05','1','2013-08-12 13:10:05','','0'),('1','0','0,','åŠŸèƒ½èœå•',0,NULL,NULL,NULL,'1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('10','3','0,1,2,3,','å­—å…¸ç®¡ç†',60,'/sys/dict/',NULL,'th-list','1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('11','10','0,1,2,3,10,','æŸ¥çœ‹',30,NULL,NULL,NULL,'0','sys:dict:view','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('12','10','0,1,2,3,10,','ä¿®æ”¹',40,NULL,NULL,NULL,'0','sys:dict:edit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('13','2','0,1,2,','æœºæ„ç”¨æˆ·',970,NULL,NULL,NULL,'1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('14','13','0,1,2,13,','åŒºåŸŸç®¡ç†',50,'/sys/area/',NULL,'th','1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('15','14','0,1,2,13,14,','æŸ¥çœ‹',30,NULL,NULL,NULL,'0','sys:area:view','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('16','14','0,1,2,13,14,','ä¿®æ”¹',40,NULL,NULL,NULL,'0','sys:area:edit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('17','13','0,1,2,13,','æœºæ„ç®¡ç†',40,'/sys/office/',NULL,'th-large','1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('18','17','0,1,2,13,17,','æŸ¥çœ‹',30,NULL,NULL,NULL,'0','sys:office:view','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('19','17','0,1,2,13,17,','ä¿®æ”¹',40,NULL,NULL,NULL,'0','sys:office:edit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('2','1','0,1,','ç³»ç»Ÿè®¾ç½®',900,'','','th-large','1','','1','2013-05-27 08:00:00','1','2019-09-06 00:49:21','','0'),('20','13','0,1,2,13,','ç”¨æˆ·ç®¡ç†',30,'/sys/user/index',NULL,'user','1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('21','20','0,1,2,13,20,','æŸ¥çœ‹',30,NULL,NULL,NULL,'0','sys:user:view','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('22','20','0,1,2,13,20,','ä¿®æ”¹',40,NULL,NULL,NULL,'0','sys:user:edit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('23','2','0,1,2,','å…³äºå¸®åŠ©',990,NULL,NULL,NULL,'0',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('24','23','0,1,2,23','å®˜æ–¹é¦–é¡µ',30,'http://jeesite.com','_blank',NULL,'0',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('25','23','0,1,2,23','é¡¹ç›®æ”¯æŒ',50,'http://jeesite.com/donation.html','_blank',NULL,'0',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('26','23','0,1,2,23','è®ºå›äº¤æµ',80,'http://bbs.jeesite.com','_blank',NULL,'0',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('27','1','0,1,','æˆ‘çš„é¢æ¿',100,'','','user','1','','1','2013-05-27 08:00:00','1','2019-09-06 00:49:39','','0'),('28','27','0,1,27,','ä¸ªäººä¿¡æ¯',30,NULL,NULL,NULL,'1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('29','28','0,1,27,28,','ä¸ªäººä¿¡æ¯',30,'/sys/user/info',NULL,'user','1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('3','2','0,1,2,','ç³»ç»Ÿè®¾ç½®',980,NULL,NULL,NULL,'1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('30','28','0,1,27,28,','ä¿®æ”¹å¯†ç ',40,'/sys/user/modifyPwd',NULL,'lock','1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('31','1','0,1,','å†…å®¹ç®¡ç†',500,NULL,NULL,NULL,'1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('32','31','0,1,31,','æ ç›®è®¾ç½®',990,NULL,NULL,NULL,'1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('33','32','0,1,31,32','æ ç›®ç®¡ç†',30,'/cms/category/',NULL,'align-justify','1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('34','33','0,1,31,32,33,','æŸ¥çœ‹',30,NULL,NULL,NULL,'0','cms:category:view','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('35','33','0,1,31,32,33,','ä¿®æ”¹',40,NULL,NULL,NULL,'0','cms:category:edit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('36','32','0,1,31,32','ç«™ç‚¹è®¾ç½®',40,'/cms/site/',NULL,'certificate','1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('37','36','0,1,31,32,36,','æŸ¥çœ‹',30,NULL,NULL,NULL,'0','cms:site:view','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('38','36','0,1,31,32,36,','ä¿®æ”¹',40,NULL,NULL,NULL,'0','cms:site:edit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('39','32','0,1,31,32','åˆ‡æ¢ç«™ç‚¹',50,'/cms/site/select',NULL,'retweet','1','cms:site:select','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('3c92c17886944d0687e73e286cada573','79','0,1,79,','ç”Ÿæˆç¤ºä¾‹',120,'','','','1','','1','2013-08-12 13:10:05','1','2013-08-12 13:10:05','','0'),('3fa3250a18ce4883a67e0de89588232b','a91e496aa0ab42239c11617d7095034a','0,1,a91e496aa0ab42239c11617d7095034a,','å‚è€ƒç¤ºä¾‹',60,'/demo/demoData/page','','','1','','1','2019-09-06 00:53:12','1','2019-09-06 00:54:07','','0'),('4','3','0,1,2,3,','èœå•ç®¡ç†',30,'/sys/menu/',NULL,'list-alt','1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('40','31','0,1,31,','å†…å®¹ç®¡ç†',500,NULL,NULL,NULL,'1','cms:view','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('41','40','0,1,31,40,','å†…å®¹å‘å¸ƒ',30,'/cms/',NULL,'briefcase','1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('42','41','0,1,31,40,41,','æ–‡ç« æ¨¡å‹',40,'/cms/article/',NULL,'file','0',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('43','42','0,1,31,40,41,42,','æŸ¥çœ‹',30,NULL,NULL,NULL,'0','cms:article:view','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('44','42','0,1,31,40,41,42,','ä¿®æ”¹',40,NULL,NULL,NULL,'0','cms:article:edit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('45','42','0,1,31,40,41,42,','å®¡æ ¸',50,NULL,NULL,NULL,'0','cms:article:audit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('46','41','0,1,31,40,41,','é“¾æ¥æ¨¡å‹',60,'/cms/link/',NULL,'random','0',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('47','46','0,1,31,40,41,46,','æŸ¥çœ‹',30,NULL,NULL,NULL,'0','cms:link:view','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('48','46','0,1,31,40,41,46,','ä¿®æ”¹',40,NULL,NULL,NULL,'0','cms:link:edit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('4855cf3b25c244fb8500a380db189d97','b1f6d1b86ba24365bae7fd86c5082317','0,1,79,3c92c17886944d0687e73e286cada573,b1f6d1b86ba24365bae7fd86c5082317,','æŸ¥çœ‹',30,'','','','0','test:testDataMain:view','1','2013-08-12 13:10:05','1','2013-08-12 13:10:05','','0'),('49','46','0,1,31,40,41,46,','å®¡æ ¸',50,NULL,NULL,NULL,'0','cms:link:audit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('5','4','0,1,2,3,4,','æŸ¥çœ‹',30,NULL,NULL,NULL,'0','sys:menu:view','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('50','40','0,1,31,40,','è¯„è®ºç®¡ç†',40,'/cms/comment/?status=2',NULL,'comment','1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('51','50','0,1,31,40,50,','æŸ¥çœ‹',30,NULL,NULL,NULL,'0','cms:comment:view','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('52','50','0,1,31,40,50,','å®¡æ ¸',40,NULL,NULL,NULL,'0','cms:comment:edit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('53','40','0,1,31,40,','å…¬å…±ç•™è¨€',80,'/cms/guestbook/?status=2',NULL,'glass','1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('54','53','0,1,31,40,53,','æŸ¥çœ‹',30,NULL,NULL,NULL,'0','cms:guestbook:view','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('55','53','0,1,31,40,53,','å®¡æ ¸',40,NULL,NULL,NULL,'0','cms:guestbook:edit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('56','71','0,1,27,71,','æ–‡ä»¶ç®¡ç†',90,'/../static/ckfinder/ckfinder.html',NULL,'folder-open','1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('57','56','0,1,27,40,56,','æŸ¥çœ‹',30,NULL,NULL,NULL,'0','cms:ckfinder:view','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('58','56','0,1,27,40,56,','ä¸Šä¼ ',40,NULL,NULL,NULL,'0','cms:ckfinder:upload','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('59','56','0,1,27,40,56,','ä¿®æ”¹',50,NULL,NULL,NULL,'0','cms:ckfinder:edit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('6','4','0,1,2,3,4,','ä¿®æ”¹',40,NULL,NULL,NULL,'0','sys:menu:edit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('60','31','0,1,31,','ç»Ÿè®¡åˆ†æ',600,NULL,NULL,NULL,'1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('61','60','0,1,31,60,','ä¿¡æ¯é‡ç»Ÿè®¡',30,'/cms/stats/article',NULL,'tasks','1','cms:stats:article','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('62','1','0,1,','åœ¨çº¿åŠå…¬',200,'','','dashboard','1','','1','2013-05-27 08:00:00','1','2019-09-06 00:48:02','','0'),('63','62','0,1,62,','ä¸ªäººåŠå…¬',30,NULL,NULL,NULL,'1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('64','63','0,1,62,63,','è¯·å‡åŠç†',300,'/oa/leave',NULL,'leaf','0',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('65','64','0,1,62,63,64,','æŸ¥çœ‹',30,NULL,NULL,NULL,'0','oa:leave:view','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('65d779ccec984ff0b31df79b87ed9d56','a91e496aa0ab42239c11617d7095034a','0,1,a91e496aa0ab42239c11617d7095034a,','å®ä¾‹ç¤ºä¾‹',30,'/demo/demoData/list','','','1','demo:demoData:view,demo:demoData:edit','1','2019-09-06 00:50:59','1','2019-09-06 00:51:44','','0'),('66','64','0,1,62,63,64,','ä¿®æ”¹',40,NULL,NULL,NULL,'0','oa:leave:edit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('67','2','0,1,2,','æ—¥å¿—æŸ¥è¯¢',985,NULL,NULL,NULL,'1',NULL,'1','2013-06-03 08:00:00','1','2013-06-03 08:00:00',NULL,'0'),('68','67','0,1,2,67,','æ—¥å¿—æŸ¥è¯¢',30,'/sys/log',NULL,'pencil','1','sys:log:view','1','2013-06-03 08:00:00','1','2013-06-03 08:00:00',NULL,'0'),('69','62','0,1,62,','æµç¨‹ç®¡ç†',300,NULL,NULL,NULL,'1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('7','3','0,1,2,3,','è§’è‰²ç®¡ç†',50,'/sys/role/',NULL,'lock','1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('70','69','0,1,62,69,','æµç¨‹ç®¡ç†',50,'/act/process',NULL,'road','1','act:process:edit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('71','27','0,1,27,','æ–‡ä»¶ç®¡ç†',90,NULL,NULL,NULL,'1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('72','69','0,1,62,69,','æ¨¡å‹ç®¡ç†',100,'/act/model',NULL,'road','1','act:model:edit','1','2013-09-20 08:00:00','1','2013-09-20 08:00:00',NULL,'0'),('73','63','0,1,62,63,','æˆ‘çš„ä»»åŠ¡',50,'/act/task/todo/',NULL,'tasks','1',NULL,'1','2013-09-24 08:00:00','1','2013-09-24 08:00:00',NULL,'0'),('74','63','0,1,62,63,','å®¡æ‰¹æµ‹è¯•',100,'/oa/testAudit',NULL,NULL,'1','oa:testAudit:view,oa:testAudit:edit','1','2013-09-24 08:00:00','1','2013-09-24 08:00:00',NULL,'0'),('75','1','0,1,','åœ¨çº¿æ¼”ç¤º',3000,NULL,NULL,NULL,'1',NULL,'1','2013-10-08 08:00:00','1','2013-10-08 08:00:00',NULL,'1'),('79','1','0,1,','ä»£ç ç”Ÿæˆ',5000,'','','desktop','1','','1','2013-10-16 08:00:00','1','2019-09-06 00:49:58','','0'),('8','7','0,1,2,3,7,','æŸ¥çœ‹',30,NULL,NULL,NULL,'0','sys:role:view','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('80','79','0,1,79,','ä»£ç ç”Ÿæˆ',50,NULL,NULL,NULL,'1',NULL,'1','2013-10-16 08:00:00','1','2013-10-16 08:00:00',NULL,'0'),('81','80','0,1,79,80,','ç”Ÿæˆæ–¹æ¡ˆé…ç½®',30,'/gen/genScheme',NULL,NULL,'1','gen:genScheme:view,gen:genScheme:edit','1','2013-10-16 08:00:00','1','2013-10-16 08:00:00',NULL,'0'),('82','80','0,1,79,80,','ä¸šåŠ¡è¡¨é…ç½®',20,'/gen/genTable',NULL,NULL,'1','gen:genTable:view,gen:genTable:edit,gen:genTableColumn:view,gen:genTableColumn:edit','1','2013-10-16 08:00:00','1','2013-10-16 08:00:00',NULL,'0'),('83','80','0,1,79,80,','ä»£ç æ¨¡æ¿ç®¡ç†',90,'/gen/genTemplate',NULL,NULL,'1','gen:genTemplate:view,gen:genTemplate:edit','1','2013-10-16 08:00:00','1','2013-10-16 08:00:00',NULL,'1'),('84','67','0,1,2,67,','è¿æ¥æ± ç›‘è§†',40,'/../druid',NULL,NULL,'1',NULL,'1','2013-10-18 08:00:00','1','2013-10-18 08:00:00',NULL,'0'),('85','76','0,1,75,76,','è¡Œæ”¿åŒºåŸŸ',80,'/../static/map/map-city.html',NULL,NULL,'1',NULL,'1','2013-10-22 08:00:00','1','2013-10-22 08:00:00',NULL,'0'),('86','75','0,1,75,','ç»„ä»¶æ¼”ç¤º',50,NULL,NULL,NULL,'1',NULL,'1','2013-10-22 08:00:00','1','2013-10-22 08:00:00',NULL,'1'),('87','86','0,1,75,86,','ç»„ä»¶æ¼”ç¤º',30,'/test/test/form',NULL,NULL,'1','test:test:view,test:test:edit','1','2013-10-22 08:00:00','1','2013-10-22 08:00:00',NULL,'1'),('88','62','0,1,62,','é€šçŸ¥é€šå‘Š',20,'','','','1','','1','2013-11-08 08:00:00','1','2013-11-08 08:00:00',NULL,'0'),('89','88','0,1,62,88,','æˆ‘çš„é€šå‘Š',30,'/oa/oaNotify/self','','','1','','1','2013-11-08 08:00:00','1','2013-11-08 08:00:00',NULL,'0'),('9','7','0,1,2,3,7,','ä¿®æ”¹',40,NULL,NULL,NULL,'0','sys:role:edit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('90','88','0,1,62,88,','é€šå‘Šç®¡ç†',50,'/oa/oaNotify','','','1','oa:oaNotify:view,oa:oaNotify:edit','1','2013-11-08 08:00:00','1','2013-11-08 08:00:00',NULL,'0'),('a91e496aa0ab42239c11617d7095034a','1','0,1,','å®ä¾‹ç¤ºä¾‹',5030,'','','indent-right','1','','1','2019-09-06 00:46:18','1','2019-09-06 00:46:18','','0'),('afab2db430e2457f9cf3a11feaa8b869','0ca004d6b1bf4bcab9670a5060d82a55','0,1,79,3c92c17886944d0687e73e286cada573,0ca004d6b1bf4bcab9670a5060d82a55,','ç¼–è¾‘',60,'','','','0','test:testTree:edit','1','2013-08-12 13:10:05','1','2013-08-12 13:10:05','','0'),('b1f6d1b86ba24365bae7fd86c5082317','3c92c17886944d0687e73e286cada573','0,1,79,3c92c17886944d0687e73e286cada573,','ä¸»å­è¡¨',60,'/test/testDataMain','','','1','','1','2013-08-12 13:10:05','1','2013-08-12 13:10:05','','0'),('ba8092291b40482db8fe7fc006ea3d76','3c92c17886944d0687e73e286cada573','0,1,79,3c92c17886944d0687e73e286cada573,','å•è¡¨',30,'/test/testData','','','1','','1','2013-08-12 13:10:05','1','2013-08-12 13:10:05','','0'),('c2e4d9082a0b4386884a0b203afe2c5c','0ca004d6b1bf4bcab9670a5060d82a55','0,1,79,3c92c17886944d0687e73e286cada573,0ca004d6b1bf4bcab9670a5060d82a55,','æŸ¥çœ‹',30,'','','','0','test:testTree:view','1','2013-08-12 13:10:05','1','2013-08-12 13:10:05','','0'),('d15ec45a4c5449c3bbd7a61d5f9dd1d2','b1f6d1b86ba24365bae7fd86c5082317','0,1,79,3c92c17886944d0687e73e286cada573,b1f6d1b86ba24365bae7fd86c5082317,','ç¼–è¾‘',60,'','','','0','test:testDataMain:edit','1','2013-08-12 13:10:05','1','2013-08-12 13:10:05','','0'),('df7ce823c5b24ff9bada43d992f373e2','ba8092291b40482db8fe7fc006ea3d76','0,1,79,3c92c17886944d0687e73e286cada573,ba8092291b40482db8fe7fc006ea3d76,','æŸ¥çœ‹',30,'','','','0','test:testData:view','1','2013-08-12 13:10:05','1','2013-08-12 13:10:05','','0');
/*!40000 ALTER TABLE `sys_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_office`
--

DROP TABLE IF EXISTS `sys_office`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_office` (
  `id` varchar(64) NOT NULL COMMENT 'ç¼–å·',
  `parent_id` varchar(64) NOT NULL COMMENT 'çˆ¶çº§ç¼–å·',
  `parent_ids` varchar(2000) NOT NULL COMMENT 'æ‰€æœ‰çˆ¶çº§ç¼–å·',
  `name` varchar(100) NOT NULL COMMENT 'åç§°',
  `sort` decimal(10,0) NOT NULL COMMENT 'æ’åº',
  `area_id` varchar(64) NOT NULL COMMENT 'å½’å±åŒºåŸŸ',
  `code` varchar(100) DEFAULT NULL COMMENT 'åŒºåŸŸç¼–ç ',
  `type` char(1) NOT NULL COMMENT 'æœºæ„ç±»å‹',
  `grade` char(1) NOT NULL COMMENT 'æœºæ„ç­‰çº§',
  `address` varchar(255) DEFAULT NULL COMMENT 'è”ç³»åœ°å€',
  `zip_code` varchar(100) DEFAULT NULL COMMENT 'é‚®æ”¿ç¼–ç ',
  `master` varchar(100) DEFAULT NULL COMMENT 'è´Ÿè´£äºº',
  `phone` varchar(200) DEFAULT NULL COMMENT 'ç”µè¯',
  `fax` varchar(200) DEFAULT NULL COMMENT 'ä¼ çœŸ',
  `email` varchar(200) DEFAULT NULL COMMENT 'é‚®ç®±',
  `USEABLE` varchar(64) DEFAULT NULL COMMENT 'æ˜¯å¦å¯ç”¨',
  `PRIMARY_PERSON` varchar(64) DEFAULT NULL COMMENT 'ä¸»è´Ÿè´£äºº',
  `DEPUTY_PERSON` varchar(64) DEFAULT NULL COMMENT 'å‰¯è´Ÿè´£äºº',
  `create_by` varchar(64) NOT NULL COMMENT 'åˆ›å»ºè€…',
  `create_date` datetime NOT NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  `update_by` varchar(64) NOT NULL COMMENT 'æ›´æ–°è€…',
  `update_date` datetime NOT NULL COMMENT 'æ›´æ–°æ—¶é—´',
  `remarks` varchar(255) DEFAULT NULL COMMENT 'å¤‡æ³¨ä¿¡æ¯',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT 'åˆ é™¤æ ‡è®°',
  PRIMARY KEY (`id`),
  KEY `sys_office_parent_id` (`parent_id`),
  KEY `sys_office_del_flag` (`del_flag`),
  KEY `sys_office_type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='æœºæ„è¡¨';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_office`
--

LOCK TABLES `sys_office` WRITE;
/*!40000 ALTER TABLE `sys_office` DISABLE KEYS */;
INSERT INTO `sys_office` VALUES ('1','0','0,','å±±ä¸œçœæ€»å…¬å¸',10,'2','100000','1','1',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('10','7','0,1,7,','å¸‚åœºéƒ¨',30,'3','200003','2','2',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('11','7','0,1,7,','æŠ€æœ¯éƒ¨',40,'3','200004','2','2',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('12','7','0,1,7,','å†åŸåŒºåˆ†å…¬å¸',0,'4','201000','1','3',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('13','12','0,1,7,12,','å…¬å¸é¢†å¯¼',10,'4','201001','2','3',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('14','12','0,1,7,12,','ç»¼åˆéƒ¨',20,'4','201002','2','3',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('15','12','0,1,7,12,','å¸‚åœºéƒ¨',30,'4','201003','2','3',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('16','12','0,1,7,12,','æŠ€æœ¯éƒ¨',40,'4','201004','2','3',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('17','7','0,1,7,','å†ä¸‹åŒºåˆ†å…¬å¸',40,'5','201010','1','3',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('18','17','0,1,7,17,','å…¬å¸é¢†å¯¼',10,'5','201011','2','3',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('19','17','0,1,7,17,','ç»¼åˆéƒ¨',20,'5','201012','2','3',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('2','1','0,1,','å…¬å¸é¢†å¯¼',10,'2','100001','2','1',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('20','17','0,1,7,17,','å¸‚åœºéƒ¨',30,'5','201013','2','3',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('21','17','0,1,7,17,','æŠ€æœ¯éƒ¨',40,'5','201014','2','3',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('22','7','0,1,7,','é«˜æ–°åŒºåˆ†å…¬å¸',50,'6','201010','1','3',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('23','22','0,1,7,22,','å…¬å¸é¢†å¯¼',10,'6','201011','2','3',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('24','22','0,1,7,22,','ç»¼åˆéƒ¨',20,'6','201012','2','3',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('25','22','0,1,7,22,','å¸‚åœºéƒ¨',30,'6','201013','2','3',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('26','22','0,1,7,22,','æŠ€æœ¯éƒ¨',40,'6','201014','2','3',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('3','1','0,1,','ç»¼åˆéƒ¨',20,'2','100002','2','1',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('4','1','0,1,','å¸‚åœºéƒ¨',30,'2','100003','2','1',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('5','1','0,1,','æŠ€æœ¯éƒ¨',40,'2','100004','2','1',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('6','1','0,1,','ç ”å‘éƒ¨',50,'2','100005','2','1',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('7','1','0,1,','æµå—å¸‚åˆ†å…¬å¸',20,'3','200000','1','2',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('8','7','0,1,7,','å…¬å¸é¢†å¯¼',10,'3','200001','2','2',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('9','7','0,1,7,','ç»¼åˆéƒ¨',20,'3','200002','2','2',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0');
/*!40000 ALTER TABLE `sys_office` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role`
--

DROP TABLE IF EXISTS `sys_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_role` (
  `id` varchar(64) NOT NULL COMMENT 'ç¼–å·',
  `office_id` varchar(64) DEFAULT NULL COMMENT 'å½’å±æœºæ„',
  `name` varchar(100) NOT NULL COMMENT 'è§’è‰²åç§°',
  `enname` varchar(255) DEFAULT NULL COMMENT 'è‹±æ–‡åç§°',
  `role_type` varchar(255) DEFAULT NULL COMMENT 'è§’è‰²ç±»å‹',
  `data_scope` char(1) DEFAULT NULL COMMENT 'æ•°æ®èŒƒå›´',
  `is_sys` varchar(64) DEFAULT NULL COMMENT 'æ˜¯å¦ç³»ç»Ÿæ•°æ®',
  `useable` varchar(64) DEFAULT NULL COMMENT 'æ˜¯å¦å¯ç”¨',
  `create_by` varchar(64) NOT NULL COMMENT 'åˆ›å»ºè€…',
  `create_date` datetime NOT NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  `update_by` varchar(64) NOT NULL COMMENT 'æ›´æ–°è€…',
  `update_date` datetime NOT NULL COMMENT 'æ›´æ–°æ—¶é—´',
  `remarks` varchar(255) DEFAULT NULL COMMENT 'å¤‡æ³¨ä¿¡æ¯',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT 'åˆ é™¤æ ‡è®°',
  PRIMARY KEY (`id`),
  KEY `sys_role_del_flag` (`del_flag`),
  KEY `sys_role_enname` (`enname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='è§’è‰²è¡¨';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role`
--

LOCK TABLES `sys_role` WRITE;
/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;
INSERT INTO `sys_role` VALUES ('1','1','ç³»ç»Ÿç®¡ç†å‘˜','dept','assignment','1','1','1','1','2013-05-27 08:00:00','1','2019-09-06 00:53:42','','0'),('2','1','å…¬å¸ç®¡ç†å‘˜','hr','assignment','2',NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('3','1','æœ¬å…¬å¸ç®¡ç†å‘˜','a','assignment','3',NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('4','1','éƒ¨é—¨ç®¡ç†å‘˜','b','assignment','4',NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('5','1','æœ¬éƒ¨é—¨ç®¡ç†å‘˜','c','assignment','5',NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('6','1','æ™®é€šç”¨æˆ·','d','assignment','8',NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('7','7','æµå—å¸‚ç®¡ç†å‘˜','e','assignment','9',NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0');
/*!40000 ALTER TABLE `sys_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_menu`
--

DROP TABLE IF EXISTS `sys_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_role_menu` (
  `role_id` varchar(64) NOT NULL COMMENT 'è§’è‰²ç¼–å·',
  `menu_id` varchar(64) NOT NULL COMMENT 'èœå•ç¼–å·',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='è§’è‰²-èœå•';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_menu`
--

LOCK TABLES `sys_role_menu` WRITE;
/*!40000 ALTER TABLE `sys_role_menu` DISABLE KEYS */;
INSERT INTO `sys_role_menu` VALUES ('1','0b2ebd4d639e4c2b83c2dd0764522f24'),('1','0ca004d6b1bf4bcab9670a5060d82a55'),('1','1'),('1','10'),('1','11'),('1','12'),('1','13'),('1','14'),('1','15'),('1','16'),('1','17'),('1','18'),('1','19'),('1','2'),('1','20'),('1','21'),('1','22'),('1','27'),('1','28'),('1','29'),('1','3'),('1','30'),('1','3c92c17886944d0687e73e286cada573'),('1','3fa3250a18ce4883a67e0de89588232b'),('1','4'),('1','4855cf3b25c244fb8500a380db189d97'),('1','5'),('1','56'),('1','57'),('1','58'),('1','59'),('1','6'),('1','62'),('1','63'),('1','64'),('1','65'),('1','65d779ccec984ff0b31df79b87ed9d56'),('1','66'),('1','67'),('1','68'),('1','69'),('1','7'),('1','70'),('1','71'),('1','72'),('1','73'),('1','74'),('1','79'),('1','8'),('1','80'),('1','81'),('1','82'),('1','84'),('1','88'),('1','89'),('1','9'),('1','90'),('1','a91e496aa0ab42239c11617d7095034a'),('1','afab2db430e2457f9cf3a11feaa8b869'),('1','b1f6d1b86ba24365bae7fd86c5082317'),('1','ba8092291b40482db8fe7fc006ea3d76'),('1','c2e4d9082a0b4386884a0b203afe2c5c'),('1','d15ec45a4c5449c3bbd7a61d5f9dd1d2'),('1','df7ce823c5b24ff9bada43d992f373e2'),('2','1'),('2','10'),('2','11'),('2','12'),('2','13'),('2','14'),('2','15'),('2','16'),('2','17'),('2','18'),('2','19'),('2','2'),('2','20'),('2','21'),('2','22'),('2','23'),('2','24'),('2','25'),('2','26'),('2','27'),('2','28'),('2','29'),('2','3'),('2','30'),('2','31'),('2','32'),('2','33'),('2','34'),('2','35'),('2','36'),('2','37'),('2','38'),('2','39'),('2','4'),('2','40'),('2','41'),('2','42'),('2','43'),('2','44'),('2','45'),('2','46'),('2','47'),('2','48'),('2','49'),('2','5'),('2','50'),('2','51'),('2','52'),('2','53'),('2','54'),('2','55'),('2','56'),('2','57'),('2','58'),('2','59'),('2','6'),('2','60'),('2','61'),('2','62'),('2','63'),('2','64'),('2','65'),('2','66'),('2','67'),('2','68'),('2','69'),('2','7'),('2','70'),('2','71'),('2','72'),('2','73'),('2','74'),('2','75'),('2','76'),('2','77'),('2','78'),('2','79'),('2','8'),('2','80'),('2','81'),('2','82'),('2','83'),('2','84'),('2','85'),('2','86'),('2','87'),('2','88'),('2','89'),('2','9'),('2','90'),('3','1'),('3','10'),('3','11'),('3','12'),('3','13'),('3','14'),('3','15'),('3','16'),('3','17'),('3','18'),('3','19'),('3','2'),('3','20'),('3','21'),('3','22'),('3','23'),('3','24'),('3','25'),('3','26'),('3','27'),('3','28'),('3','29'),('3','3'),('3','30'),('3','31'),('3','32'),('3','33'),('3','34'),('3','35'),('3','36'),('3','37'),('3','38'),('3','39'),('3','4'),('3','40'),('3','41'),('3','42'),('3','43'),('3','44'),('3','45'),('3','46'),('3','47'),('3','48'),('3','49'),('3','5'),('3','50'),('3','51'),('3','52'),('3','53'),('3','54'),('3','55'),('3','56'),('3','57'),('3','58'),('3','59'),('3','6'),('3','60'),('3','61'),('3','62'),('3','63'),('3','64'),('3','65'),('3','66'),('3','67'),('3','68'),('3','69'),('3','7'),('3','70'),('3','71'),('3','72'),('3','73'),('3','74'),('3','75'),('3','76'),('3','77'),('3','78'),('3','79'),('3','8'),('3','80'),('3','81'),('3','82'),('3','83'),('3','84'),('3','85'),('3','86'),('3','87'),('3','88'),('3','89'),('3','9'),('3','90');
/*!40000 ALTER TABLE `sys_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_office`
--

DROP TABLE IF EXISTS `sys_role_office`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_role_office` (
  `role_id` varchar(64) NOT NULL COMMENT 'è§’è‰²ç¼–å·',
  `office_id` varchar(64) NOT NULL COMMENT 'æœºæ„ç¼–å·',
  PRIMARY KEY (`role_id`,`office_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='è§’è‰²-æœºæ„';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_office`
--

LOCK TABLES `sys_role_office` WRITE;
/*!40000 ALTER TABLE `sys_role_office` DISABLE KEYS */;
INSERT INTO `sys_role_office` VALUES ('7','10'),('7','11'),('7','12'),('7','13'),('7','14'),('7','15'),('7','16'),('7','17'),('7','18'),('7','19'),('7','20'),('7','21'),('7','22'),('7','23'),('7','24'),('7','25'),('7','26'),('7','7'),('7','8'),('7','9');
/*!40000 ALTER TABLE `sys_role_office` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user`
--

DROP TABLE IF EXISTS `sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_user` (
  `id` varchar(64) NOT NULL COMMENT 'ç¼–å·',
  `company_id` varchar(64) NOT NULL COMMENT 'å½’å±å…¬å¸',
  `office_id` varchar(64) NOT NULL COMMENT 'å½’å±éƒ¨é—¨',
  `login_name` varchar(100) NOT NULL COMMENT 'ç™»å½•å',
  `password` varchar(100) NOT NULL COMMENT 'å¯†ç ',
  `no` varchar(100) DEFAULT NULL COMMENT 'å·¥å·',
  `name` varchar(100) NOT NULL COMMENT 'å§“å',
  `email` varchar(200) DEFAULT NULL COMMENT 'é‚®ç®±',
  `phone` varchar(200) DEFAULT NULL COMMENT 'ç”µè¯',
  `mobile` varchar(200) DEFAULT NULL COMMENT 'æ‰‹æœº',
  `user_type` char(1) DEFAULT NULL COMMENT 'ç”¨æˆ·ç±»å‹',
  `photo` varchar(1000) DEFAULT NULL COMMENT 'ç”¨æˆ·å¤´åƒ',
  `login_ip` varchar(100) DEFAULT NULL COMMENT 'æœ€åç™»é™†IP',
  `login_date` datetime DEFAULT NULL COMMENT 'æœ€åç™»é™†æ—¶é—´',
  `login_flag` varchar(64) DEFAULT NULL COMMENT 'æ˜¯å¦å¯ç™»å½•',
  `create_by` varchar(64) NOT NULL COMMENT 'åˆ›å»ºè€…',
  `create_date` datetime NOT NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  `update_by` varchar(64) NOT NULL COMMENT 'æ›´æ–°è€…',
  `update_date` datetime NOT NULL COMMENT 'æ›´æ–°æ—¶é—´',
  `remarks` varchar(255) DEFAULT NULL COMMENT 'å¤‡æ³¨ä¿¡æ¯',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT 'åˆ é™¤æ ‡è®°',
  PRIMARY KEY (`id`),
  KEY `sys_user_office_id` (`office_id`),
  KEY `sys_user_login_name` (`login_name`),
  KEY `sys_user_company_id` (`company_id`),
  KEY `sys_user_update_date` (`update_date`),
  KEY `sys_user_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ç”¨æˆ·è¡¨';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` VALUES ('1','1','2','thinkgem','02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032','0001','ç³»ç»Ÿç®¡ç†å‘˜','thinkgem@163.com','8675','8675',NULL,NULL,'0:0:0:0:0:0:0:1','2019-09-06 00:53:46','1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00','æœ€é«˜ç®¡ç†å‘˜','0'),('10','7','11','jn_jsb','02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032','0010','æµå—æŠ€æœ¯éƒ¨',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('11','12','13','lc_admin','02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032','0011','æµå—å†åŸé¢†å¯¼',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('12','12','18','lx_admin','02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032','0012','æµå—å†ä¸‹é¢†å¯¼',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('13','22','23','gx_admin','02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032','0013','æµå—é«˜æ–°é¢†å¯¼',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('2','1','2','sd_admin','02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032','0002','ç®¡ç†å‘˜',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('3','1','3','sd_zhb','02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032','0003','ç»¼åˆéƒ¨',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('4','1','4','sd_scb','02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032','0004','å¸‚åœºéƒ¨',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('5','1','5','sd_jsb','02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032','0005','æŠ€æœ¯éƒ¨',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('6','1','6','sd_yfb','02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032','0006','ç ”å‘éƒ¨',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('7','7','8','jn_admin','02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032','0007','æµå—é¢†å¯¼',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('8','7','9','jn_zhb','02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032','0008','æµå—ç»¼åˆéƒ¨',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('9','7','10','jn_scb','02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032','0009','æµå—å¸‚åœºéƒ¨',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0');
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_role`
--

DROP TABLE IF EXISTS `sys_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_user_role` (
  `user_id` varchar(64) NOT NULL COMMENT 'ç”¨æˆ·ç¼–å·',
  `role_id` varchar(64) NOT NULL COMMENT 'è§’è‰²ç¼–å·',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ç”¨æˆ·-è§’è‰²';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_role`
--

LOCK TABLES `sys_user_role` WRITE;
/*!40000 ALTER TABLE `sys_user_role` DISABLE KEYS */;
INSERT INTO `sys_user_role` VALUES ('1','1'),('1','2'),('10','2'),('11','3'),('12','4'),('13','5'),('14','6'),('2','1'),('3','2'),('4','3'),('5','4'),('6','5'),('7','2'),('7','7'),('8','2'),('9','1');
/*!40000 ALTER TABLE `sys_user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_data`
--

DROP TABLE IF EXISTS `test_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `test_data` (
  `id` varchar(64) NOT NULL COMMENT 'ç¼–å·',
  `user_id` varchar(64) DEFAULT NULL COMMENT 'å½’å±ç”¨æˆ·',
  `office_id` varchar(64) DEFAULT NULL COMMENT 'å½’å±éƒ¨é—¨',
  `area_id` varchar(64) DEFAULT NULL COMMENT 'å½’å±åŒºåŸŸ',
  `name` varchar(100) DEFAULT NULL COMMENT 'åç§°',
  `sex` char(1) DEFAULT NULL COMMENT 'æ€§åˆ«',
  `in_date` date DEFAULT NULL COMMENT 'åŠ å…¥æ—¥æœŸ',
  `create_by` varchar(64) NOT NULL COMMENT 'åˆ›å»ºè€…',
  `create_date` datetime NOT NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  `update_by` varchar(64) NOT NULL COMMENT 'æ›´æ–°è€…',
  `update_date` datetime NOT NULL COMMENT 'æ›´æ–°æ—¶é—´',
  `remarks` varchar(255) DEFAULT NULL COMMENT 'å¤‡æ³¨ä¿¡æ¯',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT 'åˆ é™¤æ ‡è®°',
  PRIMARY KEY (`id`),
  KEY `test_data_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ä¸šåŠ¡æ•°æ®è¡¨';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_data`
--

LOCK TABLES `test_data` WRITE;
/*!40000 ALTER TABLE `test_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `test_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_data_child`
--

DROP TABLE IF EXISTS `test_data_child`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `test_data_child` (
  `id` varchar(64) NOT NULL COMMENT 'ç¼–å·',
  `test_data_main_id` varchar(64) DEFAULT NULL COMMENT 'ä¸šåŠ¡ä¸»è¡¨ID',
  `name` varchar(100) DEFAULT NULL COMMENT 'åç§°',
  `create_by` varchar(64) NOT NULL COMMENT 'åˆ›å»ºè€…',
  `create_date` datetime NOT NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  `update_by` varchar(64) NOT NULL COMMENT 'æ›´æ–°è€…',
  `update_date` datetime NOT NULL COMMENT 'æ›´æ–°æ—¶é—´',
  `remarks` varchar(255) DEFAULT NULL COMMENT 'å¤‡æ³¨ä¿¡æ¯',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT 'åˆ é™¤æ ‡è®°',
  PRIMARY KEY (`id`),
  KEY `test_data_child_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ä¸šåŠ¡æ•°æ®å­è¡¨';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_data_child`
--

LOCK TABLES `test_data_child` WRITE;
/*!40000 ALTER TABLE `test_data_child` DISABLE KEYS */;
/*!40000 ALTER TABLE `test_data_child` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_data_main`
--

DROP TABLE IF EXISTS `test_data_main`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `test_data_main` (
  `id` varchar(64) NOT NULL COMMENT 'ç¼–å·',
  `user_id` varchar(64) DEFAULT NULL COMMENT 'å½’å±ç”¨æˆ·',
  `office_id` varchar(64) DEFAULT NULL COMMENT 'å½’å±éƒ¨é—¨',
  `area_id` varchar(64) DEFAULT NULL COMMENT 'å½’å±åŒºåŸŸ',
  `name` varchar(100) DEFAULT NULL COMMENT 'åç§°',
  `sex` char(1) DEFAULT NULL COMMENT 'æ€§åˆ«',
  `in_date` date DEFAULT NULL COMMENT 'åŠ å…¥æ—¥æœŸ',
  `create_by` varchar(64) NOT NULL COMMENT 'åˆ›å»ºè€…',
  `create_date` datetime NOT NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  `update_by` varchar(64) NOT NULL COMMENT 'æ›´æ–°è€…',
  `update_date` datetime NOT NULL COMMENT 'æ›´æ–°æ—¶é—´',
  `remarks` varchar(255) DEFAULT NULL COMMENT 'å¤‡æ³¨ä¿¡æ¯',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT 'åˆ é™¤æ ‡è®°',
  PRIMARY KEY (`id`),
  KEY `test_data_main_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ä¸šåŠ¡æ•°æ®è¡¨';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_data_main`
--

LOCK TABLES `test_data_main` WRITE;
/*!40000 ALTER TABLE `test_data_main` DISABLE KEYS */;
/*!40000 ALTER TABLE `test_data_main` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_image`
--

DROP TABLE IF EXISTS `test_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `test_image` (
  `id` varchar(64) NOT NULL COMMENT 'ç¼–å·',
  `user_id` varchar(64) DEFAULT NULL COMMENT 'å½’å±ç”¨æˆ·',
  `office_id` varchar(64) DEFAULT NULL COMMENT 'å½’å±éƒ¨é—¨',
  `area_id` varchar(64) DEFAULT NULL COMMENT 'å½’å±åŒºåŸŸ',
  `name` varchar(100) DEFAULT NULL COMMENT 'åç§°',
  `sex` char(1) DEFAULT NULL COMMENT 'æ€§åˆ«',
  `in_date` date DEFAULT NULL COMMENT 'åŠ å…¥æ—¥æœŸ',
  `img_path` varchar(500) DEFAULT NULL COMMENT 'å›¾ç‰‡è·¯å¾„',
  `create_by` varchar(64) NOT NULL COMMENT 'åˆ›å»ºè€…',
  `create_date` datetime NOT NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  `update_by` varchar(64) NOT NULL COMMENT 'æ›´æ–°è€…',
  `update_date` datetime NOT NULL COMMENT 'æ›´æ–°æ—¶é—´',
  `remarks` varchar(255) DEFAULT NULL COMMENT 'å¤‡æ³¨ä¿¡æ¯',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT 'åˆ é™¤æ ‡è®°',
  PRIMARY KEY (`id`),
  KEY `test_data_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='æµ‹è¯•ä¸šåŠ¡è¡¨';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_image`
--

LOCK TABLES `test_image` WRITE;
/*!40000 ALTER TABLE `test_image` DISABLE KEYS */;
INSERT INTO `test_image` VALUES ('f33c84b4757e4b37aa5a937c1a7c320c','3','4','5','cse','1','2017-12-26','|/jeesite_ctop/userfiles/1/files/test2/testImage/2017/12/%E7%BF%85%E8%86%80%E7%A1%AC%E4%BA%86.jpg','1','2017-12-26 13:41:39','1','2017-12-26 13:41:39','ggg','0');
/*!40000 ALTER TABLE `test_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_tree`
--

DROP TABLE IF EXISTS `test_tree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `test_tree` (
  `id` varchar(64) NOT NULL COMMENT 'ç¼–å·',
  `parent_id` varchar(64) NOT NULL COMMENT 'çˆ¶çº§ç¼–å·',
  `parent_ids` varchar(2000) NOT NULL COMMENT 'æ‰€æœ‰çˆ¶çº§ç¼–å·',
  `name` varchar(100) NOT NULL COMMENT 'åç§°',
  `sort` decimal(10,0) NOT NULL COMMENT 'æ’åº',
  `create_by` varchar(64) NOT NULL COMMENT 'åˆ›å»ºè€…',
  `create_date` datetime NOT NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  `update_by` varchar(64) NOT NULL COMMENT 'æ›´æ–°è€…',
  `update_date` datetime NOT NULL COMMENT 'æ›´æ–°æ—¶é—´',
  `remarks` varchar(255) DEFAULT NULL COMMENT 'å¤‡æ³¨ä¿¡æ¯',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT 'åˆ é™¤æ ‡è®°',
  PRIMARY KEY (`id`),
  KEY `test_tree_del_flag` (`del_flag`),
  KEY `test_data_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='æ ‘ç»“æ„è¡¨';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_tree`
--

LOCK TABLES `test_tree` WRITE;
/*!40000 ALTER TABLE `test_tree` DISABLE KEYS */;
/*!40000 ALTER TABLE `test_tree` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-06 13:56:56
