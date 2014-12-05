-- phpMyAdmin SQL Dump
-- version 4.2.9.1
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Dic 03, 2014 alle 09:29
-- Versione del server: 5.5.40
-- PHP Version: 5.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_distra`
--
-- -----------------------------------------------------
-- Schema db_integrazione
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `db_distra` ;

-- -----------------------------------------------------
-- Schema db_integrazione
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `db_distra` DEFAULT CHARACTER SET utf8 ;
USE `db_distra` ;


-- --------------------------------------------------------

--
-- Struttura della tabella `account`
--

CREATE TABLE IF NOT EXISTS `account` (
  `email` varchar(100) NOT NULL COMMENT 'Nome con il quale l''utente viene riconosciuto da un',
  `password` varchar(45) NOT NULL,
  `typeOfAccount` varchar(45) NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tabella adibita alla gestione dei dati principali per l''acesso al sistema';

-- --------------------------------------------------------

--
-- Struttura della tabella `allegato`
--

CREATE TABLE IF NOT EXISTS `allegato` (
`ID` int(11) NOT NULL,
  `Oggetto` varchar(255) NOT NULL,
  `ID_Tesi` int(11) NOT NULL,
  `Stato` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `annuncio`
--

CREATE TABLE IF NOT EXISTS `annuncio` (
`ID` int(11) NOT NULL,
  `Testo` text NOT NULL,
  `ID_Docente` varchar(16) NOT NULL,
  `Data_Annuncio` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `class`
--

CREATE TABLE IF NOT EXISTS `class` (
  `title` varchar(50) NOT NULL,
  `teaching_matricula` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `class_event`
--

CREATE TABLE IF NOT EXISTS `class_event` (
  `FK_Class` int(11) NOT NULL,
  `FK_Event` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `class_notice`
--

CREATE TABLE IF NOT EXISTS `class_notice` (
  `FK_Class` int(11) NOT NULL,
  `FK_Event` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `collaboration`
--

CREATE TABLE IF NOT EXISTS `collaboration` (
  `idCollaboration` int(20) NOT NULL,
  `istitution` varchar(45) NOT NULL,
  `description` text NOT NULL,
  `startDate` date NOT NULL,
  `endDate` date NOT NULL,
  `FK_Student` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `cronologia`
--

CREATE TABLE IF NOT EXISTS `cronologia` (
`ID` int(11) NOT NULL,
  `Testo` varchar(255) NOT NULL,
  `ID_Docente` varchar(16) NOT NULL,
  `ID_Studente` varchar(16) NOT NULL,
  `Data_Notifica` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `curriculum`
--

CREATE TABLE IF NOT EXISTS `curriculum` (
  `title` varchar(100) NOT NULL,
  `matricula` varchar(45) NOT NULL,
  `degree_matricula` varchar(5) NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `curriculum_teaching`
--

CREATE TABLE IF NOT EXISTS `curriculum_teaching` (
  `curriculum_matricula` varchar(45) NOT NULL,
  `teaching_matricula` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `cycle`
--

CREATE TABLE IF NOT EXISTS `cycle` (
  `cycle_number` int(11) NOT NULL,
  `title` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `degree`
--

CREATE TABLE IF NOT EXISTS `degree` (
  `title` varchar(500) NOT NULL,
  `matricula` varchar(5) NOT NULL,
  `link` varchar(500) DEFAULT NULL,
  `department_abbreviation` varchar(100) NOT NULL,
  `cycle_number` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `department`
--

CREATE TABLE IF NOT EXISTS `department` (
  `abbreviation` varchar(50) NOT NULL,
  `title` varchar(500) DEFAULT NULL,
  `url_moodle` varchar(1000) DEFAULT NULL,
  `token` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `event`
--

CREATE TABLE IF NOT EXISTS `event` (
  `idEvent` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `description` text NOT NULL,
  `hours` int(1) NOT NULL,
  `startDate` date NOT NULL,
  `endDate` date NOT NULL,
  `type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `event_professor`
--

CREATE TABLE IF NOT EXISTS `event_professor` (
  `FK_Event` int(11) NOT NULL,
  `FK_Professor` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `lesson`
--

CREATE TABLE IF NOT EXISTS `lesson` (
  `idLesson` int(20) NOT NULL,
  `name` varchar(45) NOT NULL,
  `speaker` varchar(45) NOT NULL,
  `date` date NOT NULL,
  `startTime` time NOT NULL,
  `endTime` time NOT NULL,
  `place` varchar(45) NOT NULL,
  `FK_Event` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `lesson_student`
--

CREATE TABLE IF NOT EXISTS `lesson_student` (
  `FK_Lesson` int(20) NOT NULL,
  `FK_Student` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `mission`
--

CREATE TABLE IF NOT EXISTS `mission` (
  `idMission` int(20) NOT NULL,
  `place` varchar(45) NOT NULL,
  `description` text NOT NULL,
  `startDate` date NOT NULL,
  `endDate` date NOT NULL,
  `FK_Student` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `module`
--

CREATE TABLE IF NOT EXISTS `module` (
  `title` varchar(50) NOT NULL,
  `teaching_matricula` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `notice`
--

CREATE TABLE IF NOT EXISTS `notice` (
  `idNotice` int(11) NOT NULL,
  `object` varchar(45) NOT NULL,
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `offer_training`
--

CREATE TABLE IF NOT EXISTS `offer_training` (
`id_offer_training` int(11) NOT NULL,
  `description` longtext,
  `fk_organization` int(11) DEFAULT NULL,
  `fk_person` varchar(16) NOT NULL,
  `fk_department` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `organization`
--

CREATE TABLE IF NOT EXISTS `organization` (
`id_organization` int(11) NOT NULL,
  `companyName` varchar(45) NOT NULL,
  `city` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  `fk_account` varchar(100) NOT NULL,
  `fk_externaltutor` varchar(16) DEFAULT NULL,
  `fk_professor` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `pending_acceptance`
--

CREATE TABLE IF NOT EXISTS `pending_acceptance` (
`id_pending_acceptance` int(11) NOT NULL,
  `date_request` date DEFAULT NULL,
  `fk_person` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `person`
--

CREATE TABLE IF NOT EXISTS `person` (
  `SSN` varchar(16) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `surname` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `zip_code` varchar(45) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `citizenship` varchar(45) DEFAULT NULL,
  `Account_email` varchar(100) NOT NULL,
  `Department_abbreviation` varchar(50) NOT NULL,
  `web_page` varchar(300) DEFAULT NULL,
  `university` varchar(200) DEFAULT NULL,
  `matricula` varchar(10) DEFAULT NULL,
  `position` varchar(50) NOT NULL,
  `cycle` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `phdclass`
--

CREATE TABLE IF NOT EXISTS `phdclass` (
  `idClass` int(20) NOT NULL,
  `FK_PhdCycle` int(11) NOT NULL,
  `FK_PhdCurriculum` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `phdcurriculum`
--

CREATE TABLE IF NOT EXISTS `phdcurriculum` (
  `idPhdCurriculum` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `description` text NOT NULL,
  `FK_Professor` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `phdcycle`
--

CREATE TABLE IF NOT EXISTS `phdcycle` (
  `idPhdCycle` int(11) NOT NULL,
  `description` text NOT NULL,
  `year` year(4) NOT NULL,
  `FK_Professor` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `professor_phdcycle`
--

CREATE TABLE IF NOT EXISTS `professor_phdcycle` (
  `FK_Professor` varchar(16) NOT NULL,
  `FK_PhdCycle` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `prof_module_class`
--

CREATE TABLE IF NOT EXISTS `prof_module_class` (
`ID` int(11) NOT NULL,
  `class_title` varchar(50) NOT NULL,
  `teaching_matricula` varchar(10) NOT NULL,
  `module_title` varchar(50) NOT NULL,
  `email_account` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `publication`
--

CREATE TABLE IF NOT EXISTS `publication` (
  `idPublication` int(20) NOT NULL,
  `title` varchar(45) NOT NULL,
  `authors` varchar(45) NOT NULL,
  `abstract` text NOT NULL,
  `file` longblob NOT NULL,
  `year` year(4) NOT NULL,
  `type` varchar(45) NOT NULL,
  `publicationIssue` varchar(45) NOT NULL,
  `numberPages` int(11) NOT NULL,
  `FK_Student` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `rejected_training_message`
--

CREATE TABLE IF NOT EXISTS `rejected_training_message` (
`id_rejected_training_message` int(11) NOT NULL,
  `description` longtext,
  `fk_person` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `relatori_tesi`
--

CREATE TABLE IF NOT EXISTS `relatori_tesi` (
  `ID_Tesi` int(11) NOT NULL,
  `ID_Docente` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `student_information`
--

CREATE TABLE IF NOT EXISTS `student_information` (
  `curriculum_vitae_path` varchar(200) DEFAULT NULL,
  `accademic_transcript_path` varchar(200) DEFAULT NULL,
  `SSN` varchar(16) NOT NULL,
  `fk_student_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `student_status`
--

CREATE TABLE IF NOT EXISTS `student_status` (
`id_student_status` int(11) NOT NULL,
  `description` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `tag`
--

CREATE TABLE IF NOT EXISTS `tag` (
`ID` int(11) NOT NULL,
  `Nome` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `tag_tesi`
--

CREATE TABLE IF NOT EXISTS `tag_tesi` (
  `ID_tesi` int(11) NOT NULL,
  `ID_tag` int(11) NOT NULL,
`ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `teaching`
--

CREATE TABLE IF NOT EXISTS `teaching` (
  `matricula` varchar(10) NOT NULL,
  `title` varchar(500) NOT NULL,
  `abbreviation` varchar(10) NOT NULL,
  `link` varchar(500) NOT NULL,
  `year` int(11) NOT NULL,
  `semester` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `tesi`
--

CREATE TABLE IF NOT EXISTS `tesi` (
`ID` int(11) NOT NULL,
  `Data_Inizio` date NOT NULL,
  `Data_Fine` date NOT NULL,
  `Data_Fine_Prevista` date NOT NULL,
  `Titolo` varchar(255) NOT NULL,
  `Abstract` varchar(45) NOT NULL,
  `Descrizione` varchar(255) NOT NULL,
  `ID_Studente` varchar(16) NOT NULL,
  `Stato_Tesi` enum('0','1','2','3') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `training_request`
--

CREATE TABLE IF NOT EXISTS `training_request` (
`id_training_request` int(11) NOT NULL,
  `description` longtext,
  `title` varchar(45) DEFAULT NULL,
  `fk_training_status` int(11) NOT NULL,
  `fk_person` varchar(16) NOT NULL,
  `fk_organization` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `training_status`
--

CREATE TABLE IF NOT EXISTS `training_status` (
`id_training_status` int(11) NOT NULL,
  `description` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
 ADD PRIMARY KEY (`email`);

--
-- Indexes for table `allegato`
--
ALTER TABLE `allegato`
 ADD PRIMARY KEY (`ID`), ADD KEY `ID_Tesi` (`ID_Tesi`);

--
-- Indexes for table `annuncio`
--
ALTER TABLE `annuncio`
 ADD PRIMARY KEY (`ID`), ADD KEY `ID_Docente` (`ID_Docente`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
 ADD PRIMARY KEY (`title`,`teaching_matricula`), ADD KEY `title` (`title`), ADD KEY `teaching_matricula` (`teaching_matricula`);

--
-- Indexes for table `class_event`
--
ALTER TABLE `class_event`
 ADD PRIMARY KEY (`FK_Class`,`FK_Event`), ADD KEY `FK_Event` (`FK_Event`), ADD KEY `FK_Class` (`FK_Class`);

--
-- Indexes for table `class_notice`
--
ALTER TABLE `class_notice`
 ADD PRIMARY KEY (`FK_Class`,`FK_Event`), ADD KEY `FK_Event` (`FK_Event`), ADD KEY `FK_Class` (`FK_Class`);

--
-- Indexes for table `collaboration`
--
ALTER TABLE `collaboration`
 ADD PRIMARY KEY (`idCollaboration`), ADD KEY `FK_Student` (`FK_Student`);

--
-- Indexes for table `cronologia`
--
ALTER TABLE `cronologia`
 ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `fk_person1` (`ID_Studente`), ADD UNIQUE KEY `fk_person2` (`ID_Docente`);

--
-- Indexes for table `curriculum`
--
ALTER TABLE `curriculum`
 ADD PRIMARY KEY (`matricula`), ADD KEY `fk_curriculum_degree1_idx` (`degree_matricula`);

--
-- Indexes for table `curriculum_teaching`
--
ALTER TABLE `curriculum_teaching`
 ADD KEY `curriculum_matricula` (`curriculum_matricula`), ADD KEY `teaching_matricula` (`teaching_matricula`);

--
-- Indexes for table `cycle`
--
ALTER TABLE `cycle`
 ADD PRIMARY KEY (`cycle_number`);

--
-- Indexes for table `degree`
--
ALTER TABLE `degree`
 ADD PRIMARY KEY (`matricula`), ADD KEY `fk_degree_department1_idx` (`department_abbreviation`), ADD KEY `fk_degree_cycle1_idx` (`cycle_number`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
 ADD PRIMARY KEY (`abbreviation`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
 ADD PRIMARY KEY (`idEvent`);

--
-- Indexes for table `event_professor`
--
ALTER TABLE `event_professor`
 ADD PRIMARY KEY (`FK_Event`,`FK_Professor`), ADD KEY `FK_Professor` (`FK_Professor`), ADD KEY `FK_Event` (`FK_Event`);

--
-- Indexes for table `lesson`
--
ALTER TABLE `lesson`
 ADD PRIMARY KEY (`idLesson`), ADD KEY `FK_Event` (`FK_Event`);

--
-- Indexes for table `lesson_student`
--
ALTER TABLE `lesson_student`
 ADD PRIMARY KEY (`FK_Lesson`,`FK_Student`), ADD KEY `FK_Student` (`FK_Student`), ADD KEY `FK_Lesson` (`FK_Lesson`);

--
-- Indexes for table `mission`
--
ALTER TABLE `mission`
 ADD PRIMARY KEY (`idMission`), ADD KEY `FK_Student` (`FK_Student`);

--
-- Indexes for table `module`
--
ALTER TABLE `module`
 ADD PRIMARY KEY (`title`,`teaching_matricula`), ADD KEY `fk_module_teaching1_idx` (`teaching_matricula`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
 ADD PRIMARY KEY (`idNotice`);

--
-- Indexes for table `offer_training`
--
ALTER TABLE `offer_training`
 ADD PRIMARY KEY (`id_offer_training`), ADD KEY `fk_OfferTraining_Organization1_idx` (`fk_organization`), ADD KEY `fk_OfferTraining_Professor1_idx` (`fk_person`), ADD KEY `fk_OfferTraining_Department1_idx` (`fk_department`);

--
-- Indexes for table `organization`
--
ALTER TABLE `organization`
 ADD PRIMARY KEY (`id_organization`), ADD KEY `fk_acc` (`fk_account`), ADD KEY `fk_tutor` (`fk_externaltutor`), ADD KEY `fk_prof` (`fk_professor`);

--
-- Indexes for table `pending_acceptance`
--
ALTER TABLE `pending_acceptance`
 ADD PRIMARY KEY (`id_pending_acceptance`), ADD KEY `fk_StudentAttendence_Student1_idx` (`fk_person`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
 ADD PRIMARY KEY (`SSN`), ADD UNIQUE KEY `fk_cycle` (`cycle`), ADD KEY `fk_Person_Account_idx` (`Account_email`), ADD KEY `fk_Person_Department1_idx` (`Department_abbreviation`);

--
-- Indexes for table `phdclass`
--
ALTER TABLE `phdclass`
 ADD PRIMARY KEY (`idClass`), ADD UNIQUE KEY `FK_cycle` (`FK_PhdCycle`), ADD KEY `FK_PhdCurriculum` (`FK_PhdCurriculum`);

--
-- Indexes for table `phdcurriculum`
--
ALTER TABLE `phdcurriculum`
 ADD PRIMARY KEY (`idPhdCurriculum`), ADD KEY `FK_Professor` (`FK_Professor`);

--
-- Indexes for table `phdcycle`
--
ALTER TABLE `phdcycle`
 ADD PRIMARY KEY (`idPhdCycle`), ADD KEY `FK_Professor` (`FK_Professor`);

--
-- Indexes for table `professor_phdcycle`
--
ALTER TABLE `professor_phdcycle`
 ADD PRIMARY KEY (`FK_Professor`,`FK_PhdCycle`), ADD KEY `FK_PhdCycle` (`FK_PhdCycle`), ADD KEY `FK_Professor` (`FK_Professor`);

--
-- Indexes for table `prof_module_class`
--
ALTER TABLE `prof_module_class`
 ADD PRIMARY KEY (`ID`), ADD KEY `class_title` (`class_title`), ADD KEY `module_teaching_matricula` (`teaching_matricula`), ADD KEY `module_title` (`module_title`), ADD KEY `email_account` (`email_account`);

--
-- Indexes for table `publication`
--
ALTER TABLE `publication`
 ADD PRIMARY KEY (`idPublication`), ADD KEY `FK_Student` (`FK_Student`), ADD KEY `FK_Student_2` (`FK_Student`), ADD KEY `FK_Student_3` (`FK_Student`);

--
-- Indexes for table `rejected_training_message`
--
ALTER TABLE `rejected_training_message`
 ADD PRIMARY KEY (`id_rejected_training_message`), ADD KEY `fk_RejectedTrainingMessage_Student1_idx` (`fk_person`);

--
-- Indexes for table `relatori_tesi`
--
ALTER TABLE `relatori_tesi`
 ADD KEY `ID_Tesi` (`ID_Tesi`), ADD KEY `ID_Docente` (`ID_Docente`);

--
-- Indexes for table `student_information`
--
ALTER TABLE `student_information`
 ADD PRIMARY KEY (`SSN`), ADD UNIQUE KEY `fk_status` (`fk_student_status`);

--
-- Indexes for table `student_status`
--
ALTER TABLE `student_status`
 ADD PRIMARY KEY (`id_student_status`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tag_tesi`
--
ALTER TABLE `tag_tesi`
 ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `fk_tesi` (`ID_tesi`), ADD UNIQUE KEY `fk_tag` (`ID_tag`);

--
-- Indexes for table `teaching`
--
ALTER TABLE `teaching`
 ADD PRIMARY KEY (`matricula`);

--
-- Indexes for table `tesi`
--
ALTER TABLE `tesi`
 ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `fk_person` (`ID_Studente`);

--
-- Indexes for table `training_request`
--
ALTER TABLE `training_request`
 ADD PRIMARY KEY (`id_training_request`), ADD KEY `fk_ClaimTraining_ClaimStatus1_idx` (`fk_training_status`), ADD KEY `fk_ClaimTraining_Professor1_idx` (`fk_person`), ADD KEY `fk_ClaimTraining_Organization1_idx` (`fk_organization`);

--
-- Indexes for table `training_status`
--
ALTER TABLE `training_status`
 ADD PRIMARY KEY (`id_training_status`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `allegato`
--
ALTER TABLE `allegato`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `annuncio`
--
ALTER TABLE `annuncio`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cronologia`
--
ALTER TABLE `cronologia`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `offer_training`
--
ALTER TABLE `offer_training`
MODIFY `id_offer_training` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `organization`
--
ALTER TABLE `organization`
MODIFY `id_organization` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pending_acceptance`
--
ALTER TABLE `pending_acceptance`
MODIFY `id_pending_acceptance` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `prof_module_class`
--
ALTER TABLE `prof_module_class`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rejected_training_message`
--
ALTER TABLE `rejected_training_message`
MODIFY `id_rejected_training_message` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `student_status`
--
ALTER TABLE `student_status`
MODIFY `id_student_status` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tag_tesi`
--
ALTER TABLE `tag_tesi`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tesi`
--
ALTER TABLE `tesi`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `training_request`
--
ALTER TABLE `training_request`
MODIFY `id_training_request` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `training_status`
--
ALTER TABLE `training_status`
MODIFY `id_training_status` int(11) NOT NULL AUTO_INCREMENT;
--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `allegato`
--
ALTER TABLE `allegato`
ADD CONSTRAINT `allegato_ibfk_1` FOREIGN KEY (`ID_Tesi`) REFERENCES `tesi` (`ID`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Limiti per la tabella `annuncio`
--
ALTER TABLE `annuncio`
ADD CONSTRAINT `annuncio_ibfk_1` FOREIGN KEY (`ID_Docente`) REFERENCES `person` (`SSN`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Limiti per la tabella `class`
--
ALTER TABLE `class`
ADD CONSTRAINT `fk_class_teaching1` FOREIGN KEY (`teaching_matricula`) REFERENCES `teaching` (`matricula`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `class_event`
--
ALTER TABLE `class_event`
ADD CONSTRAINT `class_event_ibfk_1` FOREIGN KEY (`FK_Class`) REFERENCES `phdclass` (`idClass`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `class_event_ibfk_2` FOREIGN KEY (`FK_Event`) REFERENCES `event` (`idEvent`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `class_notice`
--
ALTER TABLE `class_notice`
ADD CONSTRAINT `class_notice_ibfk_2` FOREIGN KEY (`FK_Class`) REFERENCES `phdclass` (`idClass`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `class_notice_ibfk_1` FOREIGN KEY (`FK_Event`) REFERENCES `event` (`idEvent`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `collaboration`
--
ALTER TABLE `collaboration`
ADD CONSTRAINT `collaboration_ibfk_1` FOREIGN KEY (`FK_Student`) REFERENCES `person` (`SSN`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `cronologia`
--
ALTER TABLE `cronologia`
ADD CONSTRAINT `cronologia_ibfk_2` FOREIGN KEY (`ID_Studente`) REFERENCES `person` (`SSN`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `cronologia_ibfk_1` FOREIGN KEY (`ID_Docente`) REFERENCES `person` (`SSN`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limiti per la tabella `curriculum`
--
ALTER TABLE `curriculum`
ADD CONSTRAINT `fk_curriculum_degree1` FOREIGN KEY (`degree_matricula`) REFERENCES `degree` (`matricula`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `curriculum_teaching`
--
ALTER TABLE `curriculum_teaching`
ADD CONSTRAINT `curriculum_teaching_ibfk_2` FOREIGN KEY (`teaching_matricula`) REFERENCES `teaching` (`matricula`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `curriculum_teaching_ibfk_1` FOREIGN KEY (`curriculum_matricula`) REFERENCES `curriculum` (`matricula`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `degree`
--
ALTER TABLE `degree`
ADD CONSTRAINT `fk_degree_cycle1` FOREIGN KEY (`cycle_number`) REFERENCES `cycle` (`cycle_number`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_degree_department1` FOREIGN KEY (`department_abbreviation`) REFERENCES `department` (`abbreviation`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limiti per la tabella `event_professor`
--
ALTER TABLE `event_professor`
ADD CONSTRAINT `event_professor_ibfk_2` FOREIGN KEY (`FK_Professor`) REFERENCES `person` (`SSN`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `event_professor_ibfk_1` FOREIGN KEY (`FK_Event`) REFERENCES `event` (`idEvent`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `lesson`
--
ALTER TABLE `lesson`
ADD CONSTRAINT `lesson_ibfk_1` FOREIGN KEY (`FK_Event`) REFERENCES `event` (`idEvent`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `lesson_student`
--
ALTER TABLE `lesson_student`
ADD CONSTRAINT `lesson_student_ibfk_2` FOREIGN KEY (`FK_Lesson`) REFERENCES `lesson` (`idLesson`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `lesson_student_ibfk_1` FOREIGN KEY (`FK_Student`) REFERENCES `person` (`SSN`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mission`
--
ALTER TABLE `mission`
ADD CONSTRAINT `mission_ibfk_1` FOREIGN KEY (`FK_Student`) REFERENCES `person` (`SSN`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `module`
--
ALTER TABLE `module`
ADD CONSTRAINT `fk_module_teaching1` FOREIGN KEY (`teaching_matricula`) REFERENCES `teaching` (`matricula`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limiti per la tabella `offer_training`
--
ALTER TABLE `offer_training`
ADD CONSTRAINT `fk_OfferTraining_Organization1` FOREIGN KEY (`fk_organization`) REFERENCES `organization` (`id_organization`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_OfferTraining_Professor1` FOREIGN KEY (`fk_person`) REFERENCES `person` (`SSN`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_OfferTraining_Department1` FOREIGN KEY (`fk_department`) REFERENCES `department` (`abbreviation`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limiti per la tabella `organization`
--
ALTER TABLE `organization`
ADD CONSTRAINT `fk_acc` FOREIGN KEY (`fk_account`) REFERENCES `account` (`email`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_tutor` FOREIGN KEY (`fk_externaltutor`) REFERENCES `person` (`SSN`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_prof` FOREIGN KEY (`fk_professor`) REFERENCES `person` (`SSN`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limiti per la tabella `pending_acceptance`
--
ALTER TABLE `pending_acceptance`
ADD CONSTRAINT `fk_StudentAttendence_Student1` FOREIGN KEY (`fk_person`) REFERENCES `person` (`SSN`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limiti per la tabella `person`
--
ALTER TABLE `person`
ADD CONSTRAINT `person_ibfk_1` FOREIGN KEY (`cycle`) REFERENCES `cycle` (`cycle_number`),
ADD CONSTRAINT `fk_Person_Account` FOREIGN KEY (`Account_email`) REFERENCES `account` (`email`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_Person_Department1` FOREIGN KEY (`Department_abbreviation`) REFERENCES `department` (`abbreviation`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limiti per la tabella `phdclass`
--
ALTER TABLE `phdclass`
ADD CONSTRAINT `phdclass_ibfk_2` FOREIGN KEY (`FK_PhdCurriculum`) REFERENCES `phdcurriculum` (`idPhdCurriculum`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `phdclass_ibfk_1` FOREIGN KEY (`FK_PhdCycle`) REFERENCES `phdcycle` (`idPhdCycle`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `phdcurriculum`
--
ALTER TABLE `phdcurriculum`
ADD CONSTRAINT `phdcurriculum_ibfk_1` FOREIGN KEY (`FK_Professor`) REFERENCES `person` (`SSN`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `phdcycle`
--
ALTER TABLE `phdcycle`
ADD CONSTRAINT `phdcycle_ibfk_1` FOREIGN KEY (`FK_Professor`) REFERENCES `person` (`SSN`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `professor_phdcycle`
--
ALTER TABLE `professor_phdcycle`
ADD CONSTRAINT `professor_phdcycle_ibfk_2` FOREIGN KEY (`FK_PhdCycle`) REFERENCES `phdcycle` (`idPhdCycle`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `professor_phdcycle_ibfk_1` FOREIGN KEY (`FK_Professor`) REFERENCES `person` (`SSN`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `publication`
--
ALTER TABLE `publication`
ADD CONSTRAINT `publication_ibfk_1` FOREIGN KEY (`FK_Student`) REFERENCES `person` (`SSN`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `rejected_training_message`
--
ALTER TABLE `rejected_training_message`
ADD CONSTRAINT `rejected_training_message_ibfk_1` FOREIGN KEY (`fk_person`) REFERENCES `person` (`SSN`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `relatori_tesi`
--
ALTER TABLE `relatori_tesi`
ADD CONSTRAINT `relatori_tesi_ibfk_2` FOREIGN KEY (`ID_Docente`) REFERENCES `person` (`SSN`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `relatori_tesi_ibfk_1` FOREIGN KEY (`ID_Tesi`) REFERENCES `tesi` (`ID`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Limiti per la tabella `student_information`
--
ALTER TABLE `student_information`
ADD CONSTRAINT `student_information_ibfk_2` FOREIGN KEY (`fk_student_status`) REFERENCES `student_status` (`id_student_status`) ON UPDATE CASCADE,
ADD CONSTRAINT `student_information_ibfk_1` FOREIGN KEY (`SSN`) REFERENCES `person` (`SSN`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `tag_tesi`
--
ALTER TABLE `tag_tesi`
ADD CONSTRAINT `tag_tesi_ibfk_2` FOREIGN KEY (`ID_tag`) REFERENCES `tag` (`ID`) ON DELETE CASCADE ON UPDATE NO ACTION,
ADD CONSTRAINT `tag_tesi_ibfk_1` FOREIGN KEY (`ID_tesi`) REFERENCES `tesi` (`ID`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Limiti per la tabella `tesi`
--
ALTER TABLE `tesi`
ADD CONSTRAINT `tesi_ibfk_1` FOREIGN KEY (`ID_Studente`) REFERENCES `person` (`SSN`);

--
-- Limiti per la tabella `training_request`
--
ALTER TABLE `training_request`
ADD CONSTRAINT `training_request_ibfk_2` FOREIGN KEY (`fk_organization`) REFERENCES `organization` (`id_organization`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `fk_ClaimTraining_ClaimStatus1` FOREIGN KEY (`fk_training_status`) REFERENCES `training_status` (`id_training_status`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `training_request_ibfk_1` FOREIGN KEY (`fk_person`) REFERENCES `person` (`SSN`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;