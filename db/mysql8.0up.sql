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
INSERT INTO `act_ge_bytearray` VALUES ('cb608f0d526f4c5282ec617a559ec410',1,'test_audit.png','809b52df107d48c98625937c3f17b1e9',_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\�\0\0|\0\0\0=ӳ\�\0\0S\�IDATx\�\�\�|T����S����h�˲�l\�e�ծZ1��4�X�\�K]��RVV�\"\�Z/�\"\Z1�c\nĀ����D.I\�c�1f��E\�\�c\��>\�9\�03�I2I�\�L^\�\�\��\�\\\�\\2\��>s>sΜ1\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\�/\0\0\0\0\0�+�,e�\0\0\0\0\0� ެ/\�J���\�%\0\0\0\0�s�m�ɖ-ܟ\�t\0\0\0\0\�y\�vk�\0\0\0\0�V$�\�T\�\��n\0\0\0\0\0�l�[k�\�\�\r\0\0\0\0@\��m�vz\0\0\0\0\0�m�=����\�\0\0\0\0��\�κ=\0\0\0\0\0Q�����~\0\0\0\0\0��f��vgK7\0\0\0\0�\��=\�\��̺\��\�\�q 5\0\0\0\0@�o�\�x4\�\�\�R\�߶6݁nG\�\r\0\0\0\0\��Ͷ�\�j�UM�g�m\�D�\��N7\0\0\0\0�\�\��k�[j��M�\�gz�\�\r\0\0\0\0\�6\�vBM�����Ͷo\�\�\�\�\0\0\0\0��\�֦���;\�f\���?3\�\�\r\0\0\0\0�\�f��\�n���G;�m\�\�\0\0\0\0t\�f�����\�vG�\0\0\0\0\0a��[��5\�i�}�n�\�\r\0\0\0\0],ά\�\�\�6k�լ)�M�\��\�^v#�ݲ]e]\�I\���(��(*ʪάj�r\�z\�poh\�E;�p\�\�\Z���Ud\��ƙu�Y}xyڤ������-\�m��\�@\�\�\r\0\0�h$}\� ý���2[\�:h�76�\�\�A��l5ڋͺ���C���3N\�w�\�\�t�n\0\0\0t\'\�J�ցg�r�+\�\�o��o��d��\�`�(�\�/G)�\�\�(\�\0\0\0\�d\�w�\���\�\�\�\n\�lg|\�\�D6ݭ5���\�vk�\�\��\�\�\0\0@�\�\�\�w�\�yj�y>\�jmskͶ\�Φ\�ޭ}�\0\0\0\04\�zK�#�9@�|g�\�\�O�@[�\�\�l\�tۏG�\r\0\0\0�\�\�\��\'RCH\���yB&�h�{��F�\�\�\��8|g\0\0\0hN��$^��l\�\�h\�o�=�\�\�<��\�6Z�?�\0\0\0&G/��\�+�8�\��\�l#�|w/�fy��O}�ޮ���\r\0\0\0t[YgƉ��Ysx¦\�\�(��\0\0\0hN��gxp\"\�!�9�Vt4ݝݼ\0\0\0\�L֛syp\"\�48:y8\�\�n\�\�F\0\0\0G�V^\�ˀI��>�a\�t����\0\0\0��>���\'�\�%+�\�\�n\�\0\0\0\0�`\�\�&z�\��D�\�\�\0\0\0�C`����f:��\�?�\�\0\0\0\��\0C�m\�f7r\0\0\0�~0tr\�M�\r\0\0\0\���Nn��h�\0\0\0�!0�й�Y��\0\0\0\��\0C\'ʲ\�U/^\n\0\0\0�~0t�8�\\[�\0\0\0�!0�Щ2��$���\0\0\0�7\�8�u\�.�\0\0\0\���\��i�\�\�|�\0\0\0�\�\�o\�]\�xy\0\0\0\0�!0�\�>\��m�\"^\0\0\0�~0���\�|�\0\0\0�\�\�J�\�\�\0\0\0�!0���\0\0\0X\�\�+\0\0\0�ul�Ƽ\0\0\0�:6``^\0\0\0�c�\�\0\0\0�:6�\0c^\0\0\0`00�\0\0\0\0ֱ�\0�\n\0\0\0``�1�\0\0\0\0��\r�W\0\0\0\0\�\�`��y\0\0\0��\r0��W\0\0\0\0X\�\�+\0\0\0�ul0���\0\0\0X\�`\�+\0\0\0\0�c�\�\0\0\0�:6``^\0\0\0�c0\�\0\0\0\0ֱ�\0�\n\0\0\0`00�\0\0\0\0ֱ�\n\0\0\0\0\�\�`��y\0\0\0��\r�W\0\0\0\0\�\�\0�y\0\0\0��\r0��W�\0\0\0\0\�\�`��y\0\0\0��\r�W\0\0\0\0\�\�\0�y\0\0\0�ul0���\0\0\0X\�\�+\0\0\0�ul�Ƽ\0\0\0�:6``^\0\0\0�c�\�\0\0\0�:6�\0c^\0\0\0`00�\0\0\0\0ֱ�\0�\n\0\0\0``�1�\0\0\0\0��\r�W\0\0\0\0\�\�`��y\0\0\0��\r0��W\0\0\0\0X\�,���R�SRRfN�8qolllC\�޽��:P�P={��\���\��l��\�Ϳ#�\0\0\0\��\0\��-[v\�ȑ#\�cbbԜ9�U~~�jh�\�\����:�\��,**T��ϩ�6�\�\���\�_L\�\0\0\0@?X�JM}e}�~�TR\�\�\�j4�\�&*���H�\�\�\�SO=�&\�\0\0\0�!0���پ\��TQ\�v�	��\nq�����}��Üc�\0\0\0\��\0�˖-�G�lm3�?�W-]��\Z3&A�\Zu����k\�\r�#U�f\�Q���\�SN�\�`�r\0\0\0\����R�G���>)\�y�\�7^�b�R5�\�ԭ��\�5v̍*>�Z5t\�j�n���:�\�ޫW�<b\0\0\0�!0�\"\\J\�11?R.W�\��5zU¨x\�h\�p\�H�~��\�\��aW�Mwl�\�Ω�\�>�Ss\�\�=\0\0\0\���&N��wΜ\'\�F\�\�f5bx�za�|��V�Jy1Ioپj\�P}��v���{;�c5mڽ;\�Y�H�\0\0\0@?X��Ґ��c6z\r\�\�\�\'���Tm\��\��\��\�\�T�>s����C�?S\'�o��\�\�\�ջ\�\�0g\�N�\0\0\0�!0�\"X\�޽UC\�\�f�W߬���*.ڢvoU�w�\�\�;vlW�=��\�\�P/�\�q=\0\0\0\��\���R_6+�\�\�j֬�j\�o&���BU�\�]�v\�P\�\��o5\���\�\�_\���Tǋ\0\0\0\��\0����Ϋ\Z?W\�ֽ�bc��?�TN�ϫJK�Ր\�/U��NU\r\r�5�=\��b�\0\0\0�!0���\���S\�}wL��!]\r\Z�j��\�{e�U\�\�*�\�?��\�W�\�W^2��4�{��W^�\�\�W�o��\�\�>��6\0\0\0\��\r�1��n٤k[�켼\�\�͌t\�h�X�D��x�Jz\�Y�̼��\���P]{\���\�5^�Au�X�\0\0�~��h��\�\�c�~��D.���\�ź�����-P\�\'\�S�;�I�\�\�Q3g�V=�ģf���~7�~���:^,\�\0\0\0@?XT4\�_8%\r��\�\�ݬ\�H{U7\�\�|?;��;\�	�ܳsu\�-M��\�	js\�\�V\��Չł\r\0\0\0�C`�EE\�}ԩ�{��G��~y�8\�Pˮ\��*.n�����zkwi\�^�Au�X�\0\0�~��h�?�*\�7S_~��J|\�i�0\�:5b��j\�\�+TܕC\�P�Ѿ\�\�\�\��\�Qǎ�EO\�{{�\�ł\r\0\0\0�C`�EE\�}�\n�b�\0\0\0�!0���\���\n�b�\0\0\0�!0���\�>L�Y�`\0\0\0�`Q\�p��\n�b�\0\0\0�!0���\�>D�Y�`\0\0\0�`Q\�p�¬X�\0\0�~��h�PaVmwO�\�@<\0\0@?XX7\��¬Zw\�hm]\�\�\0\0\0�C`��w\�]\�亅g�\�\�\�u\�\�W�/+)\��6��\�_ff�s:\'\�u}��z[�۔����\�\��z�\�K\�Ϛ5�\�c͟?K�>th�\�uUU[��G��7{�\�\�\�f�UV\�\�kj\n��\r��3\�8�\����\�Zi�i�\0\0@?X�7ܟ��\�\r��eYY+�.��\�5y�̆�H����\�;��r��sr�\�ٳ�JN�\�\\\�n\�ݧ\�\��l6\�o�3\�<CO[]�U?�\�`n\���\Z?�j[�i���v��+\�z>ϕ+_pN\�߿C���\�Wk�iyL\�\�gϞ��}_�\�r~ʔ�tþ/\�\���^\�/��\'z�ѣ�\�\�Ͼ\�\�G�\�\��\�\�s�E͘1\�l�\�շ��\��\�[�g�\�\�u\\(\0\0\0�~��m���-��LL|L�\�oٲ.\�m�.��\�*6�\���\�_�\�Ç�\���\�yy\�����*}^[ΟrJo\�|�o6\�w�\�\�J}��cX[��ԡC��˗,���KF\��`�\��euu��oA�\Z\�yH.�55\�\���\�[�\���Y�Xmذ\�\�y\�\�eg�R��Unn�~\�r^�����\��?\�\�w\�9?PÆ]����|�\�/�zm�[�i�\0\0@?X\�4\�iVee�Ԟ=٪��c���ݡD��\�x\�\�����?�k��S99����9\�\�N5�\�\nu�\�\'�;\�\�lb\�6�\�O�\�\�\�R����@����<O-\\���\\�w7\�x\�F��\�.W�*/߬/KM}N?VEş�u�\�җ��-R�_��y����\�\� �\��^�*\�\���T\�|�(\�q\�瓛�z��]�\�\��2��\��c\�}yN׆F��(��(wՙ�Ǭl��1+ެ^�\��C`��Iý�Y-Y2O]tѿ�-[֨ի����n��=�A}^nSX��\�\�I�\�K^/e\�-\�\�-\��\�=��\�c\�^����\�&%=��g���P\�\�O\�˦N�`}W�^���=}cc��&\\]]������Wx�\\�m\�:=}v����f�\�\�z+��m��=[o��ˏ-Sk֤\����U|�}\�O~2H�}��oy.�\�\\nߗL\'\�\�\�P�\\2\�l�W{=�\\\���X�\���5\�sw��5Ƭ\�\�\�5\�YIf�c\��#i��#��#�~��j�?iVr�]w�R�NK[��B{^���\�\�\�.�0\�j��_W_���]\�\��~d���.+\�v\����\�Ի\\\�\�_\�<�4�\�ٖ�U�\�U�^����\��+ӧ�η�Lo�\Z\�~�?�8zt��}\�\��|mm��\�\�iW�Nҧ\�\�\\&\���7^�O.[��I\�h74|��O\�\�\�\�X윗\r��j��\���f\�\�g>�\Z��7��AVt\�a��;G\�f}a\�L^��#�~��n���Y�\�۝\�ӧ\�\�u]f\�\�~o\'u�\��}q���v#+�rWW��v�\\\�\�\�_\�/^,����(V\�\�̦�bUS\�nV*��ý\�ld?V))���\�\�\�oذT7��&ݦ\�n�\����J�y�\�\nש�.�P7\�\�&<\�j\�6{}Ǝ�^\�zk�\�,o\���#�Tv�\n\�h\�zM\�n��_�\�\�G�YY�~_�\0�\�w�w��-\r��a�Y��ڝ�rý�,9x?\��\0�̆��Y�\'��P��\�[JK7�\�5fC[m6�\��\�Ʈ\�\r��\�kk\��\�\�Z?\���\�l\��\��j\�\��\�v7\�ǟKr򓺡ݷo�n�\�\�\���\�y\�.\�if�\�l\�?���>\�\�8v�\�y^r��>`Z�\�Hg[\�\�\�\�\��Oy\\�~�w�B\�V�_�`�3�\\�\�nu\�e��fϞ�/�\�\�\�\��^\���[�o�\�p&ߟ˲Vr\0�O+G\�\�Ix?\��\0�Ć�c�u\�H���]�\������\r\r��ÇK\�M7\�\�2e�\�<���ڞ{n}Z*--\�:\�z}CWz�\�,��ZC%�#\��\�\�\�\���Æ�\�l�SUFF�JM}F?�}�܇�w�^\�u���?�\�µ�	��4\�V]r?\�&8\�l�\�M\�\��\�}����\�\��[�x���{�\�kc\��=c6����\�{\�u\�P��7o����{\���Vjժ\��QCS^�1}\�?�Vrd\���k�eK�#�\0\�G\0�`\�pW{UN\�\nݼ�\��\�t\�lv�\�fڴ�\������M�\Z?\�\�\��\��>�\�j8_�w�|�|II�>\�r}h\�;K�oj�r�)(x\�\�6<����<\��\�\�u���}��|w��&O\�\�\��\�;\�\�c�?0\��������m\�\�\�\�\�ת[o\���\�ۗWTd����B7���z�����1&��}jp\�\Z��9����C`�E\\\��QDUSӇ�2M��K{��\�q\'�IbqtH29x?\��\0�����\n��\�q\'G��#\��T�\���S\��!f�\�N�;��\"萭\�\���,�\Z\�J*\�*J\�\�\�{W>\0\�7���C`�ET\��f�\�n�\��i#\0\�Q./��@?X\�4\�T�U��;9:\�)@�sT\�\�\0�~\��1\r��T�U��;�-\�:)\09\�@?t����\n��\�q\� G\09\�Н\Z\���0+\Zn\0\� G\0y,*\Z\�2*̊�\09\�@^�\0���{/fE\�\r�\� /`�EEý�\n��\�@�\0r�0���\�\�M�Y\�p G\09\�`\�\�O����\�l�vQaR_}U�Ϝ5.��\� /`�E���|(?�\�\�RaR\�\�?��9kv�\'\0\� G\0y,�]u\�e\�\�̙J�F5v\�Ui\�I$O\0\�@�\0�X0\����˵�f7<\�=zT��&�< G\09\�`���&%=H�5f\�UK\�Y�K�\0�#�\��\�0\�\�3O�/*ZA\�ۅ���t�9/�u1y@�\0r�0��G�9\��w�\�k�{�\�Qc·1\�	\09\�@^�\0�¦����l޼�>\�;ݡ�ζ���n\�l��\�@�\0�t\�6�g\�\�\�~����L�e��M/lh(�1\�\��\�\��䧿\�h\�\�\�\�;\��\'\0\� G\0y�{�Ԭ9fm5��z�\�)�\���m�\�8��\� /`�!�eY�/y\�\0r�0�\�9d+�˚W	�\�	 G\0\�@^�\0C\�\�4�﮽���<\�\09\�`\�!\��\�v�\�e!O\09@�\0�:&\�h~P2\�\�\�w�\�@�\0�#����v�uۮq�<\�	 G\0\�@^�\0C�d�z����<\�\09\�`^K[��.7y\�\0r�0�\�NY�4\���<\�\09\�``^1�\0�#�\�00��<\�@�\0�0��W`\�\09\�``^1�\0�#�\�00��<\�@�\0�0��W`\�\09\�``^1�\0�#�\�00��<\�@�\0�0��W`\� G\0\�``^1�\0�#�\�00��<\�@�\0�0��W`\� G\0\�``^1�\0�#�\�00��<\�@�\0�0��W`\� G\0\�``^1�\0r�\�00��<\�@�\0�0��W`\� G\0\�N�,k@�T;y�X�y�#�\�\��\\�4\�cx�X�y�#�\�^v\�v�Y�x�X�y�#�\�ސ\Z\�q�<,�<\�@�\0����\�r\�w�ٺ\�\�\0\�#�\� /@��.7\�\�fa\0\�@�\0r��d\Zl\�fa\0\�@�\0r��\�\�y4\�	�,�<\�@�\0�t��\�l\�fa\0\�@�\0r��\ra��0\0� G\09\�\"g�)\�;%%e\�ĉ�\�\�\�6�\�\�;\�\�pQ-TϞ=�;���?>|�F�\�HF\�@�\0�#��tc˖-�g\�ȑ�111jΜ\�*??O54|e�\�\�QA��nEE�*1�95p\��\����\�5_\�Y�y�#\0\� /\�Lj\�+\���맒�^P.W�\�46Q�X\�ɋT�>}�:�\�Soba\0\�@�\0�#��t�f��.PEE\�\�\��[\�Uyy�\�۷\�?�\���\�,�G\09@�\0�ҽ,[��ٲ]T�\�l\n]^�t\�Kj̘5j\��\��\�Q7ďTɋ��MG��\�\���SN9\���\�^\�y�#\0\� /\�h\�(\�{\�\�kꓒ�7O~\�U+�/U�>J\�z\�X]c\�ܨ\�\�UC�^�\������8��^�z\�0\0� G\0\�@^�TJ\�11?R.W�\�6zU¨x\�h\�p\�H�~��\�\��aW�Mwl�\�\�\�\�\��Ԝq,�<\�\0r��(4qℽs\�<i6�_7�\�\�\�櫬�2TʋIz\��U#�\�\�\�\���\�\�Qm�i\�\�\�i΂D`\�\09\�K��Ґ��c6�\r\�\�\�\'���Tm\��\��\��\�\�T�>s����C�?S\'�o��\�\�\�ջ\�\�0g�N`\�\09\�K\�ݻ�jh�\�l\0\�\�c�R\�E[Ԏ\�j��]rzǎ\�\�\��{�\�%��9\\\�d�%X�R\� G\0\�@^�\�R\�\�f\�r�]͚5SM�\�$URR�\�\�ۣk׮j\�}��f<x���\�\��ޖj{u��ě%GeO���!v,�r�䥛4\�u^\�\���Z�\�5�SU�Q�zp�}^UZZ��\\~�z}u�jh��\�\�W7H�O�-[�?�\�f�\r�#\0\� /ݤ\���S\�}wL��!]\r\Z�j��\�{e�U\�\�*�\�?��\�W�\�W^2��4�{��W^�\�\�W�o��\�\�>��W�ķ\�n\�r��\�\0r��hk��9�u\�&�[\�\�d\�\�mVof�\�F{\��%\�\�ŋT\�Ϫg\�=������\�\�kF��o���\�\�Ih����\�;\�,�r�Q��f\�g\�Z��ͪ��p�Y���i\�Lk�(n��\�\�c�~��D.���\�ź�����-P\�\'\�S�;�I�\�\�Q3g�V=�ģf���~7�~���\�^Q��\�\�f�-\�,�r�Q��qf\�ZM�+f\�f\� �N����1V#�dM�oք\�l��pJ\Zn�	�\�o�Y����n���~v�5w\�\�g\�\�[��1�\�朷�����o(�Fp[����\�\0\� G\0\�4/\�Dg�Un5ӽ���4�\�[ͺ �\Z\�N\�ݻM=�\��\�\�\�\�Zv%�WqqCԯ\'�\�[�KK\����\�eo(\�\�b-���\�f�\r�#\0\��ܼ�7\�\�\�E�W\�\�>\�~�ek�\��}\�U�o�����S��\�\�*a\�uj\��+\�СW��+���f�}\�\�\�\��ߣ����\���T\�+�\�P:�{8����\�\0rDh^d%^��\�I�w�u���\�>BuQE\�JkH����\� /!2\�j�c:�~c����-\�f\��\�Eo(�}�q�t���#\0\����HS,�ǝ���Ժ�A�\�p���\"�\r\���g\�3\�N\�o0|oǁ\�X�\�@�\0D@^\�H\�3O�c\�w��Fv\��7��*�\�P|�DK��\���\�t�M7+8\09\��0΋�����wk������\�!��*B\�P�\��}���� �n\�fۮ�\��nVp\0r�#\0a��\���K�[�\�\�\� \�E�o(��`\�sKM��\�S�L\�w�Y�\�@�\0�Y^\���\n\�cV�`��~\�0�m\r�����\�ֱ�\�N���\�t��\��m�ٽ��\�@\�E�W�8ď�h��\��\�+���k�\��k�J\�#3s�s:\'\'M���\��6\�\�\�={6����^�\�yޮ}�v��O>�M\�c����]�f\��\�gg�Vg�yF��甔y��څ�\�hO\�\�Z\�l�\����l\�f G\09\�\�yYk\�m!~Li�°\�+\��U\�l�j���={�\�\�9f3\\�\�?1�q\�4\�\�8��\�Z��ަ��V:\�e\�\�U�1�0\�}Z.��-\�eZ�\'םrJ\�\�\�С=z��Y\�g����\�\�^4�\��U]��\�\�;V\�\�~+*�TMM��\�\�[�&O��3}qq����p��lҤ_\��8qq?է�6lX�\�;\�ܠ_\�.n�[�\�v[�\�@Mw�v6\�6�\�\�\n@�\0r �\"�w_\�ǌ1\�\�0n�=�j��n�?mw\�\�g̘�ޫ\�8�K�\�\�������#}^\Zr�i\�\�Z�Ǝ�AM��f���\�z�\�z���?\�\�WJ��\�_�\�ǲo3q\�mzZ�\�\��\�ii�׫k��\�\�{\�y�\�x\�\��ȑ�԰aC��\�\�\�~ކ\�Z�\�\�\�X\�^�f�s�\�]nk����{�\��m�^�0\�i�[j��:\�lw����\� /��ά\�C���x\r\�p{nՌs7\������5��\�\�Ym6�s\�i��j6\�\�F�;Ʃ\�ҍ��i�3���2m]]�JOOQ��.|Z_.\�\�_�\�\�\�]x\�Ul\���<\�\�\�שI�n7\�j�\�yz�4\��er�ii\�\�m\��\�e�����,\�l\��O�\�\�^\�<gy�r���Z��\�\�z�.�n\�\��隚m�\�o\�\�f\r�\�\�\�\�eMwG�mߦ�\�t���#�\��TEb)��v�ܶ�*_��7\�!��\�k\��C_/\�=�MJzB\�]W��JN��/�:�\��\�Y�\�\�\�=\���u�\�\�\�_���\�4\�YY\��������?{\�\�\'\�\�[\�o�}�ڲe���~W\��С]\�s\�\�X\��?��-R��[[\�\�\�ٯ\�\�h\�k\�\��L\�n\�[���\�;\"ɺ�>,cY�\�@�\0�Zl\�\�@\�4\�[,\�#���߾����R]~�Ŏv��\�;\�I�.+\�\�4�g�u�:\�\�&Xn#�_r\�`UP�G�\�~Z\�\�\�[�W�zA_�o\�v\��8۶�S�\'�W����\�\�R�8˗\'\�i]���=7��\��\��2�\�\�**r�\�\�\�\�2���D\�Ǐ�&#\�e��#F\\\��\��\�\�lݾ�\�QA���}��\�h\�\�iiw[~�;�p���#�\�¼�\�֛)\�x\��I\�U\\�i6�K�}�^���@UW8����]\�L/\�/�\�\�+ԁ;Tzz�n\�kj\�\�;�\�popn\�\���s�\�ctC\�\����\�&M�\�l�����e\�3N�f߾m���}T�U*//\�j��9�m\�\�\�Wzݷ�?�\�o\��ii\�\���u��;\�ذ�\�:\�\�|��=M7\�\�f G\09\�\�y\�(\�Ǜ�\"�\���\�l��/読-T˗?�c���\�f;_�{\�\��zws��3��ON~J9�\�lj��\r�\"}Ycc�utr��\�o�}�\�\rw\�\�K\�\�\�\�яa��q^\�lZ��kj\n\�\�å\��몪\�q��\���\�\�6�\��Ч��=K͘1�]�c7ܭ�\r\�&��[�������\�ts�rVp\0r�#\0a�~��孖>\rwM\�e\�\�jZMj�JIq����ڹ\�\�p�~\�0��e*#\�%����\�\�ܾN\�C�fe�\���7\�\��.\�G֮໛=/\�ǵ/�w���\�[[��X\�ߦ��\\.��\��m\�����=��\����\��\�t�\�\��;ۭ�Nw C~���\�@X\�e�Y�\�Pt�\�\��3H����\�\�J\�\�Pa6�Ku\�t�p�����ڙ\�\�\�.�:_R�>\�r��,����\�75}\�LSP�f6�\�\�\��\�\�}P%&>b6\�睊S�SM�6Q��*,\\�N;\�u\�\�^�\�f8��ߪk\�\�T���\��QW��u\��\�\�\�~.�a�\��\�[�\�j�<\�\�\�\��D\�XimskͶ\�Φ\�ޭ}\�SVp\0r�#\0ᑗ\\#t[ä!\�\Z�3H�\�WSSUD\�\�z�|C	����\�v�M��x4۬\�\0\� G\0\�(/��^n�f+�\�;!r.�}C�-ݾ�w\�i�;\���\�>�\�w�Y�\�@�\0�i^���j���V#���wr\�]EuQE��\�O�y6\�mi��Vn\�O���#��ĘuЬ�t��Z�?(�g�RR]T��\�{�4\��\�\�\��v��o���#�\�%D\�\��Ŝ�f^\�wB�\� �*�.�(xC\�\�\�\����:X�\�@�\0�q^&Y\�qgm\�Ժ�G�a)�\�E%o(�\�twv�Vp\0r�#����l\�-g�\�|\�Z��}\�j\�b)UAuQE\�JGwg7r\�\09@��\�K�\�����v�\�\�ַ\"\�}��A\�4��z�ꢊ�7��U����\�\0rDQ^n�\Zo\�-|�\��	�\�:ݺ�t�9� Ѭj�ўdD\�\�\�[h�˩.�(|C	v�pv#g�\r�#\0\��Ҽ0\��\�Z\�w���\�\�fe\�]\�c�y)�\�E�o(mm���Ug}\�\�\09@�\0��\rw\�E\�I��\����f�6@�\0�#��Dyý�ꢊ�\�\�\�n\�,�r�䥻4\�{�.�n\�\�f�6@�\0�#��t\'�|\�w\r\r\�f�\nq}�U\�>s���0��\�$�m\�\09@�\0�\�m�\�C��K\�p\�Z����\�Y����ka�O��\�\0r��\�᪫.[7g\�T�,�B\\c\�^�f�v���G\09@�\0�m�A\�\�|\�r\�	m}ңG�\nsı0\0� G\0\�@^�T��?,MJz�&8�5f\�UK͗>���G\09@�\0�\��y\�i�EE+h�CP��Kכ��A�.fa\0\�@�\0�#��D��s\�9�\�4\�\'�\�\�ѣG�\�=�\�\�y�#\0\� /ݷ\�>\�\��7\�\��Nw\�g\�ڍ��\�}��� G\0\�@^��A={~/\��\�O=<e\�-�7mz�`CC!\rs;ꫯ�\�[����\�h\�\�\�\�;\��0\0� G\0\�@^��K͚c\�V�\Z�IW.\��;\��\�_q)\�#� G\0y�y�\� /\0X�y�#�\�\00�\0r�\�\0\�\0r�#��\0`a\0\�@�\0r�\0,�<\�\0r�\0,�G\0\�@�\0����G\09\�@^\0�0\0� G\0\�@^\0�0` G\09\�\0`\� G\0y�\�\0\�#� G\0y�y�\� /\0X�y�#�\�\00�\0r�#\0\�\0\�\0r�#��\0`a\0\�@�\0r�\0,�<\�@�\0�\0,�G\0\�@�\0����G\09\�@^\0�0\0� G\09@^\0�0`\�\09\�\0`\� G\0y�\�\0\�#�\�\0y�y�#\0\� /\0X0�x	\0r�#��\0`a\0\�@�\0r�\0`a�<\�\0r�\0,�G\0\�@�\0����G\09\�@^\0�0\0� G\0\�@^\0�[���j\'/l� G\0y�!f�Zi�\��2��\�\0r�\0�\�n�\�.2�/l� G\0y�!-4\�\�xyX`\�\09\�����]n�\�6[�Y`\�\09\����]n��\� G\0\�@^\0t�L��\�,�r�\�@���h�x9X`\�\09\��\�c���\�,�r�\�@\'\Z\�6@�\0�#��\0\�*�z���̜8q\�\�\�\�؆޽{��-*�\�ٳ\�w\��gÇ\�h�\��Q\��#rD�\�9\"/@7�lٲ{F�Y�\�̙����TC\�W\��;��%�cQQ�JL|N\r8����{͗�bVp\�E�\�9\"G\��#�D�\�\�W\��\�\�O%%��\\�Fsa\�D��JN^���\��թ��z+8\�\"G\��#rD�\�y�x�|����\�\�B\�[*DU^^���\���{�~�\"G9\"G\��#rD�\�Э,[�����h���py\�ҥ/�1cԨQ׫믿F\�?R%/Jj6\��*/߫N9\�/�\�ߝO�#rD�\�9\"G\��#�tr ��#��OJz\�<��W�X�T���(u\�-cu�s����V\rz�Z�\�\�P�T���?\�իW+8\�\"G\��#rD�\�y�DJ\�11?R.W���h���Q�z�|\�\r#��\�ϮSÇ]i.�c�MOu�\�>�\�O\�Y\�\n9�\�9\"G\��#rD^�(0qℽs\�<i.�nV#�ǩ\�WYoe����\'�W��/�\�.ח~oG���M�w�9KY�!G9\"G\��#rD�\�bc�4\�\�\���fu�\�\���~��nyGe�i�Z�j�Z��F}\\������շ\�~\��vT�\�\�ws��d\'+8\�\"G\��#rD�\�y�@\�޽UC\�\�悡�Y=6\�!U\\�E\�(ުv\�*\�%�w\�خ{\�!���\�_2\�Y\�b�Q\��#rD�\�9\"/@��\�(�e�r���f͚���f�*))T\�\�\�ѵk\�5\��V3�O}��\�~oK���|��\�9\"G\��#rD�\�y�Y\�]\�U����u\�^S��?U\�U��\�\�U��\�j\�嗪\�W����Ϛݞj��C�(rD�\�9\"G\�� �\��p\��6��aCcUMu�z�l�\�ݼQe��G���J��\�K\�B;M\�t啗���\�\�o����\�\n9�\�9\"G\��#rD^��Z0sj\�M�7ea���Y����\�+�/Q//^��^xV=3\�i}��\�/-T\�^3Bm|{�\�}P\�/Vp\�E�\�9\"G\��#�DՂ�\�N=6\�w����\0^��Xג��U�\��\�y\�\�>����#j\�ߪ\'�x\�\\(g�\�ͼ\�\�>��+8\�\"G\��#rD�\�y�j���S�`�������\�i�\��,���?G͝�z\�ٹz\�,\�1�\�朷��T\'+8\�\"G\��#rD�\�y�j�|ԩ�{��G��~y�8�\��]��U\\\��\�	\������\�z\�\��b�Q\��#rD�\�9\�\"Y\�sn�v\Z\0�]0\�U�o�����S��\�\�*a\�uj\��+\�СW��+���\������\�G;�=�\�\��+8\�\"G\��#rD�\�Qb�;���{\���&\�\n9�\�9�\�9\"G\�e�\�l�Ջ�	z��&\�\n9�\�9�\�9\"G\�\ri�\�G\��k�|�\n��╀\�K G9\"G\��#rD��\�r\�w�ٺ\r�o��7*L*JWp\�\��¬$\�\�rD�#rD�\�9\"G\�(l��.7\�\�ڿ`>D�IE\�\nN�\�J�lQ�,\nڌ_rD�\�9\"G䈊�e\Zl\�:k�|�\n�����\0[\�p\�\��#rD�\�9��)Gq\rw�~Ղ�\0&E+8	��\�\�\�\'�#��#rD�\�9\"Ga\��.7[���-��J�IE\�\nN[W^�i\�\��#rD�\�9�\"=G̺Ϭ�fU�Uo�\rf}b�w3�iM�\�\�Z*L*\nVp\�\�R\��\�\"G\�\"G\���\�%?��k5֪��o\�Z)�M\�O�0�_�i\��]]��\�0~\�9\"G\��#*\�rcVvM��\�j\��T@�\��T�T�\�ttw�Hߝ��K�\�9\"G\�Q�����H��ͳ\�j�\'�u�Y}�i��5Ⱥ�\�n\�%\\>�bk7x��*L*BWpZ; M�\��#rD�(rD�(r\�\��w�\�t�\�\�\�\���\�}�{2�\�w���\n����\�>�k�nY`��#rD�\�9\"GT$\�h�O�\\i��f��ܮܧ\�fK7\�|��I�K�߶m�����>}\���\�\�奩#��ɓ�CM�t�Wmܸ\\ee-S-=�\\7mڝm~^�W\'��\�;7\��55\�\�����@׆\r���\�s�߷o�\��%%TYY�>-?jVr\�͞��\�\�9\�\�\�*�~}#h\��`\�{f\�i�\r�\�\�\"��5\���\�:�E�\��9�1�w#�\�_�\�\�}\�\�湆�\�\�h�\0�����JK\�\�A��\�Qze_N\�{\��\�3\�<C-\\��3���\�<o߿�?�k��ӧ�TK�-\�\�t\�\rm~n���P]}ul�\�Hc \�TW\�\����n6,�\��\�^��~o\�\'ޢ�l���F\�?�\��\�;~�rs_\�Ӗ��\�\�/X�^.\�\�X�.�\�B}�}��\�\�/�\�\�s��\�O�e\�d������\�v���C�\�9\na��_\�QQ�#\�Ƹ��mϦ�ܧ�p|�\\\�j;V�t�\�;�\��\�̗�\�={���w7\n?�,=}��R�\�\\i\�b6\n��[��\�\"\��MM\��>\�:\�\�\�\�\�#��G�\�V��\�\�KJ2u3Q\\��.�\�\��\�{�\�W\�\��\�׿\�L\�r}��\�e2�<�Çw�\�\�g\�i�����5k�UL\�\0\�6r���\�\�m�\�ߦ�\���\�\��:���#p\�ư�x\�NԖ�ϕ�&z\\Iߡ#G\��(GTh��#*\�r4\���\��ŝ|�޻��k9p|��q�UW��\Z0��\�\�Z�N9��z��{Un\�:L�&ݪO�{n�\��\�{�\�\�^�F��JM�2\�\\YN\�ӟv\�)fðPUW��=vS�{7Si6ZzN��\�ر\�9\�e��i�y�fz\�i\�zk\�}�>���R���#GJ�i+*6\�\�jk����\�\��\�\�h��F\���\��w\�u���\�ѧ+�\�}�ܻ\�\�sh\���@+�VVZZ\��7}��\�#\�;t\���\�\n]�#rDE]�<�n\'��\�x\�`+7\�o�\\\�b\�Օ\�7�����\�\�o�Sa\�\ZU^�Q�w\���\��-s\��yy�Y��\�\���@��g\�[֖�ș��\�\�\'%ӧ���9�a\�\�*&\�_��)j\�����\�\�K�ٳp�+.^�o/[\�<\�\�w��l64���V�Y��\��=--ɹy}bc�]M�6\�l2�\�\�4���\�Yg�i6;�m\�ױ��#D\�X�Ib�\�\�JN[Wn|Wr�bw���V\���\�\n]�#rDEU�Ƿ>���\'��\��\'\�bh�\0�`��M����:�\�tðj\�szW҇��\�����_{Zw�p�>�o_�\�$\�\�46V�@�-��}���V�nj��\�\�e\�e\�&\�2ْ8b\�\�^\�ee-ѻ\�N��_jҤ[t\��\�fd�\��y:T\�ܷ���@n#M���I�\\�\���\�\��\�\�7��\��ȑ\�\�X\�[�_B�`�G\�qm�M[W2Z[\�	v\�\���?\�-m}�\�9\"G!\�u\��#*�rt�\�tY\'����x���Z�^0W�XlS��+Ե\�ƪo�Z��;��y�TS����LΗ��ӷ��\�\�lke�Roɒ��\�\�W�[��\�\�\�\��rz��GZ|~2\���3�]v�\�	^�mܸT\�Ծ�ꫯpNoذؙn��=�\\\�\���[U����V9\�;1�!��\�\�ܦ�~��\�~}\�\�\�\�\�\�T\�q23SZ�_B�`�+��OF�ݍ.\�JN�v�\��n\�\�JN[_+rD�\�Qr\�9��m{\�Ɇ\�\�\�t2\�\�C�ɓow> :�A\�R����\�\�\�nѷ�|<ɩ�\�(/[_\�r}�\�\��8U]�Yh\�\��!�\�y^2PS�\��\'[}m~�7\�i\�\�\�ٳ>�טEw�\�2\�孜\�\�Y�O\�\�tɃ�3�}̾�\��Y�\�	�\��� e�9��\�\�%\�\��y\�\�\�\�S����O=�S��-[^WӦ�Z��=\�Z\�q�\�ȳ	�t��\��6�@�4\��XMM�+\�yY\�-t7\�t���m~i\n.�\���;z�\�\\`�h\�^z�����\\�{l�l\�\�_9竪6y4\�Gv;�\��w?�V=\�u��X�\�\'�\�\�z�\n\�+\�n?l\�e\�B6C_����\�~>���\�\�\�\�\��On\�r\����\��lY�/�\�yy���Zwт\��\�\\�ii%��+7}>\'��\"G\�� GR2f}��̦y�u���ԧ\�G�̙��^\"\�o/{V�?�\n�!{\�c\�\�\�\�̀\�=��T}��d�:v�Թ\���\�)V\�\�/\�LH�/������)S~\�d\�^V\�ʿ�_�&ݬ�\�^\'qq�\�\�R6�d}\����\\9\�9�f\���nK��\�\�Q��������\�\�s>�O��g\�1\�>�Ƈ��\���>�\�=\�\'L���\�\�Z��7\�ͯ�1j�7\��\�5\�y^\�Ϟ�[��Aɋ��}ʰ\�\��!]�\���Ӳ�\r��\'��W�o���W�^6\�\�\�m{_\�0\�Q�\�\��\�\�3\�\�>�\�􂹲MU]\�����\�m���\�B텤�45U8ӺWr\��m�\�o\��\�)\�\�6��~\�\�q7lH��\�|���\�\�\\.\�ᬳ�?\���#E\����^e�����y.\��\�\nG�nt\�\�\�\�}���\�\�칤�=�Zu\�\�N\�\�\��\�\�i�^�&%=��oh\�km\�\��&S`�i�c�<c6U���\�]�`��d4�>����ӑ�ߕ��0z�\�9\"G!ȑ=�d{\�oY	�\�2`��d\�YƗ�)�1�z�sz\\\�tr�B�{\���\�͛\�5�dѾ���>?�O�s\���c��r�iY\�_y\��X[�\�%k�m%s���s\�\�\�P\�\�~�^�ع�\�8���\�jtr����ܨ���,�\�Q���6�g\��/�̖�26导\'\�u����G9/����cGz5\�vfKJ\�\����%K�V^�#=N,x\�:F\�.\�$W9\�CƬ���>���j٢�!\�m�\�]\�[\�r���\�\�\�:\�r{����sb�\�ط\�\�\�&c\�+��}O��\�\��X\r�Z�^0\�b\�\�\�\���S\�;�m\����22\�9/+\n�\n�}^V��O�S7�%��W�e\�Ç�镆\�´�\�A�s�|\��\�z\�\�SO\�\�l�\�ҵ\�\'�����oP۶�\�[\�,x\�\�={\�t\�X<�����Rsee��\���w�\�\�^�\�ۗK54\�\rD�>���L�5�wO��\Z\�Ն�f�+��㫇�-	U\�\��n�9\"G\�\�\�\�H\�р�d�Կd\��=F\��\�4Ş�q\��\Z5j�\��\�q��z��>�܏d\���7\�\����\�9\r�\�!?T_����O\�_y�C��6��<\Zˬ�g<�p\'\�-𞙐9R�˽5o�>-9�\���e\Z��|�f/+\�\�\�ݤ��\��~\�R���\0\�\�yE���^�\�c\�J�=w\�1F�?45�\�l�ȴ�Qϲ\�\���-\�k�f�\�\�62��v�\���\�RS\�\�Ǫ�\�\�\�Iv\�\�&���\�\�ͼ}{�~\�GN{��~\�\�R�\�lL\���7\�/~\�y���<�}����\�\�~< \�����]��Z�.�$t�����5]kG�\�\����.j8oQ�}�\�9\"G\'8Guu;�ߍ\�\�Z\Z�}�r�\�\�͕��\��x\�\�x�\�>���\�\��\n�\�ݫ|777\�j�+Z��\n�t�sؿ�k��G�i\�\�2�-v+�cef��:/_>\�l8�\Z��V\���\�Ho�4�\�k<K\�a?W�9��\�\��\�o�K\�c?vi\�\Z\��\�.L�x?jӼ��\�h�\�g\\\�\�\�\�\�\�\�II\�\�d,\'\'?f}�i��]\�)z7u{z{�\�l��dڳ���j=��s�p\���\�L\�m\�C�a\�.�z���\�\�󹺛\�\�˔��\��\�\�z�^��������3\�y�~?�c7Х\r��T�T-�}߬}W&\����\�t�w\��V�_rD�B��\�֑̅�_R�V=c�\��P?|�>\�>\��Kδg�y�\�$_�O\�۷\�i�\�i\Z�(\�\�\�\�}\�\�\n��\�c��뮛��>\�\�^\�=Zh\�6[l�\�\�\�-\��}ڕ��\�\\y\�o6>\�\�w7\����\��\�m\�^k6��?u�\�\�ɷ\�\�\��_\�LW\\��&L\�4#��o�\�\��9\"G���T]~��9cMƿ�.+{\�K�\�\�9眭�\���3NdO-s\�ɳ��S�G_��i\�ݲ7;e�\�\�\�֖\�uVS��߱g�[;c�yi�\�\�fO�z�|�\�\�Ը�Pˇ\0˗\�\�_SZ�\�I\�q[z<C\�R�\�ܯ��ƕ\r\�G|�\�چ�<\�\����s��nG�ӯY��9\�ظ\�:�ҫ�\�.%\�V��*\��\�\�Y\�%�K\�Ef��bӑO��Ԋ��\���ӕG�m\�\�\�1���XgBN=�=\�t\�\�\�\�bN<\���<\��\�\�2�JԆ\r�����\�UFF�3��\�^�n�q�����g\�Ӿ\�\r\�ܑ�\�̑�ai�\�)�\�Νfm��_M�r�\�,����oc7ܕ�oY\�-3���><ǝ\�\�\�־�W��\�\�\�ͼ�3\�\�\�\�[�\�\�\�\����\'�+�\�j֬\�8�%+\�G�l5���\�Ƨܷ�?r�\�=v�H_\�;��(�h\�\���*��=�˵\�Yn\�\�\�\�\�s���~䯊�_w>�1,�rWWo�\�\�kL\�\�d�\�\�\�\'cW� M�\��\�{k8���\'\�\r�X�\�\����\�I�n\�e�\��\r\r�\���\�\nW\�ol۶\�j\�\�[\�|�\��`\�\�\�[\�7\�\�r\�\�\�9c_\�\�w�\�\�\�s��F\�Ο?\�\�\��\�hy?\�(\�@\�6\�JJ\�\�&y�Z�`��}��\�J�\��|s%~��\�\�d-����\\����>\�r��Hț�\���f.�S��v��t3.\�\��i)Y`�w9��oY�+\�\�M\�лC�\�9-ׅ\��	т��-�$��\�5m\�wQbt\���\��_U�e5�/;㡴4�\�t�\�;�\�˸\�\���*-\�Y�\"#Y�\�\�[\�\n�\�$&>�?��\�O\�e2�)\�\�s�-��\�o���?ֹ#Gљ����z�o��7\�֑�G:��-i�%\�\�o�\r�6�Q��u��I��\�\�]\��q�\�Y�?�A��\�t7\r�f�����~L{zόUTd\�\�\�1(\�m�\�G�l\�\�#�s�ǲ�*���H\�\�;�%��t�\'ߢO�\�\�G͘q�\��r\�\\\��O�\�k\�]e߱v\�\"G���\�\�?\��1C�L\�z�\��[>ܲǅ\�\�w�\�ȑ-zN\�\�2;[r{C\�u�\�lj78\�p�W?\�\�س\�Θ</{QƱ\������\�G���l\�߳\��Iɠ�\���ڙ�S�F���\�\rtm\�]�:|�@��76�\�rҟc}j��^�\�+���~G��k�LŃ~\�\��\�~�s\�}D\�\�Ӻ�\�:E�nh(QYY\��6s\�\�g�\���\��\�\�\�Դ\'$��\��h\��\�Vn�v�\�ػ�����\��\�9/[����\�\�\�m��/ԧ�\�.,\\e�Hqn\�^�\�u���^+��I�;�\'�՗ٗK\�`\�FV�d\�Ai:�oyx\�Z�ʲ�l��#Gѝ#�x�1{��>\"\�\�sܸ�p_\�?t\��y�}\�~�\�G�nu\�\�é\�o�Y�qe?����uw[�$yq7ǧu7\�e\�\���\�޲eE�\�]��ƶ�\����Ƿjɸ��s�2\��6���w�#ޏ\�w{l\�x��C\��ǹ^Ɨ\���j�2\�SS�\�\��fF������(\�_w\��s]�\�3��\�L\�\�eek�_\�Hu��l�1�\�\�~�;\�ƨ\�.\�u\����{��r����\�\Z\�L\'\�\�л��\Z\�\�G\�rY\�\�e�?�\�\�m\��{��\�{CZ�¬�2\��t�\�d[[�\��\�f�\�y\�b\�wC\�s!�N7\�vs�r\�}��\�mݠ��\�c��:/�!o\�����6a>^mYh\�\�M�+9�㍋��;i7��|Ĉ˼.��v�\�̕�_蕓ŋ\�[�g̘\�\\f\�-=\�\�GY\�\ZsE\�sf�\���\��Y�b=\�\�i��9�![4|W��i��-��p\�9�\�\�\�n\�ͳ�C(�e2\�/�\�_���>a�_\�\�ek��\�t6<Kn�a\���Ǖ��i\�~�)w~�\�\�d��\�q\�\�\�_�+u�՗7{_�\�H 9�i$��(��\r�D\�\�.	8���S�Fr�\����9?~ݨQ\��c�%_\���\���,\�\��^��\�W�ƅ\�{���\�\��i�k��~c�_\�\�,�͂3��\�^q�kN\�|\�+\�\'r?��ؙV\��r�i�=s\"�\�\���\�+Dꩧ\�q޿쪨x\�y\�\�p\�C\�\�(x?\��\�\'\�1��x���Y��`\����ۮ�DL�6^/e��oߟTj\�z!w\�H���k��^\�\�z\��z\ZC\�f��^IZ�\�q��8]_���\�Z�\�y�\�hl,�>�}A�����a?��\\�\�\��\�Ȋ�l-,.^e��,\�\�c?�3�e�ww�;�\�\�\�\�J\�\� �`DM�rs_6W\��\�۪Usu�;cƯ͕e��`i\�l\�d��l�iu7\���2\�%��e�r��a��?�*/_\�l�WU�w�}YI��\�\��D��ڽ`OX\�u�55\�\n\�2��+��/9\�\�G��\�\���\�,G\�<Ʒl\�\�샧]lߊ.5�6p̻CV.\�Ns\��s���us!Wj\�~��\�L\�[\�\�\�\�u;�\'����\�FkW���\�nd��E\��\�n֧�I��\�^Ӯ^=\��\���1xQ߿}{��\�\�14��9�W\��-�++mY�1Z�](j�KsTW�M�{���\rI\���QU�i6�;���\�\�\�y�\�\�\�FX\�5]m\�&�_���7\����\�\�z�\�x�\�\�\�<>�L�E\�n˖ea�;r\��rD�~D�\�9j�|���\�輟��+7��n�2\0\�\�]!��z�o#\�x\�p�)x\�j&޴v�K\�\�o\"�\�\�\�\�x\�9=u\�m\������\�\"}Z\�}D\�\�\�._��\�}o޼�����\"\��<\�\�\�\�\��rrC��D\�\n�\�J\�����F�?�\�{���\�jD\�\�\�\�m�}��n�\�@�p\�\�؋ԤIc�8�1{\���\�&�\�o[߁]\�wCN�J�\�/�\�_���\���s�2\�\�\�#t�~�\�6w\�Q��#��c��\n�l�;\�tK�\��\�`-\�`.\rY56y4�\�ֵuցd^q�𼼗�nw�\�.UG��<s\�)\'�\rɖf�a\�#�ƚ+��-m\��i�]\'8\�\�\��I�\\;�Ͼ\�455��ϖ\�\�\�\�\�!Z\�\�\'\�Vp��\�tƖ��8�kX\�\�ȑw�,\��mۖY\�\�\�\�\�\�\�4\�,�\�^-jv��V\�V+W>�\�\�\�\�\n\n��\r��A�LUWg6�y��o\��=�K\�\�Q�\�\��9b���\�\�vy\��-[�ۻ{�\�\�s\�6��]�`nhp�\\��j��\�\n�{�[�nrr^����\�\��q\�f$#\�9\'\�l\n���\�ima8a\�ϝ\�\'GT���x\�:�\��`%��W�\"*Gv6\�\�穦�}�\�`ذoq�H\�\�{YVVR�i\��\�z^��h;;�;C\�Ν\��1,��uC�&\�\�\�4��2w\��\�\����#r\�&�|�n9-R\�\�\�\�\�t\��܇\�#�V@�4ܲUK\�{n\�\�\�m���\�M��\��\�\�\��\�\�\�o\Zy�\�\���Eo}�\�\"�-\���co	\�\�nw��\�^�娴�5�\�j{\�\�\�Y�\�r>�ji�ػ��w�^h횝\�wz��JK��#�\�$2�\�6)\�A\�\0kl\�8\�\�ܑ�\�#��#rD�\�QP\�[c]�4\�YVC.[�\�\�\�e��A\�m\�0ܻ�{ޮκ\r�\�`��vt\Z\�A���E \�H69\n��N�#G\�\"G\�\"Gmcx��=�\�\�;\�\0f\�!\�nx��\�9\"G\��#rD��h\�\�mV\�\�\n�ўdp4r�3\�]\�b�wA\ZG�(rD�\�9\"G\�u�f=`\�Z�>1���\�阮{w�{\�8\0\�,��P���\�\���E\�\�\r9\"G\��#rD��h\�\0\�,�#h\�B�\�G�\�9\"G\��#��\0f\�a���+7\��#rD�\�9�h��`f�ܥ+9IQ�rC�\�9\"G\��#��\0f\�]&��\�\�E�\�9\"G\��#\04\�\�\�ՇQ\��#rD�\�9@\�M�`9\"G G\�\�\"G\0X0�`9�\�9�\�\�9���b�L�(rrD�@�\�\0\�f�#rrD�@�(r�3f�#rD�\�E�\�E�\0�`�X0�#���#�#r�3ł\���#�#�`�̂\��Q\�Q\�\0f�39�\��\�\��.\'�|\�w\r\r�,à��j�>s���\�\"G\�\"G G\�@<�Ǉ��`�Z����\�Y��QI�(rD�(rrD�\0D����lݜ9SY0�A�{U�9K�\�\"G\�\"G G\�@0\����˵��c\�\�\'=z��0gI��Q\�1�\�\�9%���aiR҃,��ƌ�j�9+r�\�\"G\��#�#r �:�\�\�ꋊV��\�\�\�_�ޜͺ��H�(rD�\�99\"G\0�O�9\��wΡ_(�\�ѣ\�|�\�0\�E�@�\�\�9\�\�N���y�\���\����\��X�d�L�(rrD�@�\��\�aPϞ\�\�9��SO�r\�\�M�^<\�\�9v\�\�1\�OD\�Q+�i\�w{\�݈Q\�\���#\0\�̥f\�1k�Y\rf)�\�\�2ܿ\�(?�Q+\�E�@�\�\�9\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\���9��\�6BX\0\0\0\0IEND�B`�',0),('e6a33d903772421a97cd3d4c531156b7',1,'test_audit.bpmn20.xml','809b52df107d48c98625937c3f17b1e9',_binary '<?xml version=\'1.0\' encoding=\'UTF-8\'?>\r\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.activiti.org/test\">\r\n  <process id=\"test_audit\" name=\"流程审批测试流程\" isExecutable=\"true\">\r\n    <startEvent id=\"start\" name=\"启动审批\" activiti:initiator=\"apply\" activiti:formKey=\"/oa/testAudit/form\"/>\r\n    <endEvent id=\"end\" name=\"结束审批\"/>\r\n    <userTask id=\"modify\" name=\"员工薪酬档级修改\" activiti:assignee=\"${apply}\"/>\r\n    <userTask id=\"audit\" name=\"薪酬主管初审\" activiti:assignee=\"thinkgem\"/>\r\n    <exclusiveGateway id=\"sid-C28BB5F6-013D-4570-B432-61B380C1F46F\"/>\r\n    <userTask id=\"audit2\" name=\"集团人力资源部部长审核\" activiti:assignee=\"thinkgem\"/>\r\n    <exclusiveGateway id=\"sid-ED46FE41-A0FD-496D-86DC-2C97AF5735F0\"/>\r\n    <sequenceFlow id=\"sid-EF2F51BB-1D99-4F0B-ACF2-B6C1300A7D2B\" sourceRef=\"audit2\" targetRef=\"sid-ED46FE41-A0FD-496D-86DC-2C97AF5735F0\"/>\r\n    <userTask id=\"audit3\" name=\"集团人力资源部分管领导审核\" activiti:assignee=\"thinkgem\"/>\r\n    <exclusiveGateway id=\"sid-FE485B2D-9A23-4236-BD0D-D788CA6E30E4\"/>\r\n    <sequenceFlow id=\"sid-3DBCD661-5720-4480-8156-748BE0275FEF\" sourceRef=\"audit3\" targetRef=\"sid-FE485B2D-9A23-4236-BD0D-D788CA6E30E4\"/>\r\n    <userTask id=\"audit4\" name=\"集团总经理审批\" activiti:assignee=\"thinkgem\"/>\r\n    <exclusiveGateway id=\"sid-3F53B6BD-F8F3-496B-AC08-50630BD11477\"/>\r\n    <userTask id=\"apply_end\" name=\"薪酬档级兑现\" activiti:assignee=\"thinkgem\"/>\r\n    <sequenceFlow id=\"sid-02DB2AD9-1332-4198-AC8D-22A35169D15C\" sourceRef=\"audit4\" targetRef=\"sid-3F53B6BD-F8F3-496B-AC08-50630BD11477\"/>\r\n    <sequenceFlow id=\"sid-2AB7C01A-50EE-4AAC-8C8F-F6E1935B3DA7\" sourceRef=\"audit\" targetRef=\"sid-C28BB5F6-013D-4570-B432-61B380C1F46F\"/>\r\n    <sequenceFlow id=\"sid-36E50C8B-6C7C-4968-B02D-EBAA425BF4BE\" sourceRef=\"start\" targetRef=\"audit\"/>\r\n    <sequenceFlow id=\"sid-7D723190-1432-411D-A4A4-774225E54CD9\" name=\"是\" sourceRef=\"sid-3F53B6BD-F8F3-496B-AC08-50630BD11477\" targetRef=\"apply_end\">\r\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${pass==1}]]></conditionExpression>\r\n    </sequenceFlow>\r\n    <sequenceFlow id=\"sid-D44CAD43-0271-4920-A524-9B8533E52550\" name=\"是\" sourceRef=\"sid-FE485B2D-9A23-4236-BD0D-D788CA6E30E4\" targetRef=\"audit4\">\r\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${pass==1}]]></conditionExpression>\r\n    </sequenceFlow>\r\n    <sequenceFlow id=\"sid-53258502-43EE-4DE8-B1A4-DBD11922B8AF\" name=\"否\" sourceRef=\"sid-C28BB5F6-013D-4570-B432-61B380C1F46F\" targetRef=\"modify\">\r\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${pass==0}]]></conditionExpression>\r\n    </sequenceFlow>\r\n    <exclusiveGateway id=\"sid-5FED02D6-C388-48C6-870E-097DB2131EA0\"/>\r\n    <sequenceFlow id=\"sid-163DBC60-DBC9-438B-971A-67738FB7715A\" sourceRef=\"modify\" targetRef=\"sid-5FED02D6-C388-48C6-870E-097DB2131EA0\"/>\r\n    <sequenceFlow id=\"sid-72258A41-203E-428C-B71D-CA3506252D73\" name=\"是\" sourceRef=\"sid-C28BB5F6-013D-4570-B432-61B380C1F46F\" targetRef=\"audit2\">\r\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${pass==1}]]></conditionExpression>\r\n    </sequenceFlow>\r\n    <sequenceFlow id=\"sid-8448EF4A-B62E-4899-ABC2-0E2DB2AE6838\" name=\"重新申请\" sourceRef=\"sid-5FED02D6-C388-48C6-870E-097DB2131EA0\" targetRef=\"audit\">\r\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${pass==1}]]></conditionExpression>\r\n    </sequenceFlow>\r\n    <sequenceFlow id=\"sid-A7589084-4623-4FEA-A774-00A70DDC1D20\" name=\"是\" sourceRef=\"sid-ED46FE41-A0FD-496D-86DC-2C97AF5735F0\" targetRef=\"audit3\">\r\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${pass==1}]]></conditionExpression>\r\n    </sequenceFlow>\r\n    <sequenceFlow id=\"sid-FA618636-3708-4D0C-8514-29A4BB8BC926\" name=\"否\" sourceRef=\"sid-ED46FE41-A0FD-496D-86DC-2C97AF5735F0\" targetRef=\"modify\">\r\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${pass==0}]]></conditionExpression>\r\n    </sequenceFlow>\r\n    <sequenceFlow id=\"sid-1525BFF4-3E9D-4D8A-BF80-1F63AFE16289\" name=\"否\" sourceRef=\"sid-FE485B2D-9A23-4236-BD0D-D788CA6E30E4\" targetRef=\"modify\">\r\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${pass==0}]]></conditionExpression>\r\n    </sequenceFlow>\r\n    <sequenceFlow id=\"sid-35CC8C6C-1067-4398-991C-CCF955115965\" name=\"否\" sourceRef=\"sid-3F53B6BD-F8F3-496B-AC08-50630BD11477\" targetRef=\"modify\">\r\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${pass==0}]]></conditionExpression>\r\n    </sequenceFlow>\r\n    <sequenceFlow id=\"sid-BDB0AAB2-7E50-4D35-80EE-CE0BECDD9F57\" sourceRef=\"apply_end\" targetRef=\"end\"/>\r\n    <sequenceFlow id=\"sid-44AFB9C1-4057-4C48-B1F2-1EC897A52CB7\" name=\"销毁\" sourceRef=\"sid-5FED02D6-C388-48C6-870E-097DB2131EA0\" targetRef=\"end\">\r\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${pass==0}]]></conditionExpression>\r\n    </sequenceFlow>\r\n  </process>\r\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_test_audit\">\r\n    <bpmndi:BPMNPlane bpmnElement=\"test_audit\" id=\"BPMNPlane_test_audit\">\r\n      <bpmndi:BPMNShape bpmnElement=\"start\" id=\"BPMNShape_start\">\r\n        <omgdc:Bounds height=\"30.0\" width=\"30.0\" x=\"30.0\" y=\"245.0\"/>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"end\" id=\"BPMNShape_end\">\r\n        <omgdc:Bounds height=\"28.0\" width=\"28.0\" x=\"975.0\" y=\"356.0\"/>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"modify\" id=\"BPMNShape_modify\">\r\n        <omgdc:Bounds height=\"58.0\" width=\"102.0\" x=\"209.0\" y=\"135.0\"/>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"audit\" id=\"BPMNShape_audit\">\r\n        <omgdc:Bounds height=\"57.0\" width=\"96.0\" x=\"105.0\" y=\"231.5\"/>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"sid-C28BB5F6-013D-4570-B432-61B380C1F46F\" id=\"BPMNShape_sid-C28BB5F6-013D-4570-B432-61B380C1F46F\">\r\n        <omgdc:Bounds height=\"40.0\" width=\"40.0\" x=\"240.0\" y=\"240.0\"/>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"audit2\" id=\"BPMNShape_audit2\">\r\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"210.0\" y=\"330.0\"/>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"sid-ED46FE41-A0FD-496D-86DC-2C97AF5735F0\" id=\"BPMNShape_sid-ED46FE41-A0FD-496D-86DC-2C97AF5735F0\">\r\n        <omgdc:Bounds height=\"40.0\" width=\"40.0\" x=\"345.0\" y=\"350.0\"/>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"audit3\" id=\"BPMNShape_audit3\">\r\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"420.0\" y=\"330.0\"/>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"sid-FE485B2D-9A23-4236-BD0D-D788CA6E30E4\" id=\"BPMNShape_sid-FE485B2D-9A23-4236-BD0D-D788CA6E30E4\">\r\n        <omgdc:Bounds height=\"40.0\" width=\"40.0\" x=\"555.0\" y=\"350.0\"/>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"audit4\" id=\"BPMNShape_audit4\">\r\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"630.0\" y=\"330.0\"/>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"sid-3F53B6BD-F8F3-496B-AC08-50630BD11477\" id=\"BPMNShape_sid-3F53B6BD-F8F3-496B-AC08-50630BD11477\">\r\n        <omgdc:Bounds height=\"40.0\" width=\"40.0\" x=\"765.0\" y=\"350.0\"/>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"apply_end\" id=\"BPMNShape_apply_end\">\r\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"840.0\" y=\"330.0\"/>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"sid-5FED02D6-C388-48C6-870E-097DB2131EA0\" id=\"BPMNShape_sid-5FED02D6-C388-48C6-870E-097DB2131EA0\">\r\n        <omgdc:Bounds height=\"40.0\" width=\"40.0\" x=\"240.0\" y=\"45.0\"/>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-3DBCD661-5720-4480-8156-748BE0275FEF\" id=\"BPMNEdge_sid-3DBCD661-5720-4480-8156-748BE0275FEF\">\r\n        <omgdi:waypoint x=\"520.0\" y=\"370.0\"/>\r\n        <omgdi:waypoint x=\"555.0\" y=\"370.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-44AFB9C1-4057-4C48-B1F2-1EC897A52CB7\" id=\"BPMNEdge_sid-44AFB9C1-4057-4C48-B1F2-1EC897A52CB7\">\r\n        <omgdi:waypoint x=\"280.0\" y=\"65.0\"/>\r\n        <omgdi:waypoint x=\"989.0\" y=\"65.0\"/>\r\n        <omgdi:waypoint x=\"989.0\" y=\"356.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-8448EF4A-B62E-4899-ABC2-0E2DB2AE6838\" id=\"BPMNEdge_sid-8448EF4A-B62E-4899-ABC2-0E2DB2AE6838\">\r\n        <omgdi:waypoint x=\"240.0\" y=\"65.0\"/>\r\n        <omgdi:waypoint x=\"153.0\" y=\"65.0\"/>\r\n        <omgdi:waypoint x=\"153.0\" y=\"231.5\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-A7589084-4623-4FEA-A774-00A70DDC1D20\" id=\"BPMNEdge_sid-A7589084-4623-4FEA-A774-00A70DDC1D20\">\r\n        <omgdi:waypoint x=\"385.0\" y=\"370.0\"/>\r\n        <omgdi:waypoint x=\"420.0\" y=\"370.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-35CC8C6C-1067-4398-991C-CCF955115965\" id=\"BPMNEdge_sid-35CC8C6C-1067-4398-991C-CCF955115965\">\r\n        <omgdi:waypoint x=\"785.0\" y=\"350.0\"/>\r\n        <omgdi:waypoint x=\"785.0\" y=\"164.0\"/>\r\n        <omgdi:waypoint x=\"311.0\" y=\"164.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-EF2F51BB-1D99-4F0B-ACF2-B6C1300A7D2B\" id=\"BPMNEdge_sid-EF2F51BB-1D99-4F0B-ACF2-B6C1300A7D2B\">\r\n        <omgdi:waypoint x=\"310.0\" y=\"370.0\"/>\r\n        <omgdi:waypoint x=\"345.0\" y=\"370.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-7D723190-1432-411D-A4A4-774225E54CD9\" id=\"BPMNEdge_sid-7D723190-1432-411D-A4A4-774225E54CD9\">\r\n        <omgdi:waypoint x=\"805.0\" y=\"370.0\"/>\r\n        <omgdi:waypoint x=\"840.0\" y=\"370.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-2AB7C01A-50EE-4AAC-8C8F-F6E1935B3DA7\" id=\"BPMNEdge_sid-2AB7C01A-50EE-4AAC-8C8F-F6E1935B3DA7\">\r\n        <omgdi:waypoint x=\"201.0\" y=\"260.0\"/>\r\n        <omgdi:waypoint x=\"240.0\" y=\"260.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-D44CAD43-0271-4920-A524-9B8533E52550\" id=\"BPMNEdge_sid-D44CAD43-0271-4920-A524-9B8533E52550\">\r\n        <omgdi:waypoint x=\"595.0\" y=\"370.0\"/>\r\n        <omgdi:waypoint x=\"630.0\" y=\"370.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-FA618636-3708-4D0C-8514-29A4BB8BC926\" id=\"BPMNEdge_sid-FA618636-3708-4D0C-8514-29A4BB8BC926\">\r\n        <omgdi:waypoint x=\"365.0\" y=\"350.0\"/>\r\n        <omgdi:waypoint x=\"365.0\" y=\"164.0\"/>\r\n        <omgdi:waypoint x=\"311.0\" y=\"164.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-02DB2AD9-1332-4198-AC8D-22A35169D15C\" id=\"BPMNEdge_sid-02DB2AD9-1332-4198-AC8D-22A35169D15C\">\r\n        <omgdi:waypoint x=\"730.0\" y=\"370.0\"/>\r\n        <omgdi:waypoint x=\"765.0\" y=\"370.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-36E50C8B-6C7C-4968-B02D-EBAA425BF4BE\" id=\"BPMNEdge_sid-36E50C8B-6C7C-4968-B02D-EBAA425BF4BE\">\r\n        <omgdi:waypoint x=\"60.0\" y=\"260.0\"/>\r\n        <omgdi:waypoint x=\"105.0\" y=\"260.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-53258502-43EE-4DE8-B1A4-DBD11922B8AF\" id=\"BPMNEdge_sid-53258502-43EE-4DE8-B1A4-DBD11922B8AF\">\r\n        <omgdi:waypoint x=\"260.0\" y=\"240.0\"/>\r\n        <omgdi:waypoint x=\"260.0\" y=\"193.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-163DBC60-DBC9-438B-971A-67738FB7715A\" id=\"BPMNEdge_sid-163DBC60-DBC9-438B-971A-67738FB7715A\">\r\n        <omgdi:waypoint x=\"260.0\" y=\"135.0\"/>\r\n        <omgdi:waypoint x=\"260.0\" y=\"85.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-BDB0AAB2-7E50-4D35-80EE-CE0BECDD9F57\" id=\"BPMNEdge_sid-BDB0AAB2-7E50-4D35-80EE-CE0BECDD9F57\">\r\n        <omgdi:waypoint x=\"940.0\" y=\"370.0\"/>\r\n        <omgdi:waypoint x=\"975.0\" y=\"370.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-1525BFF4-3E9D-4D8A-BF80-1F63AFE16289\" id=\"BPMNEdge_sid-1525BFF4-3E9D-4D8A-BF80-1F63AFE16289\">\r\n        <omgdi:waypoint x=\"575.0\" y=\"350.0\"/>\r\n        <omgdi:waypoint x=\"575.0\" y=\"164.0\"/>\r\n        <omgdi:waypoint x=\"311.0\" y=\"164.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-72258A41-203E-428C-B71D-CA3506252D73\" id=\"BPMNEdge_sid-72258A41-203E-428C-B71D-CA3506252D73\">\r\n        <omgdi:waypoint x=\"260.0\" y=\"280.0\"/>\r\n        <omgdi:waypoint x=\"260.0\" y=\"330.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n    </bpmndi:BPMNPlane>\r\n  </bpmndi:BPMNDiagram>\r\n</definitions>',0);
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
INSERT INTO `act_re_procdef` VALUES ('test_audit:1:a0b53ecd268c42b2ba57bca3f5d1078c',1,'http://www.activiti.org/test','流程审批测试流程','test_audit',1,'809b52df107d48c98625937c3f17b1e9','test_audit.bpmn20.xml','test_audit.png',NULL,1,1,1,'');
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
  `id` varchar(64) NOT NULL COMMENT '编号',
  `category_id` varchar(64) NOT NULL COMMENT '栏目编号',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `link` varchar(255) DEFAULT NULL COMMENT '文章链接',
  `color` varchar(50) DEFAULT NULL COMMENT '标题颜色',
  `image` varchar(255) DEFAULT NULL COMMENT '文章图片',
  `keywords` varchar(255) DEFAULT NULL COMMENT '关键字',
  `description` varchar(255) DEFAULT NULL COMMENT '描述、摘要',
  `weight` int(11) DEFAULT '0' COMMENT '权重，越大越靠前',
  `weight_date` datetime DEFAULT NULL COMMENT '权重期限',
  `hits` int(11) DEFAULT '0' COMMENT '点击数',
  `posid` varchar(10) DEFAULT NULL COMMENT '推荐位，多选',
  `custom_content_view` varchar(255) DEFAULT NULL COMMENT '自定义内容视图',
  `view_config` text COMMENT '视图配置',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `cms_article_create_by` (`create_by`),
  KEY `cms_article_title` (`title`),
  KEY `cms_article_keywords` (`keywords`),
  KEY `cms_article_del_flag` (`del_flag`),
  KEY `cms_article_weight` (`weight`),
  KEY `cms_article_update_date` (`update_date`),
  KEY `cms_article_category_id` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文章表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_article`
--

LOCK TABLES `cms_article` WRITE;
/*!40000 ALTER TABLE `cms_article` DISABLE KEYS */;
INSERT INTO `cms_article` VALUES ('1','3','文章标题标题标题标题',NULL,'green',NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('10','4','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('11','5','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('12','5','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('13','5','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('14','7','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('15','7','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('16','7','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('17','7','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('18','8','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('19','8','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('2','3','文章标题标题标题标题',NULL,'red',NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('20','8','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('21','8','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('22','9','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('23','9','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('24','9','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('25','9','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('26','9','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('27','11','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('28','11','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('29','11','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('3','3','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('30','11','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('31','11','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('32','12','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('33','12','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('34','12','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('35','12','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('36','12','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('37','13','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('38','13','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('39','13','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('4','3','文章标题标题标题标题',NULL,'green',NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('40','13','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('41','14','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('42','14','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('43','14','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('44','14','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('45','14','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('46','15','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('47','15','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('48','15','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('49','16','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('5','3','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('50','17','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('51','17','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('52','26','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('53','26','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('6','3','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('7','4','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('8','4','文章标题标题标题标题',NULL,'blue',NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('9','4','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0');
/*!40000 ALTER TABLE `cms_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_article_data`
--

DROP TABLE IF EXISTS `cms_article_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cms_article_data` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `content` text COMMENT '文章内容',
  `copyfrom` varchar(255) DEFAULT NULL COMMENT '文章来源',
  `relation` varchar(255) DEFAULT NULL COMMENT '相关文章',
  `allow_comment` char(1) DEFAULT NULL COMMENT '是否允许评论',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文章详表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_article_data`
--

LOCK TABLES `cms_article_data` WRITE;
/*!40000 ALTER TABLE `cms_article_data` DISABLE KEYS */;
INSERT INTO `cms_article_data` VALUES ('1','文章内容内容内容内容','来源','1,2,3','1'),('10','文章内容内容内容内容','来源','1,2,3','1'),('11','文章内容内容内容内容','来源','1,2,3','1'),('12','文章内容内容内容内容','来源','1,2,3','1'),('13','文章内容内容内容内容','来源','1,2,3','1'),('14','文章内容内容内容内容','来源','1,2,3','1'),('15','文章内容内容内容内容','来源','1,2,3','1'),('16','文章内容内容内容内容','来源','1,2,3','1'),('17','文章内容内容内容内容','来源','1,2,3','1'),('18','文章内容内容内容内容','来源','1,2,3','1'),('19','文章内容内容内容内容','来源','1,2,3','1'),('2','文章内容内容内容内容','来源','1,2,3','1'),('20','文章内容内容内容内容','来源','1,2,3','1'),('21','文章内容内容内容内容','来源','1,2,3','1'),('22','文章内容内容内容内容','来源','1,2,3','1'),('23','文章内容内容内容内容','来源','1,2,3','1'),('24','文章内容内容内容内容','来源','1,2,3','1'),('25','文章内容内容内容内容','来源','1,2,3','1'),('26','文章内容内容内容内容','来源','1,2,3','1'),('27','文章内容内容内容内容','来源','1,2,3','1'),('28','文章内容内容内容内容','来源','1,2,3','1'),('29','文章内容内容内容内容','来源','1,2,3','1'),('3','文章内容内容内容内容','来源','1,2,3','1'),('30','文章内容内容内容内容','来源','1,2,3','1'),('31','文章内容内容内容内容','来源','1,2,3','1'),('32','文章内容内容内容内容','来源','1,2,3','1'),('33','文章内容内容内容内容','来源','1,2,3','1'),('34','文章内容内容内容内容','来源','1,2,3','1'),('35','文章内容内容内容内容','来源','1,2,3','1'),('36','文章内容内容内容内容','来源','1,2,3','1'),('37','文章内容内容内容内容','来源','1,2,3','1'),('38','文章内容内容内容内容','来源','1,2,3','1'),('39','文章内容内容内容内容','来源','1,2,3','1'),('4','文章内容内容内容内容','来源','1,2,3','1'),('40','文章内容内容内容内容','来源','1,2,3','1'),('41','文章内容内容内容内容','来源','1,2,3','1'),('42','文章内容内容内容内容','来源','1,2,3','1'),('43','文章内容内容内容内容','来源','1,2,3','1'),('44','文章内容内容内容内容','来源','1,2,3','1'),('45','文章内容内容内容内容','来源','1,2,3','1'),('46','文章内容内容内容内容','来源','1,2,3','1'),('47','文章内容内容内容内容','来源','1,2,3','1'),('48','文章内容内容内容内容','来源','1,2,3','1'),('49','文章内容内容内容内容','来源','1,2,3','1'),('5','文章内容内容内容内容','来源','1,2,3','1'),('50','文章内容内容内容内容','来源','1,2,3','1'),('51','文章内容内容内容内容','来源','1,2,3','1'),('52','文章内容内容内容内容','来源','1,2,3','1'),('53','文章内容内容内容内容','来源','1,2,3','1'),('6','文章内容内容内容内容','来源','1,2,3','1'),('7','文章内容内容内容内容','来源','1,2,3','1'),('8','文章内容内容内容内容','来源','1,2,3','1'),('9','文章内容内容内容内容','来源','1,2,3','1');
/*!40000 ALTER TABLE `cms_article_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_category`
--

DROP TABLE IF EXISTS `cms_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cms_category` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `parent_id` varchar(64) NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) NOT NULL COMMENT '所有父级编号',
  `site_id` varchar(64) DEFAULT '1' COMMENT '站点编号',
  `office_id` varchar(64) DEFAULT NULL COMMENT '归属机构',
  `module` varchar(20) DEFAULT NULL COMMENT '栏目模块',
  `name` varchar(100) NOT NULL COMMENT '栏目名称',
  `image` varchar(255) DEFAULT NULL COMMENT '栏目图片',
  `href` varchar(255) DEFAULT NULL COMMENT '链接',
  `target` varchar(20) DEFAULT NULL COMMENT '目标',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `keywords` varchar(255) DEFAULT NULL COMMENT '关键字',
  `sort` int(11) DEFAULT '30' COMMENT '排序（升序）',
  `in_menu` char(1) DEFAULT '1' COMMENT '是否在导航中显示',
  `in_list` char(1) DEFAULT '1' COMMENT '是否在分类页中显示列表',
  `show_modes` char(1) DEFAULT '0' COMMENT '展现方式',
  `allow_comment` char(1) DEFAULT NULL COMMENT '是否允许评论',
  `is_audit` char(1) DEFAULT NULL COMMENT '是否需要审核',
  `custom_list_view` varchar(255) DEFAULT NULL COMMENT '自定义列表视图',
  `custom_content_view` varchar(255) DEFAULT NULL COMMENT '自定义内容视图',
  `view_config` text COMMENT '视图配置',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `cms_category_parent_id` (`parent_id`),
  KEY `cms_category_module` (`module`),
  KEY `cms_category_name` (`name`),
  KEY `cms_category_sort` (`sort`),
  KEY `cms_category_del_flag` (`del_flag`),
  KEY `cms_category_office_id` (`office_id`),
  KEY `cms_category_site_id` (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='栏目表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_category`
--

LOCK TABLES `cms_category` WRITE;
/*!40000 ALTER TABLE `cms_category` DISABLE KEYS */;
INSERT INTO `cms_category` VALUES ('1','0','0,','0','1',NULL,'顶级栏目',NULL,NULL,NULL,NULL,NULL,0,'1','1','0','0','1',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('10','1','0,1,','1','4','article','软件介绍',NULL,NULL,NULL,NULL,NULL,20,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('11','10','0,1,10,','1','4','article','网络工具',NULL,NULL,NULL,NULL,NULL,30,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('12','10','0,1,10,','1','4','article','浏览工具',NULL,NULL,NULL,NULL,NULL,40,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('13','10','0,1,10,','1','4','article','浏览辅助',NULL,NULL,NULL,NULL,NULL,50,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('14','10','0,1,10,','1','4','article','网络优化',NULL,NULL,NULL,NULL,NULL,50,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('15','10','0,1,10,','1','4','article','邮件处理',NULL,NULL,NULL,NULL,NULL,50,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('16','10','0,1,10,','1','4','article','下载工具',NULL,NULL,NULL,NULL,NULL,50,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('17','10','0,1,10,','1','4','article','搜索工具',NULL,NULL,NULL,NULL,NULL,50,'1','1','2','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('18','1','0,1,','1','5','link','友情链接',NULL,NULL,NULL,NULL,NULL,90,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('19','18','0,1,18,','1','5','link','常用网站',NULL,NULL,NULL,NULL,NULL,50,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('2','1','0,1,','1','3','article','组织机构',NULL,NULL,NULL,NULL,NULL,10,'1','1','0','0','1',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('20','18','0,1,18,','1','5','link','门户网站',NULL,NULL,NULL,NULL,NULL,50,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('21','18','0,1,18,','1','5','link','购物网站',NULL,NULL,NULL,NULL,NULL,50,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('22','18','0,1,18,','1','5','link','交友社区',NULL,NULL,NULL,NULL,NULL,50,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('23','18','0,1,18,','1','5','link','音乐视频',NULL,NULL,NULL,NULL,NULL,50,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('24','1','0,1,','1','6',NULL,'百度一下',NULL,'http://www.baidu.com','_blank',NULL,NULL,90,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('25','1','0,1,','1','6',NULL,'全文检索',NULL,'/search',NULL,NULL,NULL,90,'0','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('26','1','0,1,','2','6','article','测试栏目',NULL,NULL,NULL,NULL,NULL,90,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('27','1','0,1,','1','6',NULL,'公共留言',NULL,'/guestbook',NULL,NULL,NULL,90,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('3','2','0,1,2,','1','3','article','网站简介',NULL,NULL,NULL,NULL,NULL,30,'1','1','0','0','1',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('4','2','0,1,2,','1','3','article','内部机构',NULL,NULL,NULL,NULL,NULL,40,'1','1','0','0','1',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('5','2','0,1,2,','1','3','article','地方机构',NULL,NULL,NULL,NULL,NULL,50,'1','1','0','0','1',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('6','1','0,1,','1','3','article','质量检验',NULL,NULL,NULL,NULL,NULL,20,'1','1','1','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('7','6','0,1,6,','1','3','article','产品质量',NULL,NULL,NULL,NULL,NULL,30,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('8','6','0,1,6,','1','3','article','技术质量',NULL,NULL,NULL,NULL,NULL,40,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('9','6','0,1,6,','1','3','article','工程质量',NULL,NULL,NULL,NULL,NULL,50,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0');
/*!40000 ALTER TABLE `cms_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_comment`
--

DROP TABLE IF EXISTS `cms_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cms_comment` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `category_id` varchar(64) NOT NULL COMMENT '栏目编号',
  `content_id` varchar(64) NOT NULL COMMENT '栏目内容的编号',
  `title` varchar(255) DEFAULT NULL COMMENT '栏目内容的标题',
  `content` varchar(255) DEFAULT NULL COMMENT '评论内容',
  `name` varchar(100) DEFAULT NULL COMMENT '评论姓名',
  `ip` varchar(100) DEFAULT NULL COMMENT '评论IP',
  `create_date` datetime NOT NULL COMMENT '评论时间',
  `audit_user_id` varchar(64) DEFAULT NULL COMMENT '审核人',
  `audit_date` datetime DEFAULT NULL COMMENT '审核时间',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `cms_comment_category_id` (`category_id`),
  KEY `cms_comment_content_id` (`content_id`),
  KEY `cms_comment_status` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='评论表';
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
  `id` varchar(64) NOT NULL COMMENT '编号',
  `type` char(1) NOT NULL COMMENT '留言分类',
  `content` varchar(255) NOT NULL COMMENT '留言内容',
  `name` varchar(100) NOT NULL COMMENT '姓名',
  `email` varchar(100) NOT NULL COMMENT '邮箱',
  `phone` varchar(100) NOT NULL COMMENT '电话',
  `workunit` varchar(100) NOT NULL COMMENT '单位',
  `ip` varchar(100) NOT NULL COMMENT 'IP',
  `create_date` datetime NOT NULL COMMENT '留言时间',
  `re_user_id` varchar(64) DEFAULT NULL COMMENT '回复人',
  `re_date` datetime DEFAULT NULL COMMENT '回复时间',
  `re_content` varchar(100) DEFAULT NULL COMMENT '回复内容',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `cms_guestbook_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='留言板';
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
  `id` varchar(64) NOT NULL COMMENT '编号',
  `category_id` varchar(64) NOT NULL COMMENT '栏目编号',
  `title` varchar(255) NOT NULL COMMENT '链接名称',
  `color` varchar(50) DEFAULT NULL COMMENT '标题颜色',
  `image` varchar(255) DEFAULT NULL COMMENT '链接图片',
  `href` varchar(255) DEFAULT NULL COMMENT '链接地址',
  `weight` int(11) DEFAULT '0' COMMENT '权重，越大越靠前',
  `weight_date` datetime DEFAULT NULL COMMENT '权重期限',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `cms_link_category_id` (`category_id`),
  KEY `cms_link_title` (`title`),
  KEY `cms_link_del_flag` (`del_flag`),
  KEY `cms_link_weight` (`weight`),
  KEY `cms_link_create_by` (`create_by`),
  KEY `cms_link_update_date` (`update_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='友情链接';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_link`
--

LOCK TABLES `cms_link` WRITE;
/*!40000 ALTER TABLE `cms_link` DISABLE KEYS */;
INSERT INTO `cms_link` VALUES ('1','19','JeeSite',NULL,NULL,'http://thinkgem.github.com/jeesite',0,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('10','22','58同城',NULL,NULL,'http://www.58.com/',0,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('11','23','视频大全',NULL,NULL,'http://v.360.cn/',0,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('12','23','凤凰网',NULL,NULL,'http://www.ifeng.com/',0,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('2','19','ThinkGem',NULL,NULL,'http://thinkgem.iteye.com/',0,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('3','19','百度一下',NULL,NULL,'http://www.baidu.com',0,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('4','19','谷歌搜索',NULL,NULL,'http://www.google.com',0,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('5','20','新浪网',NULL,NULL,'http://www.sina.com.cn',0,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('6','20','腾讯网',NULL,NULL,'http://www.qq.com/',0,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('7','21','淘宝网',NULL,NULL,'http://www.taobao.com/',0,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('8','21','新华网',NULL,NULL,'http://www.xinhuanet.com/',0,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('9','22','赶集网',NULL,NULL,'http://www.ganji.com/',0,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0');
/*!40000 ALTER TABLE `cms_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_site`
--

DROP TABLE IF EXISTS `cms_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cms_site` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `name` varchar(100) NOT NULL COMMENT '站点名称',
  `title` varchar(100) NOT NULL COMMENT '站点标题',
  `logo` varchar(255) DEFAULT NULL COMMENT '站点Logo',
  `domain` varchar(255) DEFAULT NULL COMMENT '站点域名',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `keywords` varchar(255) DEFAULT NULL COMMENT '关键字',
  `theme` varchar(255) DEFAULT 'default' COMMENT '主题',
  `copyright` text COMMENT '版权信息',
  `custom_index_view` varchar(255) DEFAULT NULL COMMENT '自定义站点首页视图',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `cms_site_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='站点表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_site`
--

LOCK TABLES `cms_site` WRITE;
/*!40000 ALTER TABLE `cms_site` DISABLE KEYS */;
INSERT INTO `cms_site` VALUES ('1','默认站点','JeeSite Web',NULL,NULL,'JeeSite','JeeSite','basic','Copyright &copy; 2012-2013 <a href=\'http://thinkgem.iteye.com\' target=\'_blank\'>ThinkGem</a> - Powered By <a href=\'https://github.com/thinkgem/jeesite\' target=\'_blank\'>JeeSite</a> V1.0',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('2','子站点测试','JeeSite Subsite',NULL,NULL,'JeeSite subsite','JeeSite subsite','basic','Copyright &copy; 2012-2013 <a href=\'http://thinkgem.iteye.com\' target=\'_blank\'>ThinkGem</a> - Powered By <a href=\'https://github.com/thinkgem/jeesite\' target=\'_blank\'>JeeSite</a> V1.0',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0');
/*!40000 ALTER TABLE `cms_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demo_data`
--

DROP TABLE IF EXISTS `demo_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `demo_data` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `user_id` varchar(64) DEFAULT NULL COMMENT '归属用户',
  `office_id` varchar(64) DEFAULT NULL COMMENT '归属部门',
  `area_id` varchar(64) DEFAULT NULL COMMENT '归属区域',
  `name` varchar(100) DEFAULT NULL COMMENT '名称',
  `sex` char(1) DEFAULT NULL COMMENT '性别',
  `in_date` date DEFAULT NULL COMMENT '加入日期',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `test_data_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='实例数据表';
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
  `id` varchar(64) NOT NULL COMMENT '编号',
  `name` varchar(200) DEFAULT NULL COMMENT '名称',
  `category` varchar(2000) DEFAULT NULL COMMENT '分类',
  `package_name` varchar(500) DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) DEFAULT NULL COMMENT '生成模块名',
  `sub_module_name` varchar(30) DEFAULT NULL COMMENT '生成子模块名',
  `function_name` varchar(500) DEFAULT NULL COMMENT '生成功能名',
  `function_name_simple` varchar(100) DEFAULT NULL COMMENT '生成功能名（简写）',
  `function_author` varchar(100) DEFAULT NULL COMMENT '生成功能作者',
  `gen_table_id` varchar(200) DEFAULT NULL COMMENT '生成表编号',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记（0：正常；1：删除）',
  PRIMARY KEY (`id`),
  KEY `gen_scheme_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='生成方案';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_scheme`
--

LOCK TABLES `gen_scheme` WRITE;
/*!40000 ALTER TABLE `gen_scheme` DISABLE KEYS */;
INSERT INTO `gen_scheme` VALUES ('35a13dc260284a728a270db3f382664b','树结构','treeTable','com.thinkgem.jeesite.modules','test',NULL,'树结构生成','树结构','ThinkGem','f6e4dafaa72f4c509636484715f33a96','1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('9c9de9db6da743bb899036c6546061ac','单表','curd','com.thinkgem.jeesite.modules','test',NULL,'单表生成','单表','ThinkGem','aef6f1fc948f4c9ab1c1b780bc471cc2','1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('e6d905fd236b46d1af581dd32bdfb3b0','主子表','curd_many','com.thinkgem.jeesite.modules','test',NULL,'主子表生成','主子表','ThinkGem','43d6d5acffa14c258340ce6765e46c6f','1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0');
/*!40000 ALTER TABLE `gen_scheme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gen_table`
--

DROP TABLE IF EXISTS `gen_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `gen_table` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `name` varchar(200) DEFAULT NULL COMMENT '名称',
  `comments` varchar(500) DEFAULT NULL COMMENT '描述',
  `class_name` varchar(100) DEFAULT NULL COMMENT '实体类名称',
  `parent_table` varchar(200) DEFAULT NULL COMMENT '关联父表',
  `parent_table_fk` varchar(100) DEFAULT NULL COMMENT '关联父表外键',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记（0：正常；1：删除）',
  PRIMARY KEY (`id`),
  KEY `gen_table_name` (`name`),
  KEY `gen_table_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='业务表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_table`
--

LOCK TABLES `gen_table` WRITE;
/*!40000 ALTER TABLE `gen_table` DISABLE KEYS */;
INSERT INTO `gen_table` VALUES ('43d6d5acffa14c258340ce6765e46c6f','test_data_main','业务数据表','TestDataMain',NULL,NULL,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('6e05c389f3c6415ea34e55e9dfb28934','test_data_child','业务数据子表','TestDataChild','test_data_main','test_data_main_id','1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('aef6f1fc948f4c9ab1c1b780bc471cc2','test_data','业务数据表','TestData',NULL,NULL,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('f6e4dafaa72f4c509636484715f33a96','test_tree','树结构表','TestTree',NULL,NULL,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0');
/*!40000 ALTER TABLE `gen_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gen_table_column`
--

DROP TABLE IF EXISTS `gen_table_column`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `gen_table_column` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `gen_table_id` varchar(64) DEFAULT NULL COMMENT '归属表编号',
  `name` varchar(200) DEFAULT NULL COMMENT '名称',
  `comments` varchar(500) DEFAULT NULL COMMENT '描述',
  `jdbc_type` varchar(100) DEFAULT NULL COMMENT '列的数据类型的字节长度',
  `java_type` varchar(500) DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) DEFAULT NULL COMMENT '是否主键',
  `is_null` char(1) DEFAULT NULL COMMENT '是否可为空',
  `is_insert` char(1) DEFAULT NULL COMMENT '是否为插入字段',
  `is_edit` char(1) DEFAULT NULL COMMENT '是否编辑字段',
  `is_list` char(1) DEFAULT NULL COMMENT '是否列表字段',
  `is_query` char(1) DEFAULT NULL COMMENT '是否查询字段',
  `query_type` varchar(200) DEFAULT NULL COMMENT '查询方式（等于、不等于、大于、小于、范围、左LIKE、右LIKE、左右LIKE）',
  `show_type` varchar(200) DEFAULT NULL COMMENT '字段生成方案（文本框、文本域、下拉框、复选框、单选框、字典选择、人员选择、部门选择、区域选择）',
  `dict_type` varchar(200) DEFAULT NULL COMMENT '字典类型',
  `settings` varchar(2000) DEFAULT NULL COMMENT '其它设置（扩展字段JSON）',
  `sort` decimal(10,0) DEFAULT NULL COMMENT '排序（升序）',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记（0：正常；1：删除）',
  PRIMARY KEY (`id`),
  KEY `gen_table_column_table_id` (`gen_table_id`),
  KEY `gen_table_column_name` (`name`),
  KEY `gen_table_column_sort` (`sort`),
  KEY `gen_table_column_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='业务表字段';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_table_column`
--

LOCK TABLES `gen_table_column` WRITE;
/*!40000 ALTER TABLE `gen_table_column` DISABLE KEYS */;
INSERT INTO `gen_table_column` VALUES ('0902a0cb3e8f434280c20e9d771d0658','aef6f1fc948f4c9ab1c1b780bc471cc2','sex','性别','char(1)','String','sex','0','1','1','1','1','1','=','radiobox','sex',NULL,6,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('103fc05c88ff40639875c2111881996a','aef6f1fc948f4c9ab1c1b780bc471cc2','create_date','创建时间','timestamp(6)','java.util.Date','createDate','0','0','1','0','0','0','=','dateselect',NULL,NULL,9,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('12fa38dd986e41908f7fefa5839d1220','6e05c389f3c6415ea34e55e9dfb28934','create_by','创建者','varchar2(64)','com.thinkgem.jeesite.modules.modules.sys.entity.User','createBy.id','0','0','1','0','0','0','=','input',NULL,NULL,4,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('195ee9241f954d008fe01625f4adbfef','f6e4dafaa72f4c509636484715f33a96','create_by','创建者','varchar2(64)','com.thinkgem.jeesite.modules.modules.sys.entity.User','createBy.id','0','0','1','0','0','0','=','input',NULL,NULL,6,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('19c6478b8ff54c60910c2e4fc3d27503','43d6d5acffa14c258340ce6765e46c6f','id','编号','varchar2(64)','String','id','1','0','1','0','0','0','=','input',NULL,NULL,1,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('1ac6562f753d4e599693840651ab2bf7','43d6d5acffa14c258340ce6765e46c6f','in_date','加入日期','date(7)','java.util.Date','inDate','0','1','1','1','0','0','=','dateselect',NULL,NULL,7,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('1b8eb55f65284fa6b0a5879b6d8ad3ec','aef6f1fc948f4c9ab1c1b780bc471cc2','in_date','加入日期','date(7)','java.util.Date','inDate','0','1','1','1','0','1','between','dateselect',NULL,NULL,7,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('1d5ca4d114be41e99f8dc42a682ba609','aef6f1fc948f4c9ab1c1b780bc471cc2','user_id','归属用户','varchar2(64)','com.thinkgem.jeesite.modules.modules.sys.entity.User','user.id|name','0','1','1','1','1','1','=','userselect',NULL,NULL,2,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('21756504ffdc487eb167a823f89c0c06','43d6d5acffa14c258340ce6765e46c6f','update_by','更新者','varchar2(64)','com.thinkgem.jeesite.modules.modules.sys.entity.User','updateBy.id','0','0','1','1','0','0','=','input',NULL,NULL,10,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('24bbdc0a555e4412a106ab1c5f03008e','f6e4dafaa72f4c509636484715f33a96','parent_ids','所有父级编号','varchar2(2000)','String','parentIds','0','0','1','1','0','0','like','input',NULL,NULL,3,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('33152ce420904594b3eac796a27f0560','6e05c389f3c6415ea34e55e9dfb28934','id','编号','varchar2(64)','String','id','1','0','1','0','0','0','=','input',NULL,NULL,1,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('35af241859624a01917ab64c3f4f0813','aef6f1fc948f4c9ab1c1b780bc471cc2','del_flag','删除标记（0：正常；1：删除）','char(1)','String','delFlag','0','0','1','0','0','0','=','radiobox','del_flag',NULL,13,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('398b4a03f06940bfb979ca574e1911e3','aef6f1fc948f4c9ab1c1b780bc471cc2','create_by','创建者','varchar2(64)','com.thinkgem.jeesite.modules.modules.sys.entity.User','createBy.id','0','0','1','0','0','0','=','input',NULL,NULL,8,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('3a7cf23ae48a4c849ceb03feffc7a524','43d6d5acffa14c258340ce6765e46c6f','area_id','归属区域','nvarchar2(64)','com.thinkgem.jeesite.modules.modules.sys.entity.Area','area.id|name','0','1','1','1','0','0','=','areaselect',NULL,NULL,4,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('3d9c32865bb44e85af73381df0ffbf3d','43d6d5acffa14c258340ce6765e46c6f','update_date','更新时间','timestamp(6)','java.util.Date','updateDate','0','0','1','1','1','0','=','dateselect',NULL,NULL,11,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('416c76d2019b4f76a96d8dc3a8faf84c','f6e4dafaa72f4c509636484715f33a96','update_date','更新时间','timestamp(6)','java.util.Date','updateDate','0','0','1','1','1','0','=','dateselect',NULL,NULL,9,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('46e6d8283270493687085d29efdecb05','f6e4dafaa72f4c509636484715f33a96','del_flag','删除标记（0：正常；1：删除）','char(1)','String','delFlag','0','0','1','0','0','0','=','radiobox','del_flag',NULL,11,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('4a0a1fff86ca46519477d66b82e01991','aef6f1fc948f4c9ab1c1b780bc471cc2','name','名称','nvarchar2(100)','String','name','0','1','1','1','1','1','like','input',NULL,NULL,5,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('4c8ef12cb6924b9ba44048ba9913150b','43d6d5acffa14c258340ce6765e46c6f','create_date','创建时间','timestamp(6)','java.util.Date','createDate','0','0','1','0','0','0','=','dateselect',NULL,NULL,9,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('53d65a3d306d4fac9e561db9d3c66912','6e05c389f3c6415ea34e55e9dfb28934','del_flag','删除标记（0：正常；1：删除）','char(1)','String','delFlag','0','0','1','0','0','0','=','radiobox','del_flag',NULL,9,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('56fa71c0bd7e4132931874e548dc9ba5','6e05c389f3c6415ea34e55e9dfb28934','update_by','更新者','varchar2(64)','com.thinkgem.jeesite.modules.modules.sys.entity.User','updateBy.id','0','0','1','1','0','0','=','input',NULL,NULL,6,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('5a4a1933c9c844fdba99de043dc8205e','aef6f1fc948f4c9ab1c1b780bc471cc2','update_by','更新者','varchar2(64)','com.thinkgem.jeesite.modules.modules.sys.entity.User','updateBy.id','0','0','1','1','0','0','=','input',NULL,NULL,10,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('5e5c69bd3eaa4dcc9743f361f3771c08','aef6f1fc948f4c9ab1c1b780bc471cc2','id','编号','varchar2(64)','String','id','1','0','1','0','0','0','=','input',NULL,NULL,1,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('633f5a49ec974c099158e7b3e6bfa930','f6e4dafaa72f4c509636484715f33a96','name','名称','nvarchar2(100)','String','name','0','0','1','1','1','1','like','input',NULL,NULL,4,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('652491500f2641ffa7caf95a93e64d34','6e05c389f3c6415ea34e55e9dfb28934','update_date','更新时间','timestamp(6)','java.util.Date','updateDate','0','0','1','1','1','0','=','dateselect',NULL,NULL,7,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('6763ff6dc7cd4c668e76cf9b697d3ff6','f6e4dafaa72f4c509636484715f33a96','sort','排序','number(10)','Integer','sort','0','0','1','1','1','0','=','input',NULL,NULL,5,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('67d0331f809a48ee825602659f0778e8','43d6d5acffa14c258340ce6765e46c6f','name','名称','nvarchar2(100)','String','name','0','1','1','1','1','1','like','input',NULL,NULL,5,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('68345713bef3445c906f70e68f55de38','6e05c389f3c6415ea34e55e9dfb28934','test_data_main_id','业务主表','varchar2(64)','String','testDataMain.id','0','1','1','1','0','0','=','input',NULL,NULL,2,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('71ea4bc10d274911b405f3165fc1bb1a','aef6f1fc948f4c9ab1c1b780bc471cc2','area_id','归属区域','nvarchar2(64)','com.thinkgem.jeesite.modules.modules.sys.entity.Area','area.id|name','0','1','1','1','1','1','=','areaselect',NULL,NULL,4,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('7f871058d94c4d9a89084be7c9ce806d','6e05c389f3c6415ea34e55e9dfb28934','remarks','备注信息','nvarchar2(255)','String','remarks','0','1','1','1','1','0','=','input',NULL,NULL,8,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('8b48774cfe184913b8b5eb17639cf12d','43d6d5acffa14c258340ce6765e46c6f','create_by','创建者','varchar2(64)','com.thinkgem.jeesite.modules.modules.sys.entity.User','createBy.id','0','0','1','0','0','0','=','input',NULL,NULL,8,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('8b7cf0525519474ebe1de9e587eb7067','6e05c389f3c6415ea34e55e9dfb28934','create_date','创建时间','timestamp(6)','java.util.Date','createDate','0','0','1','0','0','0','=','dateselect',NULL,NULL,5,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('8b9de88df53e485d8ef461c4b1824bc1','43d6d5acffa14c258340ce6765e46c6f','user_id','归属用户','varchar2(64)','com.thinkgem.jeesite.modules.modules.sys.entity.User','user.id|name','0','1','1','1','1','1','=','userselect',NULL,NULL,2,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('8da38dbe5fe54e9bb1f9682c27fbf403','aef6f1fc948f4c9ab1c1b780bc471cc2','remarks','备注信息','nvarchar2(255)','String','remarks','0','1','1','1','1','0','=','textarea',NULL,NULL,12,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('92481c16a0b94b0e8bba16c3c54eb1e4','f6e4dafaa72f4c509636484715f33a96','create_date','创建时间','timestamp(6)','java.util.Date','createDate','0','0','1','0','0','0','=','dateselect',NULL,NULL,7,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('9a012c1d2f934dbf996679adb7cc827a','f6e4dafaa72f4c509636484715f33a96','parent_id','父级编号','varchar2(64)','This','parent.id|name','0','0','1','1','0','0','=','treeselect',NULL,NULL,2,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('ad3bf0d4b44b4528a5211a66af88f322','aef6f1fc948f4c9ab1c1b780bc471cc2','office_id','归属部门','varchar2(64)','com.thinkgem.jeesite.modules.modules.sys.entity.Office','office.id|name','0','1','1','1','1','1','=','officeselect',NULL,NULL,3,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('bb1256a8d1b741f6936d8fed06f45eed','f6e4dafaa72f4c509636484715f33a96','update_by','更新者','varchar2(64)','com.thinkgem.jeesite.modules.modules.sys.entity.User','updateBy.id','0','0','1','1','0','0','=','input',NULL,NULL,8,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('ca68a2d403f0449cbaa1d54198c6f350','43d6d5acffa14c258340ce6765e46c6f','office_id','归属部门','varchar2(64)','com.thinkgem.jeesite.modules.modules.sys.entity.Office','office.id|name','0','1','1','1','0','0','=','officeselect',NULL,NULL,3,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('cb9c0ec3da26432d9cbac05ede0fd1d0','43d6d5acffa14c258340ce6765e46c6f','remarks','备注信息','nvarchar2(255)','String','remarks','0','1','1','1','1','0','=','textarea',NULL,NULL,12,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('cfcfa06ea61749c9b4c4dbc507e0e580','f6e4dafaa72f4c509636484715f33a96','id','编号','varchar2(64)','String','id','1','0','1','0','0','0','=','input',NULL,NULL,1,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('d5c2d932ae904aa8a9f9ef34cd36fb0b','43d6d5acffa14c258340ce6765e46c6f','sex','性别','char(1)','String','sex','0','1','1','1','0','1','=','select','sex',NULL,6,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('e64050a2ebf041faa16f12dda5dcf784','6e05c389f3c6415ea34e55e9dfb28934','name','名称','nvarchar2(100)','String','name','0','1','1','1','1','1','like','input',NULL,NULL,3,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('e8d11127952d4aa288bb3901fc83127f','43d6d5acffa14c258340ce6765e46c6f','del_flag','删除标记（0：正常；1：删除）','char(1)','String','delFlag','0','0','1','0','0','0','=','radiobox','del_flag',NULL,13,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('eb2e5afd13f147a990d30e68e7f64e12','aef6f1fc948f4c9ab1c1b780bc471cc2','update_date','更新时间','timestamp(6)','java.util.Date','updateDate','0','0','1','1','1','0','=','dateselect',NULL,NULL,11,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('f5ed8c82bad0413fbfcccefa95931358','f6e4dafaa72f4c509636484715f33a96','remarks','备注信息','nvarchar2(255)','String','remarks','0','1','1','1','1','0','=','textarea',NULL,NULL,10,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0');
/*!40000 ALTER TABLE `gen_table_column` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gen_template`
--

DROP TABLE IF EXISTS `gen_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `gen_template` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `name` varchar(200) DEFAULT NULL COMMENT '名称',
  `category` varchar(2000) DEFAULT NULL COMMENT '分类',
  `file_path` varchar(500) DEFAULT NULL COMMENT '生成文件路径',
  `file_name` varchar(200) DEFAULT NULL COMMENT '生成文件名',
  `content` text COMMENT '内容',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记（0：正常；1：删除）',
  PRIMARY KEY (`id`),
  KEY `gen_template_del_falg` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='代码模板表';
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
  `id` varchar(64) NOT NULL COMMENT '编号',
  `process_instance_id` varchar(64) DEFAULT NULL COMMENT '流程实例编号',
  `start_time` datetime DEFAULT NULL COMMENT '开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '结束时间',
  `leave_type` varchar(20) DEFAULT NULL COMMENT '请假类型',
  `reason` varchar(255) DEFAULT NULL COMMENT '请假理由',
  `apply_time` datetime DEFAULT NULL COMMENT '申请时间',
  `reality_start_time` datetime DEFAULT NULL COMMENT '实际开始时间',
  `reality_end_time` datetime DEFAULT NULL COMMENT '实际结束时间',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `oa_leave_create_by` (`create_by`),
  KEY `oa_leave_process_instance_id` (`process_instance_id`),
  KEY `oa_leave_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='请假流程表';
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
  `id` varchar(64) NOT NULL COMMENT '编号',
  `type` char(1) DEFAULT NULL COMMENT '类型',
  `title` varchar(200) DEFAULT NULL COMMENT '标题',
  `content` varchar(2000) DEFAULT NULL COMMENT '内容',
  `files` varchar(2000) DEFAULT NULL COMMENT '附件',
  `status` char(1) DEFAULT NULL COMMENT '状态',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `oa_notify_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='通知通告';
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
  `id` varchar(64) NOT NULL COMMENT '编号',
  `oa_notify_id` varchar(64) DEFAULT NULL COMMENT '通知通告ID',
  `user_id` varchar(64) DEFAULT NULL COMMENT '接受人',
  `read_flag` char(1) DEFAULT '0' COMMENT '阅读标记',
  `read_date` date DEFAULT NULL COMMENT '阅读时间',
  PRIMARY KEY (`id`),
  KEY `oa_notify_record_notify_id` (`oa_notify_id`),
  KEY `oa_notify_record_user_id` (`user_id`),
  KEY `oa_notify_record_read_flag` (`read_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='通知通告发送记录';
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
  `id` varchar(64) NOT NULL COMMENT '编号',
  `PROC_INS_ID` varchar(64) DEFAULT NULL COMMENT '流程实例ID',
  `USER_ID` varchar(64) DEFAULT NULL COMMENT '变动用户',
  `OFFICE_ID` varchar(64) DEFAULT NULL COMMENT '归属部门',
  `POST` varchar(255) DEFAULT NULL COMMENT '岗位',
  `AGE` char(1) DEFAULT NULL COMMENT '性别',
  `EDU` varchar(255) DEFAULT NULL COMMENT '学历',
  `CONTENT` varchar(255) DEFAULT NULL COMMENT '调整原因',
  `OLDA` varchar(255) DEFAULT NULL COMMENT '现行标准 薪酬档级',
  `OLDB` varchar(255) DEFAULT NULL COMMENT '现行标准 月工资额',
  `OLDC` varchar(255) DEFAULT NULL COMMENT '现行标准 年薪总额',
  `NEWA` varchar(255) DEFAULT NULL COMMENT '调整后标准 薪酬档级',
  `NEWB` varchar(255) DEFAULT NULL COMMENT '调整后标准 月工资额',
  `NEWC` varchar(255) DEFAULT NULL COMMENT '调整后标准 年薪总额',
  `ADD_NUM` varchar(255) DEFAULT NULL COMMENT '月增资',
  `EXE_DATE` varchar(255) DEFAULT NULL COMMENT '执行时间',
  `HR_TEXT` varchar(255) DEFAULT NULL COMMENT '人力资源部门意见',
  `LEAD_TEXT` varchar(255) DEFAULT NULL COMMENT '分管领导意见',
  `MAIN_LEAD_TEXT` varchar(255) DEFAULT NULL COMMENT '集团主要领导意见',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `OA_TEST_AUDIT_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='审批流程测试表';
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
INSERT INTO `qrtz_job_details` VALUES ('ctopScheduler','TASK_5a00beb69be648849d6e2c7638f7f417','DEFAULT',NULL,'com.ctop.modules.job.utils.QuartzJob','0','0','0','0',_binary '�\�\0sr\0org.quartz.JobDataMap���迩�\�\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�\�\��\�](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap\�.�(v\n\�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap\��\�`\�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\rJOB_PARAM_KEYsr\0\'com.ctop.modules.job.entity.ScheduleJob\0\0\0\0\0\0\0\0L\0beanNamet\0Ljava/lang/String;L\0cronExpressionq\0~\0	L\0\nmethodNameq\0~\0	L\0paramsq\0~\0	L\0statusq\0~\0	xr\0&com.ctop.common.persistence.DataEntity\0\0\0\0\0\0\0\0L\0createByt\0\"Lcom/ctop/modules/sys/entity/User;L\0\ncreateDatet\0Ljava/util/Date;L\0delFlagq\0~\0	L\0remarksq\0~\0	L\0updateByq\0~\0L\0\nupdateDateq\0~\0xr\0&com.ctop.common.persistence.BaseEntity\0\0\0\0\0\0\0\0Z\0isNewRecordL\0currentUserq\0~\0L\0idq\0~\0	L\0paget\0\"Lcom/ctop/common/persistence/Page;L\0sqlMapq\0~\0xp\0pt\0 5a00beb69be648849d6e2c7638f7f417ppsr\0 com.ctop.modules.sys.entity.User\0\0\0\0\0\0\0\0L\0companyt\0$Lcom/ctop/modules/sys/entity/Office;L\0emailq\0~\0	L\0	loginDateq\0~\0L\0	loginFlagq\0~\0	L\0loginIpq\0~\0	L\0	loginNameq\0~\0	L\0mobileq\0~\0	L\0nameq\0~\0	L\0newPasswordq\0~\0	L\0noq\0~\0	L\0officeq\0~\0L\0oldLoginDateq\0~\0L\0\noldLoginIpq\0~\0	L\0oldLoginNameq\0~\0	L\0passwordq\0~\0	L\0phoneq\0~\0	L\0photoq\0~\0	L\0rolet\0\"Lcom/ctop/modules/sys/entity/Role;L\0roleListt\0Ljava/util/List;L\0userTypeq\0~\0	xq\0~\0\n\0pt\01ppsq\0~\0\0pt\01ppppt\00ppppppt\01ppppppppppppppsr\0java.util.ArrayListx�\��\�a�\0I\0sizexp\0\0\0\0w\0\0\0\nxpsr\0java.util.Datehj�KYt\0\0xpw\0\0>\�H\�\0xt\00t\0最高管理员sq\0~\0\0pt\01ppppq\0~\0ppppppq\0~\0\Zppppppppppppppsq\0~\0\0\0\0\0w\0\0\0\nxpsq\0~\0w\0\0>\�H\�\0xsr\0\"com.ctop.modules.sys.entity.Office\0\0\0\0\0\0\0\0L\0addressq\0~\0	L\0areat\0\"Lcom/ctop/modules/sys/entity/Area;L\0\rchildDeptListq\0~\0L\0codeq\0~\0	L\0deputyPersonq\0~\0L\0emailq\0~\0	L\0faxq\0~\0	L\0gradeq\0~\0	L\0masterq\0~\0	L\0phoneq\0~\0	L\0\rprimaryPersonq\0~\0L\0typeq\0~\0	L\0useableq\0~\0	L\0zipCodeq\0~\0	xr\0&com.ctop.common.persistence.TreeEntity\0\0\0\0\0\0\0\0L\0nameq\0~\0	L\0parentt\0Ljava/lang/Object;L\0	parentIdsq\0~\0	L\0sortt\0Ljava/lang/Integer;xq\0~\0\n\0pt\01ppppq\0~\0pppt\0山东省总公司sq\0~\0%\0pt\00ppppq\0~\0ppppppsr\0java.lang.Integer⠤���8\0I\0valuexr\0java.lang.Number����\��\0\0xp\0\0\0pppppppppppt\02ppt\00,q\0~\01psr\0 com.ctop.modules.sys.entity.Area\0\0\0\0\0\0\0\0L\0codeq\0~\0	L\0typeq\0~\0	xq\0~\0\'\0pt\02ppppq\0~\0pppt\0	山东省sq\0~\04\0pt\01ppppq\0~\0ppppppq\0~\01ppt\00,1,q\0~\01pppppppppppq\0~\02ppt\0thinkgem@163.comsq\0~\0w\0\0`r\�!lxt\01t\0\r192.168.0.239t\0admint\08675t\0系统管理员pt\00001sq\0~\0%\0pt\02ppppq\0~\0pppt\0公司领导sq\0~\0%\0pt\01ppppq\0~\0ppppppq\0~\01pppppppppppq\0~\02ppt\00,1,q\0~\01psq\0~\04\0pt\02ppppq\0~\0pppt\0	山东省sq\0~\04\0pt\01ppppq\0~\0ppppppq\0~\01ppt\00,1,q\0~\01pppppppppppq\0~\02ppsq\0~\0w\0\0`r\��\�xt\0\r192.168.0.239pt\0802a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032t\08675ppsq\0~\0\0\0\0w\0\0\0\nsr\0 com.ctop.modules.sys.entity.Role\0\0\0\0\0\0\0\0L\0	dataScopeq\0~\0	L\0ennameq\0~\0	L\0menuListq\0~\0L\0nameq\0~\0	L\0officeq\0~\0L\0\nofficeListq\0~\0L\0	oldEnnameq\0~\0	L\0oldNameq\0~\0	L\0roleTypeq\0~\0	L\0sysDataq\0~\0	L\0useableq\0~\0	L\0userq\0~\0xq\0~\0\n\0pt\02ppppq\0~\0pppt\02t\0hrsq\0~\0\0\0\0\0w\0\0\0\nxt\0公司管理员psq\0~\0\0\0\0\0w\0\0\0\nxppt\0\nassignmentpt\01psq\0~\0T\0pt\01ppppq\0~\0pppt\01t\0deptsq\0~\0\0\0\0\0w\0\0\0\nxt\0系统管理员psq\0~\0\0\0\0\0w\0\0\0\nxppt\0\nassignmentpt\01pxpsq\0~\0w\0\0`r\�P?xq\0~\0t\0\r1分钟一次q\0~\0q\0~\0gt\0testTaskt\0\r0 */1 * * * ?t\0testt\0思特定时器t\00x\0');
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
INSERT INTO `qrtz_triggers` VALUES ('ctopScheduler','TASK_5a00beb69be648849d6e2c7638f7f417','DEFAULT','TASK_5a00beb69be648849d6e2c7638f7f417','DEFAULT',NULL,1513756320000,1513756200000,5,'PAUSED','CRON',1513756056000,0,NULL,2,_binary '�\�\0sr\0org.quartz.JobDataMap���迩�\�\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�\�\��\�](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap\�.�(v\n\�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap\��\�`\�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\rJOB_PARAM_KEYsr\0\'com.ctop.modules.job.entity.ScheduleJob\0\0\0\0\0\0\0\0L\0beanNamet\0Ljava/lang/String;L\0cronExpressionq\0~\0	L\0\nmethodNameq\0~\0	L\0paramsq\0~\0	L\0statusq\0~\0	xr\0&com.ctop.common.persistence.DataEntity\0\0\0\0\0\0\0\0L\0createByt\0\"Lcom/ctop/modules/sys/entity/User;L\0\ncreateDatet\0Ljava/util/Date;L\0delFlagq\0~\0	L\0remarksq\0~\0	L\0updateByq\0~\0L\0\nupdateDateq\0~\0xr\0&com.ctop.common.persistence.BaseEntity\0\0\0\0\0\0\0\0Z\0isNewRecordL\0currentUserq\0~\0L\0idq\0~\0	L\0paget\0\"Lcom/ctop/common/persistence/Page;L\0sqlMapq\0~\0xp\0pt\0 5a00beb69be648849d6e2c7638f7f417ppsr\0 com.ctop.modules.sys.entity.User\0\0\0\0\0\0\0\0L\0companyt\0$Lcom/ctop/modules/sys/entity/Office;L\0emailq\0~\0	L\0	loginDateq\0~\0L\0	loginFlagq\0~\0	L\0loginIpq\0~\0	L\0	loginNameq\0~\0	L\0mobileq\0~\0	L\0nameq\0~\0	L\0newPasswordq\0~\0	L\0noq\0~\0	L\0officeq\0~\0L\0oldLoginDateq\0~\0L\0\noldLoginIpq\0~\0	L\0oldLoginNameq\0~\0	L\0passwordq\0~\0	L\0phoneq\0~\0	L\0photoq\0~\0	L\0rolet\0\"Lcom/ctop/modules/sys/entity/Role;L\0roleListt\0Ljava/util/List;L\0userTypeq\0~\0	xq\0~\0\n\0pt\01ppppt\00ppppppt\01ppppppppppppppsr\0java.util.ArrayListx�\��\�a�\0I\0sizexp\0\0\0\0w\0\0\0\nxpsr\0java.util.Datehj�KYt\0\0xpw\0\0`r\�Nxt\00t\0测试任务，以供参考sq\0~\0\0pt\01ppsq\0~\0\0pt\01ppppq\0~\0ppppppq\0~\0ppppppppppppppsq\0~\0\0\0\0\0w\0\0\0\nxpsq\0~\0w\0\0>\�H\�\0xt\00t\0最高管理员sq\0~\0\0pt\01ppppq\0~\0ppppppq\0~\0ppppppppppppppsq\0~\0\0\0\0\0w\0\0\0\nxpsq\0~\0w\0\0>\�H\�\0xsr\0\"com.ctop.modules.sys.entity.Office\0\0\0\0\0\0\0\0L\0addressq\0~\0	L\0areat\0\"Lcom/ctop/modules/sys/entity/Area;L\0\rchildDeptListq\0~\0L\0codeq\0~\0	L\0deputyPersonq\0~\0L\0emailq\0~\0	L\0faxq\0~\0	L\0gradeq\0~\0	L\0masterq\0~\0	L\0phoneq\0~\0	L\0\rprimaryPersonq\0~\0L\0typeq\0~\0	L\0useableq\0~\0	L\0zipCodeq\0~\0	xr\0&com.ctop.common.persistence.TreeEntity\0\0\0\0\0\0\0\0L\0nameq\0~\0	L\0parentt\0Ljava/lang/Object;L\0	parentIdsq\0~\0	L\0sortt\0Ljava/lang/Integer;xq\0~\0\n\0pt\01ppppq\0~\0pppt\0山东省总公司sq\0~\0+\0pt\00ppppq\0~\0ppppppsr\0java.lang.Integer⠤���8\0I\0valuexr\0java.lang.Number����\��\0\0xp\0\0\0pppppppppppt\02ppt\00,q\0~\07psr\0 com.ctop.modules.sys.entity.Area\0\0\0\0\0\0\0\0L\0codeq\0~\0	L\0typeq\0~\0	xq\0~\0-\0pt\02ppppq\0~\0pppt\0	山东省sq\0~\0:\0pt\01ppppq\0~\0ppppppq\0~\07ppt\00,1,q\0~\07pppppppppppq\0~\08ppt\0thinkgem@163.comsq\0~\0w\0\0`r\�!lxt\01t\0\r192.168.0.239t\0admint\08675t\0系统管理员pt\00001sq\0~\0+\0pt\02ppppq\0~\0pppt\0公司领导sq\0~\0+\0pt\01ppppq\0~\0ppppppq\0~\07pppppppppppq\0~\08ppt\00,1,q\0~\07psq\0~\0:\0pt\02ppppq\0~\0pppt\0	山东省sq\0~\0:\0pt\01ppppq\0~\0ppppppq\0~\07ppt\00,1,q\0~\07pppppppppppq\0~\08ppsq\0~\0w\0\0`r\��\�xt\0\r192.168.0.239pt\0802a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032t\08675ppsq\0~\0\0\0\0w\0\0\0\nsr\0 com.ctop.modules.sys.entity.Role\0\0\0\0\0\0\0\0L\0	dataScopeq\0~\0	L\0ennameq\0~\0	L\0menuListq\0~\0L\0nameq\0~\0	L\0officeq\0~\0L\0\nofficeListq\0~\0L\0	oldEnnameq\0~\0	L\0oldNameq\0~\0	L\0roleTypeq\0~\0	L\0sysDataq\0~\0	L\0useableq\0~\0	L\0userq\0~\0xq\0~\0\n\0pt\02ppppq\0~\0pppt\02t\0hrsq\0~\0\0\0\0\0w\0\0\0\nxt\0公司管理员psq\0~\0\0\0\0\0w\0\0\0\nxppt\0\nassignmentpt\01psq\0~\0Z\0pt\01ppppq\0~\0pppt\01t\0deptsq\0~\0\0\0\0\0w\0\0\0\nxt\0系统管理员psq\0~\0\0\0\0\0w\0\0\0\nxppt\0\nassignmentpt\01pxpsq\0~\0w\0\0`r\�ʬxt\0testTaskt\0\r0 */2 * * * ?t\0testt\0思特定时器t\00x\0');
/*!40000 ALTER TABLE `qrtz_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule_job`
--

DROP TABLE IF EXISTS `schedule_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `schedule_job` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `bean_name` varchar(200) DEFAULT NULL COMMENT 'spring bean名称',
  `method_name` varchar(100) DEFAULT NULL COMMENT '方法名',
  `params` varchar(2000) DEFAULT NULL COMMENT '参数',
  `cron_expression` varchar(100) DEFAULT NULL COMMENT 'cron表达式',
  `status` char(1) DEFAULT NULL COMMENT '任务状态',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `schedule_job_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='定时任务表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule_job`
--

LOCK TABLES `schedule_job` WRITE;
/*!40000 ALTER TABLE `schedule_job` DISABLE KEYS */;
INSERT INTO `schedule_job` VALUES ('373f0a1b2bb84a3594df213b504350f4','testTask','test','params','0 */1 * * * ?','0','1','2017-12-20 15:35:35','1','2017-12-20 15:35:35','测试任务，以供参考222','1'),('5a00beb69be648849d6e2c7638f7f417','testTask','test','思特定时器','0 */2 * * * ?','1','1','2017-12-20 15:47:33','1','2017-12-20 15:49:10','测试任务，以供参考','0'),('b1c2c56e2f9845fdbd28e0ae2b2dc963','testTask','test','cccc','0 */1 * * * ?','0','1','2017-12-20 15:13:57','1','2017-12-20 15:13:57','测试任务，以供参考','1');
/*!40000 ALTER TABLE `schedule_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule_job_log`
--

DROP TABLE IF EXISTS `schedule_job_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `schedule_job_log` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `job_id` varchar(64) DEFAULT NULL COMMENT '任务id',
  `bean_name` varchar(200) DEFAULT NULL COMMENT 'spring bean名称',
  `method_name` varchar(100) DEFAULT NULL COMMENT '方法名',
  `params` varchar(2000) DEFAULT NULL COMMENT '参数',
  `job_result` char(1) NOT NULL COMMENT '执行结果',
  `error` varchar(2000) DEFAULT NULL COMMENT '失败信息',
  `times` int(11) NOT NULL COMMENT '耗时(单位：毫秒)',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `schedule_job_log_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='定时任务日志	';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule_job_log`
--

LOCK TABLES `schedule_job_log` WRITE;
/*!40000 ALTER TABLE `schedule_job_log` DISABLE KEYS */;
INSERT INTO `schedule_job_log` VALUES ('19e25d68c2d54e1baccec95324d5c158','5a00beb69be648849d6e2c7638f7f417','testTask','test','思特定时器','0',NULL,1003,'1','2017-12-20 15:48:05','1','2017-12-20 15:48:05',NULL,'0'),('389197a48a024a4fb83fce430cba1383','373f0a1b2bb84a3594df213b504350f4','testTask','test','params','0',NULL,1020,'1','2017-12-20 15:40:35','1','2017-12-20 15:40:35',NULL,'0'),('43eccef992b34e1d83f621b673b5cdb5','b1c2c56e2f9845fdbd28e0ae2b2dc963','testTask','test','cccc','0',NULL,1004,'1','2017-12-20 15:25:25','1','2017-12-20 15:25:25',NULL,'0'),('5fc758beecad406585b49b04c80c0101','373f0a1b2bb84a3594df213b504350f4','testTask','test','params','0',NULL,1019,'1','2017-12-20 15:46:15','1','2017-12-20 15:46:15',NULL,'0'),('660483a5223545bcb9c21857f0af1709','b1c2c56e2f9845fdbd28e0ae2b2dc963','testTask','test','cccc','0',NULL,1004,'1','2017-12-20 15:26:21','1','2017-12-20 15:26:21',NULL,'0'),('6fed387a76c44503ab97cf4f142ec827','373f0a1b2bb84a3594df213b504350f4','testTask','test','params','0',NULL,1004,'1','2017-12-20 15:46:42','1','2017-12-20 15:46:42',NULL,'0'),('7caec134c7204ac38bbcab96af5c28ba','5a00beb69be648849d6e2c7638f7f417','testTask','test','思特定时器','0',NULL,1003,'1','2017-12-20 15:49:04','1','2017-12-20 15:49:04',NULL,'0'),('82be6bd023a4490994f33f84bed38375','b1c2c56e2f9845fdbd28e0ae2b2dc963','testTask','test','cccc','0',NULL,1003,'1','2017-12-20 15:24:08','1','2017-12-20 15:24:08',NULL,'0'),('9173d138ce944acdb9b15b87a1623762','5a00beb69be648849d6e2c7638f7f417','testTask','test','思特定时器','0',NULL,1002,'1','2017-12-20 15:50:04','1','2017-12-20 15:50:04',NULL,'0'),('ca74812b262745f6a5834d64f99a81c8','b1c2c56e2f9845fdbd28e0ae2b2dc963','testTask','test','cccc','0',NULL,1017,'1','2017-12-20 15:23:06','1','2017-12-20 15:23:06',NULL,'0'),('d7230afd687a4e56bcc7f48c849396d8','373f0a1b2bb84a3594df213b504350f4','testTask','test','params','0',NULL,1021,'1','2017-12-20 15:36:03','1','2017-12-20 15:36:03',NULL,'0'),('f59e44c5dbad47c59f824bef26292f25','373f0a1b2bb84a3594df213b504350f4','testTask','test','params','0',NULL,1004,'1','2017-12-20 15:38:04','1','2017-12-20 15:38:04',NULL,'0');
/*!40000 ALTER TABLE `schedule_job_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_area`
--

DROP TABLE IF EXISTS `sys_area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_area` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `parent_id` varchar(64) NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) NOT NULL COMMENT '所有父级编号',
  `name` varchar(100) NOT NULL COMMENT '名称',
  `sort` decimal(10,0) NOT NULL COMMENT '排序',
  `code` varchar(100) DEFAULT NULL COMMENT '区域编码',
  `type` char(1) DEFAULT NULL COMMENT '区域类型',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_area_parent_id` (`parent_id`),
  KEY `sys_area_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='区域表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_area`
--

LOCK TABLES `sys_area` WRITE;
/*!40000 ALTER TABLE `sys_area` DISABLE KEYS */;
INSERT INTO `sys_area` VALUES ('1','0','0,','中国',10,'100000','1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('2','1','0,1,','山东省',20,'110000','2','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('3','2','0,1,2,','济南市',30,'110101','3','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('4','3','0,1,2,3,','历城区',40,'110102','4','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('5','3','0,1,2,3,','历下区',50,'110104','4','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('6','3','0,1,2,3,','高新区',60,'110105','4','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0');
/*!40000 ALTER TABLE `sys_area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dict`
--

DROP TABLE IF EXISTS `sys_dict`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_dict` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `value` varchar(100) NOT NULL COMMENT '数据值',
  `label` varchar(100) NOT NULL COMMENT '标签名',
  `type` varchar(100) NOT NULL COMMENT '类型',
  `description` varchar(100) NOT NULL COMMENT '描述',
  `sort` decimal(10,0) NOT NULL COMMENT '排序（升序）',
  `parent_id` varchar(64) DEFAULT '0' COMMENT '父级编号',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_dict_value` (`value`),
  KEY `sys_dict_label` (`label`),
  KEY `sys_dict_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='字典表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dict`
--

LOCK TABLES `sys_dict` WRITE;
/*!40000 ALTER TABLE `sys_dict` DISABLE KEYS */;
INSERT INTO `sys_dict` VALUES ('1','0','正常','del_flag','删除标记',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('10','yellow','黄色','color','颜色值',40,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('100','java.util.Date','Date','gen_java_type','Java类型\0\0',50,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('101','com.thinkgem.jeesite.modules.sys.entity.User','User','gen_java_type','Java类型\0\0',60,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('102','com.thinkgem.jeesite.modules.sys.entity.Office','Office','gen_java_type','Java类型\0\0',70,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('103','com.thinkgem.jeesite.modules.sys.entity.Area','Area','gen_java_type','Java类型\0\0',80,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('104','Custom','Custom','gen_java_type','Java类型\0\0',90,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('105','1','会议通告\0\0\0\0','oa_notify_type','通知通告类型',10,'0','1','2013-11-08 08:00:00','1','2013-11-08 08:00:00',NULL,'0'),('106','2','奖惩通告\0\0\0\0','oa_notify_type','通知通告类型',20,'0','1','2013-11-08 08:00:00','1','2013-11-08 08:00:00',NULL,'0'),('107','3','活动通告\0\0\0\0','oa_notify_type','通知通告类型',30,'0','1','2013-11-08 08:00:00','1','2013-11-08 08:00:00',NULL,'0'),('108','0','草稿','oa_notify_status','通知通告状态',10,'0','1','2013-11-08 08:00:00','1','2013-11-08 08:00:00',NULL,'0'),('109','1','发布','oa_notify_status','通知通告状态',20,'0','1','2013-11-08 08:00:00','1','2013-11-08 08:00:00',NULL,'0'),('11','orange','橙色','color','颜色值',50,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('110','0','未读','oa_notify_read','通知通告状态',10,'0','1','2013-11-08 08:00:00','1','2013-11-08 08:00:00',NULL,'0'),('111','1','已读','oa_notify_read','通知通告状态',20,'0','1','2013-11-08 08:00:00','1','2013-11-08 08:00:00',NULL,'0'),('12','default','默认主题','theme','主题方案',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('13','cerulean','天蓝主题','theme','主题方案',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('14','readable','橙色主题','theme','主题方案',30,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('15','united','红色主题','theme','主题方案',40,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('16','flat','Flat主题','theme','主题方案',60,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('17','1','国家','sys_area_type','区域类型',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('18','2','省份、直辖市','sys_area_type','区域类型',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('19','3','地市','sys_area_type','区域类型',30,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('2','1','删除','del_flag','删除标记',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('20','4','区县','sys_area_type','区域类型',40,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('21','1','公司','sys_office_type','机构类型',60,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('22','2','部门','sys_office_type','机构类型',70,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('23','3','小组','sys_office_type','机构类型',80,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('24','4','其它','sys_office_type','机构类型',90,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('25','1','综合部','sys_office_common','快捷通用部门',30,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('26','2','开发部','sys_office_common','快捷通用部门',40,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('27','3','人力部','sys_office_common','快捷通用部门',50,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('28','1','一级','sys_office_grade','机构等级',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('29','2','二级','sys_office_grade','机构等级',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('3','1','显示','show_hide','显示/隐藏',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('30','3','三级','sys_office_grade','机构等级',30,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('31','4','四级','sys_office_grade','机构等级',40,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('32','1','所有数据','sys_data_scope','数据范围',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('33','2','所在公司及以下数据','sys_data_scope','数据范围',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('34','3','所在公司数据','sys_data_scope','数据范围',30,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('35','4','所在部门及以下数据','sys_data_scope','数据范围',40,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('36','5','所在部门数据','sys_data_scope','数据范围',50,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('37','8','仅本人数据','sys_data_scope','数据范围',90,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('38','9','按明细设置','sys_data_scope','数据范围',100,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('39','1','系统管理','sys_user_type','用户类型',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('4','0','隐藏','show_hide','显示/隐藏',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('40','2','部门经理','sys_user_type','用户类型',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('41','3','普通用户','sys_user_type','用户类型',30,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('42','basic','基础主题','cms_theme','站点主题',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('43','blue','蓝色主题','cms_theme','站点主题',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('44','red','红色主题','cms_theme','站点主题',30,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('45','article','文章模型','cms_module','栏目模型',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('46','picture','图片模型','cms_module','栏目模型',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('47','download','下载模型','cms_module','栏目模型',30,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('48','link','链接模型','cms_module','栏目模型',40,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('49','special','专题模型','cms_module','栏目模型',50,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('5','1','是','yes_no','是/否',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('50','0','默认展现方式','cms_show_modes','展现方式',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('51','1','首栏目内容列表','cms_show_modes','展现方式',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('52','2','栏目第一条内容','cms_show_modes','展现方式',30,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('53','0','发布','cms_del_flag','内容状态',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('54','1','删除','cms_del_flag','内容状态',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('55','2','审核','cms_del_flag','内容状态',15,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('56','1','首页焦点图','cms_posid','推荐位',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('57','2','栏目页文章推荐','cms_posid','推荐位',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('58','1','咨询','cms_guestbook','留言板分类',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('59','2','建议','cms_guestbook','留言板分类',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('6','0','否','yes_no','是/否',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('60','3','投诉','cms_guestbook','留言板分类',30,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('61','4','其它','cms_guestbook','留言板分类',40,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('62','1','公休','oa_leave_type','请假类型',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('63','2','病假','oa_leave_type','请假类型',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('64','3','事假','oa_leave_type','请假类型',30,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('65','4','调休','oa_leave_type','请假类型',40,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('66','5','婚假','oa_leave_type','请假类型',60,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('67','1','接入日志','sys_log_type','日志类型',30,'0','1','2013-06-03 08:00:00','1','2013-06-03 08:00:00',NULL,'0'),('68','2','异常日志','sys_log_type','日志类型',40,'0','1','2013-06-03 08:00:00','1','2013-06-03 08:00:00',NULL,'0'),('69','leave','请假流程','act_type','流程类型',10,'0','1','2013-06-03 08:00:00','1','2013-06-03 08:00:00',NULL,'0'),('7','red','红色','color','颜色值',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('70','test_audit','审批测试流程','act_type','流程类型',20,'0','1','2013-06-03 08:00:00','1','2013-06-03 08:00:00',NULL,'0'),('71','1','分类1','act_category','流程分类',10,'0','1','2013-06-03 08:00:00','1','2013-06-03 08:00:00',NULL,'0'),('72','2','分类2','act_category','流程分类',20,'0','1','2013-06-03 08:00:00','1','2013-06-03 08:00:00',NULL,'0'),('73','crud','增删改查','gen_category','代码生成分类',10,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('74','crud_many','增删改查（包含从表）','gen_category','代码生成分类',20,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('75','tree','树结构','gen_category','代码生成分类',30,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('76','=','=','gen_query_type','查询方式',10,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('77','!=','!=','gen_query_type','查询方式',20,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('78','&gt;','&gt;','gen_query_type','查询方式',30,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('79','&lt;','&lt;','gen_query_type','查询方式',40,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('8','green','绿色','color','颜色值',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('80','between','Between','gen_query_type','查询方式',50,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('81','like','Like','gen_query_type','查询方式',60,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('82','left_like','Left Like','gen_query_type','查询方式',70,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('83','right_like','Right Like','gen_query_type','查询方式',80,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('84','input','文本框','gen_show_type','字段生成方案',10,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('85','textarea','文本域','gen_show_type','字段生成方案',20,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('86','select','下拉框','gen_show_type','字段生成方案',30,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('87','checkbox','复选框','gen_show_type','字段生成方案',40,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('88','radiobox','单选框','gen_show_type','字段生成方案',50,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('89','dateselect','日期选择','gen_show_type','字段生成方案',60,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('9','blue','蓝色','color','颜色值',30,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('90','userselect','人员选择\0','gen_show_type','字段生成方案',70,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('91','officeselect','部门选择','gen_show_type','字段生成方案',80,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('92','areaselect','区域选择','gen_show_type','字段生成方案',90,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('93','String','String','gen_java_type','Java类型',10,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('94','Long','Long','gen_java_type','Java类型',20,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('95','dao','仅持久层','gen_category','代码生成分类\0\0\0\0\0\0',40,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('96','1','男','sex','性别',10,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'0'),('97','2','女','sex','性别',20,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'0'),('98','Integer','Integer','gen_java_type','Java类型\0\0',30,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('99','Double','Double','gen_java_type','Java类型\0\0',40,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1');
/*!40000 ALTER TABLE `sys_dict` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_log`
--

DROP TABLE IF EXISTS `sys_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_log` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `type` char(1) DEFAULT '1' COMMENT '日志类型',
  `title` varchar(255) DEFAULT '' COMMENT '日志标题',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `remote_addr` varchar(255) DEFAULT NULL COMMENT '操作IP地址',
  `user_agent` varchar(255) DEFAULT NULL COMMENT '用户代理',
  `request_uri` varchar(255) DEFAULT NULL COMMENT '请求URI',
  `method` varchar(5) DEFAULT NULL COMMENT '操作方式',
  `params` text COMMENT '操作提交的数据',
  `exception` text COMMENT '异常信息',
  PRIMARY KEY (`id`),
  KEY `sys_log_create_by` (`create_by`),
  KEY `sys_log_request_uri` (`request_uri`),
  KEY `sys_log_type` (`type`),
  KEY `sys_log_create_date` (`create_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_log`
--

LOCK TABLES `sys_log` WRITE;
/*!40000 ALTER TABLE `sys_log` DISABLE KEYS */;
INSERT INTO `sys_log` VALUES ('0040c9cbebce4db8b9a4a40314dd2bf5','1','实例示例-参考示例','1','2019-09-06 04:25:21','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('004cc604f28b4dd29a3293ab3e15ecb1','1','实例示例-参考示例','1','2019-09-06 08:18:48','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('00e57088fc2b4a65a4eac3f1dd14367e','1','在线办公-通知通告-我的通告','1','2017-11-14 15:16:44','182.110.0.154','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36 LBBROWSER','/jeesite/a/oa/oaNotify/self','GET','',''),('00f486bdecd245ff8902590f8fa814d4','1','代码生成-代码生成-生成方案配置','1','2019-09-09 02:54:21','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genScheme','GET','',''),('0240fd073c6b4d519068148df0f1cf6b','1','实例示例-参考示例','1','2019-09-06 01:58:31','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('02936aa27bab490abe70a777419f42ff','1','实例示例-参考示例','1','2019-09-06 04:16:25','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('032395c2039644adba825be592f635d1','1','系统设置-系统设置-角色管理','1','2019-09-09 21:28:10','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/role/','GET','',''),('03e8b4e54dbb4538bb25fc14d863de73','1','实例示例-参考示例','1','2019-09-09 02:06:13','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('043e7e30ede3477c8c7170cd99b5d811','1','内容管理-内容管理','1','2017-11-14 15:15:15','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/cms/none','GET','',''),('046bfa0dc0c74419a7face960aeb2a1a','1','实例示例-参考示例','1','2019-09-06 04:00:09','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('04e5026b1a194a2e894b9e77d08a31ee','1','系统登录','1','2019-09-09 01:52:11','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a','GET','login=',''),('04ffe911b753493b82262b486352208b','1','实例示例-参考示例','1','2019-09-08 20:52:52','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('05262bba5f974a1a953a9260cc0cc9ef','1','实例示例-参考示例','1','2019-09-09 01:37:54','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('0551d8a21d294d92ab4e0a3e5233338e','1','实例示例-参考示例','1','2019-09-06 02:39:12','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('06608af720204256a88fc08131051189','1','系统设置-系统设置-菜单管理','1','2019-09-06 00:48:17','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/','GET','',''),('068d7a8d8c9a4e12b3a4301ccc2813ff','1','代码生成-代码生成-业务表配置','1','2019-09-09 03:38:42','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genTable','GET','',''),('068eab30bf8141ad860a4cebb1a8d054','1','在线办公-通知通告-我的通告','1','2017-11-14 15:14:18','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/oa/oaNotify/self','GET','',''),('0713fd911bba4938ac63df79e76a8082','1','实例示例-参考示例','1','2019-09-09 01:58:11','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('0725faff81c341248bdf92cb10dadd23','1','代码生成-代码生成-生成方案配置','1','2019-09-09 03:05:51','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genScheme','GET','',''),('0786a17308254ad199d3096387d6fbea','1','系统设置-日志查询-日志查询','1','2019-09-09 04:12:02','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/log','GET','',''),('07deb55f49e147f5bba4a6e6a67df690','1','实例示例-参考示例','1','2019-09-08 21:14:28','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('082637cd9a8f430e81ed77ede4990207','1','系统设置-系统设置-角色管理','1','2019-09-09 21:30:22','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/role/','GET','',''),('09d2b0c835a5492087eb3d033ad25670','1','实例示例-参考示例','1','2019-09-08 19:23:57','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('0a43a5f9c7cc430582a4849a041703e2','1','实例示例-参考示例','1','2019-09-09 01:37:57','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('0ad3eddec8a8477298d1143092f60a05','1','系统设置-系统设置-角色管理','1','2019-09-06 00:53:36','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/role/','GET','',''),('0b63119be55247d48bb09b6c671b55cc','1','在线办公-通知通告-我的通告','1','2019-09-09 02:19:31','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/oa/oaNotify/self','GET','',''),('0d00aa19ed25436a9d741088df25f928','1','我的面板-个人信息-个人信息','1','2017-11-14 15:15:11','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/sys/user/info','GET','tabPageId=jerichotabiframe_0',''),('0d166220b6b743048caff67213fd2b0c','1','系统登录','1','2019-09-08 19:33:06','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a','GET','login=',''),('0d237e422c394bc69ddcb9147d8a370b','1','系统设置-系统设置-菜单管理-查看','1','2019-09-06 00:49:25','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/form','GET','id=27',''),('0d520f88ed614f1eb68f5389c95a93c4','1','实例示例-参考示例','1','2019-09-06 02:37:13','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('0d95a25e800e4d958715eab7a885f664','1','系统设置-系统设置-菜单管理','1','2019-09-06 00:50:10','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/','GET','',''),('0db90b84f6644e409580cff2d2f5ffbb','1','代码生成-代码生成-业务表配置','1','2019-09-09 02:48:43','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genTable','GET','',''),('0dc04638f0c74b7aa071f5cee49ed2eb','1','系统设置-日志查询-日志查询','1','2019-09-09 04:11:14','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/log','GET','',''),('0e77da9a37f34cb59fde2e84f00efa1d','1','系统设置-机构用户-用户管理-查看','1','2019-09-09 21:30:48','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/user/list','GET','',''),('0ead2ef30bf94b8e878bbf074fda7877','1','实例示例-参考示例','1','2019-09-06 02:33:20','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('0ec796f626b844579824f8d75f2edc73','1','代码生成-代码生成-业务表配置','1','2019-09-09 03:18:39','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genTable','GET','',''),('0f0bf8a984464283968cbb8859d56e4e','1','系统设置-机构用户-用户管理','1','2019-09-09 21:30:48','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/user/index','GET','',''),('0f3952f9b46344b9ba0944716d0b60d1','1','我的面板-个人信息-个人信息','1','2017-11-14 15:14:22','119.97.201.18','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36','/jeesite/a/sys/user/info','GET','',''),('0f6bfcf963cf4ce996a641f8b512ae3d','1','实例示例-参考示例','1','2019-09-09 00:49:18','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('0fd9bfe1dea948b39db37f6227c7c6b6','1','实例示例-参考示例','1','2019-09-06 00:54:10','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('0ff0c32297ec484b9fbf900639bda314','1','实例示例-参考示例','1','2019-09-07 04:25:15','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('0ff25f9ae5754622b36ad10eb0fbdbb6','1','系统设置-机构用户-机构管理','1','2019-09-09 21:15:28','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/office/','GET','',''),('104e84d6472f40bf975e90911b9452a8','1','实例示例-参考示例','1','2019-09-06 01:49:01','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('1089fe5cc8294044a4e58ed238e12b0b','1','实例示例-参考示例','1','2019-09-06 02:18:57','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('108fbe7277894b3a845c938b86c0a539','1','代码生成-代码生成-生成方案配置','1','2019-09-09 02:59:14','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genScheme','GET','',''),('109a13ae1c5044d6b19c59dcfad66586','1','系统设置-系统设置-角色管理','1','2019-09-06 00:53:42','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/role/','GET','repage=',''),('10d835467494471dbe2ac2180cb7d0a1','1','代码生成-代码生成-业务表配置','1','2019-09-09 03:47:06','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genTable','GET','',''),('114a2939df914ff2a75f82dacf9b83fb','1','实例示例-参考示例','1','2019-09-07 04:35:03','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('1218d0daf59a435a9f30b521f4982c8b','1','系统设置-机构用户-区域管理','1','2019-09-09 20:46:21','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/area/','GET','',''),('123728e79ac84a169d5f3ac03ac9420b','1','代码生成-代码生成-业务表配置','1','2019-09-09 04:01:17','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genTable','GET','',''),('127579b46ba640b38594d92c0dcf2716','1','代码生成-代码生成-生成方案配置','1','2019-09-09 04:00:26','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genScheme','GET','',''),('128e3691aa8f4ae8a08988e8b293c994','1','系统设置-机构用户-用户管理-修改','1','2019-09-09 21:33:08','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/user/checkLoginName','GET','oldLoginName=thinkgem&loginName=admin',''),('1293c54bb49041d790e14cbde3de2339','1','实例示例-参考示例','1','2019-09-07 04:11:58','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('12b8423debfb4741b5a1c09d6cbe8e5a','1','系统登录','1','2019-09-07 04:25:12','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a','GET','login=',''),('12e62bcee18f4fed918b4c0292fd4c46','1','代码生成-代码生成-业务表配置','1','2017-11-14 15:14:19','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/gen/genTable','GET','',''),('133e78b4ad53479ead8c58c652bc7757','1','代码生成-代码生成-业务表配置','1','2019-09-09 03:48:36','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genTable','GET','',''),('137681fbfb624d6eb33f286f7a91d9c4','1','系统设置-机构用户-区域管理','1','2019-09-09 21:09:49','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/area/','GET','',''),('146166b6d0b04cc196ec58edab628793','1','代码生成-代码生成-业务表配置','1','2019-09-09 20:27:41','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genTable','GET','',''),('1496c9d047bb49b1a474eed53a03f610','1','实例示例-参考示例','1','2019-09-09 02:05:38','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('14eabf6a1ac24dfb83e39f2dddddd24d','1','系统登录','1','2019-09-09 01:55:23','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a','GET','login=',''),('14f943ac34d347aebea42a81f894b06c','1','内容管理-内容管理','1','2017-11-14 15:14:28','119.97.201.18','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36','/jeesite/a/cms/none','GET','',''),('153170b6dbf1424c930eeda206258c8d','1','系统设置-系统设置-菜单管理-查看','1','2019-09-06 00:51:24','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/form','GET','id=65d779ccec984ff0b31df79b87ed9d56',''),('15598342805a4826b0c95d966ed11c24','1','系统登录','1','2019-09-09 02:12:39','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a','GET','login=',''),('1591d609563047a1a8a0b50858a388ad','1','系统设置-日志查询-日志查询','1','2019-09-09 04:10:34','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/log','GET','',''),('15a4175e1b3c47978e11b86126ecb7bd','1','系统设置-系统设置-菜单管理','1','2019-09-06 00:48:25','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/','GET','',''),('15b3bd4235084b27903890e9fe2f0d11','1','代码生成-代码生成-业务表配置','1','2019-09-06 00:44:59','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genTable','GET','',''),('16f9fbbd5a3b4262aa0699a29977a589','1','系统设置-机构用户-机构管理-查看','1','2019-09-09 21:16:27','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/office/list','GET','id=&parentIds=',''),('17569f66de9443cca19177a65b41ee21','1','内容管理-内容管理','1','2017-11-14 15:18:42','220.160.68.3','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36','/jeesite/a/cms/none','GET','',''),('1764dbde67d54460b5c0e4ef4e4edc92','1','代码生成-代码生成-生成方案配置','1','2019-09-09 04:01:08','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genScheme','GET','',''),('1783c4df81724c2589a61fa54b42b0c8','1','代码生成-代码生成-业务表配置','1','2019-09-09 03:38:10','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genTable','GET','',''),('1955b2d2bac447dfb55e2b4300526764','1','实例示例-参考示例','1','2019-09-06 02:01:18','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('196c97e46ae84ec387d882dd337babd3','1','代码生成-代码生成-业务表配置','1','2019-09-09 03:30:06','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genTable','GET','',''),('1999026156a64339b19f758ce050ba3d','1','实例示例-参考示例','1','2019-09-09 01:37:05','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('1adb6ce09a1145e9a0402bac5c3ec4ba','1','实例示例-参考示例','1','2019-09-08 21:44:01','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('1b0589815ea348cbbe2cb687a54b56b2','1','系统设置-系统设置-角色管理-修改','1','2019-09-06 00:52:16','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/role/save','POST','id=1&office.id=1&office.name=山东省总公司&oldName=系统管理员&name=系统管理员&oldEnname=dept&enname=dept&roleType=assignment&sysData=1&useable=1&dataScope=1&menuIds=1,27,28,29,30,71,56,57,58,59,62,88,89,90,63,73,74,64,65,66,69,70,72,2,13,20,21,22,17,18,19,14,15,...&officeIds=&remarks=',''),('1b35a3fe10c348a099b24c7deae28b56','1','系统设置-机构用户-机构管理-查看','1','2019-09-09 20:27:51','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/office/list','GET','id=&parentIds=',''),('1b8b2db41d0245a89b168529a84bce3f','1','实例示例-实例示例','1','2019-09-06 02:51:31','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/list','GET','',''),('1b9f824d866548c29622cf6518062d10','1','实例示例-参考示例','1','2019-09-08 21:18:38','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('1bad15912199436a9ab209692c91569e','1','代码生成-生成示例-主子表','1','2019-09-09 04:27:07','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/test/testDataMain','GET','',''),('1bd71c5d64c34cc292468ec3ee304cf6','1','系统登录','1','2019-09-06 04:02:16','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a','GET','login=',''),('1bf1fd52aa6f4edcad231a9565bc7384','1','代码生成-代码生成-业务表配置','1','2019-09-09 03:07:21','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genTable','GET','',''),('1c7fa12ad0d941fbb16a3b6901ba47aa','1','系统设置-机构用户-用户管理-修改','1','2019-09-09 21:33:08','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/user/checkLoginName','GET','oldLoginName=thinkgem&loginName=a',''),('1c88ac72d4394beda4a5ce9daf218425','1','实例示例-参考示例','1','2019-09-06 02:03:56','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('1d4309edcc9b466d9b4aa8c944c58ed6','1','内容管理-内容管理-内容发布-文章模型-查看','1','2017-11-14 15:16:34','119.97.201.18','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36','/jeesite/a/cms/article/form','GET','id=32',''),('1d90cc421ba44400a122f6c506ae08bc','1','实例示例-参考示例','1','2019-09-06 02:26:05','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('1ddabc8a032d4feebccfb2dbd4d5e8ad','1','内容管理-内容管理-内容发布-文章模型','1','2017-11-14 15:15:52','119.97.201.18','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36','/jeesite/a/cms/article/','GET','category.id=12',''),('1e5ed9d4fe4c471cb5bd3dad04f6056f','1','内容管理-内容管理-内容发布-文章模型','1','2017-11-14 15:15:12','119.97.201.18','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36','/jeesite/a/cms/article/','GET','category.id=5',''),('1e7e2fe869d64119be28cbeeca7e0927','1','实例示例-参考示例','1','2019-09-06 02:08:25','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('1f66c7b7572b439ba61b6c8827a4e83a','1','内容管理-内容管理-内容发布-文章模型','1','2017-11-14 15:14:30','119.97.201.18','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36','/jeesite/a/cms/article/','GET','category.id=3',''),('1f7e9fcdd414409484e9519865f9ad40','1','实例示例-参考示例','1','2019-09-07 04:44:05','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('1fa51628662a467fb4573b752351dcdf','1','系统设置-机构用户-区域管理','1','2019-09-09 21:30:51','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/area/','GET','',''),('2050c435053740ecbe58c78931815570','1','系统设置-日志查询-日志查询','1','2019-09-09 04:12:11','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/log','GET','',''),('20c0b96104534bf097dd2e47c9f1328b','1','实例示例-参考示例','1','2019-09-09 01:46:05','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('2101451eb9424170b63dbb9e4f81bee6','1','内容管理-内容管理','1','2017-11-14 15:14:18','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/cms/tree','GET','',''),('2162758d9d6f4492992e15bec3708335','1','代码生成-代码生成-业务表配置','1','2019-09-09 03:16:33','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genTable','GET','',''),('216ac3e2584d48d6afc1c7100710aaa2','1','代码生成-生成示例-单表-查看','1','2019-09-09 04:01:04','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/test/testData/getListData','POST','_search=false&nd=1568019664463&rows=10&cuPage=1&sidx=&sord=asc',''),('225314670bde45aa9f1ef0526bc00fb9','1','系统登录','1','2019-09-07 04:34:06','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a','GET','login=',''),('227e7c6226c2400dba77640dfab78759','1','实例示例-实例示例','1','2019-09-06 03:04:50','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/list','GET','',''),('22c6475dac334db88ae850bd13a4a559','1','实例示例-参考示例','1','2019-09-08 22:13:40','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('244af2b655ba40c88dc2e1ebd15a4f2f','1','系统设置-机构用户-用户管理','1','2019-09-09 21:32:58','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/user/index','GET','',''),('2524e801a9e74d54a1b72e89eaf59314','1','实例示例-参考示例','1','2019-09-08 22:24:32','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('2539ccb7f8d141829b14a9d5c950943a','1','实例示例-参考示例','1','2019-09-06 02:05:18','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('25828e120f53481fa8183446ea6ec11e','1','系统登录','1','2019-09-08 22:11:52','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a','GET','login=',''),('25839b2e3ee042a8ab6a44eafb13b6d9','1','实例示例-参考示例','1','2019-09-09 02:02:39','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('25e56d4258724816b7be060d3ab2c06f','1','系统设置-机构用户-用户管理-查看','1','2019-09-09 21:33:49','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/user/list','GET','',''),('26b3f7f587fb4db9b76370429bee0577','1','系统设置-机构用户-区域管理','1','2019-09-09 20:55:20','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/area/','GET','',''),('26d0ddb042dd4833a5f1735832600939','1','系统设置-机构用户-用户管理-查看','1','2019-09-09 20:27:48','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/user/list','GET','',''),('26fbcc021f5b4d66abe623dfad125bd1','1','代码生成-代码生成-业务表配置','1','2019-09-09 03:35:53','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genTable','GET','',''),('2718775cfc4b478da43a63dcfadbc418','1','我的面板-个人信息-个人信息','1','2017-11-14 15:14:44','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/sys/user/info','GET','',''),('27b3beeac9ca486897f971962c1887a5','1','系统登录','1','2019-09-09 21:33:46','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a','GET','login=',''),('27e63dd59278417ab23da6bb67549787','1','系统设置-日志查询-日志查询','1','2019-09-09 04:12:16','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/log','GET','',''),('28294d1cdfd1434dbb7366d245faa2c8','1','实例示例-实例示例','1','2019-09-06 08:11:20','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/list','GET','',''),('2849d940f1b84f979bcd4cc793950942','1','代码生成-代码生成-业务表配置','1','2019-09-09 03:53:05','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genTable','GET','',''),('289a58b3aa114d22a782bc249946f7db','1','系统设置-机构用户-机构管理-查看','1','2019-09-09 21:15:01','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/office/list','GET','id=&parentIds=',''),('2909c7535b524e049fd682e6823c97d1','1','实例示例-参考示例','1','2019-09-08 20:22:32','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('291b3a20e88643c2b325cd15808bb024','1','系统设置-系统设置-菜单管理-查看','1','2019-09-06 00:51:03','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/form','GET','id=65d779ccec984ff0b31df79b87ed9d56',''),('292fe8f4d2cc4e1d8999771f25273700','1','代码生成-代码生成-业务表配置','1','2019-09-09 03:40:49','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genTable','GET','',''),('297d7f5ba4b74198bc4e009b63536f44','1','系统设置-系统设置-菜单管理','1','2019-09-06 00:54:00','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/','GET','',''),('29d2b0e99869419e96250c8f2eb27704','1','实例示例-参考示例','1','2019-09-08 21:41:35','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('2a1d6eb61b344ffbade54bed56943548','1','系统设置-日志查询-日志查询','1','2019-09-09 04:11:40','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/log','GET','',''),('2a1da0cb029f4c17aafe65b39f04ed0f','1','代码生成-代码生成-生成方案配置','1','2019-09-09 02:53:48','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genScheme','GET','',''),('2a2796681fd9492f8236bfb5a33f63b2','1','内容管理-内容管理-内容发布','1','2017-11-14 15:16:46','182.110.0.154','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36 LBBROWSER','/jeesite/a/cms/','GET','',''),('2a45bf79901e437797966940db7a12ae','1','实例示例-参考示例','1','2019-09-06 02:51:59','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('2a6bd9b0c3d5481eb106aba7dfe97c54','1','系统设置-系统设置-菜单管理-修改','1','2019-09-06 00:48:25','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/delete','GET','id=23',''),('2a88ea7f5de549cfae7626fee6d361ab','1','实例示例-参考示例','1','2019-09-08 20:28:17','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('2a997cd0f67f480abf51440c5e55eebc','1','代码生成-代码生成-业务表配置','1','2019-09-09 03:47:39','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genTable','GET','',''),('2abe8373888e4f5f91596762c213e361','1','系统设置-机构用户-用户管理','1','2019-09-09 21:33:34','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/user/index','GET','',''),('2af981a1ba8a4479bcdc739d9582c183','1','系统设置-系统设置-菜单管理-修改','1','2019-09-06 00:50:59','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/save','POST','id=&parent.id=a91e496aa0ab42239c11617d7095034a&parent.name=实例示例&name=实例示例&href=demo/demoData&target=&icon=&sort=30&isShow=1&permission=&remarks=',''),('2b14ad7de4084cef894cf23f5822bdae','1','实例示例-参考示例','1','2019-09-09 00:10:04','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('2bc06b4d4ac64f008bea35d651aadc28','1','实例示例-参考示例','1','2019-09-09 01:55:12','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('2c3ab95fec7a4997a56375060b41d1d5','1','系统登录','1','2019-09-09 19:06:14','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a','GET','login=',''),('2c96e3ba4cd44841adb7b368a14e1385','1','实例示例-实例示例','1','2019-09-06 02:05:14','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/list','GET','',''),('2ca73cb98a2749479bdf3107588e0d6b','1','代码生成-代码生成-业务表配置','1','2019-09-09 03:59:05','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genTable','GET','',''),('2cfe6891becc41fc86ac4c1e5966680c','1','实例示例-参考示例','1','2019-09-06 02:55:09','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('2e45e2444a55405ca911e96ecb0d076e','1','实例示例-参考示例','1','2019-09-06 04:23:06','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('2e5288d55b234bc5ac3a92af17044206','1','我的面板-个人信息-个人信息','1','2017-11-14 15:14:31','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/sys/user/info','GET','',''),('2e9d8378040046b396bdbd285e5c0a2b','1','系统登录','1','2019-09-08 19:47:15','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a','GET','login=',''),('3050e425c7424ce6b779db601be54179','1','实例示例-参考示例','1','2019-09-08 21:23:12','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('306975578d9c450b8c1fbaaa740a0857','1','系统设置-系统设置-菜单管理','1','2019-09-06 00:49:21','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/','GET','',''),('312070943a2f40aebdf186a8b4a9c4bf','1','代码生成-代码生成-生成方案配置','1','2019-09-09 03:01:48','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genScheme','GET','',''),('3148169938d942d8817cc3af02e94441','1','在线办公-通知通告-我的通告','1','2017-11-14 15:14:22','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/oa/oaNotify/self','GET','',''),('31c98aa9d13546e09d607b85ab97c7f0','1','代码生成-代码生成-生成方案配置','1','2019-09-09 03:08:23','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genScheme','GET','',''),('324b40511ea543a090d46fa57e7f075e','1','实例示例-参考示例','1','2019-09-08 20:34:57','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('3281a37bd604455d8e25fe209260c427','1','代码生成-代码生成-业务表配置','1','2019-09-09 03:42:24','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genTable','GET','',''),('33727c74f34045e09372c0a8e97be7bc','1','系统登录','1','2019-09-09 00:56:18','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a','GET','login=',''),('339dc2499f824f07ab9e7746822df74a','1','实例示例-参考示例','1','2019-09-08 21:14:35','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('343afb175fef463382a31b49f1ca4173','1','代码生成-代码生成-生成方案配置','1','2019-09-09 03:11:53','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genScheme','GET','',''),('344e3cd3df76466e827dd9e525dd5015','1','代码生成-代码生成-业务表配置','1','2019-09-09 03:23:29','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genTable','GET','',''),('34ed10cc5e684516931b516adfdd9fed','1','代码生成-代码生成-业务表配置','1','2019-09-09 02:24:52','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genTable','GET','',''),('352f19f9ed9c4ab6a2e34f97b62ed3e1','1','在线办公-通知通告-我的通告','1','2017-11-14 15:14:34','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/oa/oaNotify/self','GET','',''),('35e51a5d63fc425db4b5d2591b3fa097','1','代码生成-代码生成-业务表配置','1','2019-09-09 04:01:06','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genTable','GET','',''),('3616eb110ac64ee2bfcee5757e76eb5d','1','实例示例-参考示例','1','2019-09-08 21:05:54','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('366fa3c1e01c4701a6a857a1502f95fb','1','实例示例-参考示例','1','2019-09-09 01:37:07','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('36a140f760a74c488f77d4379b042549','1','实例示例-参考示例','1','2019-09-06 01:53:05','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('376b3d33532e40ed92716ca177575df9','1','实例示例-参考示例','1','2019-09-08 19:51:02','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('377412cd53b34130951dbfb6dcb265ea','1','代码生成-代码生成-生成方案配置','1','2019-09-09 03:09:42','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genScheme','GET','',''),('37cc97a14b2243928380da9aa4bfd090','1','实例示例-参考示例','1','2019-09-06 08:16:35','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('3939455f47ae4e45bf032da450a60ea1','1','系统设置-系统设置-菜单管理','1','2019-09-06 00:48:10','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/','GET','',''),('39af6f08f4f5476399f6a1872cef4f16','1','实例示例-参考示例','1','2019-09-06 02:04:54','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('39c68fdfcb754e1298e3f4a324114cbb','1','系统设置-机构用户-区域管理','1','2019-09-09 21:01:57','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/area/','GET','',''),('3a7643c5a4cb414bb28cdfdf19161f06','1','系统登录','1','2019-09-07 04:33:18','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a','GET','login=',''),('3a7bde4bfcb945729eefe82f1761bae9','1','系统设置-日志查询-日志查询','1','2019-09-09 04:23:55','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/log','GET','',''),('3a9075f197a843c7ae67279be73b6cb5','1','实例示例-参考示例','1','2019-09-09 02:01:27','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('3bbf6791066645d2aa29902e3f3064ed','1','实例示例-参考示例','1','2019-09-06 08:19:39','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('3bdf8719412f496fb724ff4017422414','1','系统设置-机构用户-机构管理-查看','1','2019-09-09 21:16:17','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/office/list','GET','id=&parentIds=',''),('3c4aa3b055964999a524ae3828f37a01','1','系统设置-系统设置-字典管理','1','2019-09-09 21:30:23','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/dict/','GET','',''),('3c503cb8f9194249838c2f0ad858c4cf','1','实例示例-参考示例','1','2019-09-06 08:13:34','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('3d5437e3cddf45acbbb70a8ba5803581','1','实例示例-参考示例','1','2019-09-09 01:33:44','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('3dc1db99ca27447caf0ca2eef6231219','1','代码生成-生成示例-树结构','1','2019-09-06 00:45:08','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/test/testTree','GET','',''),('3dd27262420d41de8f362c3034b4f7dd','1','实例示例-参考示例','1','2019-09-09 00:59:34','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('3ea7a545eab246858d7b582e8fc9e887','1','系统设置-日志查询-日志查询','1','2019-09-09 04:25:49','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/log','GET','',''),('3ee56c7e834449d3b93ec7852d3177d5','2','代码生成-代码生成-生成方案配置','1','2019-09-09 02:48:45','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genScheme','GET','','org.apache.jasper.JasperException: An exception occurred processing JSP page /WEB-INF/views/modules/gen/genSchemeList.jsp at line 35\n\n32: 				<div class=\"form-group\">\n33: 					<label class=\"control-label col-md-3\">类型:</label>\n34: 					<div class=\"col-md-9\">\n35: 						<form:select id=\"type\" path=\"type\" class=\"form-control\">\n36: 							<form:option value=\"\" items=\"${typeList}\" htmlEscape=\"false\"/></form:select>\n37: 					</div>\n38: 				</div>\n\n\nStacktrace:\n	at org.apache.jasper.servlet.JspServletWrapper.handleJspException(JspServletWrapper.java:579)\n	at org.apache.jasper.servlet.JspServletWrapper.service(JspServletWrapper.java:476)\n	at org.apache.jasper.servlet.JspServlet.serviceJspFile(JspServlet.java:396)\n	at org.apache.jasper.servlet.JspServlet.service(JspServlet.java:340)\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:729)\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:292)\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:207)\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:52)\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:240)\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:207)\n	at org.apache.catalina.core.ApplicationDispatcher.invoke(ApplicationDispatcher.java:720)\n	at org.apache.catalina.core.ApplicationDispatcher.processRequest(ApplicationDispatcher.java:466)\n	at org.apache.catalina.core.ApplicationDispatcher.doForward(ApplicationDispatcher.java:391)\n	at org.apache.catalina.core.ApplicationDispatcher.forward(ApplicationDispatcher.java:318)\n	at org.springframework.web.servlet.view.InternalResourceView.renderMergedOutputModel(InternalResourceView.java:168)\n	at org.springframework.web.servlet.view.AbstractView.render(AbstractView.java:303)\n	at org.springframework.web.servlet.DispatcherServlet.render(DispatcherServlet.java:1243)\n	at org.springframework.web.servlet.DispatcherServlet.processDispatchResult(DispatcherServlet.java:1027)\n	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:971)\n	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:893)\n	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:965)\n	at org.springframework.web.servlet.FrameworkServlet.doGet(FrameworkServlet.java:856)\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:622)\n	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:841)\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:729)\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:292)\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:207)\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:52)\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:240)\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:207)\n	at com.opensymphony.sitemesh.webapp.SiteMeshFilter.obtainContent(SiteMeshFilter.java:129)\n	at com.opensymphony.sitemesh.webapp.SiteMeshFilter.doFilter(SiteMeshFilter.java:77)\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:240)\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:207)\n	at org.apache.shiro.web.servlet.ProxiedFilterChain.doFilter(ProxiedFilterChain.java:61)\n	at org.apache.shiro.web.servlet.AdviceFilter.executeChain(AdviceFilter.java:108)\n	at org.apache.shiro.web.servlet.AdviceFilter.doFilterInternal(AdviceFilter.java:137)\n	at org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:125)\n	at org.apache.shiro.web.servlet.ProxiedFilterChain.doFilter(ProxiedFilterChain.java:66)\n	at org.apache.shiro.web.servlet.AbstractShiroFilter.executeChain(AbstractShiroFilter.java:449)\n	at org.apache.shiro.web.servlet.AbstractShiroFilter$1.call(AbstractShiroFilter.java:365)\n	at org.apache.shiro.subject.support.SubjectCallable.doCall(SubjectCallable.java:90)\n	at org.apache.shiro.subject.support.SubjectCallable.call(SubjectCallable.java:83)\n	at org.apache.shiro.subject.support.DelegatingSubject.execute(DelegatingSubject.java:383)\n	at org.apache.shiro.web.servlet.AbstractShiroFilter.doFilterInternal(AbstractShiroFilter.java:362)\n	at org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:125)\n	at org.springframework.web.filter.DelegatingFilterProxy.invokeDelegate(DelegatingFilterProxy.java:344)\n	at org.springframework.web.filter.DelegatingFilterProxy.doFilter(DelegatingFilterProxy.java:261)\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:240)\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:207)\n	at org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:85)\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:240)\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:207)\n	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:212)\n	at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:106)\n	at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:502)\n	at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:141)\n	at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:79)\n	at org.apache.catalina.valves.AbstractAccessLogValve.invoke(AbstractAccessLogValve.java:616)\n	at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:88)\n	at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:528)\n	at org.apache.coyote.http11.AbstractHttp11Processor.process(AbstractHttp11Processor.java:1100)\n	at org.apache.coyote.AbstractProtocol$AbstractConnectionHandler.process(AbstractProtocol.java:687)\n	at org.apache.tomcat.util.net.NioEndpoint$SocketProcessor.doRun(NioEndpoint.java:1520)\n	at org.apache.tomcat.util.net.NioEndpoint$SocketProcessor.run(NioEndpoint.java:1476)\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)\n	at org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)\n	at java.lang.Thread.run(Thread.java:745)\nCaused by: org.springframework.beans.NotReadablePropertyException: Invalid property \'type\' of bean class [com.bonc.fastsite.modules.gen.entity.GenScheme]: Bean property \'type\' is not readable or has an invalid getter method: Does the return type of the getter match the parameter type of the setter?\n	at org.springframework.beans.BeanWrapperImpl.getPropertyValue(BeanWrapperImpl.java:731)\n	at org.springframework.beans.BeanWrapperImpl.getPropertyValue(BeanWrapperImpl.java:722)\n	at org.springframework.validation.AbstractPropertyBindingResult.getActualFieldValue(AbstractPropertyBindingResult.java:99)\n	at org.springframework.validation.AbstractBindingResult.getFieldValue(AbstractBindingResult.java:229)\n	at org.springframework.web.servlet.support.BindStatus.<init>(BindStatus.java:120)\n	at org.springframework.web.servlet.tags.form.AbstractDataBoundFormElementTag.getBindStatus(AbstractDataBoundFormElementTag.java:168)\n	at org.springframework.web.servlet.tags.form.AbstractDataBoundFormElementTag.getPropertyPath(AbstractDataBoundFormElementTag.java:188)\n	at org.springframework.web.servlet.tags.form.AbstractDataBoundFormElementTag.getName(AbstractDataBoundFormElementTag.java:154)\n	at org.springframework.web.servlet.tags.form.AbstractDataBoundFormElementTag.writeDefaultAttributes(AbstractDataBoundFormElementTag.java:117)\n	at org.springframework.web.servlet.tags.form.AbstractHtmlElementTag.writeDefaultAttributes(AbstractHtmlElementTag.java:422)\n	at org.springframework.web.servlet.tags.form.SelectTag.writeTagContent(SelectTag.java:194)\n	at org.springframework.web.servlet.tags.form.AbstractFormTag.doStartTagInternal(AbstractFormTag.java:84)\n	at org.springframework.web.servlet.tags.RequestContextAwareTag.doStartTag(RequestContextAwareTag.java:80)\n	at org.apache.jsp.WEB_002dINF.views.modules.gen.genSchemeList_jsp._jspService(genSchemeList_jsp.java:245)\n	at org.apache.jasper.runtime.HttpJspBase.service(HttpJspBase.java:70)\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:729)\n	at org.apache.jasper.servlet.JspServletWrapper.service(JspServletWrapper.java:438)\n	... 68 more\n'),('3f49e38dcd8a4f35b883077c20d06cab','1','系统设置-机构用户-用户管理','1','2019-09-09 21:11:16','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/user/index','GET','',''),('3f64f163d7604e568a7b9d6064b1bc05','1','实例示例-参考示例','1','2019-09-06 02:39:53','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('3f764be54ce94b55bb57b1ce13b5488c','1','代码生成-代码生成-业务表配置','1','2019-09-09 03:28:36','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genTable','GET','',''),('3fa83b8d216d45828feab9a8923a2cab','1','系统设置-系统设置-菜单管理-查看','1','2019-09-06 00:54:02','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/form','GET','id=3fa3250a18ce4883a67e0de89588232b',''),('3fb1b20b4fd14d5981d438a1d0820d6b','1','实例示例-实例示例','1','2019-09-09 04:02:40','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/list','GET','',''),('3fd883f9b694454a86c978ed2d174840','1','实例示例-参考示例','1','2019-09-08 20:16:00','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('3fe5e5c94cdb48b3ba113e60cad85c03','1','实例示例-参考示例','1','2019-09-08 21:46:30','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('3fe7c4e9f3114862a2d2ee620e2375be','1','代码生成-代码生成-业务表配置','1','2019-09-09 03:31:01','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genTable','GET','',''),('41b6f0d8aa0b49c8927b78f273086329','1','实例示例-参考示例','1','2019-09-06 01:47:26','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('42651994c6d94f12965936f00a0d6d4e','1','实例示例-参考示例','1','2019-09-09 02:00:28','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('42f1e1edd24a44029d4c015c0274c959','1','实例示例-参考示例','1','2019-09-09 02:02:43','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('430645237b7e4079bfa599579f00a26e','1','系统登录','1','2019-09-09 00:59:31','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a','GET','login=',''),('4306fe3cbd384954a9ac257eed7fa673','1','系统设置-机构用户-区域管理','1','2019-09-09 20:53:53','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/area/','GET','',''),('432046a606e645bebaad73b6b66b659b','1','实例示例-参考示例','1','2019-09-08 20:50:56','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('4332945a1d0e4ed3b41397b074c39b6a','1','实例示例-参考示例','1','2019-09-06 01:43:38','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('434b43693aba49a19e74ce3798e203a0','1','代码生成-代码生成-业务表配置','1','2019-09-09 03:55:18','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genTable','GET','',''),('43687acc3b5f4ccc8c339981985d79cf','1','系统设置-机构用户-用户管理-查看','1','2019-09-09 21:16:26','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/user/list','GET','',''),('441f5ff3f2154ebeaf35088fc99f9ab3','1','系统设置-日志查询-日志查询','1','2019-09-09 04:07:17','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/log','GET','',''),('4439ec099d6e414cbb347f6c192c22c3','1','系统设置-机构用户-用户管理-修改','1','2019-09-09 21:33:06','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/user/checkLoginName','GET','oldLoginName=thinkgem&loginName=thinkgem',''),('4535b00372cf468d9bdab50b8d1d6a20','1','系统设置-机构用户-用户管理-查看','1','2019-09-09 21:10:29','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/user/list','GET','',''),('45a1de1cf10b4ddc9f5dbb5230542ca5','1','代码生成-代码生成-生成方案配置','1','2019-09-09 03:15:59','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genScheme','GET','',''),('46f47f409f314e4198e4ceead353d96c','1','实例示例-参考示例','1','2019-09-09 00:47:47','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('470746968ff44f2384e14a2ddb997c07','1','系统登录','1','2019-09-09 02:13:20','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a','GET','login=',''),('47222fede6434b0f9ca459d1a3849228','1','实例示例-参考示例','1','2019-09-06 02:43:07','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('475fe8e8f4e644839d97b74508a12da1','1','系统设置-系统设置-菜单管理-查看','1','2019-09-06 00:46:23','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/form','GET','id=27',''),('47c348c31ece476fa7588171860ee8ac','2','代码生成-代码生成-业务表配置','1','2019-09-09 03:22:49','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genTable','GET','','org.apache.jasper.JasperException: /WEB-INF/views/modules/gen/genTableList.jsp (line: 67, column: 95) The JSP specification requires that an attribute name is preceded by whitespace\n	at org.apache.jasper.compiler.DefaultErrorHandler.jspError(DefaultErrorHandler.java:41)\n	at org.apache.jasper.compiler.ErrorDispatcher.dispatch(ErrorDispatcher.java:275)\n	at org.apache.jasper.compiler.ErrorDispatcher.jspError(ErrorDispatcher.java:91)\n	at org.apache.jasper.compiler.Parser.parseAttributes(Parser.java:165)\n	at org.apache.jasper.compiler.Parser.parseAttributes(Parser.java:154)\n	at org.apache.jasper.compiler.Parser.parseCustomTag(Parser.java:1241)\n	at org.apache.jasper.compiler.Parser.parseElements(Parser.java:1460)\n	at org.apache.jasper.compiler.Parser.parseBody(Parser.java:1673)\n	at org.apache.jasper.compiler.Parser.parseOptionalBody(Parser.java:1006)\n	at org.apache.jasper.compiler.Parser.parseCustomTag(Parser.java:1281)\n	at org.apache.jasper.compiler.Parser.parseElements(Parser.java:1460)\n	at org.apache.jasper.compiler.Parser.parse(Parser.java:139)\n	at org.apache.jasper.compiler.ParserController.doParse(ParserController.java:227)\n	at org.apache.jasper.compiler.ParserController.parse(ParserController.java:100)\n	at org.apache.jasper.compiler.Compiler.generateJava(Compiler.java:199)\n	at org.apache.jasper.compiler.Compiler.compile(Compiler.java:356)\n	at org.apache.jasper.compiler.Compiler.compile(Compiler.java:336)\n	at org.apache.jasper.compiler.Compiler.compile(Compiler.java:323)\n	at org.apache.jasper.JspCompilationContext.compile(JspCompilationContext.java:585)\n	at org.apache.jasper.servlet.JspServletWrapper.service(JspServletWrapper.java:363)\n	at org.apache.jasper.servlet.JspServlet.serviceJspFile(JspServlet.java:396)\n	at org.apache.jasper.servlet.JspServlet.service(JspServlet.java:340)\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:729)\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:292)\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:207)\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:52)\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:240)\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:207)\n	at org.apache.catalina.core.ApplicationDispatcher.invoke(ApplicationDispatcher.java:720)\n	at org.apache.catalina.core.ApplicationDispatcher.processRequest(ApplicationDispatcher.java:466)\n	at org.apache.catalina.core.ApplicationDispatcher.doForward(ApplicationDispatcher.java:391)\n	at org.apache.catalina.core.ApplicationDispatcher.forward(ApplicationDispatcher.java:318)\n	at org.springframework.web.servlet.view.InternalResourceView.renderMergedOutputModel(InternalResourceView.java:168)\n	at org.springframework.web.servlet.view.AbstractView.render(AbstractView.java:303)\n	at org.springframework.web.servlet.DispatcherServlet.render(DispatcherServlet.java:1243)\n	at org.springframework.web.servlet.DispatcherServlet.processDispatchResult(DispatcherServlet.java:1027)\n	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:971)\n	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:893)\n	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:965)\n	at org.springframework.web.servlet.FrameworkServlet.doGet(FrameworkServlet.java:856)\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:622)\n	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:841)\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:729)\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:292)\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:207)\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:52)\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:240)\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:207)\n	at com.opensymphony.sitemesh.webapp.SiteMeshFilter.obtainContent(SiteMeshFilter.java:129)\n	at com.opensymphony.sitemesh.webapp.SiteMeshFilter.doFilter(SiteMeshFilter.java:77)\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:240)\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:207)\n	at org.apache.shiro.web.servlet.ProxiedFilterChain.doFilter(ProxiedFilterChain.java:61)\n	at org.apache.shiro.web.servlet.AdviceFilter.executeChain(AdviceFilter.java:108)\n	at org.apache.shiro.web.servlet.AdviceFilter.doFilterInternal(AdviceFilter.java:137)\n	at org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:125)\n	at org.apache.shiro.web.servlet.ProxiedFilterChain.doFilter(ProxiedFilterChain.java:66)\n	at org.apache.shiro.web.servlet.AbstractShiroFilter.executeChain(AbstractShiroFilter.java:449)\n	at org.apache.shiro.web.servlet.AbstractShiroFilter$1.call(AbstractShiroFilter.java:365)\n	at org.apache.shiro.subject.support.SubjectCallable.doCall(SubjectCallable.java:90)\n	at org.apache.shiro.subject.support.SubjectCallable.call(SubjectCallable.java:83)\n	at org.apache.shiro.subject.support.DelegatingSubject.execute(DelegatingSubject.java:383)\n	at org.apache.shiro.web.servlet.AbstractShiroFilter.doFilterInternal(AbstractShiroFilter.java:362)\n	at org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:125)\n	at org.springframework.web.filter.DelegatingFilterProxy.invokeDelegate(DelegatingFilterProxy.java:344)\n	at org.springframework.web.filter.DelegatingFilterProxy.doFilter(DelegatingFilterProxy.java:261)\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:240)\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:207)\n	at org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:85)\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:240)\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:207)\n	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:212)\n	at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:106)\n	at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:502)\n	at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:141)\n	at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:79)\n	at org.apache.catalina.valves.AbstractAccessLogValve.invoke(AbstractAccessLogValve.java:616)\n	at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:88)\n	at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:528)\n	at org.apache.coyote.http11.AbstractHttp11Processor.process(AbstractHttp11Processor.java:1100)\n	at org.apache.coyote.AbstractProtocol$AbstractConnectionHandler.process(AbstractProtocol.java:687)\n	at org.apache.tomcat.util.net.NioEndpoint$SocketProcessor.doRun(NioEndpoint.java:1520)\n	at org.apache.tomcat.util.net.NioEndpoint$SocketProcessor.run(NioEndpoint.java:1476)\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)\n	at org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)\n	at java.lang.Thread.run(Thread.java:745)\n'),('4802ee4dcc0c47c2bf6dc5b22112e632','1','代码生成-代码生成-业务表配置','1','2019-09-09 03:49:13','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genTable','GET','',''),('48185348deff4c64ad9d6298fb245fea','1','实例示例-参考示例','1','2019-09-06 04:01:43','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('4893bfe319dd48c78f7c300f459745f4','1','实例示例-参考示例','1','2019-09-09 02:05:05','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('489d77a7860745b9882e24483d66c648','1','代码生成-代码生成-生成方案配置','1','2019-09-09 02:46:58','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genScheme','GET','',''),('48a3a7bb1f774d5db0b89bb98bb43d87','1','代码生成-代码生成-生成方案配置','1','2019-09-09 02:46:21','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genScheme','GET','',''),('48bc338e18094bac9623ab10115a8443','1','代码生成-生成示例-单表','1','2019-09-09 04:01:04','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/test/testData','GET','',''),('48d76c09526d42768ee6e7cb415ce7c2','1','代码生成-代码生成-业务表配置','1','2019-09-09 03:40:29','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genTable','GET','',''),('4931fdd1cfcb48dd9466d52780d872b3','1','实例示例-参考示例','1','2019-09-09 00:16:26','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('498f15345cdd4be88bbcab67b132035d','1','代码生成-生成示例-树结构','1','2017-11-14 15:14:40','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/test/testTree','GET','',''),('4990f67c7c944a0aa67ff635ee7958c9','1','内容管理-内容管理-内容发布-文章模型','1','2017-11-14 15:14:45','119.97.201.18','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36','/jeesite/a/cms/article/','GET','category.id=4',''),('49d1bbb9bb6e48908898184ea5c18501','1','实例示例-参考示例','1','2019-09-06 02:00:14','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('4a195e9574cf43999ac16908f3581988','1','实例示例-参考示例','1','2019-09-06 02:56:17','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('4a1fccb3ec944526a9e2d8903ce14a61','1','代码生成-代码生成-生成方案配置','1','2019-09-09 02:59:36','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genScheme','GET','',''),('4a3ee291d2db472eacc04c6e26e0c8e3','1','系统设置-日志查询-日志查询','1','2019-09-09 04:11:45','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/log','GET','',''),('4b543ba6d1f54366b71056c676b9b05a','1','内容管理-内容管理-内容发布-文章模型','1','2017-11-14 15:14:37','119.97.201.18','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36','/jeesite/a/cms/article/','GET','category.id=5',''),('4b7d8f670f0144cbaa60f72720b11f17','1','系统登录','1','2019-09-07 04:35:00','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a','GET','login=',''),('4bf29091efcb4ba4bf719c6226a8a6a2','1','实例示例-实例示例','1','2019-09-09 02:59:52','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/list','GET','',''),('4bf4884ec8344e9a93942f342fbfff69','1','系统登录','1','2017-11-14 15:14:21','61.129.6.148','Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E; InfoPath.3; rv:11.0) like Gecko','/jeesite/a;JSESSIONID=24e6cee7284249468b869f63bee5d881','GET','',''),('4bfd87751b114cbda2c25c756db9284d','1','代码生成-代码生成-生成方案配置','1','2019-09-09 03:12:32','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genScheme','GET','',''),('4c4891d3acc944719a65751994831631','1','代码生成-代码生成-业务表配置','1','2019-09-09 03:58:15','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genTable','GET','',''),('4ce7e1b0c04b4a79a71a1a1c075c65ae','1','我的面板-个人信息-个人信息','1','2019-09-09 21:31:03','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/user/info','GET','',''),('4d622b6530644b2598947bedc10d224d','1','实例示例-参考示例','1','2019-09-06 01:15:42','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('4d86695fee3845b3a46e70f79da4609a','1','系统设置-机构用户-区域管理','1','2019-09-09 20:28:44','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/area/','GET','',''),('4db7b2c1f44a412ca193a457f49e4369','1','系统设置-日志查询-日志查询','1','2019-09-09 04:12:28','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/log','GET','',''),('4dc95af443ae4185b0b8627771dea381','1','代码生成-生成示例-主子表-查看','1','2019-09-09 04:27:10','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/test/testDataMain/','GET','',''),('4ddc24ce3b1d4b12aecd6bc65a97c4be','1','内容管理-内容管理-内容发布','1','2017-11-14 15:18:41','220.160.68.3','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36','/jeesite/a/cms/','GET','',''),('4dddb524671e4232bccd08ddfd00e2bf','1','系统登录','1','2019-09-08 20:09:09','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a','GET','login=',''),('4de0b13eb0134994b231b1402bd76f41','1','实例示例-参考示例','1','2019-09-09 21:32:39','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('4e6c9593ec2d43dc8c94e70da749dc0c','1','代码生成-代码生成-业务表配置','1','2019-09-09 03:36:52','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genTable','GET','',''),('4ef1ec3278c24aadb0e18cfd7657ec48','1','代码生成-代码生成-业务表配置','1','2019-09-09 03:44:12','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genTable','GET','',''),('4f07ba070ce64db39827eeed2b5d7760','1','代码生成-生成示例-单表-查看','1','2019-09-09 04:27:06','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/test/testData/getListData','POST','_search=false&nd=1568021225661&rows=10&cuPage=1&sidx=&sord=asc',''),('4f484580eb3748098926a2c14f5806fd','1','实例示例-参考示例','1','2019-09-08 19:52:11','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('501c364a6d7e4a469849255a2c794360','1','实例示例-参考示例','1','2019-09-09 01:01:45','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('5126098d4ff74247933ce29b0afc3446','1','系统设置-机构用户-用户管理','1','2019-09-09 21:33:35','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/user/index','GET','',''),('51851f2c159a4d09a652213d739462d7','1','系统设置-机构用户-用户管理-查看','1','2019-09-09 21:13:12','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/user/list','GET','',''),('523713856f63430e834804134e14ce87','1','系统设置-机构用户-区域管理','1','2019-09-09 21:33:37','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/area/','GET','',''),('53415bdb7bb14869b77920791cf7a3e4','1','我的面板-个人信息-个人信息','1','2017-11-14 15:14:33','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/sys/user/info','GET','',''),('53f07efc3b24441eb47daf7083e419c9','1','实例示例-参考示例','1','2019-09-08 20:41:25','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('546782b3d8d142508a72d28b4546d195','1','实例示例-参考示例','1','2019-09-08 21:20:48','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('54a329a75f57484383746c2875eac5fe','1','代码生成-代码生成-业务表配置','1','2019-09-09 03:23:46','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genTable','GET','',''),('54bb46ef624d4bf588a8bc7440672380','1','代码生成-生成示例-主子表','1','2017-11-14 15:14:40','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/test/testDataMain','GET','',''),('55149d3af3a64a7e840ffc8cfc96e4d3','1','系统登录','1','2019-09-09 01:02:46','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a','GET','login=',''),('55168b1ec3e444358e8aaf7d616a232d','1','实例示例-参考示例','1','2019-09-08 21:41:32','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('5539df7d81ea4f9a9ee05767051c5fce','1','实例示例-参考示例','1','2019-09-06 02:38:48','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('558061b0467542aba1ee2687e41f478b','1','系统设置-机构用户-用户管理','1','2019-09-09 21:16:26','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/user/index','GET','',''),('5582e67295114dfa8a28866e1522fea6','1','系统设置-机构用户-区域管理','1','2019-09-09 20:33:22','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/area/','GET','',''),('5584ea29519e4007b4341434186657d6','1','系统设置-机构用户-机构管理','1','2019-09-09 21:30:50','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/office/','GET','',''),('560c29fc47c74969882a393863fa39fb','1','实例示例-参考示例','1','2019-09-06 08:11:20','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('566b8432491144ddba53b30bbe1849c3','1','我的面板-个人信息-个人信息','1','2017-11-14 15:14:14','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/sys/user/info','GET','',''),('56e282aa382748808df56d547c881322','1','系统登录','1','2019-09-08 22:24:29','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a','GET','login=',''),('58937116d8614fa3b13e633714393f6c','1','系统设置-系统设置-菜单管理','1','2019-09-06 00:48:34','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/','GET','',''),('58cf83b853e74bfd804e378515005927','1','实例示例-参考示例','1','2019-09-09 02:09:41','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('58e6205e961344e28805867f398f810f','1','系统设置-系统设置-菜单管理','1','2019-09-06 00:53:29','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/','GET','',''),('58e703369dab456c8c6530b988aebe5a','1','代码生成-代码生成-业务表配置','1','2019-09-09 03:19:27','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genTable','GET','',''),('594929e699ba4a5aa0642e14c0e9919e','1','实例示例-实例示例','1','2019-09-09 04:23:49','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/list','GET','',''),('59fae9bd2c08444f8638cc5911cf3d3d','1','代码生成-生成示例-单表','1','2019-09-06 00:45:02','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/test/testData','GET','',''),('5a1eaf0727814c69b23cec935817aaf2','1','代码生成-代码生成-业务表配置','1','2019-09-09 03:44:44','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genTable','GET','',''),('5a417264d9af43a6bbcacc51c2479aaa','1','系统设置-系统设置-菜单管理','1','2019-09-06 00:49:39','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/','GET','',''),('5a6af383c07146aaafe56bd65d9c86bd','1','实例示例-参考示例','1','2019-09-09 01:55:26','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('5a9d5af3bd9a4925b68240c66b7504fe','1','实例示例-参考示例','1','2019-09-06 02:34:31','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('5ac586fe630d4e479185d84375ca4583','1','系统设置-日志查询-日志查询','1','2019-09-09 04:09:27','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/log','GET','',''),('5b9caaad56ee40ed90e4e8df5e9bdb14','1','实例示例-实例示例','1','2019-09-09 21:32:38','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/list','GET','',''),('5babf513756448e89e3ba3ea05b27623','1','实例示例-参考示例','1','2019-09-09 01:44:28','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('5ce6a592827a4ed88e3997b1ec42d2c1','1','实例示例-参考示例','1','2019-09-08 20:22:31','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('5d0e70be6b20451fb64bee64426c22fc','1','实例示例-参考示例','1','2019-09-08 21:58:51','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('5d526bb862da4474a121366c60fc42a0','1','代码生成-代码生成-业务表配置','1','2017-11-14 15:16:48','182.110.0.154','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36 LBBROWSER','/jeesite/a/gen/genTable','GET','',''),('5d6dd27738164ab79fcb7d80cc806381','1','代码生成-代码生成-生成方案配置','1','2019-09-09 03:16:35','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genScheme','GET','',''),('5e92e006c814454fb48feb18c201d6d0','1','系统设置-系统设置-角色管理-修改','1','2019-09-06 00:53:42','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/role/save','POST','id=1&office.id=1&office.name=山东省总公司&oldName=系统管理员&name=系统管理员&oldEnname=dept&enname=dept&roleType=assignment&sysData=1&useable=1&dataScope=1&menuIds=1,27,28,29,30,71,56,57,58,59,62,88,89,90,63,73,74,64,65,66,69,70,72,2,13,20,21,22,17,18,19,14,15,...&officeIds=&remarks=',''),('5ea7a55bbe024079a5216b90cf27ff00','1','代码生成-代码生成-生成方案配置','1','2019-09-09 02:57:51','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genScheme','GET','',''),('5ed30d2404fc42e78c1e6a8beb919abf','1','实例示例-参考示例','1','2019-09-06 00:58:33','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('5ef7e055707c47a0a22b996e4b5567bb','1','实例示例-参考示例','1','2019-09-06 03:05:52','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('5f13ea374ea64f3b90acdebc97bdf6a9','1','实例示例-参考示例','1','2019-09-09 01:54:35','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('5f86d3c498b847e9885f93fe60bd2e3d','1','系统设置-系统设置-菜单管理','1','2019-09-09 04:12:25','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/','GET','',''),('600301aacf07474ab93da5bef8dcf8d9','1','实例示例-参考示例','1','2019-09-09 02:15:42','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('606a7a27c39043a8a8b367c7d8f43ee7','1','实例示例-参考示例','1','2019-09-09 00:48:55','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('6177352d50f249c8a3cde080a0397536','1','系统设置-机构用户-机构管理','1','2019-09-09 21:33:36','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/office/','GET','',''),('61c8fda130c543859380ecf6d2b0e3ad','1','系统设置-机构用户-区域管理','1','2019-09-09 21:04:07','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/area/','GET','',''),('61cb85d0fe4745f1afe26a85a510eb66','1','实例示例-参考示例','1','2019-09-08 20:45:19','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('629ce4f81ef74142b04abb1eb665148f','1','实例示例-参考示例','1','2019-09-09 02:14:47','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('62a4b060a9574b69b927d1e0b8127b3a','1','系统设置-系统设置-菜单管理','1','2019-09-06 00:47:07','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/','GET','',''),('62a509ffaf53436aad66430aff22fc89','1','系统设置-系统设置-字典管理','1','2019-09-09 21:28:12','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/dict/','GET','',''),('631257f4bf8249d18220b9a50036ce2c','1','代码生成-代码生成-业务表配置','1','2019-09-09 03:22:50','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genTable','GET','',''),('631405808c2942fab8051a76e215b505','1','内容管理-内容管理-内容发布-文章模型-查看','1','2017-11-14 15:15:55','119.97.201.18','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36','/jeesite/a/cms/article/form','GET','id=32',''),('632e0201a19043eb8a2c5f1d04a42f2e','1','代码生成-生成示例-单表-查看','1','2019-09-06 00:45:03','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/test/testData/getListData','POST','_search=false&nd=1567748702460&rows=10&cuPage=1&sidx=&sord=asc',''),('648ffbeb0faa491687fb25589c9a26b6','1','系统登录','1','2019-09-06 00:53:46','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a','GET','login=',''),('64ebeb0ca1804e05ab1ab81b2c6db465','1','实例示例-参考示例','1','2019-09-09 01:47:51','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('64fa9f1fc217402f874eed8b6da2721c','1','实例示例-参考示例','1','2019-09-07 04:34:09','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('6587dcd5bbfe4e3490e1b49563cded55','1','代码生成-代码生成-业务表配置','1','2017-11-14 15:19:15','182.110.0.154','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36 LBBROWSER','/jeesite/a/gen/genTable','GET','',''),('659557586297489196c5da24fafbda7c','1','系统设置-机构用户-用户管理-查看','1','2017-11-14 15:18:56','220.160.68.3','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36','/jeesite/a/sys/user/export','POST','pageNo=1&pageSize=30&orderBy=&company.id=&company.name=&loginName=&office.id=2&office.name=公司领导&name=',''),('660fa6134b0241609571c4e492cd0e36','1','实例示例-参考示例','1','2019-09-09 00:37:23','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('662c491416874696a7e310629f0cb77e','1','系统登录','1','2019-09-09 20:16:45','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a','GET','login=',''),('67018ccbc80f4507b6943737c8459b3d','1','实例示例-参考示例','1','2019-09-09 00:23:45','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('67c1f7b2dc534eb7a9d098bd9015e4f2','1','系统设置-系统设置-菜单管理-修改','1','2019-09-06 00:48:17','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/delete','GET','id=31',''),('68a4c503a7184a6eb03906518a23a91f','1','实例示例-参考示例','1','2019-09-08 20:28:56','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('68e2fe17b1d94145b1de2e1761b934e3','1','系统设置-系统设置-菜单管理-查看','1','2019-09-06 00:45:30','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/form','GET','',''),('690e0e5e0dc74267972306fbc1af3320','1','实例示例-参考示例','1','2019-09-08 20:22:09','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('691c1f4f45d449b79a2672d53f63c1ff','1','系统登录','1','2017-11-14 15:14:13','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a','GET','login=',''),('69b41e0ea092459aaed4c1a0dad4cf14','1','在线办公-个人办公-我的任务','1','2019-09-09 02:19:25','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/act/task/todo/','GET','',''),('6a05a8ad4a0c4ff295297cb30da5afe5','1','代码生成-代码生成-生成方案配置','1','2019-09-09 03:04:07','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genScheme','GET','',''),('6aa1fa79e4d3492ea43859e68eb284bd','1','实例示例-参考示例','1','2019-09-06 02:50:58','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('6aab7d1a6d704a9791a1a294d002ccd6','1','内容管理-内容管理-内容发布-文章模型','1','2017-11-14 15:14:45','119.97.201.18','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36','/jeesite/a/cms/article/','GET','category.id=3',''),('6b1e84a18a584410ac7992368b8c0698','1','系统设置-机构用户-机构管理','1','2019-09-09 21:15:00','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/office/','GET','',''),('6b30c7cb118949278fe96286241d69d5','1','系统登录','1','2019-09-09 20:46:19','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a','GET','login=',''),('6b415f3e2b154cdfa3150adbd4e525b6','1','代码生成-生成示例-单表','1','2019-09-09 04:27:06','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/test/testData','GET','',''),('6bc64aaee6d94256aec4daeb9feade76','1','实例示例-实例示例','1','2019-09-06 00:53:50','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/list','GET','',''),('6beb5473259d48baa69c552083df5727','1','内容管理-内容管理-内容发布-文章模型-查看','1','2017-11-14 15:16:34','119.97.201.18','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36','/jeesite/a/cms/article/findByIds','GET','ids=1,2,3',''),('6beeb7633b7c409cb38e6064dbdbe3d7','1','实例示例-参考示例','1','2019-09-09 01:01:36','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('6c0b47545ad943f785e302de7f27754a','1','实例示例-参考示例','1','2019-09-08 20:44:25','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('6cb03d1358e14853ab434de5ce9dd87f','1','系统设置-机构用户-区域管理','1','2019-09-09 21:01:40','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/area/','GET','',''),('6d00990759d643188911c6b9ba334513','1','实例示例-参考示例','1','2019-09-08 19:51:22','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('6d153766a92d4bc89d7d5a8ee2cd08e9','1','系统设置-系统设置-角色管理','1','2019-09-09 21:28:13','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/role/','GET','',''),('6d7d33de90d74d70b9db1e0c81d5185a','1','系统登录','1','2019-09-09 02:02:37','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a','GET','login=',''),('6de671769ce04a5987fdfb5a101d65fa','1','系统设置-系统设置-菜单管理-修改','1','2019-09-06 00:49:58','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/save','POST','id=79&parent.id=1&parent.name=功能菜单&name=代码生成&href=&target=&icon=desktop&sort=5000&isShow=1&permission=&remarks=',''),('6deb7931832f4118985c257c80c5ac3a','1','实例示例-参考示例','1','2019-09-06 02:31:04','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('6defa67b84d94d498b50199e9743bc96','1','系统设置-系统设置-角色管理-查看','1','2019-09-06 00:52:01','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/role/form','GET','id=1',''),('6e1c5d2e8a1e49a698206f4193c8e3d8','1','实例示例-参考示例','1','2019-09-09 02:21:31','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('6e29912a45ae49fbb2b77978f8956fca','1','系统设置-系统设置-菜单管理','1','2019-09-09 04:26:39','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/','GET','',''),('6ee0dc8d0adc42498c5248fb67e4ffea','1','实例示例-参考示例','1','2019-09-06 02:05:19','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('6f69cd4c81b64b40975cca1f2e43c1f6','1','实例示例-实例示例','1','2019-09-06 00:54:55','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/list','GET','',''),('6fc249058d8e49bfaae087cf765ce54a','1','系统设置-系统设置-菜单管理','1','2019-09-06 00:53:12','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/','GET','',''),('70334998678c45bb946f2edcbf463317','1','代码生成-代码生成-业务表配置','1','2019-09-09 03:28:24','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genTable','GET','',''),('703c1f696fc64c40bb480a3d5dc0638b','1','实例示例-参考示例','1','2019-09-08 20:29:22','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('7071dda4937342738ef86c6dd171118b','2','代码生成-代码生成-生成方案配置','1','2019-09-09 02:48:16','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genScheme','GET','','org.apache.jasper.JasperException: An exception occurred processing JSP page /WEB-INF/views/modules/gen/genSchemeList.jsp at line 35\n\n32: 				<div class=\"form-group\">\n33: 					<label class=\"control-label col-md-3\">类型:</label>\n34: 					<div class=\"col-md-9\">\n35: 						<form:select id=\"type\" path=\"type\" class=\"form-control\">\n36: 							<form:option value=\"\" items=\"${typeList}\" htmlEscape=\"false\"/></form:select>\n37: 					</div>\n38: 				</div>\n\n\nStacktrace:\n	at org.apache.jasper.servlet.JspServletWrapper.handleJspException(JspServletWrapper.java:579)\n	at org.apache.jasper.servlet.JspServletWrapper.service(JspServletWrapper.java:471)\n	at org.apache.jasper.servlet.JspServlet.serviceJspFile(JspServlet.java:396)\n	at org.apache.jasper.servlet.JspServlet.service(JspServlet.java:340)\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:729)\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:292)\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:207)\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:52)\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:240)\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:207)\n	at org.apache.catalina.core.ApplicationDispatcher.invoke(ApplicationDispatcher.java:720)\n	at org.apache.catalina.core.ApplicationDispatcher.processRequest(ApplicationDispatcher.java:466)\n	at org.apache.catalina.core.ApplicationDispatcher.doForward(ApplicationDispatcher.java:391)\n	at org.apache.catalina.core.ApplicationDispatcher.forward(ApplicationDispatcher.java:318)\n	at org.springframework.web.servlet.view.InternalResourceView.renderMergedOutputModel(InternalResourceView.java:168)\n	at org.springframework.web.servlet.view.AbstractView.render(AbstractView.java:303)\n	at org.springframework.web.servlet.DispatcherServlet.render(DispatcherServlet.java:1243)\n	at org.springframework.web.servlet.DispatcherServlet.processDispatchResult(DispatcherServlet.java:1027)\n	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:971)\n	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:893)\n	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:965)\n	at org.springframework.web.servlet.FrameworkServlet.doGet(FrameworkServlet.java:856)\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:622)\n	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:841)\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:729)\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:292)\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:207)\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:52)\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:240)\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:207)\n	at com.opensymphony.sitemesh.webapp.SiteMeshFilter.obtainContent(SiteMeshFilter.java:129)\n	at com.opensymphony.sitemesh.webapp.SiteMeshFilter.doFilter(SiteMeshFilter.java:77)\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:240)\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:207)\n	at org.apache.shiro.web.servlet.ProxiedFilterChain.doFilter(ProxiedFilterChain.java:61)\n	at org.apache.shiro.web.servlet.AdviceFilter.executeChain(AdviceFilter.java:108)\n	at org.apache.shiro.web.servlet.AdviceFilter.doFilterInternal(AdviceFilter.java:137)\n	at org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:125)\n	at org.apache.shiro.web.servlet.ProxiedFilterChain.doFilter(ProxiedFilterChain.java:66)\n	at org.apache.shiro.web.servlet.AbstractShiroFilter.executeChain(AbstractShiroFilter.java:449)\n	at org.apache.shiro.web.servlet.AbstractShiroFilter$1.call(AbstractShiroFilter.java:365)\n	at org.apache.shiro.subject.support.SubjectCallable.doCall(SubjectCallable.java:90)\n	at org.apache.shiro.subject.support.SubjectCallable.call(SubjectCallable.java:83)\n	at org.apache.shiro.subject.support.DelegatingSubject.execute(DelegatingSubject.java:383)\n	at org.apache.shiro.web.servlet.AbstractShiroFilter.doFilterInternal(AbstractShiroFilter.java:362)\n	at org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:125)\n	at org.springframework.web.filter.DelegatingFilterProxy.invokeDelegate(DelegatingFilterProxy.java:344)\n	at org.springframework.web.filter.DelegatingFilterProxy.doFilter(DelegatingFilterProxy.java:261)\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:240)\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:207)\n	at org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:85)\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:240)\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:207)\n	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:212)\n	at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:106)\n	at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:502)\n	at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:141)\n	at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:79)\n	at org.apache.catalina.valves.AbstractAccessLogValve.invoke(AbstractAccessLogValve.java:616)\n	at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:88)\n	at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:528)\n	at org.apache.coyote.http11.AbstractHttp11Processor.process(AbstractHttp11Processor.java:1100)\n	at org.apache.coyote.AbstractProtocol$AbstractConnectionHandler.process(AbstractProtocol.java:687)\n	at org.apache.tomcat.util.net.NioEndpoint$SocketProcessor.doRun(NioEndpoint.java:1520)\n	at org.apache.tomcat.util.net.NioEndpoint$SocketProcessor.run(NioEndpoint.java:1476)\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)\n	at org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)\n	at java.lang.Thread.run(Thread.java:745)\nCaused by: java.lang.IllegalStateException: Neither BindingResult nor plain target object for bean name \'dict\' available as request attribute\n	at org.springframework.web.servlet.support.BindStatus.<init>(BindStatus.java:144)\n	at org.springframework.web.servlet.tags.form.AbstractDataBoundFormElementTag.getBindStatus(AbstractDataBoundFormElementTag.java:168)\n	at org.springframework.web.servlet.tags.form.AbstractDataBoundFormElementTag.getPropertyPath(AbstractDataBoundFormElementTag.java:188)\n	at org.springframework.web.servlet.tags.form.AbstractDataBoundFormElementTag.getName(AbstractDataBoundFormElementTag.java:154)\n	at org.springframework.web.servlet.tags.form.AbstractDataBoundFormElementTag.writeDefaultAttributes(AbstractDataBoundFormElementTag.java:117)\n	at org.springframework.web.servlet.tags.form.AbstractHtmlElementTag.writeDefaultAttributes(AbstractHtmlElementTag.java:422)\n	at org.springframework.web.servlet.tags.form.SelectTag.writeTagContent(SelectTag.java:194)\n	at org.springframework.web.servlet.tags.form.AbstractFormTag.doStartTagInternal(AbstractFormTag.java:84)\n	at org.springframework.web.servlet.tags.RequestContextAwareTag.doStartTag(RequestContextAwareTag.java:80)\n	at org.apache.jsp.WEB_002dINF.views.modules.gen.genSchemeList_jsp._jspService(genSchemeList_jsp.java:244)\n	at org.apache.jasper.runtime.HttpJspBase.service(HttpJspBase.java:70)\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:729)\n	at org.apache.jasper.servlet.JspServletWrapper.service(JspServletWrapper.java:438)\n	... 68 more\n'),('70b9d46e66ff4871ac04c12f340f4276','1','系统设置-系统设置-菜单管理','1','2019-09-09 21:26:48','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/','GET','',''),('70c38c1a5edc4a26a9ed5b8de5876e62','1','内容管理-内容管理','1','2017-11-14 15:14:28','119.97.201.18','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36','/jeesite/a/cms/tree','GET','',''),('70f8012c22364b1098a511371c0b3366','1','内容管理-内容管理-内容发布-文章模型','1','2017-11-14 15:14:35','119.97.201.18','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36','/jeesite/a/cms/article/','GET','category.id=3',''),('711d055c3eae412fb6fd113253f01c60','1','代码生成-生成示例-单表','1','2019-09-09 03:15:51','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/test/testData','GET','',''),('715c1f8b11744fee8e4431b13817ceb6','1','系统设置-机构用户-用户管理-查看','1','2019-09-09 21:11:17','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/user/list','GET','',''),('72478de914dc4743b576b69d4fc04025','1','代码生成-生成示例-单表-查看','1','2019-09-09 03:15:51','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/test/testData/getListData','POST','_search=false&nd=1568016950810&rows=10&cuPage=1&sidx=&sord=asc',''),('7281974fa5074f0695caf89f4caca586','1','系统登录','1','2019-09-09 20:55:17','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a','GET','login=',''),('72c538240a1d4035ba5d4db9cdbe1120','1','系统登录','1','2019-09-08 19:43:12','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a','GET','login=',''),('7425f8893c564ba49036e6608b0d2324','1','代码生成-代码生成-业务表配置','1','2019-09-09 02:59:55','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genTable','GET','',''),('7483ebdef78a4a959dc39b26c1542305','1','我的面板-个人信息-个人信息','1','2017-11-14 15:15:38','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/sys/user/info','GET','tabPageId=jerichotabiframe_0',''),('753012c768244e2e8e1760ba7a0d0982','1','系统设置-机构用户-用户管理','1','2019-09-09 04:27:16','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/user/index','GET','',''),('758cb2ad38024be1bf9bff5e11c04c1e','1','实例示例-参考示例','1','2019-09-06 02:51:31','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('75a320ccf4b1476eb4cef66f6db27399','1','代码生成-代码生成-业务表配置','1','2019-09-09 04:00:25','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genTable','GET','',''),('75e310a78a4c46b1b2693c34249a2c2d','1','实例示例-参考示例','1','2019-09-06 02:07:58','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('760569643754411d9c350509faa7436a','1','系统登录','1','2019-09-07 04:26:54','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a','GET','login=',''),('7682db3c0f1b4885b454d0291909fd54','1','实例示例-参考示例','1','2019-09-09 02:15:21','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('76b5154079554e7a8d9e09aa8e805443','1','实例示例-参考示例','1','2019-09-08 21:14:10','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('77074ca3d29a45f28a92055aebc04ce0','1','系统设置-日志查询-日志查询','1','2019-09-09 04:02:43','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/log','GET','',''),('7798d3ffcb314a7897fa5b1b934114af','1','代码生成-代码生成-生成方案配置','1','2019-09-09 02:54:58','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genScheme','GET','',''),('77a796dee7cc417caf4ffbaf22464ead','1','实例示例-参考示例','1','2019-09-06 01:15:02','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('77f88e45d2c742c2b6774b33c124b544','1','系统设置-机构用户-机构管理','1','2019-09-09 21:16:27','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/office/','GET','',''),('780314520bf84e4daa966a23afd44562','1','系统登录','1','2019-09-06 02:10:27','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a','GET','login=',''),('7838686bd37b4ab5a162536a70e69b3d','1','系统设置-机构用户-区域管理','1','2019-09-09 21:16:29','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/area/','GET','',''),('78a89cc0dc5d4bec97063dc2d81abb09','1','实例示例-参考示例','1','2019-09-08 22:28:47','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('7921d7918d9e4164950f68d65b09e301','1','实例示例-参考示例','1','2019-09-07 04:26:59','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('7952e3f1ea0d49279029918575ba4b53','1','实例示例-参考示例','1','2019-09-09 00:40:23','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('79b14036a5e745f3a3c0441a0032dd5d','1','代码生成-代码生成-生成方案配置','1','2017-11-14 15:18:31','182.110.0.154','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36 LBBROWSER','/jeesite/a/gen/genScheme','GET','',''),('79c162375eda46368c786980b1635aca','1','代码生成-代码生成-业务表配置','1','2019-09-09 03:23:09','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genTable','GET','',''),('79ccc61b97f744a7b1011409650aa104','1','系统设置-机构用户-用户管理-查看','1','2019-09-09 02:25:03','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/user/list','GET','',''),('79e43c36d4d841f6a360a571507ff470','1','实例示例-参考示例','1','2019-09-07 04:33:24','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('7a751ea83b4b462a8b4a5819cf0686dc','1','代码生成-代码生成-业务表配置','1','2019-09-09 03:22:52','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genTable','GET','',''),('7b0ec95d5b324f0abc7d004fee691dfa','1','实例示例-参考示例','1','2019-09-08 22:20:09','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('7b34802b2302479cb7bdf023692ec586','1','实例示例-参考示例','1','2019-09-06 02:44:23','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('7c1686fedf1d427f85efcad33c8c9afd','1','系统设置-系统设置-菜单管理','1','2019-09-06 00:48:02','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/','GET','',''),('7c5a70d9cb7944fe9b790ab81da2fda3','1','代码生成-生成示例-主子表','1','2019-09-06 00:45:05','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/test/testDataMain','GET','',''),('7c7987c2571e460fb7bfef3dc85cae9c','1','在线办公-个人办公-审批测试','1','2019-09-09 02:19:27','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/oa/testAudit','GET','',''),('7c920b9ab8264c238fab617e8dd8d2ce','1','实例示例-参考示例','1','2019-09-09 01:41:34','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('7c92e601d88f442db497e6ae97517149','1','实例示例-实例示例','1','2019-09-08 19:15:29','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/list','GET','',''),('7cc2ab368ef849f2bf3a74b8a46d11ba','1','代码生成-代码生成-业务表配置','1','2019-09-09 03:51:57','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genTable','GET','',''),('7cda6c9d4d244bb3b39ce4ab76e77c47','1','系统设置-系统设置-菜单管理','1','2019-09-06 00:47:32','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/','GET','',''),('7d4f9775adf94aaa8ff446be8cf3f794','1','实例示例-参考示例','1','2019-09-06 02:39:06','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('7d7e9c16b4154634bfb384a9bf52da20','1','系统设置-日志查询-日志查询','1','2019-09-09 04:05:32','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/log','GET','',''),('7dd0b9d568814b7f992ee32a9bf7a236','1','系统设置-系统设置-菜单管理-修改','1','2019-09-06 00:49:21','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/save','POST','id=2&parent.id=1&parent.name=功能菜单&name=系统设置&href=&target=&icon=th-large&sort=900&isShow=1&permission=&remarks=',''),('7df47373b1f4482fa72d7f7054be9c87','1','实例示例-参考示例','1','2019-09-09 00:45:26','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('7dfd1219a9cc4b4c8215393a57002919','1','系统设置-机构用户-机构管理','1','2019-09-09 21:16:42','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/office/','GET','',''),('7e291a551ff444b2a8f145abeee3675d','1','系统设置-日志查询-日志查询','1','2019-09-09 04:21:05','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/log','GET','',''),('7e589938aa3540ac9aea0e86fc8ae1c3','1','实例示例-参考示例','1','2019-09-09 01:39:02','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('7eb666f614c141dbbedce7e67e783659','1','实例示例-参考示例','1','2019-09-09 02:13:22','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('7ee26b7977b44b32b7739942ec4d87ec','1','实例示例-参考示例','1','2019-09-09 02:21:19','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('7f76180686de401cbe82049a57a9c074','1','代码生成-代码生成-生成方案配置','1','2019-09-09 03:38:09','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genScheme','GET','',''),('7fba6f2158294bbb947592e8c562bca3','1','系统设置-系统设置-菜单管理-修改','1','2019-09-06 00:47:48','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/save','POST','id=27&parent.id=1&parent.name=功能菜单&name=我的面板&href=&target=&icon=bookmark&sort=100&isShow=1&permission=&remarks=',''),('807fc8d6cf3d4507a66954a0523e8ffb','1','系统设置-机构用户-机构管理-查看','1','2019-09-09 21:13:20','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/office/list','GET','id=&parentIds=',''),('80fef99d58584f18b76f56837938817c','1','实例示例-参考示例','1','2019-09-09 00:56:22','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('8242fe017206422c8f4d572663fcffaf','1','实例示例-参考示例','1','2019-09-09 02:10:58','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('82ad49c51a124f33a8cc88a55f6db600','1','在线办公-通知通告-我的通告','1','2017-11-14 15:15:14','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/oa/oaNotify/self','GET','tabPageId=jerichotabiframe_2',''),('82e17a33b2eb4d6b989824bfb87a5efc','1','系统设置-系统设置-菜单管理-查看','1','2019-09-09 04:26:44','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/form','GET','id=84',''),('831937c72fd44947b3b1c6135f8c7b99','1','代码生成-代码生成-业务表配置','1','2019-09-09 02:45:48','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genTable','GET','',''),('83355e7751a84b78b4ba161bccb826b3','1','实例示例-实例示例','1','2019-09-06 04:32:13','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/list','GET','',''),('836f24c0f7084458915fa6d6a9456ade','1','系统登录','1','2019-09-09 04:23:45','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a','GET','login=',''),('83823e00217b4b69ad757b8e8c0cbfcd','1','实例示例-参考示例','1','2019-09-09 01:52:14','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('84bbcb8eef8f4ee28d3e4e357288e301','1','实例示例-参考示例','1','2019-09-09 02:02:27','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('84c6bc34b9ee436b85fcad1c0b82e8a3','1','实例示例-参考示例','1','2019-09-06 02:48:04','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('84fa467f3d624304839316cc96a1782d','1','实例示例-参考示例','1','2019-09-08 21:47:32','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('851122eeee314dd8acf4993691b0a279','1','系统设置-系统设置-菜单管理-修改','1','2019-09-06 00:46:18','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/save','POST','id=&parent.id=1&parent.name=功能菜单&name=实例示例&href=&target=&icon=indent-right&sort=5030&isShow=1&permission=&remarks=',''),('859277c486e64a60b77d1478a3725759','1','在线办公-流程管理-流程管理','1','2017-11-14 15:14:25','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/act/process','GET','',''),('85d2169900bc49f6aa1ef5365bddfd67','1','内容管理-内容管理','1','2017-11-14 15:14:18','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/cms/none','GET','',''),('85f3a1f016a74a7983001c9e69766692','1','实例示例-参考示例','1','2019-09-08 21:55:56','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('86012efabf944bf19541c3c2ae5a7e10','1','系统设置-系统设置-菜单管理-修改','1','2019-09-06 00:51:10','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/save','POST','id=65d779ccec984ff0b31df79b87ed9d56&parent.id=a91e496aa0ab42239c11617d7095034a&parent.name=实例示例&name=实例示例&href=/demo/demoData/list&target=&icon=&sort=30&isShow=1&permission=&remarks=',''),('8638940c3f534963ab00c6f6210f11a3','1','实例示例-参考示例','1','2019-09-09 02:20:02','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('869e98cd73a54121a4cac3d1c5a43f1d','1','实例示例-参考示例','1','2019-09-08 22:20:27','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('87255e6c954f48a09a7a09a6fcf7b594','1','实例示例-参考示例','1','2019-09-06 01:25:42','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('8749e32b48464d9083c661b00c80cbf2','1','系统设置-系统设置-菜单管理','1','2019-09-06 00:51:44','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/','GET','',''),('88957eb40bc74f0a8f40f74e86dd4f0e','1','代码生成-代码生成-业务表配置','1','2019-09-09 03:45:17','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genTable','GET','',''),('89642c42bc424cef8baf990e29bd2a48','1','内容管理-内容管理','1','2017-11-14 15:15:15','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/cms/tree','GET','',''),('89fc8262e62c49ad995898e4d9d0fd69','1','实例示例-参考示例','1','2019-09-08 21:45:39','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('8a418f9c1b114658a5f39e7033bceebc','1','内容管理-内容管理-内容发布-文章模型','1','2017-11-14 15:14:36','119.97.201.18','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36','/jeesite/a/cms/article/','GET','category.id=4',''),('8adadafe7bf74ada950604bb6b9dcc92','1','代码生成-代码生成-生成方案配置','1','2019-09-09 03:23:45','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genScheme','GET','',''),('8af8f4719b3b444680a73612542b8fc5','1','代码生成-代码生成-业务表配置','1','2019-09-09 03:45:57','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genTable','GET','',''),('8afcf298cd564fd495ba1a271a5997f7','1','代码生成-代码生成-生成方案配置','1','2019-09-09 02:56:15','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genScheme','GET','',''),('8b154d696a3f432c9d18667ffe0d8ead','1','实例示例-参考示例','1','2019-09-06 03:59:40','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('8b736cb5b2ea46a1a1fe38e3ba32e87f','1','实例示例-参考示例','1','2019-09-08 21:41:10','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('8b8d19af6153457fb9a43db2bfb219d7','1','代码生成-代码生成-业务表配置','1','2019-09-09 03:16:36','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genTable','GET','',''),('8b9b9ce6c0b245f0a9070989dd7b80a0','1','系统设置-机构用户-区域管理','1','2019-09-09 20:44:54','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/area/','GET','',''),('8bac0363c22a400d8f3848e63a09a5d5','1','系统设置-系统设置-菜单管理','1','2019-09-06 00:46:18','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/','GET','',''),('8bb74c6e055e42cf8383f3b0cbe9cd67','1','系统登录','1','2019-09-09 01:58:07','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a','GET','login=',''),('8bd28fed6269467299e34f0ef5ca560a','1','系统设置-日志查询-日志查询','1','2019-09-09 20:18:25','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/log','GET','',''),('8bfae2489e5e4913bc22a0ba8b06597f','1','系统设置-系统设置-菜单管理','1','2019-09-09 21:27:07','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/','GET','',''),('8c56fa0ccada47d8a6ec7d456bbf7999','1','系统设置-机构用户-用户管理-查看','1','2019-09-09 21:33:23','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/user/list','GET','repage=',''),('8cadf85bfeee46e890818f8f174a9ec7','1','实例示例-参考示例','1','2019-09-08 20:33:57','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('8cb7b57cabcb4ae1a9676d89510ccbdb','1','内容管理-内容管理-内容发布-文章模型','1','2017-11-14 15:14:33','119.97.201.18','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36','/jeesite/a/cms/article/','GET','category.id=4',''),('8d90bddd59cc4ece8c44ef471d0dfc78','1','实例示例-参考示例','1','2019-09-08 21:14:39','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('8dc77693d6a44cdfa4ba56e33cb7b5ba','1','代码生成-代码生成-生成方案配置','1','2019-09-09 03:06:34','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genScheme','GET','',''),('8f0ec923d7ca433a9d3ca21be2d7b2b9','1','实例示例-参考示例','1','2019-09-08 20:23:38','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('8f5c443abed04fc3a680808a40b9fce8','1','实例示例-参考示例','1','2019-09-06 02:11:49','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('8fbe519b4554494e9bb78f13047df171','1','实例示例-实例示例','1','2019-09-07 04:35:02','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/list','GET','',''),('8ff309941460485e9b4d7e017a2e87db','1','实例示例-参考示例','1','2019-09-08 21:59:39','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('902cab2ac6c64f0092adc6bd6d57659e','1','系统设置-系统设置-菜单管理','1','2019-09-06 00:51:10','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/','GET','',''),('90cd2ae9050e4f3d8eec249721a8b4f5','1','代码生成-代码生成-业务表配置','1','2019-09-09 03:40:12','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genTable','GET','',''),('913955b85da348b6969fe56b4afe0884','1','我的面板-个人信息-个人信息','1','2019-09-09 21:32:12','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/user/info','GET','',''),('91b3251417c4451881e516d629eec7ba','1','系统设置-机构用户-用户管理','1','2019-09-09 21:12:17','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/user/index','GET','',''),('91b40a63103744599837774884f337ce','1','实例示例-参考示例','1','2019-09-06 03:04:39','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('926908ceece544c8836dc0a81bd675c6','1','实例示例-参考示例','1','2019-09-08 20:17:46','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('92c240a9fca54c3693fa742c6c89d3e5','1','我的面板-个人信息-修改密码','1','2017-11-14 15:14:32','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/sys/user/modifyPwd','GET','',''),('93777187a9524736b950af47ddbcd5d5','1','系统设置-机构用户-区域管理','1','2019-09-09 20:31:27','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/area/','GET','',''),('945fb8693d13410480e120dd82ed1d31','1','系统登录','1','2019-09-06 00:44:51','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a;JSESSIONID=404326fb196d497f8383330de102c541','GET','login=',''),('949f9b176cf6436b9b28e16ab34d8e8e','1','实例示例-参考示例','1','2019-09-09 01:36:46','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('94d8ff6941f6429aae4b179c49518145','1','系统登录','1','2019-09-08 19:15:25','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a;JSESSIONID=2c14b95f3a6e4cb6becee5ac24349609','GET','login=',''),('965b538a5bd04f56b12bc4c5b8b2b23c','1','系统登录','1','2019-09-08 22:28:42','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a','GET','login=',''),('977c849081984457911640ff89e1b292','1','系统登录','1','2019-09-09 00:23:41','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a','GET','login=',''),('977c8a31b34b4bc590ad96ca53bf243b','1','代码生成-代码生成-生成方案配置','1','2019-09-09 03:18:38','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genScheme','GET','',''),('979835433e7a4eb0abd84ab762326953','1','系统设置-机构用户-用户管理-查看','1','2017-11-14 15:18:42','220.160.68.3','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36','/jeesite/a/sys/user/list','GET','',''),('97b7c8cb20ab42a6a4ed82d943557d36','1','系统设置-系统设置-菜单管理','1','2019-09-06 00:51:21','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/','GET','',''),('980974a53f8c47b0a43a19d1c9ad4ef5','1','系统设置-机构用户-用户管理-查看','1','2019-09-09 21:12:17','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/user/list','GET','',''),('984e9275aa9c41c5a80ff29debbd1e04','1','在线办公-个人办公-审批测试','1','2017-11-14 15:15:00','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/oa/testAudit','GET','tabPageId=jerichotabiframe_6',''),('98845d4af7144b53b474e332aadfaadd','1','系统登录','1','2019-09-09 21:01:55','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a','GET','login=',''),('98999ddc9e6a45ab99ff456003f9494b','1','实例示例-参考示例','1','2019-09-07 04:32:41','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('98c5c752fcd446ca9e8816bac19f5fac','1','代码生成-生成示例-单表','1','2017-11-14 15:14:39','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/test/testData','GET','',''),('996d7a8d3b64406c9a4254dd1c35582e','1','系统设置-机构用户-区域管理','1','2019-09-09 21:05:48','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/area/','GET','',''),('9999e4ea927343189b9b016c29f51158','1','实例示例-参考示例','1','2019-09-09 00:12:00','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('99dd3cf5b7a04d77ae1ea835fb5e3a81','1','在线办公-通知通告-我的通告','1','2017-11-14 15:14:58','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/oa/oaNotify/self','GET','tabPageId=jerichotabiframe_4',''),('9a875a00593f46bebecbfc3627e6bd55','1','系统设置-系统设置-菜单管理-修改','1','2019-09-06 00:48:02','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/save','POST','id=62&parent.id=1&parent.name=功能菜单&name=在线办公&href=&target=&icon=dashboard&sort=200&isShow=1&permission=&remarks=',''),('9a9f36415b2149248311d1bcfc2fb162','1','实例示例-参考示例','1','2019-09-06 04:24:07','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('9ab3fd15349c4cc48ecc9a3d00a0c4da','1','代码生成-代码生成-生成方案配置','1','2019-09-09 02:49:28','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genScheme','GET','',''),('9b10e07cada54999809eec4d8f4bf394','1','实例示例-参考示例','1','2019-09-06 01:47:58','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('9b79e4d98ddc4270bc487b4fd1e057fd','1','系统设置-机构用户-用户管理','1','2019-09-09 21:33:49','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/user/index','GET','',''),('9c02fd2b4470403c8d37d8507451fdd9','1','代码生成-代码生成-业务表配置','1','2019-09-09 03:54:02','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genTable','GET','',''),('9c3c941cb9f048ff99a6b23b7ea37670','1','实例示例-参考示例','1','2019-09-06 02:10:31','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('9cbbfd1720a54dd3bdbed9631b8f68c2','1','代码生成-代码生成-生成方案配置','1','2019-09-09 03:04:37','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genScheme','GET','',''),('9cd99673c187479cb275c8fc1e757802','1','系统设置-系统设置-角色管理','1','2019-09-06 00:51:59','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/role/','GET','',''),('9cdbcdede21942feb4e413140f6a87ce','1','实例示例-参考示例','1','2019-09-09 00:49:31','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('9d10e0f3640c40b69fe14f3871533a92','1','系统设置-机构用户-用户管理-查看','1','2019-09-09 02:35:19','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/user/list','GET','office.id=9&office.name=综合部',''),('9d784cbfb5744972a3d39c25ea0c18c1','1','系统设置-机构用户-用户管理-修改','1','2019-09-09 21:33:23','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/user/save','POST','id=1&photo=&company.id=1&company.name=山东省总公司&office.id=2&office.name=公司领导&no=0001&name=系统管理员&oldLoginName=thinkgem&loginName=admin&newPassword=&confirmNewPassword=&email=admin@163.com&phone=8675&mobile=8675&loginFlag=1&userType=&roleIdList=2&_roleIdList=on&remarks=最高管理员',''),('9e0387701d6448079d6990645d47c262','1','代码生成-代码生成-生成方案配置','1','2019-09-09 03:22:49','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genScheme','GET','',''),('9e541160527e47b7baeb07b576cab9c4','1','实例示例-参考示例','1','2019-09-09 02:11:52','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('9ea6882dca754a12b2e2bd6500b0a173','1','系统设置-机构用户-区域管理','1','2019-09-09 20:30:51','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/area/','GET','',''),('9ed4baa24fb04994a7694aeeb81a6d77','1','系统设置-系统设置-菜单管理-查看','1','2019-09-06 00:50:13','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/form','GET','parent.id=a91e496aa0ab42239c11617d7095034a',''),('9f5bd0927af54e6d95cb3e12d2477b46','1','系统登录','1','2019-09-08 20:52:50','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a','GET','login=',''),('9f5f5c0973504d0783af1f8d79abf340','1','代码生成-代码生成-生成方案配置','1','2019-09-09 02:50:01','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genScheme','GET','',''),('9f61e87eccac48e290dbdcfc5ec94410','1','实例示例-参考示例','1','2019-09-06 01:58:42','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('9f94c29052754b83892bfaaf7a617e44','1','代码生成-代码生成-生成方案配置','1','2019-09-09 03:11:16','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genScheme','GET','',''),('a00296dd3f8c4053a252dd9ca137f49e','1','代码生成-代码生成-业务表配置','1','2019-09-09 03:20:34','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genTable','GET','',''),('a00748782f2047e3a8eca8833699a667','1','内容管理-内容管理-内容发布-文章模型','1','2017-11-14 15:16:26','119.97.201.18','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36','/jeesite/a/cms/article/','GET','category.id=12',''),('a31760abe9814261b2e5869217f2b0a5','1','系统设置-机构用户-区域管理','1','2019-09-09 21:33:37','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/area/','GET','',''),('a3d4e797650a4c7e80c7a213c6d6bc86','1','在线办公-个人办公-审批测试','1','2019-09-09 02:19:44','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/oa/testAudit','GET','',''),('a49ed2932e5e4204875e93470bc03f23','1','系统登录','1','2019-09-06 07:59:06','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a','GET','login=',''),('a4ee0bbf11b2497db56884bf70d2f51a','1','系统设置-系统设置-菜单管理-修改','1','2019-09-06 00:51:44','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/save','POST','id=65d779ccec984ff0b31df79b87ed9d56&parent.id=a91e496aa0ab42239c11617d7095034a&parent.name=实例示例&name=实例示例&href=/demo/demoData/list&target=&icon=&sort=30&isShow=1&permission=demo:demoData:view,demo:demoData:edit&remarks=',''),('a50e423661074892b7a3e02bc7791815','1','代码生成-代码生成-业务表配置','1','2019-09-09 03:19:32','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genTable','GET','',''),('a52ea4cd49f94447b455c85a03e0862f','1','实例示例-参考示例','1','2019-09-06 02:09:47','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('a59e0ec0e4ac442bb6f486fbcca809ca','1','系统设置-机构用户-用户管理-查看','1','2019-09-09 21:33:02','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/user/form','GET','id=1',''),('a5dce4d7d50541cc86bdd52788edfe53','1','实例示例-参考示例','1','2019-09-06 00:56:11','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('a5de80387045456281b4e15c77712ade','1','代码生成-代码生成-业务表配置','1','2019-09-09 03:27:50','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genTable','GET','',''),('a68a1f57104948438aad536ccfd870e3','1','实例示例-参考示例','1','2019-09-09 01:35:29','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('a6a54cf8cc1949c4aee520c614885179','1','系统设置-机构用户-用户管理','1','2019-09-09 20:27:48','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/user/index','GET','',''),('a6c4248f1ddf40a78c7355f26c25f9c0','1','实例示例-实例示例','1','2019-09-06 00:51:13','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/list','GET','',''),('a71db58ff618410cb3e517d3cf79c58b','1','实例示例-参考示例','1','2019-09-09 01:44:41','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('a724541a36134dc9b04bb3d6e64bc3dc','1','实例示例-参考示例','1','2019-09-08 21:41:34','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('a746e0977c4c4ba8ac93ff0ae4b8138a','1','系统设置-日志查询-日志查询','1','2019-09-09 04:06:20','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/log','GET','',''),('a7e757221b6144a0a554983e4dcddda5','1','实例示例-参考示例','1','2019-09-09 02:00:40','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('a8312e62f14e4b02a24a2d64386dd0f5','1','代码生成-代码生成-业务表配置','1','2019-09-09 03:37:35','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genTable','GET','',''),('a8c6befda8764df18742a774b5e9778c','1','我的面板-个人信息-修改密码','1','2017-11-14 15:18:38','220.160.68.3','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36','/jeesite/a/sys/user/modifyPwd','GET','',''),('a8f3148b182c45e9b3e777285b7356ef','1','内容管理-内容管理','1','2017-11-14 15:16:46','182.110.0.154','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36 LBBROWSER','/jeesite/a/cms/none','GET','',''),('a900e5ad672c4dd792d00a571eb9bd79','1','内容管理-内容管理','1','2017-11-14 15:16:46','182.110.0.154','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36 LBBROWSER','/jeesite/a/cms/tree','GET','',''),('a9a7bef1837444e9b0fc736860ecbd60','1','代码生成-代码生成-业务表配置','1','2019-09-09 03:16:00','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genTable','GET','',''),('a9f5a17ab6f64dd8a378bb5ee45ae1ef','1','实例示例-实例示例','1','2019-09-06 03:59:38','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/list','GET','',''),('aa2fff5678af4c32916943cd887fd593','1','实例示例-参考示例','1','2019-09-06 03:04:51','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('aa3df978217c4f84b9267f5aae5a9c1d','1','内容管理-内容管理-内容发布','1','2017-11-14 15:15:15','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/cms/','GET','tabPageId=jerichotabiframe_3',''),('aa48e15fc8224c909d9a375bc677e442','1','系统设置-系统设置-角色管理','1','2019-09-06 00:51:54','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/role/','GET','',''),('aa83b6d17cdd45c5ad1d15d6e4878893','1','实例示例-参考示例','1','2019-09-08 21:23:34','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('aac4b01a70044b8bb9f4dcc218c85c7f','1','实例示例-参考示例','1','2019-09-08 19:15:34','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('aadb24143ad0455ca198095b7b653dfa','1','系统设置-系统设置-菜单管理','1','2019-09-06 00:45:22','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/','GET','',''),('aae94721425a4dd5a90f3c9b99ba12b3','1','在线办公-通知通告-我的通告','1','2017-11-14 15:15:56','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/oa/oaNotify/self','GET','tabPageId=jerichotabiframe_1',''),('aafe15f25e3541dfb18f5fc868716773','1','系统设置-机构用户-区域管理','1','2019-09-09 20:29:50','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/area/','GET','',''),('acc1d7143b254d1a8f198132f29aec0b','1','代码生成-代码生成-生成方案配置','1','2019-09-09 03:37:34','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genScheme','GET','',''),('acd7e3503ce545a0a2d5c4e4ad90863e','1','代码生成-代码生成-业务表配置','1','2019-09-09 03:25:33','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genTable','GET','',''),('acf6e1b95110409cb32098cfd171c848','1','我的面板-个人信息-个人信息','1','2017-11-14 15:18:35','220.160.68.3','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36','/jeesite/a/sys/user/info','GET','',''),('ad70a84851bf43609ee820eb7270820b','1','实例示例-参考示例','1','2019-09-08 20:16:32','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('ae1a8d243d024dd7ae6285aeea35e6ed','1','系统设置-机构用户-用户管理','1','2019-09-09 02:25:02','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/user/index','GET','',''),('ae511a3ada6b4813b7e8c20b0cafeed4','1','系统设置-机构用户-用户管理-修改','1','2019-09-09 21:33:08','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/user/checkLoginName','GET','oldLoginName=thinkgem&loginName=adm',''),('b019bcba435a4b1cb822137a0217541e','1','实例示例-参考示例','1','2019-09-08 20:22:54','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('b02d15735f19472f86b8733d07e08824','1','实例示例-参考示例','1','2019-09-08 22:11:54','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('b02e9d0441fe420a8d6cec755b0a56f9','1','实例示例-参考示例','1','2019-09-06 04:26:22','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('b0572932315f40a9a187d2a839b67a7b','1','我的面板-个人信息-修改密码','1','2019-09-09 21:34:01','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/user/modifyPwd','GET','',''),('b06324c2a4bb45308c574e2ef921c585','1','代码生成-代码生成-业务表配置','1','2019-09-09 03:24:34','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genTable','GET','',''),('b0e3a6a93a584280873fe6966f2f7df8','1','系统设置-日志查询-日志查询','1','2019-09-09 21:07:44','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/log','GET','',''),('b115276e41f64eaea09e8d0ac40ae9c7','1','系统设置-系统设置-字典管理','1','2019-09-09 21:30:07','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/dict/','GET','',''),('b127cd6513974f198ed0b01166b3dbbb','1','实例示例-参考示例','1','2019-09-08 21:06:46','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('b1ff28eb870b4cc18c0a3b8a5bf14a04','1','系统登录','1','2019-09-09 02:00:37','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a','GET','login=',''),('b24518b754b34ef280e7c0f4da075c8c','1','系统登录','1','2019-09-08 22:13:47','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a','GET','login=',''),('b3fde77c59b24abb8e389d020bea48fd','1','内容管理-内容管理-内容发布','1','2017-11-14 15:14:28','119.97.201.18','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36','/jeesite/a/cms/','GET','',''),('b472da2c5671477587d352760cab13b0','1','系统登录','1','2019-09-09 21:07:24','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a','GET','login=',''),('b4b2c424ce404d80a4eeaca9e7029430','1','内容管理-内容管理-内容发布-文章模型-查看','1','2017-11-14 15:15:25','119.97.201.18','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36','/jeesite/a/cms/article/form','GET','id=11',''),('b4b8a14783ad435d905d8f4c00202280','1','实例示例-实例示例','1','2019-09-06 07:59:08','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/list','GET','',''),('b557e6bc19e54b0c9ac1094b08d7b73f','1','系统设置-日志查询-日志查询','1','2019-09-09 20:19:45','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/log','GET','',''),('b5f53120a0414c5885529da849dfb6b5','1','实例示例-参考示例','1','2019-09-06 04:04:23','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('b610cf1b0aac44648d703c39e400a482','1','实例示例-参考示例','1','2019-09-06 02:56:40','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('b6959ec35cbd4f8a8a629c0fb61a0276','1','实例示例-参考示例','1','2019-09-09 01:02:52','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('b745eb71fbc146319610de836c76da03','1','实例示例-参考示例','1','2019-09-06 04:32:16','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('b823a242718148c1893d7c0fa794fcf5','1','实例示例-参考示例','1','2019-09-09 02:07:42','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('b8ab31185682423298235bdcb85ff009','1','系统设置-机构用户-用户管理','1','2019-09-09 21:33:30','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/user/index','GET','',''),('b91ff20303234af291caba2edfab0ffd','1','我的面板-个人信息-个人信息','1','2017-11-14 15:18:39','220.160.68.3','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36','/jeesite/a/sys/user/info','GET','',''),('b971265375b44f9e8c8f14b4b94691ba','1','系统设置-机构用户-机构管理','1','2019-09-09 21:13:20','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/office/','GET','',''),('b9bf355b82e84d5ea688e0b22e2bea3e','1','实例示例-参考示例','1','2019-09-08 22:29:10','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('ba140a94f4504ebf94f52f743a9deb4f','1','系统设置-日志查询-日志查询','1','2019-09-09 04:03:30','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/log','GET','',''),('ba412536769c42bb928f06611ab09f97','1','系统设置-机构用户-用户管理','1','2019-09-09 21:32:54','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/user/index','GET','',''),('ba6179069afb4c91a348cf9a5c63e9c0','1','在线办公-通知通告-我的通告','1','2019-09-09 21:33:41','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/oa/oaNotify/self','GET','',''),('ba862c4a23b34cc9ae3598dda5289a99','1','系统设置-机构用户-区域管理','1','2019-09-09 21:02:28','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/area/','GET','',''),('baf5945044244d989dea53f2536ae832','1','系统设置-机构用户-用户管理','1','2019-09-09 21:10:29','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/user/index','GET','',''),('bb09f4f72b7c458ba9277a007cc2d69d','1','系统设置-机构用户-区域管理','1','2019-09-09 20:52:56','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/area/','GET','',''),('bb0a2d69e49648d4ae3a0f4eeeaaf416','1','代码生成-代码生成-业务表配置','1','2019-09-09 03:35:02','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genTable','GET','',''),('bb411fc093e44f28b312decf28fc61da','1','实例示例-参考示例','1','2019-09-06 02:35:30','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('bb79f8b4d6d44438a7509aae281bfa66','1','实例示例-参考示例','1','2019-09-08 21:22:25','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('bbc46631152749c3aaa4e2a49fcb2309','1','实例示例-参考示例','1','2019-09-08 21:56:17','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('bbf83cea2817479087bcadbf7df07286','1','我的面板-个人信息-个人信息','1','2017-11-14 15:14:47','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/sys/user/info','GET','',''),('bc315e1a7ce84944aaaee177f026a877','1','我的面板-个人信息-个人信息','1','2017-11-14 15:16:26','182.110.0.154','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36 LBBROWSER','/jeesite/a/sys/user/info','GET','',''),('bc45b2e897b34c75a4b9c05a4043229f','1','代码生成-代码生成-业务表配置','1','2019-09-09 03:48:01','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genTable','GET','',''),('bc5a1c412d4f422d9ec209ed09b03ae2','1','我的面板-个人信息-个人信息','1','2017-11-14 15:14:52','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/sys/user/info','GET','tabPageId=jerichotabiframe_0',''),('bcc30c67c90545d8a4b8b43c85d8a06f','1','系统设置-机构用户-机构管理-查看','1','2019-09-09 21:32:56','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/office/list','GET','id=&parentIds=',''),('bcd102a3c55f4a2c867f5fc96af12a06','1','我的面板-个人信息-修改密码','1','2017-11-14 15:14:56','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/sys/user/modifyPwd','GET','tabPageId=jerichotabiframe_2',''),('bce9ac9ffd55407c898376e4283f81c1','1','系统设置-系统设置-菜单管理-查看','1','2019-09-06 00:48:41','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/form','GET','id=2',''),('bd1328806b6b421ca21a180870e0bca6','1','系统登录','1','2019-09-09 01:59:19','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a','GET','login=',''),('bd1925e652324f26be588c3efff5caf9','1','代码生成-代码生成-生成方案配置','1','2019-09-09 03:48:00','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genScheme','GET','',''),('bda35a4b25e148b6b7345d3c040ec329','1','实例示例-参考示例','1','2019-09-08 22:28:44','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('bdc62a9faea948e09366a445c1a4980f','1','系统设置-系统设置-菜单管理-修改','1','2019-09-09 04:26:55','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/save','POST','id=84&parent.id=67&parent.name=日志查询&name=连接池监视&href=/../druid&target=&icon=random&sort=40&isShow=1&permission=&remarks=',''),('bdc8ac40eccb47e4813b49786eb429fd','1','系统设置-机构用户-用户管理-查看','1','2017-11-14 15:14:20','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/sys/user/list','GET','',''),('be61821b48b04309a51a292dd303c44e','1','实例示例-参考示例','1','2019-09-06 03:57:38','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('bf0fc728c8354942a652b2bfe7288f55','1','系统设置-日志查询-日志查询','1','2019-09-09 04:02:46','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/log','GET','',''),('bf5fa64fce4a4aaeab86661ef4918e6a','1','实例示例-参考示例','1','2019-09-07 04:24:12','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('bfac41a51f814a9db409095ee793e3cc','1','系统设置-系统设置-菜单管理-修改','1','2019-09-06 00:49:39','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/save','POST','id=27&parent.id=1&parent.name=功能菜单&name=我的面板&href=&target=&icon=user&sort=100&isShow=1&permission=&remarks=',''),('bfcd3e570c33417498ec3c630110e9ab','1','内容管理-内容管理-内容发布-文章模型','1','2017-11-14 15:14:46','119.97.201.18','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36','/jeesite/a/cms/article/','GET','category.id=5',''),('c073c47149c64b2892c66001a7df3cfc','1','实例示例-参考示例','1','2019-09-09 01:53:09','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('c0ad7939906f4d6e9310c095b105a392','1','代码生成-代码生成-业务表配置','1','2019-09-09 03:33:06','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genTable','GET','',''),('c0c997c3ff634f9c9b0acf7971630123','1','系统登录','1','2019-09-09 20:34:02','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a','GET','login=',''),('c16a2c44765441b2bb9a5013739a825b','1','实例示例-参考示例','1','2019-09-08 21:59:20','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('c177de1efbb142039c891b466da64bc0','1','实例示例-参考示例','1','2019-09-06 02:37:13','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('c1ed9d46c52d4d7fba36c5e6bfa62cab','1','系统设置-日志查询-日志查询','1','2019-09-09 04:09:00','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/log','GET','',''),('c2314f427b6d4ad087e1f5d7b0dffc3d','1','我的面板-个人信息-个人信息','1','2017-11-14 15:14:49','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/sys/user/info','GET','',''),('c2c7b8622afc41d39d18914acf4e9364','1','系统设置-机构用户-用户管理-修改','1','2019-09-09 21:33:08','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/user/checkLoginName','GET','oldLoginName=thinkgem&loginName=ad',''),('c3aae264933b4a5cbf086c6bb2e4567d','1','实例示例-参考示例','1','2019-09-09 02:06:34','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('c3f0dbe3dd9448f5aa1290e3b4c118bd','1','代码生成-代码生成-生成方案配置','1','2019-09-09 03:44:43','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genScheme','GET','',''),('c585ebbf983e4c0984d6eba403ce3c03','1','代码生成-代码生成-业务表配置','1','2017-11-14 15:17:15','182.110.0.154','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36 LBBROWSER','/jeesite/a/gen/genTable','GET','',''),('c58bb4a93a5b4573950eaab13952b19e','1','实例示例-实例示例','1','2019-09-06 00:51:48','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/list','GET','',''),('c6074d8bf649430a9abd26e5b85408ed','1','实例示例-参考示例','1','2019-09-08 21:02:09','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('c6820d3d37d945caabfbda7a21d088a3','1','系统登录','1','2019-09-08 20:28:54','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a','GET','login=',''),('c6c303bee1b7497f854afd039df0771e','1','代码生成-代码生成-业务表配置','1','2019-09-09 03:42:57','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genTable','GET','',''),('c6cc921254624b0eb2ee43557c208c6b','1','代码生成-代码生成-业务表配置','1','2019-09-09 03:42:01','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genTable','GET','',''),('c7005dae103d4b1d993f766624899108','1','系统设置-日志查询-日志查询','1','2019-09-09 04:25:27','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/log','GET','',''),('c70a3db11473455fb5a888812e09db03','1','系统设置-机构用户-区域管理','1','2019-09-09 21:07:51','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/area/','GET','',''),('c71acf6ac29d453f8cc4ab4c2108e0f3','1','我的面板-个人信息-个人信息','1','2017-11-14 15:14:54','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/sys/user/info','GET','tabPageId=jerichotabiframe_0',''),('c7f4cf66864b44c1b19141eba28db492','1','系统设置-系统设置-角色管理','1','2019-09-06 00:52:16','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/role/','GET','repage=',''),('c826074245b248f58bccb13c0cd5b624','1','我的面板-个人信息-修改密码','1','2017-11-14 15:14:17','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/sys/user/modifyPwd','GET','',''),('c87d3bdb158340b69bee60131abc934f','1','我的面板-个人信息-修改密码','1','2017-11-14 15:15:13','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/sys/user/modifyPwd','GET','tabPageId=jerichotabiframe_1',''),('c884ea9c1e1d4044b60f3f617a945b98','1','代码生成-代码生成-生成方案配置','1','2019-09-09 03:13:51','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genScheme','GET','',''),('c8e2245966914a37a700b8d4b51b1889','1','在线办公-流程管理-模型管理','1','2017-11-14 15:14:24','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/act/model','GET','',''),('c906b350bb084acdb18f939f38c8bb7c','1','实例示例-参考示例','1','2019-09-09 02:24:04','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('ca08fe7ec183447da863fd1b7dfd3020','1','系统设置-机构用户-区域管理','1','2019-09-09 20:27:53','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/area/','GET','',''),('ca25f14ac6eb4497a8950353044c0312','1','实例示例-实例示例','1','2019-09-06 02:37:12','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/list','GET','',''),('ca91814df8774eec85b51ef55020f875','1','系统设置-机构用户-区域管理','1','2019-09-09 21:15:27','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/area/','GET','',''),('cb615174b8e84fe99e3fe19c746df356','1','系统设置-系统设置-菜单管理-查看','1','2019-09-06 00:47:53','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/form','GET','id=62',''),('cb733210bd104654ac8dd2453854c3a3','1','代码生成-代码生成-生成方案配置','1','2019-09-09 03:10:12','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genScheme','GET','',''),('cc1f9a4809fa4af39d5c90f0b27ca91a','1','系统设置-机构用户-机构管理-查看','1','2019-09-09 21:15:28','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/office/list','GET','id=&parentIds=',''),('cc355458c1d6415393eaa771bf58a5ce','1','实例示例-参考示例','1','2019-09-09 02:24:21','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('cc3e9d65c4f44cdda34d226a6623fa33','1','在线办公-个人办公-请假办理-查看','1','2019-09-09 02:19:49','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/oa/leave/list','GET','',''),('cd35b46e3b0c44bcafa1392b183131c0','1','系统登录','1','2019-09-06 00:52:23','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a','GET','login=',''),('cd445b63c8f0442c8e08a28f3b4ce914','1','系统设置-系统设置-角色管理','1','2019-09-09 21:28:59','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/role/','GET','',''),('cd9bae4bb4504534a63bd787f526729a','1','在线办公-通知通告-我的通告','1','2017-11-14 15:18:39','220.160.68.3','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36','/jeesite/a/oa/oaNotify/self','GET','',''),('ce404217dec141b091ba79da5057ed26','1','代码生成-生成示例-主子表-查看','1','2019-09-09 04:27:09','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/test/testDataMain/form','GET','',''),('ce98d444b7764776a47553eb5f1f2d7d','1','实例示例-参考示例','1','2019-09-09 03:11:24','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('cee2629463384fa08e9cf17da8160ff2','1','在线办公-流程管理-流程管理','1','2017-11-14 15:14:23','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/act/process','GET','',''),('cefdb3dff1714ec28ea802f0e256465b','1','实例示例-参考示例','1','2019-09-06 02:47:58','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('cf2675d013c14184b3d25f1e35db2665','1','代码生成-代码生成-生成方案配置','1','2019-09-09 03:19:26','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genScheme','GET','',''),('cfc6b811683a49419da9ed9b82959583','1','系统设置-机构用户-机构管理-查看','1','2019-09-09 21:16:43','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/office/list','GET','id=&parentIds=',''),('cfde21f4d6614115a6703bf27697ac29','1','实例示例-参考示例','1','2019-09-08 21:23:23','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('d04b9e850f004feeae7a2b2d8be39da3','1','代码生成-代码生成-业务表配置','1','2019-09-09 03:50:11','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genTable','GET','',''),('d0d7ad6daff74e2382f911ccca37f409','1','实例示例-实例示例','1','2019-09-06 00:52:26','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/list','GET','',''),('d11b10f4183e4fdea0d9f6dcb2d6c09c','1','代码生成-代码生成-业务表配置','1','2019-09-09 02:54:57','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genTable','GET','',''),('d1a32a84edb646768fc9a67df4aeb056','1','代码生成-代码生成-生成方案配置','1','2019-09-09 02:59:57','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genScheme','GET','',''),('d1beed71093c49f38e9dfce72cdb0e74','1','系统登录','1','2017-11-14 15:18:35','220.160.68.3','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36','/jeesite/a','GET','login=',''),('d1f9f001fe254e21bc90ad282efdb174','1','系统登录','1','2019-09-08 21:59:18','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a','GET','login=',''),('d38f3241d2cb4264b2bb2194bb584349','1','实例示例-参考示例','1','2019-09-08 21:57:26','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('d40e7d19d2444f68a0f5bd58ac0dbf4a','1','实例示例-参考示例','1','2019-09-08 20:01:18','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('d42f314246824304afa496fa2f649c02','1','实例示例-参考示例','1','2019-09-08 21:11:08','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('d46442b54c224af989fa83742415aafa','1','代码生成-代码生成-业务表配置','1','2017-11-14 15:14:35','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/gen/genTable','GET','',''),('d4b10ec6f9904bd88d39c21916b58b32','1','代码生成-代码生成-业务表配置','1','2019-09-09 03:43:43','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genTable','GET','',''),('d4c54a89c96c4243b77b332f15a58365','1','实例示例-参考示例','1','2019-09-09 01:59:24','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('d66868faf46c4e3e9b37fae28035a2c5','1','系统登录','1','2019-09-08 21:57:24','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a','GET','login=',''),('d7768f31b4884fd7bf76bf338f852764','1','代码生成-生成示例-树结构','1','2019-09-09 03:15:55','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/test/testTree','GET','',''),('d776b00dfb4b4489be4aa846e9df2ce1','1','代码生成-代码生成-业务表配置','1','2019-09-09 03:29:32','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genTable','GET','',''),('d794f1ac27c047b48862fd6d958c8bab','1','系统登录','1','2019-09-08 21:58:48','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a','GET','login=',''),('d7ba8debfc4e4178bc7f3a18ece2a206','1','内容管理-内容管理-内容发布-文章模型','1','2017-11-14 15:14:35','119.97.201.18','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36','/jeesite/a/cms/article/','GET','category.id=5',''),('d86923407fec4e10a2c79ba72e29d1c7','1','实例示例-参考示例','1','2019-09-08 20:55:36','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('d86974e75d234664b4abdb4fa1171eb7','1','系统设置-机构用户-机构管理','1','2019-09-09 21:16:17','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/office/','GET','',''),('d8c7290019a64df4b625f579260b7589','1','系统登录','1','2019-09-08 21:14:00','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a','GET','login=',''),('d9357b8ea4cf4b7b8e8991ec49d7b7fa','1','系统设置-系统设置-菜单管理','1','2019-09-06 00:50:59','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/','GET','',''),('d9cd43a891574c7cab3fb38f31277dfa','1','在线办公-个人办公-我的任务','1','2017-11-14 15:15:00','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/act/task/todo/','GET','tabPageId=jerichotabiframe_7',''),('da5ef39e1703433a8b6d7b8786084f2f','1','系统设置-机构用户-区域管理','1','2019-09-09 21:08:12','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/area/','GET','',''),('da6b7a420dca438c9f7c2f7738c0eff5','1','系统设置-系统设置-菜单管理-修改','1','2019-09-06 00:53:12','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/save','POST','id=&parent.id=a91e496aa0ab42239c11617d7095034a&parent.name=实例示例&name=参考示例&href=demo/demoData/page&target=&icon=&sort=60&isShow=1&permission=&remarks=',''),('dad187ed1b04404bac819ea025b17a57','1','系统设置-系统设置-菜单管理','1','2019-09-06 00:47:48','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/','GET','',''),('dae09f1267534ffb847dee8e672903bc','1','实例示例-参考示例','1','2019-09-08 21:22:31','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('db6a0661f2064757b1bff358f96892bd','1','系统设置-机构用户-用户管理-查看','1','2019-09-09 21:32:58','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/user/list','GET','',''),('db6bffc11e594073b8af2de073898e3c','1','系统登录','1','2017-11-14 15:16:25','182.110.0.154','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36 LBBROWSER','/jeesite/a','GET','login=',''),('db907d8efb3441cf8f7dc96837663b1f','1','代码生成-生成示例-单表-查看','1','2017-11-14 15:17:02','182.110.0.154','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36 LBBROWSER','/jeesite/a/test/testData/form','GET','',''),('db980299ffa441729c9ef5db9421ba42','1','实例示例-实例示例','1','2019-09-06 01:15:42','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/list','GET','',''),('dcc3273c5d274be1828e3c03f4a15af8','1','系统设置-机构用户-区域管理','1','2019-09-09 21:32:57','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/area/','GET','',''),('dd3d64ad220e49ac89057a279e002d7c','1','系统设置-日志查询-日志查询','1','2019-09-09 04:10:26','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/log','GET','',''),('dd5a9c17195b44b298e92901e827c332','1','实例示例-参考示例','1','2019-09-08 20:09:13','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('ddf0a7df5ae04260aefe7739a13e6f22','1','系统设置-系统设置-角色管理-修改','1','2019-09-06 00:51:57','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/role/assign','GET','id=1',''),('dea3922c12c44aaca437d87630563668','1','内容管理-内容管理-内容发布-文章模型-查看','1','2017-11-14 15:15:31','119.97.201.18','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36','/jeesite/a/cms/article/findByIds','GET','ids=1,2,3',''),('df128409b33047b6a6c6c683fd4cdfff','1','系统设置-机构用户-机构管理','1','2019-09-09 21:33:38','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/office/','GET','',''),('df6263ac365f495e8a161cc6384b1711','1','在线办公-个人办公-我的任务','1','2019-09-09 02:19:43','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/act/task/todo/','GET','',''),('df846f7497a04e798abebd830c4a1078','1','系统设置-系统设置-菜单管理','1','2019-09-06 00:49:58','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/','GET','',''),('dfa01ce68c5a46dba0c1fc025fa4e38b','2','代码生成-代码生成-业务表配置','1','2019-09-09 03:22:29','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genTable','GET','','org.apache.jasper.JasperException: /WEB-INF/views/modules/gen/genTableList.jsp (line: 59, column: 92) The JSP specification requires that an attribute name is preceded by whitespace\n	at org.apache.jasper.compiler.DefaultErrorHandler.jspError(DefaultErrorHandler.java:41)\n	at org.apache.jasper.compiler.ErrorDispatcher.dispatch(ErrorDispatcher.java:275)\n	at org.apache.jasper.compiler.ErrorDispatcher.jspError(ErrorDispatcher.java:91)\n	at org.apache.jasper.compiler.Parser.parseAttributes(Parser.java:165)\n	at org.apache.jasper.compiler.Parser.parseAttributes(Parser.java:154)\n	at org.apache.jasper.compiler.Parser.parseCustomTag(Parser.java:1241)\n	at org.apache.jasper.compiler.Parser.parseElements(Parser.java:1460)\n	at org.apache.jasper.compiler.Parser.parseBody(Parser.java:1673)\n	at org.apache.jasper.compiler.Parser.parseOptionalBody(Parser.java:1006)\n	at org.apache.jasper.compiler.Parser.parseCustomTag(Parser.java:1281)\n	at org.apache.jasper.compiler.Parser.parseElements(Parser.java:1460)\n	at org.apache.jasper.compiler.Parser.parse(Parser.java:139)\n	at org.apache.jasper.compiler.ParserController.doParse(ParserController.java:227)\n	at org.apache.jasper.compiler.ParserController.parse(ParserController.java:100)\n	at org.apache.jasper.compiler.Compiler.generateJava(Compiler.java:199)\n	at org.apache.jasper.compiler.Compiler.compile(Compiler.java:356)\n	at org.apache.jasper.compiler.Compiler.compile(Compiler.java:336)\n	at org.apache.jasper.compiler.Compiler.compile(Compiler.java:323)\n	at org.apache.jasper.JspCompilationContext.compile(JspCompilationContext.java:585)\n	at org.apache.jasper.servlet.JspServletWrapper.service(JspServletWrapper.java:363)\n	at org.apache.jasper.servlet.JspServlet.serviceJspFile(JspServlet.java:396)\n	at org.apache.jasper.servlet.JspServlet.service(JspServlet.java:340)\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:729)\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:292)\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:207)\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:52)\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:240)\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:207)\n	at org.apache.catalina.core.ApplicationDispatcher.invoke(ApplicationDispatcher.java:720)\n	at org.apache.catalina.core.ApplicationDispatcher.processRequest(ApplicationDispatcher.java:466)\n	at org.apache.catalina.core.ApplicationDispatcher.doForward(ApplicationDispatcher.java:391)\n	at org.apache.catalina.core.ApplicationDispatcher.forward(ApplicationDispatcher.java:318)\n	at org.springframework.web.servlet.view.InternalResourceView.renderMergedOutputModel(InternalResourceView.java:168)\n	at org.springframework.web.servlet.view.AbstractView.render(AbstractView.java:303)\n	at org.springframework.web.servlet.DispatcherServlet.render(DispatcherServlet.java:1243)\n	at org.springframework.web.servlet.DispatcherServlet.processDispatchResult(DispatcherServlet.java:1027)\n	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:971)\n	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:893)\n	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:965)\n	at org.springframework.web.servlet.FrameworkServlet.doGet(FrameworkServlet.java:856)\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:622)\n	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:841)\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:729)\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:292)\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:207)\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:52)\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:240)\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:207)\n	at com.opensymphony.sitemesh.webapp.SiteMeshFilter.obtainContent(SiteMeshFilter.java:129)\n	at com.opensymphony.sitemesh.webapp.SiteMeshFilter.doFilter(SiteMeshFilter.java:77)\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:240)\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:207)\n	at org.apache.shiro.web.servlet.ProxiedFilterChain.doFilter(ProxiedFilterChain.java:61)\n	at org.apache.shiro.web.servlet.AdviceFilter.executeChain(AdviceFilter.java:108)\n	at org.apache.shiro.web.servlet.AdviceFilter.doFilterInternal(AdviceFilter.java:137)\n	at org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:125)\n	at org.apache.shiro.web.servlet.ProxiedFilterChain.doFilter(ProxiedFilterChain.java:66)\n	at org.apache.shiro.web.servlet.AbstractShiroFilter.executeChain(AbstractShiroFilter.java:449)\n	at org.apache.shiro.web.servlet.AbstractShiroFilter$1.call(AbstractShiroFilter.java:365)\n	at org.apache.shiro.subject.support.SubjectCallable.doCall(SubjectCallable.java:90)\n	at org.apache.shiro.subject.support.SubjectCallable.call(SubjectCallable.java:83)\n	at org.apache.shiro.subject.support.DelegatingSubject.execute(DelegatingSubject.java:383)\n	at org.apache.shiro.web.servlet.AbstractShiroFilter.doFilterInternal(AbstractShiroFilter.java:362)\n	at org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:125)\n	at org.springframework.web.filter.DelegatingFilterProxy.invokeDelegate(DelegatingFilterProxy.java:344)\n	at org.springframework.web.filter.DelegatingFilterProxy.doFilter(DelegatingFilterProxy.java:261)\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:240)\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:207)\n	at org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:85)\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:240)\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:207)\n	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:212)\n	at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:106)\n	at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:502)\n	at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:141)\n	at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:79)\n	at org.apache.catalina.valves.AbstractAccessLogValve.invoke(AbstractAccessLogValve.java:616)\n	at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:88)\n	at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:528)\n	at org.apache.coyote.http11.AbstractHttp11Processor.process(AbstractHttp11Processor.java:1100)\n	at org.apache.coyote.AbstractProtocol$AbstractConnectionHandler.process(AbstractProtocol.java:687)\n	at org.apache.tomcat.util.net.NioEndpoint$SocketProcessor.doRun(NioEndpoint.java:1520)\n	at org.apache.tomcat.util.net.NioEndpoint$SocketProcessor.run(NioEndpoint.java:1476)\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)\n	at org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)\n	at java.lang.Thread.run(Thread.java:745)\n'),('dfc114e583934b54bb2220c1436a5fd4','1','内容管理-内容管理-内容发布-文章模型-查看','1','2017-11-14 15:15:55','119.97.201.18','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36','/jeesite/a/cms/article/findByIds','GET','ids=1,2,3',''),('e02d5ac9f49841e185cde1fc62ac7aad','1','实例示例-实例示例','1','2019-09-09 02:19:55','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/list','GET','',''),('e0b4d86ecba641f4a5b70d9189db8a12','1','系统设置-系统设置-菜单管理','1','2019-09-06 00:52:47','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/','GET','',''),('e0d5af84d8594acebada42a037ce70e1','1','实例示例-参考示例','1','2019-09-08 22:13:49','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('e0efffa2e1524164a3a872cfc503b93d','1','系统登录','1','2019-09-09 00:16:23','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a','GET','login=',''),('e16f13d72c454b6b9c91c389c82fa796','1','系统设置-机构用户-用户管理-查看','1','2019-09-09 04:27:16','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/user/list','GET','',''),('e1d2a6a6c0d243a697cecbca2636a26a','1','代码生成-代码生成-生成方案配置','1','2019-09-09 02:51:05','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genScheme','GET','',''),('e24372956583422e8b18bed6f61b3061','1','代码生成-代码生成-业务表配置','1','2019-09-09 03:15:57','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genTable','GET','',''),('e2f37c350e034f15920ecedaa58efbaa','1','代码生成-代码生成-业务表配置','1','2019-09-09 03:16:52','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genTable','GET','',''),('e320bb9dc51a4fdfaa03e223cd339f6d','1','系统登录','1','2019-09-09 21:02:26','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a','GET','login=',''),('e3326eda10e44b769bb13ed154d88327','1','系统设置-系统设置-菜单管理-查看','1','2019-09-06 00:47:35','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/form','GET','id=27',''),('e39fcdc2b781461b8760a4dcbac8f8bd','1','系统设置-机构用户-区域管理','1','2019-09-09 20:42:24','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/area/','GET','',''),('e3fcffa4e32249e99bd812a2eecc7236','1','系统设置-机构用户-用户管理','1','2017-11-14 15:14:20','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/sys/user/index','GET','',''),('e4680513c8b74cec9ed8b190a39d3c8c','1','系统设置-机构用户-区域管理','1','2019-09-09 21:06:13','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/area/','GET','',''),('e4b72b4378734955b8ca277910d9c4ba','1','代码生成-生成示例-主子表','1','2019-09-09 03:15:53','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/test/testDataMain','GET','',''),('e4cd15bc4e36415c9f7ed7c28e073a98','1','系统登录','1','2019-09-08 20:41:23','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a','GET','login=',''),('e4e46c6b17904bcdac1826533c670085','1','内容管理-内容管理-内容发布-文章模型','1','2017-11-14 15:14:46','119.97.201.18','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36','/jeesite/a/cms/article/','GET','category.id=4',''),('e4ec7faa65d74cebba397d6382098185','1','系统设置-机构用户-用户管理-查看','1','2019-09-09 21:32:54','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/user/list','GET','',''),('e4f30a328d71405cbb09b7a6cc9750e2','1','系统设置-系统设置-菜单管理-查看','1','2019-09-06 00:49:47','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/form','GET','id=79',''),('e58b61a0d2bb45169b5d51d8bb3675d4','1','实例示例-参考示例','1','2019-09-08 19:47:18','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('e59dd6bfe0d7483b85378f9d8946daf5','1','代码生成-代码生成-生成方案配置','1','2019-09-09 03:15:36','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genScheme','GET','',''),('e5d9f5b4c9c04343a68fe77469e4fb0e','1','系统设置-机构用户-区域管理','1','2019-09-09 21:07:26','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/area/','GET','',''),('e65034a1ea9b441babba449453284a3f','1','系统设置-机构用户-区域管理','1','2019-09-09 21:04:25','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/area/','GET','',''),('e66bea5c18d8418dafd29e27bafccb9c','1','代码生成-代码生成-业务表配置','1','2019-09-09 02:47:33','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genTable','GET','',''),('e69fb5952bb84471b00407230da5ce80','1','系统设置-机构用户-机构管理','1','2019-09-09 21:32:56','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/office/','GET','',''),('e778c415528544119c236f6aa2805e03','1','实例示例-实例示例','1','2019-09-06 00:56:26','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/list','GET','',''),('e7c1201977b74c79ae54dea67c37122d','1','代码生成-代码生成-生成方案配置','1','2019-09-09 02:47:34','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genScheme','GET','',''),('e7d846de276c4d7fb8ed8254be818b81','1','在线办公-个人办公-请假办理','1','2019-09-09 02:19:45','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/oa/leave','GET','',''),('e8bc765418cf4e98a56b017fc3721ade','1','实例示例-参考示例','1','2019-09-06 02:30:36','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('e8f19100ae5c489087279208866898f6','1','实例示例-参考示例','1','2019-09-09 00:57:04','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('e9f48def1b9c4a60ba7806e5507594a8','1','系统设置-系统设置-菜单管理','1','2019-09-06 00:54:07','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/','GET','',''),('ea15634459404dd8b7c7a7a3a553e6c7','1','实例示例-参考示例','1','2019-09-06 04:01:03','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('ea7cd6a94bfb4fce84372505eecf674a','1','系统设置-机构用户-机构管理','1','2019-09-09 20:27:51','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/office/','GET','',''),('eab80460864a4f7f98a141f15718e2c5','1','系统设置-系统设置-菜单管理-查看','1','2019-09-06 00:52:53','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/form','GET','parent.id=a91e496aa0ab42239c11617d7095034a',''),('eb2a4c581e6847298c9fc27cfdbb0283','1','实例示例-参考示例','1','2019-09-08 20:34:21','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('eba1756e2ab14d1bbeca72509c194f4e','1','实例示例-参考示例','1','2019-09-09 02:11:23','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('ebb17910af684d0e93a65660c47c3ee5','1','内容管理-内容管理-内容发布','1','2017-11-14 15:14:18','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/cms/','GET','',''),('ec22d7e530154ab887be2571d3f01072','1','系统设置-机构用户-机构管理-查看','1','2019-09-09 21:30:50','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/office/list','GET','id=&parentIds=',''),('ec30b30fe52c416c942ac579f469252a','1','代码生成-代码生成-生成方案配置','1','2019-09-09 03:44:12','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genScheme','GET','',''),('ece4daceec4749539e8a1078f74ba1b9','1','代码生成-生成示例-单表','1','2017-11-14 15:16:56','182.110.0.154','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36 LBBROWSER','/jeesite/a/test/testData','GET','',''),('ed10a7f3f4f444539e18188bf8a2cc83','1','系统设置-系统设置-菜单管理-修改','1','2019-09-06 00:54:07','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/save','POST','id=3fa3250a18ce4883a67e0de89588232b&parent.id=a91e496aa0ab42239c11617d7095034a&parent.name=实例示例&name=参考示例&href=/demo/demoData/page&target=&icon=&sort=60&isShow=1&permission=&remarks=',''),('ed679430ae0640d6ad027448fb59edb6','1','系统设置-机构用户-区域管理','1','2019-09-09 21:03:28','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/area/','GET','',''),('edbb9c90db814289913f197342d3d1f4','1','代码生成-代码生成-业务表配置','1','2019-09-09 03:30:28','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genTable','GET','',''),('edcbead9c0224f128467eef665c0565a','1','实例示例-参考示例','1','2019-09-09 02:12:41','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('edce0bdde5a94341a8995dd4bd263005','1','系统设置-机构用户-区域管理','1','2019-09-09 21:01:38','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/area/','GET','',''),('eeccd12fce8a4573b8e22cd577ad530d','1','实例示例-参考示例','1','2019-09-08 20:28:26','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('eeedbe7ab3dd4178acd3af4251d9b572','1','实例示例-参考示例','1','2019-09-09 00:51:35','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('ef5632ab0be34fcc89fa8e3214b70b06','1','代码生成-代码生成-业务表配置','1','2019-09-09 03:43:18','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genTable','GET','',''),('ef6d9b1cb0df4b7d87c281e2a096aed0','1','代码生成-代码生成-业务表配置','1','2019-09-09 03:29:04','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genTable','GET','',''),('efe2ef92722b46629b5badb434e15c24','1','内容管理-内容管理','1','2017-11-14 15:18:42','220.160.68.3','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36','/jeesite/a/cms/tree','GET','',''),('f12e056af95843778413d5e87af201d9','1','系统设置-机构用户-区域管理','1','2019-09-09 20:34:08','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/area/','GET','',''),('f13fa5e2fe484f17b98689511f046529','1','实例示例-参考示例','1','2019-09-08 19:43:18','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('f1964148b72c43888a77f5171879449d','1','系统登录','1','2019-09-07 04:11:17','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a','GET','login=',''),('f2a31f51028b46feb5a63702b73262d6','1','代码生成-代码生成-业务表配置','1','2019-09-09 03:39:40','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genTable','GET','',''),('f2e23a17bf34480686beec3a45c50c75','1','实例示例-参考示例','1','2019-09-06 04:02:19','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('f2fa5ed8bdc64fd0bd9e04eee6616aed','1','实例示例-参考示例','1','2019-09-09 02:01:40','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('f3039c2aac404421bb5ec64adba16c67','1','系统设置-系统设置-菜单管理','1','2019-09-09 21:16:48','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/','GET','',''),('f369105e17a241e686db665a557ccdde','1','实例示例-参考示例','1','2019-09-08 21:41:06','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('f40e3c713b994f09bd7f3239e58d0fd2','1','代码生成-代码生成-生成方案配置','1','2019-09-09 03:07:22','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genScheme','GET','',''),('f44d62126df845fa8f2de5520ce61d73','1','系统设置-日志查询-日志查询','1','2019-09-09 04:06:30','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/log','GET','',''),('f4cb7e7c4b794aa5bd276aa4a072337f','1','实例示例-参考示例','1','2019-09-06 02:39:33','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('f4d1d7120db24d5db270c3b535d87ff3','1','实例示例-参考示例','1','2019-09-09 02:06:58','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('f50abfdf4fef4c24be699e416c939871','1','代码生成-代码生成-业务表配置','1','2019-09-09 20:16:54','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genTable','GET','',''),('f523410e2b1541ab87095a3bd0f3ffae','2','代码生成-代码生成-业务表配置','1','2019-09-09 03:23:01','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genTable','GET','','org.apache.jasper.JasperException: /WEB-INF/views/modules/gen/genTableList.jsp (line: 67, column: 95) The JSP specification requires that an attribute name is preceded by whitespace\n	at org.apache.jasper.compiler.DefaultErrorHandler.jspError(DefaultErrorHandler.java:41)\n	at org.apache.jasper.compiler.ErrorDispatcher.dispatch(ErrorDispatcher.java:275)\n	at org.apache.jasper.compiler.ErrorDispatcher.jspError(ErrorDispatcher.java:91)\n	at org.apache.jasper.compiler.Parser.parseAttributes(Parser.java:165)\n	at org.apache.jasper.compiler.Parser.parseAttributes(Parser.java:154)\n	at org.apache.jasper.compiler.Parser.parseCustomTag(Parser.java:1241)\n	at org.apache.jasper.compiler.Parser.parseElements(Parser.java:1460)\n	at org.apache.jasper.compiler.Parser.parseBody(Parser.java:1673)\n	at org.apache.jasper.compiler.Parser.parseOptionalBody(Parser.java:1006)\n	at org.apache.jasper.compiler.Parser.parseCustomTag(Parser.java:1281)\n	at org.apache.jasper.compiler.Parser.parseElements(Parser.java:1460)\n	at org.apache.jasper.compiler.Parser.parse(Parser.java:139)\n	at org.apache.jasper.compiler.ParserController.doParse(ParserController.java:227)\n	at org.apache.jasper.compiler.ParserController.parse(ParserController.java:100)\n	at org.apache.jasper.compiler.Compiler.generateJava(Compiler.java:199)\n	at org.apache.jasper.compiler.Compiler.compile(Compiler.java:356)\n	at org.apache.jasper.compiler.Compiler.compile(Compiler.java:336)\n	at org.apache.jasper.compiler.Compiler.compile(Compiler.java:323)\n	at org.apache.jasper.JspCompilationContext.compile(JspCompilationContext.java:585)\n	at org.apache.jasper.servlet.JspServletWrapper.service(JspServletWrapper.java:363)\n	at org.apache.jasper.servlet.JspServlet.serviceJspFile(JspServlet.java:396)\n	at org.apache.jasper.servlet.JspServlet.service(JspServlet.java:340)\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:729)\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:292)\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:207)\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:52)\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:240)\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:207)\n	at org.apache.catalina.core.ApplicationDispatcher.invoke(ApplicationDispatcher.java:720)\n	at org.apache.catalina.core.ApplicationDispatcher.processRequest(ApplicationDispatcher.java:466)\n	at org.apache.catalina.core.ApplicationDispatcher.doForward(ApplicationDispatcher.java:391)\n	at org.apache.catalina.core.ApplicationDispatcher.forward(ApplicationDispatcher.java:318)\n	at org.springframework.web.servlet.view.InternalResourceView.renderMergedOutputModel(InternalResourceView.java:168)\n	at org.springframework.web.servlet.view.AbstractView.render(AbstractView.java:303)\n	at org.springframework.web.servlet.DispatcherServlet.render(DispatcherServlet.java:1243)\n	at org.springframework.web.servlet.DispatcherServlet.processDispatchResult(DispatcherServlet.java:1027)\n	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:971)\n	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:893)\n	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:965)\n	at org.springframework.web.servlet.FrameworkServlet.doGet(FrameworkServlet.java:856)\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:622)\n	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:841)\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:729)\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:292)\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:207)\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:52)\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:240)\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:207)\n	at com.opensymphony.sitemesh.webapp.SiteMeshFilter.obtainContent(SiteMeshFilter.java:129)\n	at com.opensymphony.sitemesh.webapp.SiteMeshFilter.doFilter(SiteMeshFilter.java:77)\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:240)\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:207)\n	at org.apache.shiro.web.servlet.ProxiedFilterChain.doFilter(ProxiedFilterChain.java:61)\n	at org.apache.shiro.web.servlet.AdviceFilter.executeChain(AdviceFilter.java:108)\n	at org.apache.shiro.web.servlet.AdviceFilter.doFilterInternal(AdviceFilter.java:137)\n	at org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:125)\n	at org.apache.shiro.web.servlet.ProxiedFilterChain.doFilter(ProxiedFilterChain.java:66)\n	at org.apache.shiro.web.servlet.AbstractShiroFilter.executeChain(AbstractShiroFilter.java:449)\n	at org.apache.shiro.web.servlet.AbstractShiroFilter$1.call(AbstractShiroFilter.java:365)\n	at org.apache.shiro.subject.support.SubjectCallable.doCall(SubjectCallable.java:90)\n	at org.apache.shiro.subject.support.SubjectCallable.call(SubjectCallable.java:83)\n	at org.apache.shiro.subject.support.DelegatingSubject.execute(DelegatingSubject.java:383)\n	at org.apache.shiro.web.servlet.AbstractShiroFilter.doFilterInternal(AbstractShiroFilter.java:362)\n	at org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:125)\n	at org.springframework.web.filter.DelegatingFilterProxy.invokeDelegate(DelegatingFilterProxy.java:344)\n	at org.springframework.web.filter.DelegatingFilterProxy.doFilter(DelegatingFilterProxy.java:261)\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:240)\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:207)\n	at org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:85)\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:240)\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:207)\n	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:212)\n	at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:106)\n	at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:502)\n	at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:141)\n	at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:79)\n	at org.apache.catalina.valves.AbstractAccessLogValve.invoke(AbstractAccessLogValve.java:616)\n	at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:88)\n	at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:528)\n	at org.apache.coyote.http11.AbstractHttp11Processor.process(AbstractHttp11Processor.java:1100)\n	at org.apache.coyote.AbstractProtocol$AbstractConnectionHandler.process(AbstractProtocol.java:687)\n	at org.apache.tomcat.util.net.NioEndpoint$SocketProcessor.doRun(NioEndpoint.java:1520)\n	at org.apache.tomcat.util.net.NioEndpoint$SocketProcessor.run(NioEndpoint.java:1476)\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)\n	at org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)\n	at java.lang.Thread.run(Thread.java:745)\n'),('f597b1c1d3a94132b1e9bc12fcc30c6a','1','系统设置-机构用户-用户管理','1','2019-09-09 21:13:11','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/user/index','GET','',''),('f68dc9b508c341fb9b9d7aacc26850df','1','在线办公-通知通告-通告管理','1','2017-11-14 15:14:58','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/oa/oaNotify','GET','tabPageId=jerichotabiframe_5',''),('f72fe3879b71425e8bfe923f4f4cb9d1','1','代码生成-代码生成-业务表配置','1','2019-09-09 03:47:24','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genTable','GET','',''),('f8d81190da8e4d4389c07ec708a9e417','1','实例示例-参考示例','1','2019-09-09 01:36:25','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('f9b58eb4749c4262b952215cb54cded3','1','实例示例-参考示例','1','2019-09-06 00:54:56','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('fa051e2e81f94ed9a1fd380f0f1dec85','1','实例示例-参考示例','1','2019-09-08 19:33:10','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('fa7e6045f2d34ab1b298b48855d9a793','1','内容管理-内容管理-内容发布-文章模型','1','2017-11-14 15:15:11','119.97.201.18','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36','/jeesite/a/cms/article/','GET','category.id=4',''),('fabb1a1e71e5492e9a8340bd9733c8c3','1','实例示例-实例示例','1','2019-09-06 00:52:20','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/list','GET','',''),('fb7818377679461c9b19195c1517d7a3','1','系统设置-系统设置-角色管理-查看','1','2019-09-06 00:53:39','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/role/form','GET','id=1',''),('fbb80b12d2ad4d8eb09d2db7f48ebe6a','1','在线办公-个人办公-请假办理-查看','1','2019-09-09 02:19:50','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/oa/leave/form','GET','',''),('fbbf52b75e494c018abcf56c72f685e1','1','实例示例-参考示例','1','2019-09-08 19:23:30','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('fc1a8b723deb44bb87a479ab3d2d4268','1','系统设置-机构用户-用户管理','1','2017-11-14 15:18:42','220.160.68.3','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36','/jeesite/a/sys/user/index','GET','',''),('fc7e1d90573e4230bd204fc67807d29e','1','实例示例-参考示例','1','2019-09-06 07:59:10','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('fd44974adb254dd99795e85a032bfc8a','1','实例示例-参考示例','1','2019-09-06 02:51:14','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('fd62aa7a8b564a149a6b92864fc3b289','1','代码生成-代码生成-业务表配置','1','2019-09-09 03:05:50','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genTable','GET','',''),('fd862d8604c649a9b439daad3c20fb25','1','实例示例-参考示例','1','2019-09-08 21:54:39','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('fd8ab0dccdcb48f3ada8df3da25d1ff9','1','代码生成-代码生成-生成方案配置','1','2019-09-09 02:58:36','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genScheme','GET','',''),('fda9efdf591541b8a7fef1d9097907e6','1','系统设置-系统设置-菜单管理-修改','1','2019-09-06 00:47:07','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/save','POST','id=27&parent.id=1&parent.name=功能菜单&name=我的面板&href=&target=&icon=flag&sort=100&isShow=1&permission=&remarks=',''),('fe0203e4beec40149a81c779ee4335c7','1','系统设置-系统设置-菜单管理','1','2019-09-09 04:26:55','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/menu/','GET','',''),('fe17233ad8324b7f9b6395e868caa5cc','1','系统设置-系统设置-字典管理','1','2019-09-09 21:29:06','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/sys/dict/','GET','',''),('fefdbf7f959b43d18b48b4eacd81622b','1','实例示例-参考示例','1','2019-09-08 21:21:11','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/demo/demoData/page','GET','',''),('ff4124d2ba844896a76e4d291c5ebae0','1','代码生成-代码生成-业务表配置','1','2019-09-09 03:46:41','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','/a/gen/genTable','GET','','');
/*!40000 ALTER TABLE `sys_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_mdict`
--

DROP TABLE IF EXISTS `sys_mdict`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_mdict` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `parent_id` varchar(64) NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) NOT NULL COMMENT '所有父级编号',
  `name` varchar(100) NOT NULL COMMENT '名称',
  `sort` decimal(10,0) NOT NULL COMMENT '排序',
  `description` varchar(100) DEFAULT NULL COMMENT '描述',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_mdict_parent_id` (`parent_id`),
  KEY `sys_mdict_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='多级字典表';
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
  `id` varchar(64) NOT NULL COMMENT '编号',
  `parent_id` varchar(64) NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) NOT NULL COMMENT '所有父级编号',
  `name` varchar(100) NOT NULL COMMENT '名称',
  `sort` decimal(10,0) NOT NULL COMMENT '排序',
  `href` varchar(2000) DEFAULT NULL COMMENT '链接',
  `target` varchar(20) DEFAULT NULL COMMENT '目标',
  `icon` varchar(100) DEFAULT NULL COMMENT '图标',
  `is_show` char(1) NOT NULL COMMENT '是否在菜单中显示',
  `permission` varchar(200) DEFAULT NULL COMMENT '权限标识',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_menu_parent_id` (`parent_id`),
  KEY `sys_menu_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='菜单表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_menu`
--

LOCK TABLES `sys_menu` WRITE;
/*!40000 ALTER TABLE `sys_menu` DISABLE KEYS */;
INSERT INTO `sys_menu` VALUES ('0b2ebd4d639e4c2b83c2dd0764522f24','ba8092291b40482db8fe7fc006ea3d76','0,1,79,3c92c17886944d0687e73e286cada573,ba8092291b40482db8fe7fc006ea3d76,','编辑',60,'','','','0','test:testData:edit','1','2013-08-12 13:10:05','1','2013-08-12 13:10:05','','0'),('0ca004d6b1bf4bcab9670a5060d82a55','3c92c17886944d0687e73e286cada573','0,1,79,3c92c17886944d0687e73e286cada573,','树结构',90,'/test/testTree','','','1','','1','2013-08-12 13:10:05','1','2013-08-12 13:10:05','','0'),('1','0','0,','功能菜单',0,NULL,NULL,NULL,'1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('10','3','0,1,2,3,','字典管理',60,'/sys/dict/',NULL,'th-list','1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('11','10','0,1,2,3,10,','查看',30,NULL,NULL,NULL,'0','sys:dict:view','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('12','10','0,1,2,3,10,','修改',40,NULL,NULL,NULL,'0','sys:dict:edit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('13','2','0,1,2,','机构用户',970,NULL,NULL,NULL,'1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('14','13','0,1,2,13,','区域管理',50,'/sys/area/',NULL,'th','1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('15','14','0,1,2,13,14,','查看',30,NULL,NULL,NULL,'0','sys:area:view','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('16','14','0,1,2,13,14,','修改',40,NULL,NULL,NULL,'0','sys:area:edit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('17','13','0,1,2,13,','机构管理',40,'/sys/office/',NULL,'th-large','1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('18','17','0,1,2,13,17,','查看',30,NULL,NULL,NULL,'0','sys:office:view','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('19','17','0,1,2,13,17,','修改',40,NULL,NULL,NULL,'0','sys:office:edit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('2','1','0,1,','系统设置',900,'','','th-large','1','','1','2013-05-27 08:00:00','1','2019-09-06 00:49:21','','0'),('20','13','0,1,2,13,','用户管理',30,'/sys/user/index',NULL,'user','1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('21','20','0,1,2,13,20,','查看',30,NULL,NULL,NULL,'0','sys:user:view','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('22','20','0,1,2,13,20,','修改',40,NULL,NULL,NULL,'0','sys:user:edit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('23','2','0,1,2,','关于帮助',990,NULL,NULL,NULL,'0',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('24','23','0,1,2,23','官方首页',30,'http://jeesite.com','_blank',NULL,'0',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('25','23','0,1,2,23','项目支持',50,'http://jeesite.com/donation.html','_blank',NULL,'0',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('26','23','0,1,2,23','论坛交流',80,'http://bbs.jeesite.com','_blank',NULL,'0',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('27','1','0,1,','我的面板',100,'','','user','1','','1','2013-05-27 08:00:00','1','2019-09-06 00:49:39','','0'),('28','27','0,1,27,','个人信息',30,NULL,NULL,NULL,'1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('29','28','0,1,27,28,','个人信息',30,'/sys/user/info',NULL,'user','1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('3','2','0,1,2,','系统设置',980,NULL,NULL,NULL,'1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('30','28','0,1,27,28,','修改密码',40,'/sys/user/modifyPwd',NULL,'lock','1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('31','1','0,1,','内容管理',500,NULL,NULL,NULL,'1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('32','31','0,1,31,','栏目设置',990,NULL,NULL,NULL,'1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('33','32','0,1,31,32','栏目管理',30,'/cms/category/',NULL,'align-justify','1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('34','33','0,1,31,32,33,','查看',30,NULL,NULL,NULL,'0','cms:category:view','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('35','33','0,1,31,32,33,','修改',40,NULL,NULL,NULL,'0','cms:category:edit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('36','32','0,1,31,32','站点设置',40,'/cms/site/',NULL,'certificate','1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('37','36','0,1,31,32,36,','查看',30,NULL,NULL,NULL,'0','cms:site:view','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('38','36','0,1,31,32,36,','修改',40,NULL,NULL,NULL,'0','cms:site:edit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('39','32','0,1,31,32','切换站点',50,'/cms/site/select',NULL,'retweet','1','cms:site:select','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('3c92c17886944d0687e73e286cada573','79','0,1,79,','生成示例',120,'','','','1','','1','2013-08-12 13:10:05','1','2013-08-12 13:10:05','','0'),('3fa3250a18ce4883a67e0de89588232b','a91e496aa0ab42239c11617d7095034a','0,1,a91e496aa0ab42239c11617d7095034a,','参考示例',60,'/demo/demoData/page','','','1','','1','2019-09-06 00:53:12','1','2019-09-06 00:54:07','','0'),('4','3','0,1,2,3,','菜单管理',30,'/sys/menu/',NULL,'list-alt','1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('40','31','0,1,31,','内容管理',500,NULL,NULL,NULL,'1','cms:view','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('41','40','0,1,31,40,','内容发布',30,'/cms/',NULL,'briefcase','1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('42','41','0,1,31,40,41,','文章模型',40,'/cms/article/',NULL,'file','0',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('43','42','0,1,31,40,41,42,','查看',30,NULL,NULL,NULL,'0','cms:article:view','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('44','42','0,1,31,40,41,42,','修改',40,NULL,NULL,NULL,'0','cms:article:edit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('45','42','0,1,31,40,41,42,','审核',50,NULL,NULL,NULL,'0','cms:article:audit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('46','41','0,1,31,40,41,','链接模型',60,'/cms/link/',NULL,'random','0',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('47','46','0,1,31,40,41,46,','查看',30,NULL,NULL,NULL,'0','cms:link:view','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('48','46','0,1,31,40,41,46,','修改',40,NULL,NULL,NULL,'0','cms:link:edit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('4855cf3b25c244fb8500a380db189d97','b1f6d1b86ba24365bae7fd86c5082317','0,1,79,3c92c17886944d0687e73e286cada573,b1f6d1b86ba24365bae7fd86c5082317,','查看',30,'','','','0','test:testDataMain:view','1','2013-08-12 13:10:05','1','2013-08-12 13:10:05','','0'),('49','46','0,1,31,40,41,46,','审核',50,NULL,NULL,NULL,'0','cms:link:audit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('5','4','0,1,2,3,4,','查看',30,NULL,NULL,NULL,'0','sys:menu:view','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('50','40','0,1,31,40,','评论管理',40,'/cms/comment/?status=2',NULL,'comment','1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('51','50','0,1,31,40,50,','查看',30,NULL,NULL,NULL,'0','cms:comment:view','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('52','50','0,1,31,40,50,','审核',40,NULL,NULL,NULL,'0','cms:comment:edit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('53','40','0,1,31,40,','公共留言',80,'/cms/guestbook/?status=2',NULL,'glass','1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('54','53','0,1,31,40,53,','查看',30,NULL,NULL,NULL,'0','cms:guestbook:view','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('55','53','0,1,31,40,53,','审核',40,NULL,NULL,NULL,'0','cms:guestbook:edit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('56','71','0,1,27,71,','文件管理',90,'/../static/ckfinder/ckfinder.html',NULL,'folder-open','1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('57','56','0,1,27,40,56,','查看',30,NULL,NULL,NULL,'0','cms:ckfinder:view','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('58','56','0,1,27,40,56,','上传',40,NULL,NULL,NULL,'0','cms:ckfinder:upload','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('59','56','0,1,27,40,56,','修改',50,NULL,NULL,NULL,'0','cms:ckfinder:edit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('6','4','0,1,2,3,4,','修改',40,NULL,NULL,NULL,'0','sys:menu:edit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('60','31','0,1,31,','统计分析',600,NULL,NULL,NULL,'1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('61','60','0,1,31,60,','信息量统计',30,'/cms/stats/article',NULL,'tasks','1','cms:stats:article','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('62','1','0,1,','在线办公',200,'','','dashboard','1','','1','2013-05-27 08:00:00','1','2019-09-06 00:48:02','','0'),('63','62','0,1,62,','个人办公',30,NULL,NULL,NULL,'1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('64','63','0,1,62,63,','请假办理',300,'/oa/leave',NULL,'leaf','0',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('65','64','0,1,62,63,64,','查看',30,NULL,NULL,NULL,'0','oa:leave:view','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('65d779ccec984ff0b31df79b87ed9d56','a91e496aa0ab42239c11617d7095034a','0,1,a91e496aa0ab42239c11617d7095034a,','实例示例',30,'/demo/demoData/list','','','1','demo:demoData:view,demo:demoData:edit','1','2019-09-06 00:50:59','1','2019-09-06 00:51:44','','0'),('66','64','0,1,62,63,64,','修改',40,NULL,NULL,NULL,'0','oa:leave:edit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('67','2','0,1,2,','日志查询',985,NULL,NULL,NULL,'1',NULL,'1','2013-06-03 08:00:00','1','2013-06-03 08:00:00',NULL,'0'),('68','67','0,1,2,67,','日志查询',30,'/sys/log',NULL,'pencil','1','sys:log:view','1','2013-06-03 08:00:00','1','2013-06-03 08:00:00',NULL,'0'),('69','62','0,1,62,','流程管理',300,NULL,NULL,NULL,'1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('7','3','0,1,2,3,','角色管理',50,'/sys/role/',NULL,'lock','1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('70','69','0,1,62,69,','流程管理',50,'/act/process',NULL,'road','1','act:process:edit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('71','27','0,1,27,','文件管理',90,NULL,NULL,NULL,'1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('72','69','0,1,62,69,','模型管理',100,'/act/model',NULL,'road','1','act:model:edit','1','2013-09-20 08:00:00','1','2013-09-20 08:00:00',NULL,'0'),('73','63','0,1,62,63,','我的任务',50,'/act/task/todo/',NULL,'tasks','1',NULL,'1','2013-09-24 08:00:00','1','2013-09-24 08:00:00',NULL,'0'),('74','63','0,1,62,63,','审批测试',100,'/oa/testAudit',NULL,NULL,'1','oa:testAudit:view,oa:testAudit:edit','1','2013-09-24 08:00:00','1','2013-09-24 08:00:00',NULL,'0'),('75','1','0,1,','在线演示',3000,NULL,NULL,NULL,'1',NULL,'1','2013-10-08 08:00:00','1','2013-10-08 08:00:00',NULL,'1'),('79','1','0,1,','代码生成',5000,'','','desktop','1','','1','2013-10-16 08:00:00','1','2019-09-06 00:49:58','','0'),('8','7','0,1,2,3,7,','查看',30,NULL,NULL,NULL,'0','sys:role:view','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('80','79','0,1,79,','代码生成',50,NULL,NULL,NULL,'1',NULL,'1','2013-10-16 08:00:00','1','2013-10-16 08:00:00',NULL,'0'),('81','80','0,1,79,80,','生成方案配置',30,'/gen/genScheme',NULL,NULL,'1','gen:genScheme:view,gen:genScheme:edit','1','2013-10-16 08:00:00','1','2013-10-16 08:00:00',NULL,'0'),('82','80','0,1,79,80,','业务表配置',20,'/gen/genTable',NULL,NULL,'1','gen:genTable:view,gen:genTable:edit,gen:genTableColumn:view,gen:genTableColumn:edit','1','2013-10-16 08:00:00','1','2013-10-16 08:00:00',NULL,'0'),('83','80','0,1,79,80,','代码模板管理',90,'/gen/genTemplate',NULL,NULL,'1','gen:genTemplate:view,gen:genTemplate:edit','1','2013-10-16 08:00:00','1','2013-10-16 08:00:00',NULL,'1'),('84','67','0,1,2,67,','连接池监视',40,'/../druid','','random','1','','1','2013-10-18 08:00:00','1','2019-09-09 04:26:55','','0'),('85','76','0,1,75,76,','行政区域',80,'/../static/map/map-city.html',NULL,NULL,'1',NULL,'1','2013-10-22 08:00:00','1','2013-10-22 08:00:00',NULL,'0'),('86','75','0,1,75,','组件演示',50,NULL,NULL,NULL,'1',NULL,'1','2013-10-22 08:00:00','1','2013-10-22 08:00:00',NULL,'1'),('87','86','0,1,75,86,','组件演示',30,'/test/test/form',NULL,NULL,'1','test:test:view,test:test:edit','1','2013-10-22 08:00:00','1','2013-10-22 08:00:00',NULL,'1'),('88','62','0,1,62,','通知通告',20,'','','','1','','1','2013-11-08 08:00:00','1','2013-11-08 08:00:00',NULL,'0'),('89','88','0,1,62,88,','我的通告',30,'/oa/oaNotify/self','','','1','','1','2013-11-08 08:00:00','1','2013-11-08 08:00:00',NULL,'0'),('9','7','0,1,2,3,7,','修改',40,NULL,NULL,NULL,'0','sys:role:edit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('90','88','0,1,62,88,','通告管理',50,'/oa/oaNotify','','','1','oa:oaNotify:view,oa:oaNotify:edit','1','2013-11-08 08:00:00','1','2013-11-08 08:00:00',NULL,'0'),('a91e496aa0ab42239c11617d7095034a','1','0,1,','实例示例',5030,'','','indent-right','1','','1','2019-09-06 00:46:18','1','2019-09-06 00:46:18','','0'),('afab2db430e2457f9cf3a11feaa8b869','0ca004d6b1bf4bcab9670a5060d82a55','0,1,79,3c92c17886944d0687e73e286cada573,0ca004d6b1bf4bcab9670a5060d82a55,','编辑',60,'','','','0','test:testTree:edit','1','2013-08-12 13:10:05','1','2013-08-12 13:10:05','','0'),('b1f6d1b86ba24365bae7fd86c5082317','3c92c17886944d0687e73e286cada573','0,1,79,3c92c17886944d0687e73e286cada573,','主子表',60,'/test/testDataMain','','','1','','1','2013-08-12 13:10:05','1','2013-08-12 13:10:05','','0'),('ba8092291b40482db8fe7fc006ea3d76','3c92c17886944d0687e73e286cada573','0,1,79,3c92c17886944d0687e73e286cada573,','单表',30,'/test/testData','','','1','','1','2013-08-12 13:10:05','1','2013-08-12 13:10:05','','0'),('c2e4d9082a0b4386884a0b203afe2c5c','0ca004d6b1bf4bcab9670a5060d82a55','0,1,79,3c92c17886944d0687e73e286cada573,0ca004d6b1bf4bcab9670a5060d82a55,','查看',30,'','','','0','test:testTree:view','1','2013-08-12 13:10:05','1','2013-08-12 13:10:05','','0'),('d15ec45a4c5449c3bbd7a61d5f9dd1d2','b1f6d1b86ba24365bae7fd86c5082317','0,1,79,3c92c17886944d0687e73e286cada573,b1f6d1b86ba24365bae7fd86c5082317,','编辑',60,'','','','0','test:testDataMain:edit','1','2013-08-12 13:10:05','1','2013-08-12 13:10:05','','0'),('df7ce823c5b24ff9bada43d992f373e2','ba8092291b40482db8fe7fc006ea3d76','0,1,79,3c92c17886944d0687e73e286cada573,ba8092291b40482db8fe7fc006ea3d76,','查看',30,'','','','0','test:testData:view','1','2013-08-12 13:10:05','1','2013-08-12 13:10:05','','0');
/*!40000 ALTER TABLE `sys_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_office`
--

DROP TABLE IF EXISTS `sys_office`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_office` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `parent_id` varchar(64) NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) NOT NULL COMMENT '所有父级编号',
  `name` varchar(100) NOT NULL COMMENT '名称',
  `sort` decimal(10,0) NOT NULL COMMENT '排序',
  `area_id` varchar(64) NOT NULL COMMENT '归属区域',
  `code` varchar(100) DEFAULT NULL COMMENT '区域编码',
  `type` char(1) NOT NULL COMMENT '机构类型',
  `grade` char(1) NOT NULL COMMENT '机构等级',
  `address` varchar(255) DEFAULT NULL COMMENT '联系地址',
  `zip_code` varchar(100) DEFAULT NULL COMMENT '邮政编码',
  `master` varchar(100) DEFAULT NULL COMMENT '负责人',
  `phone` varchar(200) DEFAULT NULL COMMENT '电话',
  `fax` varchar(200) DEFAULT NULL COMMENT '传真',
  `email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `USEABLE` varchar(64) DEFAULT NULL COMMENT '是否启用',
  `PRIMARY_PERSON` varchar(64) DEFAULT NULL COMMENT '主负责人',
  `DEPUTY_PERSON` varchar(64) DEFAULT NULL COMMENT '副负责人',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_office_parent_id` (`parent_id`),
  KEY `sys_office_del_flag` (`del_flag`),
  KEY `sys_office_type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='机构表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_office`
--

LOCK TABLES `sys_office` WRITE;
/*!40000 ALTER TABLE `sys_office` DISABLE KEYS */;
INSERT INTO `sys_office` VALUES ('1','0','0,','山东省总公司',10,'2','100000','1','1',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('10','7','0,1,7,','市场部',30,'3','200003','2','2',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('11','7','0,1,7,','技术部',40,'3','200004','2','2',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('12','7','0,1,7,','历城区分公司',0,'4','201000','1','3',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('13','12','0,1,7,12,','公司领导',10,'4','201001','2','3',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('14','12','0,1,7,12,','综合部',20,'4','201002','2','3',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('15','12','0,1,7,12,','市场部',30,'4','201003','2','3',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('16','12','0,1,7,12,','技术部',40,'4','201004','2','3',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('17','7','0,1,7,','历下区分公司',40,'5','201010','1','3',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('18','17','0,1,7,17,','公司领导',10,'5','201011','2','3',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('19','17','0,1,7,17,','综合部',20,'5','201012','2','3',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('2','1','0,1,','公司领导',10,'2','100001','2','1',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('20','17','0,1,7,17,','市场部',30,'5','201013','2','3',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('21','17','0,1,7,17,','技术部',40,'5','201014','2','3',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('22','7','0,1,7,','高新区分公司',50,'6','201010','1','3',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('23','22','0,1,7,22,','公司领导',10,'6','201011','2','3',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('24','22','0,1,7,22,','综合部',20,'6','201012','2','3',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('25','22','0,1,7,22,','市场部',30,'6','201013','2','3',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('26','22','0,1,7,22,','技术部',40,'6','201014','2','3',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('3','1','0,1,','综合部',20,'2','100002','2','1',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('4','1','0,1,','市场部',30,'2','100003','2','1',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('5','1','0,1,','技术部',40,'2','100004','2','1',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('6','1','0,1,','研发部',50,'2','100005','2','1',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('7','1','0,1,','济南市分公司',20,'3','200000','1','2',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('8','7','0,1,7,','公司领导',10,'3','200001','2','2',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('9','7','0,1,7,','综合部',20,'3','200002','2','2',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0');
/*!40000 ALTER TABLE `sys_office` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role`
--

DROP TABLE IF EXISTS `sys_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_role` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `office_id` varchar(64) DEFAULT NULL COMMENT '归属机构',
  `name` varchar(100) NOT NULL COMMENT '角色名称',
  `enname` varchar(255) DEFAULT NULL COMMENT '英文名称',
  `role_type` varchar(255) DEFAULT NULL COMMENT '角色类型',
  `data_scope` char(1) DEFAULT NULL COMMENT '数据范围',
  `is_sys` varchar(64) DEFAULT NULL COMMENT '是否系统数据',
  `useable` varchar(64) DEFAULT NULL COMMENT '是否可用',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_role_del_flag` (`del_flag`),
  KEY `sys_role_enname` (`enname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role`
--

LOCK TABLES `sys_role` WRITE;
/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;
INSERT INTO `sys_role` VALUES ('1','1','系统管理员','dept','assignment','1','1','1','1','2013-05-27 08:00:00','1','2019-09-06 00:53:42','','0'),('2','1','公司管理员','hr','assignment','2',NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('3','1','本公司管理员','a','assignment','3',NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('4','1','部门管理员','b','assignment','4',NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('5','1','本部门管理员','c','assignment','5',NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('6','1','普通用户','d','assignment','8',NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('7','7','济南市管理员','e','assignment','9',NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0');
/*!40000 ALTER TABLE `sys_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_menu`
--

DROP TABLE IF EXISTS `sys_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_role_menu` (
  `role_id` varchar(64) NOT NULL COMMENT '角色编号',
  `menu_id` varchar(64) NOT NULL COMMENT '菜单编号',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色-菜单';
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
  `role_id` varchar(64) NOT NULL COMMENT '角色编号',
  `office_id` varchar(64) NOT NULL COMMENT '机构编号',
  PRIMARY KEY (`role_id`,`office_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色-机构';
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
  `id` varchar(64) NOT NULL COMMENT '编号',
  `company_id` varchar(64) NOT NULL COMMENT '归属公司',
  `office_id` varchar(64) NOT NULL COMMENT '归属部门',
  `login_name` varchar(100) NOT NULL COMMENT '登录名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `no` varchar(100) DEFAULT NULL COMMENT '工号',
  `name` varchar(100) NOT NULL COMMENT '姓名',
  `email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(200) DEFAULT NULL COMMENT '电话',
  `mobile` varchar(200) DEFAULT NULL COMMENT '手机',
  `user_type` char(1) DEFAULT NULL COMMENT '用户类型',
  `photo` varchar(1000) DEFAULT NULL COMMENT '用户头像',
  `login_ip` varchar(100) DEFAULT NULL COMMENT '最后登陆IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登陆时间',
  `login_flag` varchar(64) DEFAULT NULL COMMENT '是否可登录',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_user_office_id` (`office_id`),
  KEY `sys_user_login_name` (`login_name`),
  KEY `sys_user_company_id` (`company_id`),
  KEY `sys_user_update_date` (`update_date`),
  KEY `sys_user_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` VALUES ('1','1','2','admin','619f0ea191ea913557fabefa1c1e07d520bd2efebb0ae2fcf260a5ae','0001','系统管理员','admin@163.com','8675','8675','','','0:0:0:0:0:0:0:1','2019-09-09 21:33:46','1','1','2013-05-27 08:00:00','1','2019-09-09 21:33:23','最高管理员','0'),('10','7','11','jn_jsb','02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032','0010','济南技术部',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('11','12','13','lc_admin','02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032','0011','济南历城领导',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('12','12','18','lx_admin','02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032','0012','济南历下领导',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('13','22','23','gx_admin','02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032','0013','济南高新领导',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('2','1','2','sd_admin','02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032','0002','管理员',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('3','1','3','sd_zhb','02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032','0003','综合部',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('4','1','4','sd_scb','02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032','0004','市场部',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('5','1','5','sd_jsb','02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032','0005','技术部',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('6','1','6','sd_yfb','02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032','0006','研发部',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('7','7','8','jn_admin','02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032','0007','济南领导',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('8','7','9','jn_zhb','02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032','0008','济南综合部',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('9','7','10','jn_scb','02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032','0009','济南市场部',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0');
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_role`
--

DROP TABLE IF EXISTS `sys_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_user_role` (
  `user_id` varchar(64) NOT NULL COMMENT '用户编号',
  `role_id` varchar(64) NOT NULL COMMENT '角色编号',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户-角色';
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
  `id` varchar(64) NOT NULL COMMENT '编号',
  `user_id` varchar(64) DEFAULT NULL COMMENT '归属用户',
  `office_id` varchar(64) DEFAULT NULL COMMENT '归属部门',
  `area_id` varchar(64) DEFAULT NULL COMMENT '归属区域',
  `name` varchar(100) DEFAULT NULL COMMENT '名称',
  `sex` char(1) DEFAULT NULL COMMENT '性别',
  `in_date` date DEFAULT NULL COMMENT '加入日期',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `test_data_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='业务数据表';
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
  `id` varchar(64) NOT NULL COMMENT '编号',
  `test_data_main_id` varchar(64) DEFAULT NULL COMMENT '业务主表ID',
  `name` varchar(100) DEFAULT NULL COMMENT '名称',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `test_data_child_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='业务数据子表';
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
  `id` varchar(64) NOT NULL COMMENT '编号',
  `user_id` varchar(64) DEFAULT NULL COMMENT '归属用户',
  `office_id` varchar(64) DEFAULT NULL COMMENT '归属部门',
  `area_id` varchar(64) DEFAULT NULL COMMENT '归属区域',
  `name` varchar(100) DEFAULT NULL COMMENT '名称',
  `sex` char(1) DEFAULT NULL COMMENT '性别',
  `in_date` date DEFAULT NULL COMMENT '加入日期',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `test_data_main_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='业务数据表';
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
  `id` varchar(64) NOT NULL COMMENT '编号',
  `user_id` varchar(64) DEFAULT NULL COMMENT '归属用户',
  `office_id` varchar(64) DEFAULT NULL COMMENT '归属部门',
  `area_id` varchar(64) DEFAULT NULL COMMENT '归属区域',
  `name` varchar(100) DEFAULT NULL COMMENT '名称',
  `sex` char(1) DEFAULT NULL COMMENT '性别',
  `in_date` date DEFAULT NULL COMMENT '加入日期',
  `img_path` varchar(500) DEFAULT NULL COMMENT '图片路径',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `test_data_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='测试业务表';
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
  `id` varchar(64) NOT NULL COMMENT '编号',
  `parent_id` varchar(64) NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) NOT NULL COMMENT '所有父级编号',
  `name` varchar(100) NOT NULL COMMENT '名称',
  `sort` decimal(10,0) NOT NULL COMMENT '排序',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `test_tree_del_flag` (`del_flag`),
  KEY `test_data_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='树结构表';
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

-- Dump completed on 2019-09-10 15:26:03
