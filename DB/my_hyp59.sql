-- phpMyAdmin SQL Dump
-- version 4.1.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Lug 20, 2016 alle 23:21
-- Versione del server: 5.6.29-log
-- PHP Version: 5.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `my_hyp59`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `AssistanceService`
--

CREATE TABLE IF NOT EXISTS `AssistanceService` (
  `Cat3` varchar(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `color` varchar(255) NOT NULL,
  PRIMARY KEY (`Cat3`,`Name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `AssistanceService`
--

INSERT INTO `AssistanceService` (`Cat3`, `Name`, `link`, `color`) VALUES
('Gestione della linea', 'Attivazione linea di casa', 'javascript:void(0)', '#a9a9a9'),
('Gestione della linea', 'Trascloco', 'javascript:void(0)', '#a9a9a9'),
('Gestione della linea', 'Subentro', 'javascript:void(0)', '#a9a9a9'),
('Gestione della linea', 'Variazione abbonamento', 'javascript:void(0)', '#a9a9a9'),
('Gestione della linea', 'Restituzione prodotti', 'javascript:void(0)', '#a9a9a9'),
('Gestione della linea', 'Recesso', 'javascript:void(0)', '#a9a9a9'),
('Gestione della linea', 'Apri segnalazione', 'javascript:void(0)', '#a9a9a9'),
('Servizi telefonici', 'Disattivare i servizi di linea fissa', 'javascript:void(0)', '#a9a9a9'),
('Servizi telefonici', 'Gli elenchi telefonici a casa tua', 'javascript:void(0)', '#a9a9a9'),
('Gestione della SIM', 'Tutto sulla tua SIM', 'javascript:void(0)', '#a9a9a9'),
('Gestione della SIM', 'Passaggio da abbonamento a ricaricabile', 'javascript:void(0)', '#a9a9a9'),
('Gestione della SIM', 'Variare i dati anagrafici di una SIM card ricaricabile', 'javascript:void(0)', '#a9a9a9'),
('Gestione della SIM', 'Passaggio da ricaricabile a abbonamento', 'javascript:void(0)', '#a9a9a9'),
('Servizi telefonici mobile', 'Servizi a valore aggiunto', 'javascript:void(0)', '#a9a9a9'),
('Servizi telefonici mobile', 'LoSai e ChiamaOra di TIM', 'javascript:void(0)', '#a9a9a9'),
('Servizi telefonici mobile', 'Verifica copertura 4G', '../pages/AScopertura.html', '#0b3d86'),
('Servizi telefonici mobile', 'IBox diventa TIMmail', 'javascript:void(0)', '#a9a9a9'),
('Servizi telefonici mobile', 'Gli MMS', 'javascript:void(0)', '#a9a9a9'),
('Gestione della linea mobile all estero', 'All estero con TIM', 'javascript:void(0)', '#a9a9a9'),
('Gestione della linea mobile all estero', 'Verifica il credito residuo mentre sei all estero', 'javascript:void(0)', '#a9a9a9'),
('Gestione della linea mobile all estero', 'Navigare in internet quando sei all estero', 'javascript:void(0)', '#a9a9a9'),
('Gestione della linea mobile all estero', 'Sicurezza traffico dati all estero', 'javascript:void(0)', '#a9a9a9'),
('Gestione della linea mobile all estero', 'Come sostituire la tua SIM card se sei all estero', 'javascript:void(0)', '#a9a9a9'),
('Tutti i modi per ricaricare', 'Ricarica+', 'javascript:void(0)', '#a9a9a9'),
('Tutti i modi per ricaricare', 'Come ricevere il bonus per la Promo ricarica online', 'javascript:void(0)', '#a9a9a9'),
('Tutti i modi per ricaricare', 'Ricarica veloce', 'javascript:void(0)', '#a9a9a9'),
('Tutti i modi per ricaricare', 'Ricarica su misura', 'javascript:void(0)', '#a9a9a9'),
('Servizi per e dal tuo Smartphone', 'Assistenza tecnica specializzata', 'javascript:void(0)', '#a9a9a9'),
('Servizi per e dal tuo Smartphone', 'Buono sconto per cambio telefono', 'javascript:void(0)', '#a9a9a9'),
('Servizi per e dal tuo Smartphone', 'Servizio mappe', 'javascript:void(0)', '#a9a9a9'),
('Servizi per e dal tuo Smartphone', 'TIM application store', 'javascript:void(0)', '#a9a9a9'),
('Servizi per e dal tuo Smartphone', 'Riparazione smartphone e tablet', 'javascript:void(0)', '#a9a9a9'),
('Configurare la posta', 'Configurazione Mail su iPhone', 'javascript:void(0)', '#a9a9a9'),
('Configurare la posta', 'Configurazione Mail su iPad', 'javascript:void(0)', '#a9a9a9'),
('Configurare la posta', 'Configurazione Mail su Android', 'javascript:void(0)', '#a9a9a9'),
('Configurare la posta', 'Configurazione Mail su BlackBerry', 'javascript:void(0)', '#a9a9a9'),
('Configurazioni e manuali', 'Connettersi a internet col telefonino', 'javascript:void(0)', '#a9a9a9'),
('Configurazioni e manuali', 'Configura online', '../pages/ASconfigurazione.html', '#0b3d86'),
('Configurazioni e manuali', 'TIM Mail - password dimenticata', 'javascript:void(0)', '#a9a9a9'),
('Configurazioni e manuali', 'Gestisci e configura la tua mail', 'javascript:void(0)', '#a9a9a9');

-- --------------------------------------------------------

--
-- Struttura della tabella `ClassAssistance`
--

CREATE TABLE IF NOT EXISTS `ClassAssistance` (
  `Name` varchar(255) NOT NULL,
  `Type` varchar(255) NOT NULL,
  `Cat3` varchar(255) DEFAULT '',
  `color` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `ClassAssistance`
--

INSERT INTO `ClassAssistance` (`Name`, `Type`, `Cat3`, `color`) VALUES
('Contenuti e Smart Life', 'TIM games', NULL, '#a9a9a9'),
('Contenuti e Smart Life', 'TIM MUSIC', NULL, '#a9a9a9'),
('Contenuti e Smart Life', 'TIM READING', NULL, '#a9a9a9'),
('Contenuti e Smart Life', 'TIM VISION', NULL, '#a9a9a9'),
('Gestione linea e servizi', 'Fisso', 'Gestione della linea', '#0b3d86'),
('Gestione linea e servizi', 'Fisso', 'Servizi telefonici', '#0b3d86'),
('Gestione linea e servizi', 'Mobile', 'Gestione della sim', '#0b3d86'),
('Gestione linea e servizi', 'Mobile', 'Servizi telefonici mobile', '#0b3d86'),
('Gestione linea e servizi', 'Mobile', 'Gestione della linea mobile all estero', '#0b3d86'),
('Gestione linea e servizi', 'Mobile', 'Tutti i modi per ricaricare', '#0b3d86'),
('Supporto tecnico e configurazioni', 'Smartphone e tablet', 'Servizi per e dal tuo smartphone', '#0b3d86'),
('Supporto tecnico e configurazioni', 'Smartphone e tablet', 'Configurare la posta', '#0b3d86'),
('Supporto tecnico e configurazioni', 'Smartphone e tablet', 'Configurazioni e manuali', '#0b3d86'),
('Supporto tecnico e configurazioni', 'Smartphone e tablet', 'Tutti i modi per ricaricare', '#0b3d86'),
('Supporto tecnico e configurazioni', 'Linea telefonica', NULL, '#a9a9a9'),
('Supporto tecnico e configurazioni', 'Adsl e fibra', NULL, '#a9a9a9'),
('Supporto tecnico e configurazioni', 'Posta', NULL, '#a9a9a9'),
('Supporto tecnico e configurazioni', 'Decoder TV', NULL, '#a9a9a9'),
('Supporto tecnico e configurazioni', 'Navigazione', NULL, '#a9a9a9'),
('Supporto tecnico e configurazioni', 'Sicurezza PC', NULL, '#a9a9a9'),
('Controllo costi e pagamenti', 'Fisso ', NULL, '#a9a9a9'),
('Controllo costi e pagamenti', 'Mobile', NULL, '#a9a9a9');

-- --------------------------------------------------------

--
-- Struttura della tabella `Configurazione`
--

CREATE TABLE IF NOT EXISTS `Configurazione` (
  `vendor` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`vendor`,`model`,`title`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `Configurazione`
--

INSERT INTO `Configurazione` (`vendor`, `model`, `title`, `path`) VALUES
('LG', 'G5', 'Impostazione centro servizi SMS', 'https://img.tim.it/assistenza/Impostazione_centro_servizi_SMS_LG_G4_(H815).PDF'),
('LG', 'G5', 'Configurazione WAP', 'https://img.tim.it/assistenza/Configurazione_WAP_LG_G4_(H815).PDF'),
('LG', 'G5', 'Configurazione MMS', 'https://img.tim.it/assistenza/Configurazione_MMS_LG_G4_(H815).PDF'),
('LG', 'G5', 'Disattivazione dati roaming', 'https://img.tim.it/assistenza/Disattivazione_dati_Roaming_LG_G4_(H815).PDF'),
('HUAWEI', 'P9', 'Impostazione centro servizi SMS', 'https://img.tim.it/assistenza/Impostazione_centro_servizi_SMS_HUAWEI_P8_(GRA-L09).PDF'),
('HUAWEI', 'P9', 'Configurazione WAP', 'https://img.tim.it/assistenza/Configurazione_WAP_HUAWEI_P8_(GRA-L09).PDF'),
('HUAWEI', 'P9', 'Configurazione MMS', 'https://img.tim.it/assistenza/Configurazione_MMS_HUAWEI_P8_(GRA-L09).PDF'),
('HUAWEI', 'P9', 'Disattivazione dati roaming', 'https://img.tim.it/assistenza/Disattivazione_dati_Roaming_HUAWEI_P8_(GRA-L09).PDF'),
('HUAWEI', 'P9', 'Configurazione mail Alice', 'https://img.tim.it/assistenza/Configurazione_mail_Alice_HUAWEI_P8_(GRA-L09).PDF'),
('HUAWEI', 'P9', 'Selezione Rete', 'https://img.tim.it/assistenza/Selezione_Rete_HUAWEI_P8_(GRA-L09).PDF'),
('HUAWEI', 'P9', 'Configurazione account GMail', 'https://img.tim.it/assistenza/Configurazione_account_Gmail_HUAWEI_P8_LITE_(ALE-L21).PDF'),
('HUAWEI', 'P9', 'Verifica versione sistema operativo', 'https://img.tim.it/assistenza/Verifica_Versione_Sistema_Operativo_HUAWEI_P8_(GRA-L09).PDF'),
('LG', 'K8', 'Configurazione WAP', 'http://hyp59.altervista.org/noService.pdf'),
('LG', 'K8', 'Selezione Rete', 'http://hyp59.altervista.org/noService.pdf'),
('LG', 'K8', 'Verifica Versione sistema operativo', 'http://hyp59.altervista.org/noService.pdf'),
('Apple', 'IPhone SE ', 'Configurazione WAP', 'http://hyp59.altervista.org/noService.pdf'),
('Apple', 'IPhone SE ', 'Disattivazione dati Roaming', 'http://hyp59.altervista.org/noService.pdf'),
('Apple', 'IPhone SE ', 'Configurazione MMS', 'http://hyp59.altervista.org/noService.pdf');

-- --------------------------------------------------------

--
-- Struttura della tabella `Image`
--

CREATE TABLE IF NOT EXISTS `Image` (
  `vendor` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  PRIMARY KEY (`path`),
  FULLTEXT KEY `model` (`model`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `Image`
--

INSERT INTO `Image` (`vendor`, `model`, `path`) VALUES
('HUAWEI', 'P9', 'http://hyp59.altervista.org/images/Phone/huawei-p9-grey-01.jpg'),
('HUAWEI', 'P9', 'http://hyp59.altervista.org/images/Phone/huawei-p9-grey-02.jpg'),
('HUAWEI', 'P9', 'http://hyp59.altervista.org/images/Phone/huawei-p9-grey-03.jpg'),
('HUAWEI', 'P9', 'http://hyp59.altervista.org/images/Phone/huawei-p9-grey-04.jpg'),
('LG', 'G5', 'http://hyp59.altervista.org/images/Phone/LG_G5_titan_03.jpg'),
('Sony', 'XPERIA X', 'http://hyp59.altervista.org/images/Phone/sony-xperia-x-grphblk-front.jpg'),
('LG', 'K8', 'http://hyp59.altervista.org/images/Phone/lg-k8-4g-indigoblue-01.jpg'),
('LG', 'K8', 'http://hyp59.altervista.org/images/Phone/lg-k8-4g-indigoblue-03.jpg'),
('LG', 'K8', 'http://hyp59.altervista.org/images/Phone/lg-k8-4g-indigoblue-02.jpg'),
('LG', 'G5', 'http://hyp59.altervista.org/images/Phone/LG_G5_titan_04.jpg'),
('Samsung', 'Smart TV 50"', 'http://hyp59.altervista.org/images/SL/samsung_smart_tv_50JU6400_slider_1.jpg'),
('Samsung', 'Smart TV 50"', 'http://hyp59.altervista.org/images/SL/samsung_smart_tv_50JU6400_slider_2.jpg'),
('Apple', 'iPhone SE 16GB ', '..\\images\\Phone\\APPLE_OIPHONE_SE_spacegrey_01.jpg'),
('ZyXEL', 'Repeater AC750', 'http://hyp59.altervista.org/images/Networking/slider-repeater-zyxel-ac750-front.jpg'),
('Apple', 'iPad Pro 9.7" 256 GB ', 'http://hyp59.altervista.org/images/TabletPC/APPLE_IPAD_97_spacegrey_01.jpg'),
('Apple', 'iPhone SE 16GB ', '..\\images\\Phone\\APPLE_OIPHONE_SE_spacegrey_02.jpg'),
('Apple', 'iPhone SE 16GB', '..\\images\\Phone\\APPLE_OIPHONE_SE_spacegrey_03.jpg');

-- --------------------------------------------------------

--
-- Struttura della tabella `Networking`
--

CREATE TABLE IF NOT EXISTS `Networking` (
  `available` tinyint(1) NOT NULL,
  `type` varchar(20) NOT NULL,
  `model` varchar(20) NOT NULL,
  `vendor` varchar(20) NOT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `new` tinyint(1) DEFAULT NULL,
  `promotion` int(6) DEFAULT NULL,
  `presentation` text CHARACTER SET utf8,
  `specs` text,
  PRIMARY KEY (`model`,`vendor`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `Networking`
--

INSERT INTO `Networking` (`available`, `type`, `model`, `vendor`, `price`, `new`, `promotion`, `presentation`, `specs`) VALUES
(1, '', 'Repeater AC750', 'ZyXEL', 49.90, 1, 30, NULL, NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `PricePlans`
--

CREATE TABLE IF NOT EXISTS `PricePlans` (
  `name` varchar(255) NOT NULL,
  `sort` varchar(255) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `price` int(255) NOT NULL,
  `imgpath` varchar(255) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `PricePlans`
--

INSERT INTO `PricePlans` (`name`, `sort`, `comment`, `price`, `imgpath`, `link`) VALUES
('TIM 60+', 'MOBILE', 'SOLO ONLINE', 12, 'http://hyp59.altervista.org/images/PricePlans/60.jpg', NULL),
('TIM YOUNG', 'MOBILE', 'Musica senza consumare GB', 14, 'http://hyp59.altervista.org/images/PricePlans/TimYoung.jpg', 'SLPianoTimYoung.html'),
('INTERNATIONAL', 'MOBILE', '200 min verso l''estero', 5, 'http://hyp59.altervista.org/images/PricePlans/International200.jpg', 'SLPianoInternational.html'),
('SMART FIBRA', 'BOTH', 'Internet ultraveloce', 19, 'http://hyp59.altervista.org/images/PricePlans/SmartFibra.jpg', NULL),
('SMART CASA', 'BOTH', 'Chiamate illimitate', 19, 'http://hyp59.altervista.org/images/PricePlans/SmartCasa.jpg', NULL),
('SMARTMOBILE', 'BOTH', 'Internet illimitato', 19, 'http://hyp59.altervista.org/images/PricePlans/SmartMobile.jpg', NULL),
('TUTTO VOCE', 'FISSO', 'Per parlare senza limiti', 29, 'http://hyp59.altervista.org/images/PricePlans/TuttoVoce.jpg', NULL),
('VOCE', 'FISSO', 'La linea di casa', 19, 'http://hyp59.altervista.org/images/PricePlans/TimVoce.jpg', NULL),
('VOCE INTERNAZIONALE', 'FISSO', 'Per parlare con l''estero', 5, 'http://hyp59.altervista.org/images/PricePlans/TimVoceInternazionale.jpg', NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `SLdevices`
--

CREATE TABLE IF NOT EXISTS `SLdevices` (
  `vendor` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `titleSreviceSL` varchar(255) NOT NULL DEFAULT '',
  `prezzo` decimal(10,2) NOT NULL,
  `specs` text NOT NULL,
  `presentation` text,
  `type` varchar(10) NOT NULL,
  `promotion` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`vendor`,`model`,`titleSreviceSL`),
  KEY `titleSreviceSL` (`titleSreviceSL`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `SLdevices`
--

INSERT INTO `SLdevices` (`vendor`, `model`, `titleSreviceSL`, `prezzo`, `specs`, `presentation`, `type`, `promotion`) VALUES
('Samsung', 'Smart TV 50"', '', 26.00, '<ul><li>Modello 50JU6400 - 50“</li><li>Ultra HD - 4K 3840 x 2160</li><li>Soundbar HW-J250 inclusa</li><li>TIMvision incluso</li></ul>', '', 'TV', NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `SmartLife`
--

CREATE TABLE IF NOT EXISTS `SmartLife` (
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`title`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `SpecsTabletPC`
--

CREATE TABLE IF NOT EXISTS `SpecsTabletPC` (
  `Model` varchar(20) NOT NULL,
  `Vendor` varchar(20) NOT NULL,
  `Display` text,
  `Sensori` text,
  `Processore` text,
  `Fotocamera` text,
  `Videocamera` text,
  `Connettivita` text,
  `Batteria` text,
  PRIMARY KEY (`Model`,`Vendor`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `SpecsTabletPC`
--

INSERT INTO `SpecsTabletPC` (`Model`, `Vendor`, `Display`, `Sensori`, `Processore`, `Fotocamera`, `Videocamera`, `Connettivita`, `Batteria`) VALUES
('iPad Pro 9.7" 256 GB', 'Apple', 'Retina Display 9,7” (diagonale) con True Tone e rivestimento antiriflesso', 'impronte digitali Touch ID', 'Chip A9X di terza generazione con architettura a 64 bit di livello desktop', 'iSight da 12MP con video a 4K', 'FaceTime HD (foto da 5MP)', '4G LTE Advanced1, Wi-Fi 802.11ac con tecnologia MIMO', 'Fino a 10 ore di autonomia');

-- --------------------------------------------------------

--
-- Struttura della tabella `SpecsTelefono`
--

CREATE TABLE IF NOT EXISTS `SpecsTelefono` (
  `Vendor` varchar(20) CHARACTER SET utf8mb4 NOT NULL,
  `Model` varchar(20) NOT NULL,
  `Tecnologia` text CHARACTER SET utf8mb4,
  `Connettivit&#224` text,
  `GPS` text,
  `Display` text,
  `Fotocamera` text,
  `Memoria Interna` text,
  `Processore` text,
  `In dotazione` text,
  `Dimensioni` text,
  `Peso` text,
  `Autonomia` text,
  PRIMARY KEY (`Model`,`Vendor`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `SpecsTelefono`
--

INSERT INTO `SpecsTelefono` (`Vendor`, `Model`, `Tecnologia`, `Connettivit&#224`, `GPS`, `Display`, `Fotocamera`, `Memoria Interna`, `Processore`, `In dotazione`, `Dimensioni`, `Peso`, `Autonomia`) VALUES
('HUAWEI', 'P9', 'Abilitato tecnologia 4GPlus/4G/HSDPA 42/UMTS/EDGE/GPRS Frequenze 850/900/1800/1900MHz\n', '4G cat.6/HSDPA42/UMTS/EDGE/GPRS Frequenze 850/900/1800/1900/2100 Wi-Fi a/b/g/n/ac dual band 2,4/5GHz con Wi-Fi Direct Bluetooth 4.2, BLE USB Type-C, NFC', 'GPS Integrato', 'Display IPS Full HD da 5.2&#8217&#8217', 'Principale 12MP x 2, f/2.2 Leica BSI CMOS Flash dual-tone Frontale 8MP, f/2.4', '32GB', 'Processore Kirin 955 - Octa-Core (4x2,5 GHz + 4x1,8 GHz)', 'Smartphone Auricolari stereo - Caricabatteria Cavo USB Type-C - Estrattore SIM Guida rapida', '145 x 70,9 x 6,95 mm', '144 grammi', 'Stand-by fino a 566 ore - Conversazione fino a 1980 min'),
('LG', 'K8', '4G cat.4/HSDPA42/UMTS/EDGE/GPRS Frequenze 850/900/1800/1900/2100', 'Wi-Fi - Bluetooth - Micro USB - NFC', 'Integrato', '5&#8217&#8217 16 Milioni colori Touch', 'Posteriore da 8 Mpxl con flash', '8GB con Slot Memory Card Micro SD fino a 32GB', 'Processore QuadCore 1.3 GHz', 'Caricabatteria, Cavo dati USB, Manuale d&#8217uso rapido, Auricolare stereo', '144,6x71,5x8,7 mm', '142 gr.', 'Stand-by fino a 100 ore - Conversazione fino a 240 min.'),
('LG', 'G5', '4G cat.6/HSDPA42/UMTS/EDGE/GPRS Frequenze 850/900/1800/1900/2100', 'Wi-Fi - Bluetooth - Infrarosso - USB tipo C - NFC', 'Integrato', '5.3&#8217&#8217 16 Milioni colori Touch', '2 Fotocamere Posteriori da 16 Mpxl con flash e Fotocamera frontale 8 Mpx', '32GB\r\nSlot Memory Card Micro SD fino a 2TB', 'Processore Snapdragon@#153 820 QuadCore 2.15 GHz - 4G LTE ', 'Caricabatteria\nCavo dati USB tipo C\nAuricolare stereo\nManuale d&#8217uso rapido', '149,4x73,9x7,3 mm', '159 gr.', 'Stand-by fino a 100 ore - Conversazione fino a 240 min.');

-- --------------------------------------------------------

--
-- Struttura della tabella `TabletPC`
--

CREATE TABLE IF NOT EXISTS `TabletPC` (
  `available` tinyint(1) NOT NULL,
  `type` varchar(20) NOT NULL,
  `model` varchar(20) NOT NULL,
  `vendor` varchar(20) NOT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `new` tinyint(1) DEFAULT NULL,
  `promotion` tinyint(1) DEFAULT NULL,
  `presentation` text NOT NULL,
  `specs` text NOT NULL,
  PRIMARY KEY (`model`,`vendor`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `TabletPC`
--

INSERT INTO `TabletPC` (`available`, `type`, `model`, `vendor`, `price`, `new`, `promotion`, `presentation`, `specs`) VALUES
(1, 'ipad', 'iPad Pro 9.7" 256 GB', 'Apple', 1199.90, 1, NULL, 'iPad Pro 9,7” è un concentrato mai visto di portatilità e prestazioni. È spesso solo 6,1 millimetri e pesa meno di 500 grammi, ma ha il display Retina più luminoso ed evoluto di sempre: con i suoi sensori True Tone si adegua alla luce ambientale, così gli occhi non si affaticano. In più hai il potente chip A9X a 64 bit di livello desktop, audio a quattro altoparlanti, fotocamera iSight e videocamera FaceTime HD, sensore di impronte digitali Touch ID, connessioni ultraveloci su Wi-Fi e 4G LTE e fino a 10 ore di autonomia.2 Advanced,1 ancora di più? Aggiungi l’ultraprecisa Apple Pencil e la Smart Keyboard, e iPad Pro ti diventerà ancora più indispensabile', 'Display Retina da 9,7" (diagonale) con True Tone e rivestimento antiriflesso\r\nChip A9 con architettura a 64 bit di livello desktop\r\nSensore di impronte digitali Touch ID\r\nFotocamera iSight da 12MP con video a 4K\r\nVideocamera FaceTime HD (foto da 5MP)');

-- --------------------------------------------------------

--
-- Struttura della tabella `Telefoni`
--

CREATE TABLE IF NOT EXISTS `Telefoni` (
  `available` tinyint(1) NOT NULL,
  `type` varchar(20) NOT NULL,
  `model` varchar(20) NOT NULL,
  `vendor` varchar(20) NOT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `new` tinyint(1) DEFAULT NULL,
  `promotion` int(6) DEFAULT NULL,
  `presentation` text CHARACTER SET utf8 NOT NULL,
  `specs` text NOT NULL,
  PRIMARY KEY (`model`,`vendor`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `Telefoni`
--

INSERT INTO `Telefoni` (`available`, `type`, `model`, `vendor`, `price`, `new`, `promotion`, `presentation`, `specs`) VALUES
(1, 'smartphone', 'P9', 'HUAWEI', 600.00, 1, NULL, '<div class="cont-desc cont-section" id="section1">\n								\n									\n									\n									\n								\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n  \n  \n  \n  \n\n\n\n	\n	\n	 \n	\n	\n	\n	\n	\n	<div class="cont-row">\n		<h4>Descrizione</h4>\n	</div>\n	\n	\n		\n		\n		\n		\n		\n		\n	\n		\n		\n		\n		\n		\n		\n			<h4>PREMIUM. ELEGANT. STYLISH. <p></p><p>Huawei P9 presenta un design con linee dal forte impatto visivo, caratterizzate da spigoli tagliati a diamante e arrotondati a regola d&#8217arte. Lo smartphone ha una struttura unibody in alluminio aerospaziale e vetro 2.5D di categoria superiore, ed &#232 disponibile in due varianti cromatiche: Titanium Grey e Mystic Silver.</p></h4><h4>DISPLAY LUMINOSO E DAI COLORI INTENSI</h4><p>Con una resa cromatica del 96%, il sensazionale display IPS Full HD da 5,2&#8217&#8217 porta alla scoperta di un mondo ricco di colori intensi e ancora pi&#249 naturali.</p><h4>UN INNOVATIVO SISTEMA CON DOPPIA FOTOCAMERA, UNA COLLABORAZIONE UNICA</h4><p>La collaborazione tra Huawei e Leica ha dato vita a uno smartphone con doppia fotocamera. Il risultato: maggiore luminosit&#224 e nitidezza per foto e video sensazionali.</p><h4>INNOVATIVO SISTEMA CON DOPPIA FOTOCAMERA </h4><p> Huawei P9 &#232 in grado di catturare immagini dai colori luminosi e garantire al contempo una resa in bianco e nero straordinaria; il tutto con lo stile senza tempo di Leica.La tecnologia con doppia fotocamera di Huawei P9 consente di catturare una maggiore quantit&#224 di luce, combinando al meglio la qualit&#224 del colore acquisito dal sensore RGB con i dettagli ottenuti dal sensore in bianco e nero. Il tutto per garantire il massimo risultato ad ogni scatto.</p>\n		\n	\n\n							</div>', '<h5>Caratteristiche:</h5><ul><li>Sistema Operativo Android 6.0</li><li>Display IPS Full HD da 5.2''''</li><li>Doppia Fotocamera Leica da 12 Mpxl Dual Flash + anteriore da 8 Mpxl</li><li>Processore Kirin 955 - Octa-Core (4x2,5 GHz + 4x1,8 GHz)</li></ul>'),
(1, 'smartphone', 'G5', 'LG', 699.90, NULL, NULL, '<div class="cont-desc cont-section" id="section1">\n								\n									\n									\n									\n								\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n  \n  \n  \n  \n\n\n\n	\n	\n	 \n	\n	\n	\n	\n	\n	<div class="cont-row">\n		<h4>Descrizione</h4>\n	</div>\n	\n	\n		\n		\n		\n		\n		\n		\n	\n		\n		\n		\n		\n		\n		\n			<h4>LG G5</h4><p>Il nuovo LG G5 &#232 uno nuovo tipo di smartphone che supera tutti i limiti, con un design modulare completamete in metallo che rivoluziona i canoni di design. Espandi le funzioni, interagisci con gli innovativi LG Friends e prova un&#8217esperienza smartphone realmente innovativa. La rivoluzione di G5 continua con la doppia fotocamera grandangolare, che cattura pi&#249 di quanto i tuoi occhi riescano a vedere. Anche sotto il sole, perch&#233 il nuovo display IPS Quantum &#232 pi&#249 ricco, luminoso e colorato anche sotto la luce diretta del sole. E ti mostra sempre le notifiche principali anche quando non &#232 attivo. Nuovo LG G5: quello che non ti aspetti, nel palmo della tua mano.</p><p></p><h4>COMPLETAMENTE IN METALLO</h4><p>Bellezza e raffinatezza nel palmo della tua mano. Cerchi da sempre la cura nei dettagli e l&#8217eleganza dei materiali, ed eccoli qui. Il metallo e il vetro si uniscono morbidamente in una forma semplicemente iconica. Che ti d&#224 sensazioni tutte da provare.</p><h4>DESIGN MODULARE</h4><p>Liberati dalle convenzioni. Il nuovo design modulare con batteria a slitta ti permette di avere tutto quello che gli altri non hanno mai saputo darti. La libert&#224 di avere uno smartphone in metallo e di poter cambiare la batteria quando desideri. E di espandere le funzioni con nuovi moduli.</p><h4>DOPPIA FOTOCAMERA CON LENTI GRANDANGOLARI</h4><p>Cattura tutto ci&#242 che vedi! I nostri occhi vedono pi&#249 di quanto una fotocamera convenzionale riesca a catturare. Ma con LG G5 puoi fare anche di pi&#249, perch&#233 ha due fotocamere. Con la prima cogli tutti i dettagli. Con la lente grandangolare a 135&#176 della seconda, invece, catturi perfino pi&#249 di quanto vedono i tuoi occhi. Grattacieli, un concerto o l&#8217intera spiaggia dove ti trovi vivranno nitidi sul tuo nuovo G5</p><p></p><h4>LUMINOSIT&#192 ESTREMA</h4><p>Ecco uno schermo davvero intelligente. Che riconosce quando sei sotto la luce diretta del sole per offrirti una leggibilit&#224 sempre ottimale. Il nuovo display IPS Quantum &#232 pi&#249 luminoso, pi&#249 colorato e pi&#249 chiaro anche in pieno sole.</p>\n		\n	\n\n							</div>', '<ul><li>Sistema Operativo Android 6.0</li><li>Display 5.3”</li><li>Processore Snapdragon™ 820 QuadCore 2.15 GHz - 4G LTE </li></ul>'),
(1, 'smartphone', 'K8', 'LG', 179.90, NULL, NULL, '<div class="cont-desc cont-section" id="section1">\n								\n									\n									\n									\n								\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n  \n  \n  \n  \n\n\n\n	\n	\n	 \n	\n	\n	\n	\n	\n	<div class="cont-row">\n		<h4>Descrizione</h4>\n	</div>\n	\n	\n		\n		\n		\n		\n		\n		\n	\n		\n		\n		\n		\n		\n		\n			<h4>SCEGLI IL TUO STILE</h4><p>La nuova serie K di LG ti offre una gamma di smartphone che rispecchiano la tua personalit&#224. LG K8 ti accompagna nei tuoi viaggi e ti sorprender&#224 con selfie dettagliati tutti da condividere con la velocit&#224 della rete 4G LTE</p><h4>DESIGN CON VETRO SMUSSATO</h4><p>Datti un tono! LG K8 ha un design che lascia a bocca aperta grazie al profilo del vetro smussato e alla forma arrotondata. In pi&#249 &#232 pi&#249 ergonomico e garantisce una presa pi&#249 salda grazie alla lavorazione della cover posteriore. </p><h4>FOTOCAMERA E FLASH VIRTUALE</h4><p>Cattura i le situazioni pi&#249 divertenti della giornata con la fotocamera da 8 Megapixel. E'' sufficiente un tocco sul display e K8 mette a fuoco e scatta immediatamente. Anche per i selfie puoi contare sulla fotocamera frontale da 5 Megapixel con la funzione flash virtuale che illumina il tuo volto, cos&#236 i tuoi selfie saranno illuminati come si deve, mentre tutti gli altri... scatteranno selfie scuri! </p><h4>DISPLAY DA 5"</h4><p>Guarda le tue foto e i tuoi video sul display ampio da ben 5".</p>\n		\n	\n\n							</div>', '<ul><li>4G LTE - NFC</li><li>Sistema Operativo Android 6</li><li>Display 5”</li><li>Processore QuadCore 1.3 GHz</li></ul>'),
(1, 'inactive', 'Xperia X', 'Sony', 399.90, 1, 349, '', ''),
(1, 'iphone', 'iPhone SE 16GB', 'Apple', 509.90, 1, 499, '<div class="cont-desc cont-section" id="section1">\n								\n									\n									\n									\n								\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n  \n  \n  \n  \n\n\n\n	\n	\n	 \n	\n	\n	\n	\n	\n	<div class="cont-row">\n		<h4>Descrizione</h4>\n	</div>\n	\n	\n		\n		\n		\n		\n		\n		\n	\n		\n		\n		\n		\n		\n		\n			<p>Il telefono da 4" pi&ugrave potente di sempre. iPhone SE riprende un design compatto di grande successo aggiungendovi due fotocamere evolute e una potenza di elaborazione incredibile.Disegnato per stare comodamente in mano e risultare piacevole al tatto, grazie alla finitura satinata del guscio in alluminio microsabbiato.</p><p>iPhone SE ha un display Retina da 4", chip A9 con archittetura a 64 bit di livello desktop, sensore di impronte digitali Touch ID, fotocamera iSight da 12MP, videocamera FaceTime HD con Retina flash, Live Photos e connessioni Wi-Fi e 4G veloci. E ancora, iOS 9 e iCloud.</p>\n		\n	\n\n							</div>', '<ul><li>Display Retina da 4'''' con risoluzione di 1136x640 pixel" HD</li><li>Chip A9 con architettura a 64 bit</li><li>Fotocamera iSight da 12MP con Focus Pixels e flash True Tone</li><li>Registrazione video 4K a 30fps, moviola a 240 fps</li><li>Videocamera FaceTime HD (foto da 1,2 MP) con Retina Flash</li><li>Sensore di impronte digitali Touch ID</li></ul>');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
