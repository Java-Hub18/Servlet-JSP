-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2018 at 09:45 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.5.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hcs`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `added_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `password`, `email`, `added_date`) VALUES
(1, 'admin', '123', 'admin@gmail.com', '2018-03-28');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `pid` varchar(255) NOT NULL,
  `pname` varchar(255) NOT NULL,
  `did` varchar(255) NOT NULL,
  `dname` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `fees` int(11) NOT NULL,
  `appoint_date` varchar(255) NOT NULL,
  `appoint_time` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `doctor_comment` mediumtext NOT NULL,
  `appoint_date_time` varchar(255) NOT NULL,
  `added_date` varchar(255) NOT NULL,
  `flag` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `pid`, `pname`, `did`, `dname`, `department`, `fees`, `appoint_date`, `appoint_time`, `status`, `doctor_comment`, `appoint_date_time`, `added_date`, `flag`) VALUES
(1, 'PID-484', 'Dinesh Singh', 'DID-172', 'Ankita more', 'Cardiologist', 1000, '2018-03-29', '00:50', 'Confirmed', 'hi yes', '2018-03-29 00:50', '2018-03-28', 1),
(2, 'PID-484', 'Dinesh Singh', 'DID-515', 'Sohan P', 'Dentist', 500, '2018-03-30', '17:00', 'Confirmed', 'N.A', '2018-03-30 17:00', '2018-03-30', 0),
(3, 'PID-484', 'Dinesh Singh', 'DID-758', 'uuu1', 'Cardiologist', 1000, '2018-03-30', '20:00', 'Pending', 'N.A', '2018-03-30 20:00', '2018-03-30', 0),
(4, 'pid-104', 'Vishal', 'DID-172', 'Ankita more', 'Cardiologist', 1000, '2018-04-15', '18:00', 'Confirmed', 'Bye bro', '2018-04-15 18:00', '2018-04-15', 1),
(5, 'PID-104', 'Vishal', 'DID-399', 'Dharmesh D', 'Dentist', 500, '2018-04-15', '23:00', 'Confirmed', 'N.A', '2018-04-15 23:00', '2018-04-15', 1),
(6, 'pid-104', 'Vishal', 'DID-515', 'Sohan P', 'Dentist', 500, '2018-04-16', '08:00', 'Confirmed', 'N.A', '2018-04-16 08:00', '2018-04-15', 1),
(7, 'pid-104', 'Vishal', 'DID-135', 'Dinesh Singh', 'Neurology', 1550, '2018-04-16', '20:00', 'Confirmed', 'N.A', '2018-04-16 20:00', '2018-04-15', 0),
(8, 'pid-104', 'Vishal', 'DID-135', 'Dinesh Singh', 'Neurology', 1550, '2018-04-24', '08:00', 'Confirmed', 'N.A', '2018-04-24 08:00', '2018-04-15', 0);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `contact`, `subject`, `message`, `date`) VALUES
(1, 'dharmya', 'dharmeshmourya043@gmail.com', '65874564', 'tp', 'df', '2018-03-25'),
(2, 'mm', 'dharmeshmourya043@gmail.com', '85888788', 'gg', 'g', '2018-03-25'),
(4, 'tt', 'dharmeshmourya043@gmail.com', '8588878822', 'gg', 'knj', '2018-03-25'),
(5, 'dharmya', 'dharmeshmourya043@gmail.com0', '4524454555', 'tp', 'hi', '2018-03-25'),
(6, 'uu', 'dharmeshmourya043@gmail.com', '1020304050', 'tp', 'hi', '2018-03-25'),
(7, 'mm', 'dharmeshmourya043@gmail.com', '1201201222', 'tp', 'gh', '2018-03-25'),
(9, 'tt', 'dharmeshmourya043@gmail.com', '8588878822', 'gg', 'tt', '2018-04-13'),
(10, 'tt', 'dharmeshmourya043@gmail.com', '8588878822', 'gg', 'hi', '2018-04-13'),
(11, 'tt', 'dharmeshmourya043@gmail.com', '8588878822', 'gg', 'hi', '2018-04-13'),
(12, 'tt', 'dharmeshmourya043@gmail.com', '8588878822', 'hi', 'hi', '2018-04-13'),
(13, 'Vishal', 'vishal12@gmail.com', '8588878845', 'hi', 'hello', '2018-04-13');

-- --------------------------------------------------------

--
-- Table structure for table `dept`
--

CREATE TABLE `dept` (
  `deptid` int(11) NOT NULL,
  `deptName` varchar(100) DEFAULT NULL,
  `fees` varchar(255) NOT NULL,
  `added_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dept`
--

INSERT INTO `dept` (`deptid`, `deptName`, `fees`, `added_date`) VALUES
(1, 'Cardiologist', '1000', '2018-03-31'),
(2, 'Neurology', '1550', '2018-03-31'),
(3, 'Dentist', '500', '2018-03-31'),
(4, 'General Physician', '250', '2018-03-31');

-- --------------------------------------------------------

--
-- Table structure for table `diseasecost`
--

CREATE TABLE `diseasecost` (
  `id` int(11) NOT NULL,
  `Disease_Name` varchar(200) DEFAULT NULL,
  `Cost` varchar(255) NOT NULL,
  `added_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `diseasecost`
--

INSERT INTO `diseasecost` (`id`, `Disease_Name`, `Cost`, `added_date`) VALUES
(3, 'Ear, Nose and Throat Diseases', '1500', ''),
(4, 'Infectious Diseases', '650', ''),
(5, 'Cancer', '500000', ''),
(6, 'Other Diseases', '1000', ''),
(7, 'Heart Disease', '200000', ''),
(8, 'Private Diseases', '15000', ''),
(9, 'Normal Diseases', '1500', ''),
(10, 'Crohn''s & Colitis', '400', ''),
(11, 'Big Diseases', '100000', ''),
(12, 'Celiac Disease', '550', ''),
(13, 'Liver Disease', '100000', '');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `service` varchar(255) NOT NULL,
  `points` varchar(255) NOT NULL,
  `nature` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `feedback` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `service`, `points`, `nature`, `location`, `feedback`, `date`) VALUES
(1, 'Ankita more', 'Excellent', '2', 'Good', 'gb', 'bbh', '03-19-2018'),
(3, 'Ramesh Singh', 'Average', '2', 'Excellent', 'Thane', 'hi', '03-20-2018'),
(4, 'Ramesh Singh', 'Average', '3', 'Good', 'Thane', 'jkjk', '03-24-2018');

-- --------------------------------------------------------

--
-- Table structure for table `patient_bill`
--

CREATE TABLE `patient_bill` (
  `id` int(11) NOT NULL,
  `pid` varchar(100) DEFAULT NULL,
  `pname` varchar(100) DEFAULT NULL,
  `did` varchar(255) NOT NULL,
  `dname` varchar(255) DEFAULT NULL,
  `bill` varchar(255) DEFAULT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient_bill`
--

INSERT INTO `patient_bill` (`id`, `pid`, `pname`, `did`, `dname`, `bill`, `date`) VALUES
(1, 'PID-484', 'Dinesh Singh', ' DID-172 ', ' Ankita more ', ' 1000 ', '2018-03-30'),
(2, 'PID-104', 'Vishal', ' DID-172 ', ' Ankita more ', ' 1000 ', '2018-04-15'),
(3, 'pid-104', 'Vishal', ' DID-399 ', ' Dharmesh D ', ' 500 ', '2018-04-15'),
(4, 'pid-104', 'Vishal', ' DID-399 ', ' Dharmesh D ', ' 500 ', '2018-04-15'),
(5, 'pid-104', 'Vishal', ' DID-515 ', ' Sohan P ', ' 500 ', '2018-04-15');

-- --------------------------------------------------------

--
-- Table structure for table `queries`
--

CREATE TABLE `queries` (
  `id` int(11) NOT NULL,
  `pid` varchar(255) NOT NULL,
  `pname` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  `smoking` varchar(255) NOT NULL,
  `alcohlic` varchar(255) NOT NULL,
  `query` mediumtext NOT NULL,
  `department` varchar(255) NOT NULL,
  `did` varchar(255) NOT NULL,
  `dname` varchar(255) NOT NULL,
  `doctor_reply` mediumtext NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `queries`
--

INSERT INTO `queries` (`id`, `pid`, `pname`, `age`, `smoking`, `alcohlic`, `query`, `department`, `did`, `dname`, `doctor_reply`, `date`) VALUES
(3, 'PID-484', 'Dinesh Singh', '22', 'Yes', 'Yes', 'hi', 'Neurology', 'DID-135', 'Dinesh Singh', 'NA', '2018-03-30 00:21:25'),
(4, 'pid-104', 'Vishal', '22', 'Yes', 'Yes', 'hi', 'Cardiologist', 'DID-172', 'Ankita more', 'nice one', '2018-04-15 16:21:03'),
(5, 'PID-104', 'Vishal', '22', 'Yes', 'Yes', 'hello', 'Cardiologist', 'DID-172', 'Ankita more', 'NA', '2018-04-15 20:35:55');

-- --------------------------------------------------------

--
-- Table structure for table `symptoms`
--

CREATE TABLE `symptoms` (
  `id` int(11) NOT NULL,
  `age_group` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `symptom` varchar(255) NOT NULL,
  `disease` varchar(255) NOT NULL,
  `added_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `symptoms`
--

INSERT INTO `symptoms` (`id`, `age_group`, `gender`, `symptom`, `disease`, `added_date`) VALUES
(4, 'kid', 'male', 'Headache', 'Intracranial Hypotension', '2018-03-30'),
(5, 'kid', 'male', 'Headache', 'Thrombotic Thrombocytopenic Purpura', '2018-03-30'),
(6, 'kid', 'female', 'Headache', 'Leptospirosis', '2018-03-30'),
(7, 'kid', 'female', 'Headache', 'Paroxysmal Hemicrania', '2018-03-30'),
(8, 'kid', 'male', 'Headache', 'Reversible Cerebral Vasoconstriction Syndrome', '2018-03-30'),
(9, 'senior', 'female', 'Headache', 'Cerebral AV Malformations', '2018-03-30'),
(10, 'senior', 'female', 'Headache', 'Postural Orthostatic Tachycardia Syndrome', '2018-03-30'),
(11, 'senior', 'female', 'Headache', 'Sinus Headache', '2018-03-30'),
(12, 'adult', 'female', 'Headache', 'Sleep Apnea', '2018-03-30'),
(13, 'adult', 'female', 'Headache', 'Viral Meningoencephalitis   ', '2018-03-30'),
(14, 'young&adult', 'female', 'Headache', 'West Nile Encephalitis   ', '2018-03-30'),
(15, 'young&adult', 'male', 'Headache', 'Human Granulocytic Anaplasmosis', '2018-03-30'),
(16, 'junior&adole', 'male', 'Headache', 'Meningococcal Meningitis   ', '2018-03-30'),
(17, 'junior&adole', 'female', 'Headache', 'Tularemia   ', '2018-03-30'),
(18, 'junior&adole', 'male', 'Headache', 'Stroke   ', '2018-03-30'),
(19, 'junior&adole', 'male', 'Headache', 'Tuberculous Meningitis', '2018-03-30'),
(20, 'senior', 'female', 'Head pain', 'Migraine', '2018-03-30'),
(21, 'senior', 'female', 'Head pain', 'Sinusitis', '2018-03-30'),
(22, 'senior', 'female', 'Head pain', 'Intracranial Hemorrhage   ', '2018-03-30'),
(23, 'senior', 'female', 'Head pain', 'Medication Overuse Headache', '2018-03-30'),
(24, 'senior', 'female', 'Head pain', 'Cluster Headache', '2018-03-30'),
(25, 'senior', 'female', 'Head pain', 'Cough Headache Syndrome', '2018-03-30'),
(26, 'senior', 'female', 'Head pain', 'Intracranial Headache', '2018-03-30'),
(27, 'adult', 'male', 'Head pain', 'Adrenal Cancer', '2018-03-30'),
(28, 'adult', 'male', 'Head pain', 'Brain Tumors   ', '2018-03-30'),
(29, 'adult', 'male', 'Head pain', 'Pituitary Cancer', '2018-03-30'),
(30, 'adult', 'male', 'Head pain', 'Relapsing Fever', '2018-03-30'),
(31, 'adult', 'male', 'Head pain', 'Rocky Mountain Spotted Fever   ', '2018-03-30'),
(32, 'adult', 'female', 'Head pain', 'Systemic Hypertension Disorders', '2018-03-30'),
(33, 'adult', 'female', 'Head pain', 'Lyme Disease', '2018-03-30'),
(34, 'adult', 'female', 'Head pain', 'Chiari Malformation', '2018-03-30'),
(35, 'senior', 'female', 'Head pain', 'Brain Abscess   ', '2018-03-30'),
(36, 'senior', 'female', 'Head pain', 'Stress Headache', '2018-03-30'),
(37, 'young&adult', 'female', 'Head pain', 'Intracranial Hypotension', '2018-03-30'),
(38, 'young&adult', 'female', 'Head pain', 'Thrombotic Thrombocytopenic Purpura', '2018-03-30'),
(39, 'young&adult', 'female', 'Head pain', 'Leptospirosis', '2018-03-30'),
(40, 'young&adult', 'female', 'Head pain', 'Paroxysmal Hemicrania', '2018-03-30'),
(41, 'young&adult', 'female', 'Head pain', 'Reversible Cerebral Vasoconstriction Syndrome', '2018-03-30'),
(42, 'young&adult', 'female', 'Head pain', 'Cerebral AV Malformations', '2018-03-30'),
(43, 'young&adult', 'female', 'Head pain', 'Postural Orthostatic Tachycardia Syndrome', '2018-03-30'),
(44, 'young&adult', 'female', 'Head pain', 'Sinus Headache', '2018-03-30'),
(45, 'senior', 'female', 'Head pain', 'Sleep Apnea', '2018-03-30'),
(46, 'senior', 'female', 'Head pain', 'Viral Meningoencephalitis   ', '2018-03-30'),
(47, 'senior', 'female', 'Head pain', 'West Nile Encephalitis   ', '2018-03-30'),
(48, 'senior', 'female', 'Head pain', 'Human Granulocytic Anaplasmosis', '2018-03-30'),
(49, 'senior', 'female', 'Head pain', 'Meningococcal Meningitis   ', '2018-03-30'),
(50, 'senior', 'female', 'Head pain', 'Tularemia   ', '2018-03-30'),
(51, 'senior', 'female', 'Head pain', 'Stroke   ', '2018-03-30'),
(52, 'senior', 'female', 'Head pain', 'Tuberculous Meningitis', '2018-03-30'),
(53, 'junior&adole', 'female', 'Headache on one side', 'Migraine', '2018-03-30'),
(54, 'junior&adole', 'female', 'Headache on one side', 'Sinusitis', '2018-03-30'),
(55, 'junior&adole', 'female', 'Headache on one side', 'Intracranial Hemorrhage   ', '2018-03-30'),
(56, 'junior&adole', 'female', 'Headache on one side', 'Medication Overuse Headache', '2018-03-30'),
(57, 'junior&adole', 'female', 'Headache on one side', 'Cluster Headache', '2018-03-30'),
(58, 'senior', 'female', 'Headache on one side', 'Cough Headache Syndrome', '2018-03-30'),
(59, 'senior', 'female', 'Headache on one side', 'Intracranial Headache', '2018-03-30'),
(60, 'senior', 'female', 'Headache on one side', 'Adrenal Cancer', '2018-03-30'),
(61, 'senior', 'female', 'Headache on one side', 'Brain Tumors   ', '2018-03-30'),
(62, 'senior', 'female', 'Headache on one side', 'Pituitary Cancer', '2018-03-30'),
(63, 'senior', 'female', 'Headache on one side', 'Relapsing Fever', '2018-03-30'),
(64, 'senior', 'female', 'Headache on one side', 'Rocky Mountain Spotted Fever   ', '2018-03-30'),
(65, 'kid', 'male', 'Headache on one side', 'Systemic Hypertension Disorders', '2018-03-30'),
(66, 'kid', 'male', 'Headache on one side', 'Lyme Disease', '2018-03-30'),
(67, 'kid', 'male', 'Headache on one side', 'Chiari Malformation', '2018-03-30'),
(68, 'kid', 'female', 'Headache on one side', 'Brain Abscess   ', '2018-03-30'),
(69, 'kid', 'female', 'Headache on one side', 'Stress Headache', '2018-03-30'),
(70, 'young&adult', 'male', 'Headache on one side', 'Intracranial Hypotension', '2018-03-30'),
(71, 'young&adult', 'male', 'Headache on one side', 'Thrombotic Thrombocytopenic Purpura', '2018-03-30'),
(72, 'young&adult', 'male', 'Headache on one side', 'Leptospirosis', '2018-03-30'),
(73, 'young&adult', 'male', 'Headache on one side', 'Paroxysmal Hemicrania', '2018-03-30'),
(74, 'young&adult', 'male', 'Headache on one side', 'Reversible Cerebral Vasoconstriction Syndrome', '2018-03-30'),
(75, 'young&adult', 'male', 'Headache on one side', 'Cerebral AV Malformations', '2018-03-30'),
(76, 'young&adult', 'male', 'Headache on one side', 'Postural Orthostatic Tachycardia Syndrome', '2018-03-30'),
(77, 'young&adult', 'female', 'Headache on one side', 'Sinus Headache', '2018-03-30'),
(78, 'young&adult', 'female', 'Headache on one side', 'Sleep Apnea', '2018-03-30'),
(79, 'young&adult', 'female', 'Headache on one side', 'Viral Meningoencephalitis   ', '2018-03-30'),
(80, 'young&adult', 'female', 'Headache on one side', 'West Nile Encephalitis   ', '2018-03-30'),
(81, 'young&adult', 'female', 'Headache on one side', 'Human Granulocytic Anaplasmosis', '2018-03-30'),
(82, 'young&adult', 'female', 'Headache on one side', 'Meningococcal Meningitis   ', '2018-03-30'),
(83, 'young&adult', 'female', 'Headache on one side', 'Tularemia   ', '2018-03-30'),
(84, 'young&adult', 'female', 'Headache on one side', 'Stroke   ', '2018-03-30'),
(85, 'young&adult', 'female', 'Headache on one side', 'Tuberculous Meningitis', '2018-03-30'),
(86, 'young&adult', 'female', 'Abnormal bleeding', 'Hemophilia A', '2018-03-30'),
(87, 'young&adult', 'female', 'Abnormal bleeding', 'Portal Hypertension / Varices', '2018-03-30'),
(88, 'young&adult', 'female', 'Abnormal bleeding', 'Drug Induced Thrombocytopenia', '2018-03-30'),
(89, 'young&adult', 'female', 'Abnormal bleeding', 'Thrombotic Thrombocytopenic Purpura', '2018-03-30'),
(90, 'young&adult', 'female', 'Abnormal bleeding', 'Glanzmann Thrombasthenia', '2018-03-30'),
(91, 'young&adult', 'female', 'Abnormal bleeding', 'Leukemia', '2018-03-30'),
(92, 'young&adult', 'female', 'Abnormal bleeding', 'Dyskeratosis Congenita', '2018-03-30'),
(93, 'young&adult', 'male', 'Abnormal bleeding', 'Benign Small Intestine Neoplasms', '2018-03-30'),
(94, 'young&adult', 'male', 'Abnormal bleeding', 'Hemorrhage of the Liver ', '2018-03-30'),
(95, 'young&adult', 'male', 'Abnormal bleeding', 'Noonan Syndrome', '2018-03-30'),
(96, 'young&adult', 'male', 'Abnormal bleeding', 'Renal Failure', '2018-03-30'),
(97, 'young&adult', 'male', 'Abnormal bleeding', 'Vitamin K Deficiency', '2018-03-30'),
(98, 'young&adult', 'male', 'Abnormal bleeding', 'Kidney Cancer', '2018-03-30'),
(99, 'kid', 'female', 'Abnormal bleeding', 'Aplastic Anemia ', '2018-03-30'),
(100, 'kid', 'female', 'Abnormal bleeding', 'Von Willebrand Disease', '2018-03-30'),
(101, 'junior&adole', 'female', 'Abnormal bleeding', 'Plague', '2018-03-30'),
(102, 'junior&adole', 'female', 'Abnormal bleeding', 'Caroli''s Syndrome', '2018-03-30'),
(103, 'junior&adole', 'female', 'Abnormal bleeding', 'Celiac Disease', '2018-03-30'),
(104, 'junior&adole', 'female', 'Abnormal bleeding', 'Disseminated intravascular coagulation', '2018-03-30'),
(105, 'junior&adole', 'male', 'Abnormal bleeding', 'Idiopathic thrombocytopenic purpura', '2018-03-30'),
(106, 'junior&adole', 'male', 'Abnormal bleeding', 'Neurocutaneous Syndromes', '2018-03-30'),
(107, 'junior&adole', 'male', 'Abnormal bleeding', 'Actinomycoses Infection', '2018-03-30'),
(108, 'junior&adole', 'male', 'Abnormal bleeding', 'Antiphospholipid Syndrome', '2018-03-30'),
(109, 'kid', 'male', 'Abnormal bleeding', 'Pulmonary Insufficiency', '2018-03-30'),
(110, 'kid', 'male', 'Abnormal bleeding', 'Whipple Disease', '2018-03-30'),
(111, 'kid', 'male', 'Abnormal bleeding', 'Urinary Tract Trauma ', '2018-03-30'),
(112, 'kid', 'male', 'Abnormal bleeding', 'Alpha-1-Antitrypsin Deficiency', '2018-03-30'),
(113, 'kid', 'male', 'Abnormal bleeding', 'Malignant Atrophic Papulosis', '2018-03-30'),
(114, '', '', 'Airpassage', 'Food Allergy', '2018-03-30'),
(115, '', '', 'Airpassage', 'Atopic Eczema', '2018-03-30'),
(116, '', '', 'Airpassage', 'Insect Sting Allergy', '2018-03-30'),
(117, '', '', 'Airpassage', 'Hives   ', '2018-03-30'),
(118, '', '', 'Airpassage', 'Conjunctivitis', '2018-03-30'),
(119, '', '', 'Airpassage', 'Drug-Induced Liver Disease', '2018-03-30'),
(120, '', '', 'Airpassage', 'Selective IgA Deficiency', '2018-03-30'),
(121, '', '', 'Airpassage', 'Insect Stings', '2018-03-30'),
(122, '', '', 'Airpassage', 'Scarlet Fever', '2018-03-30'),
(123, '', '', 'Airpassage', 'Bed Bugs', '2018-03-30'),
(124, '', '', 'Airpassage', 'Interstitial Nephritis', '2018-03-30'),
(125, '', '', 'Airpassage', 'Round Worm', '2018-03-30'),
(126, '', '', 'Airpassage', 'Lactose Intolerance', '2018-03-30'),
(127, '', '', 'Airpassage', 'Central Nervous System Vasculitis', '2018-03-30'),
(128, '', '', 'Airpassage', 'Hot Tub Lung', '2018-03-30'),
(129, '', '', 'Airpassage', 'Poison Ivy', '2018-03-30'),
(130, '', '', 'Airpassage', 'Renal Failure', '2018-03-30'),
(131, '', '', 'Airpassage', 'Steven-Johnson Syndrome   ', '2018-03-30'),
(132, '', '', 'Airpassage', 'Strongyloidiasis', '2018-03-30'),
(133, '', '', 'Airpassage', 'Harmful Algal Blooms (HABs)', '2018-03-30'),
(134, '', '', 'Airpassage', 'Wilson''s Disease', '2018-03-30'),
(135, '', '', 'Airpassage', 'Hay Fever', '2018-03-30'),
(136, '', '', 'Airpassage', 'Asthma   ', '2018-03-30'),
(137, '', '', 'Airpassage', 'Serum Sickness', '2018-03-30'),
(138, '', '', 'Airpassage', 'Aspergillosis', '2018-03-30'),
(139, '', '', 'Airpassage', 'Scorpion Stings', '2018-03-30'),
(140, '', '', 'Airpassage', 'Churg-Strauss Syndrome', '2018-03-30'),
(141, '', '', 'Airpassage', 'Hypersensitivity Pneumonitis', '2018-03-30'),
(142, '', '', 'Airpassage', 'Mucormycosis   ', '2018-03-30'),
(143, '', '', 'Airpassage', 'Intersex', '2018-03-30'),
(144, '', '', 'Airpassage', 'Cutaneous Vasculitis', '2018-03-30'),
(145, '', '', 'Allergy', 'Food Allergy', '2018-03-30'),
(146, '', '', 'Allergy', 'Atopic Eczema', '2018-03-30'),
(147, '', '', 'Allergy', 'Insect Sting Allergy', '2018-03-30'),
(148, '', '', 'Allergy', 'Hives   ', '2018-03-30'),
(149, '', '', 'Allergy', 'Conjunctivitis', '2018-03-30'),
(150, '', '', 'Allergy', 'Drug-Induced Liver Disease', '2018-03-30'),
(151, '', '', 'Allergy', 'Selective IgA Deficiency', '2018-03-30'),
(152, '', '', 'Allergy', 'Insect Stings', '2018-03-30'),
(153, '', '', 'Allergy', 'Scarlet Fever', '2018-03-30'),
(154, '', '', 'Allergy', 'Bed Bugs', '2018-03-30'),
(155, '', '', 'Allergy', 'Interstitial Nephritis', '2018-03-30'),
(156, '', '', 'Allergy', 'Round Worm', '2018-03-30'),
(157, '', '', 'Allergy', 'Lactose Intolerance', '2018-03-30'),
(158, '', '', 'Allergy', 'Central Nervous System Vasculitis', '2018-03-30'),
(159, '', '', 'Allergy', 'Hot Tub Lung', '2018-03-30'),
(160, '', '', 'Allergy', 'Poison Ivy', '2018-03-30'),
(161, '', '', 'Allergy', 'Renal Failure', '2018-03-30'),
(162, '', '', 'Allergy', 'Steven-Johnson Syndrome   ', '2018-03-30'),
(163, '', '', 'Allergy', 'Strongyloidiasis', '2018-03-30'),
(164, '', '', 'Allergy', 'Harmful Algal Blooms (HABs)', '2018-03-30'),
(165, '', '', 'Allergy', 'Wilson''s Disease', '2018-03-30'),
(166, '', '', 'Allergy', 'Hay Fever', '2018-03-30'),
(167, '', '', 'Allergy', 'Asthma   ', '2018-03-30'),
(168, '', '', 'Allergy', 'Serum Sickness', '2018-03-30'),
(169, '', '', 'Allergy', 'Aspergillosis', '2018-03-30'),
(170, '', '', 'Allergy', 'Scorpion Stings', '2018-03-30'),
(171, '', '', 'Allergy', 'Churg-Strauss Syndrome', '2018-03-30'),
(172, '', '', 'Allergy', 'Hypersensitivity Pneumonitis', '2018-03-30'),
(173, '', '', 'Allergy', 'Mucormycosis   ', '2018-03-30'),
(174, '', '', 'Allergy', 'Intersex', '2018-03-30'),
(175, '', '', 'Allergy', 'Cutaneous Vasculitis', '2018-03-30'),
(176, '', '', 'Altered respiration rate', 'Nonketotic Hyperosmolar Coma   ', '2018-03-30'),
(177, '', '', 'Altered respiration rate', 'Measles', '2018-03-30'),
(178, '', '', 'Altered respiration rate', 'Asthma   ', '2018-03-30'),
(179, '', '', 'Altered respiration rate', 'Hypovolemic Shock   ', '2018-03-30'),
(180, '', '', 'Altered respiration rate', 'Bacterial Pneumonia   ', '2018-03-30'),
(181, '', '', 'Altered respiration rate', 'Diabetic Hypoglycemia   ', '2018-03-30'),
(182, '', '', 'Altered respiration rate', 'Elevated Intracranial Pressure   ', '2018-03-30'),
(183, '', '', 'Altered respiration rate', 'Sepsis and Shock   ', '2018-03-30'),
(184, '', '', 'Altered respiration rate', 'Cardiogenic Shock   ', '2018-03-30'),
(185, '', '', 'Altered respiration rate', 'Pulmonary Embolism   ', '2018-03-30'),
(186, '', '', 'Altered respiration rate', 'Hereditary Motor-Sensory Neuropathies', '2018-03-30'),
(187, '', '', 'Altered respiration rate', 'Aortic Aneurysm   ', '2018-03-30'),
(188, '', '', 'Altered respiration rate', 'Emphysema', '2018-03-30'),
(189, '', '', 'Altered respiration rate', 'Epilepsy   ', '2018-03-30'),
(190, '', '', 'Altered respiration rate', 'Substance Abuse', '2018-03-30'),
(191, '', '', 'Altered respiration rate', 'Dengue Fever', '2018-03-30'),
(192, '', '', 'Altered respiration rate', 'Joubert''s Syndrome', '2018-03-30'),
(193, '', '', 'Altered respiration rate', 'Pericardial Effusion   ', '2018-03-30'),
(194, '', '', 'Altered respiration rate', 'Iron Deficiency Anemia', '2018-03-30'),
(195, '', '', 'Altered respiration rate', 'Left-to-Right Shunt Lesions', '2018-03-30'),
(196, '', '', 'Altered respiration rate', 'Respiratory Failure   ', '2018-03-30'),
(197, '', '', 'Altered respiration rate', 'Diverticular Diseases of the Colon', '2018-03-30'),
(198, '', '', 'Altered respiration rate', 'Near Drowning   ', '2018-03-30'),
(199, '', '', 'Altered respiration rate', 'Brain Tumors   ', '2018-03-30'),
(200, '', '', 'Altered respiration rate', 'Conjugated Hyperbilirubinemia', '2018-03-30'),
(201, '', '', 'Altered respiration rate', 'Diabetic Nephropathy', '2018-03-30'),
(202, '', '', 'Altered respiration rate', 'HIV/AIDS', '2018-03-30'),
(203, '', '', 'Altered respiration rate', 'Meningococcal Meningitis   ', '2018-03-30'),
(204, '', '', 'Altered respiration rate', 'Solar Keratosis', '2018-03-30'),
(205, '', '', 'Altered respiration rate', 'Propoxyphene Toxicity   ', '2018-03-30'),
(206, '', '', 'Altered respiration rate', 'Salicylates Toxicity   ', '2018-03-30'),
(207, '', '', 'Altered respiration rate', 'Scorpion Stings', '2018-03-30'),
(208, '', '', 'Altered respiration rate', 'Salmonella Infections', '2018-03-30'),
(209, '', '', 'Altered respiration rate', 'Polyarteritis Nodosa', '2018-03-30'),
(210, '', '', 'Altered respiration rate', 'Rheumatic Fever', '2018-03-30'),
(211, '', '', 'Altered respiration rate', 'Ulcerative Colitis', '2018-03-30'),
(212, '', '', 'Altered respiration rate', 'Dihydropyrimidine Dehydrogenase Deficiency', '2018-03-30'),
(213, '', '', 'Altered respiration rate', 'Hemolysis due to Trauma', '2018-03-30'),
(214, '', '', 'Blurred Vision', 'Glaucoma', '2018-03-30'),
(215, '', '', 'Blurred Vision', 'Pancreatic Cancer', '2018-03-30'),
(216, '', '', 'Blurred Vision', 'Brain Abscess   ', '2018-03-30'),
(217, '', '', 'Blurred Vision', 'Diabetic Retinopathy', '2018-03-30'),
(218, '', '', 'Blurred Vision', 'Type 1 Diabetes   ', '2018-03-30'),
(219, '', '', 'Blurred Vision', 'Uveitis   ', '2018-03-30'),
(220, '', '', 'Blurred Vision', 'Sjogren''s Syndrome', '2018-03-30'),
(221, '', '', 'Blurred Vision', 'Traumatic Brain Injury   ', '2018-03-30'),
(222, '', '', 'Blurred Vision', 'Acute Retinal Necrosis   ', '2018-03-30'),
(223, '', '', 'Blurred Vision', 'Cerebral AV Malformations', '2018-03-30'),
(224, '', '', 'Blurred Vision', 'Eye Cancer', '2018-03-30'),
(225, '', '', 'Blurred Vision', 'Eye Strain', '2018-03-30'),
(226, '', '', 'Blurred Vision', 'Keratitis and Corneal Ulcers   ', '2018-03-30'),
(227, '', '', 'Blurred Vision', 'Lyme Disease', '2018-03-30'),
(228, '', '', 'Blurred Vision', 'Optic Neuropathy   ', '2018-03-30'),
(229, '', '', 'Blurred Vision', 'Transient Ischemic Attack   ', '2018-03-30'),
(230, '', '', 'Blurred Vision', 'Stroke   ', '2018-03-30'),
(231, '', '', 'Blurred Vision', 'Herpes Simplex Eye Infection', '2018-03-30'),
(232, '', '', 'Blurred Vision', 'Hypotensive Disorders', '2018-03-30'),
(233, '', '', 'Blurred Vision', 'Iritis', '2018-03-30'),
(234, '', '', 'Blurred Vision', 'Keratoconus', '2018-03-30'),
(235, '', '', 'Blurred Vision', 'Leptospirosis', '2018-03-30'),
(236, '', '', 'Blurred Vision', 'PTSD', '2018-03-30'),
(237, '', '', 'Blurred Vision', 'Polycythemia Disorders', '2018-03-30'),
(238, '', '', 'Blurred Vision', 'Toxoplasmosis', '2018-03-30'),
(239, '', '', 'Blurred Vision', 'Type 2 Diabetes', '2018-03-30'),
(240, '', '', 'Blurred Vision', 'Benzodiazepines Toxicity   ', '2018-03-30'),
(241, '', '', 'Blurred Vision', 'Snakebite   ', '2018-03-30'),
(242, '', '', 'Blurred Vision', 'Carbon Disulphide Toxicity   ', '2018-03-30'),
(243, '', '', 'Blurred Vision', 'Environmental / Work Exposure   ', '2018-03-30'),
(244, '', '', 'Blurred Vision', 'Hydrogen Sulphide Toxicity   ', '2018-03-30'),
(245, '', '', 'Blurred Vision', 'Methylbromide Toxicity   ', '2018-03-30'),
(246, '', '', 'Blurred Vision', 'Multiple Sclerosis', '2018-03-30'),
(247, '', '', 'Blurred Vision', 'Chiari Malformation', '2018-03-30'),
(248, '', '', 'Blurred Vision', 'Benzene Toxicity   ', '2018-03-30'),
(249, '', '', 'Blurred Vision', 'Eye Trauma   ', '2018-03-30'),
(250, '', '', 'Blurred Vision', 'Gasoline Exposure   ', '2018-03-30'),
(251, '', '', 'Blurred Vision', 'Methanol Toxicity   ', '2018-03-30'),
(252, '', '', 'Blurred Vision', 'NSAID''s Toxicity   ', '2018-03-30'),
(253, '', '', 'Blurred Vision', 'Salicylates Toxicity   ', '2018-03-30'),
(254, '', '', 'Burning feeling', 'Erythromelalgia', '2018-03-30'),
(255, '', '', 'Burning feeling', 'Eye Trauma   ', '2018-03-30'),
(256, '', '', 'Burning feeling', 'Prostatitis    ', '2018-03-30'),
(257, '', '', 'Burning feeling', 'Epididymitis   ', '2018-03-30'),
(258, '', '', 'Burning feeling', 'Ammonia Toxicity   ', '2018-03-30'),
(259, '', '', 'Burning feeling', 'Burns to the Mouth and Trachea   ', '2018-03-30'),
(260, '', '', 'Burning feeling', 'Abuse and Neglect   ', '2018-03-30'),
(261, '', '', 'Burning feeling', 'Gonorrhea', '2018-03-30'),
(262, '', '', 'Burning feeling', 'Male Pelvic Pain Disorder', '2018-03-30'),
(263, '', '', 'Burning feeling', 'Trichomoniasis', '2018-03-30'),
(264, '', '', 'Burning feeling', 'Chlorine Overdose   ', '2018-03-30'),
(265, '', '', 'Burning feeling', 'Detergents Toxicity   ', '2018-03-30'),
(266, '', '', 'Burning feeling', 'Radioactive Isotopes   ', '2018-03-30'),
(267, '', '', 'Burning feeling', 'Meralgia paraesthetica', '2018-03-30'),
(268, '', '', 'Burning feeling', 'Sciatica', '2018-03-30'),
(269, '', '', 'Burning feeling', 'Tarsal Tunnel Syndrome', '2018-03-30'),
(270, '', '', 'Burning feeling', 'Gastroesophageal Reflux', '2018-03-30'),
(271, '', '', 'Burning feeling', 'Bladder Cancer', '2018-03-30'),
(272, '', '', 'Burning feeling', 'Bleach Ingestion   ', '2018-03-30'),
(273, '', '', 'Burning feeling', 'Chlamydia Trachomatis', '2018-03-30'),
(274, '', '', 'Burning feeling', 'Complex Regional Pain Syndrome', '2018-03-30'),
(275, '', '', 'Burning feeling', 'Cystitis', '2018-03-30'),
(276, '', '', 'Burning feeling', 'Smoke Inhalation   ', '2018-03-30'),
(277, '', '', 'Burning feeling', 'Prostatic Abscess   ', '2018-03-30'),
(278, '', '', 'Burning feeling', 'Thrush', '2018-03-30'),
(279, '', '', 'Burning feeling', 'Blepharitis', '2018-03-30'),
(280, '', '', 'Burning feeling', 'Non Ulcer Dyspepsia', '2018-03-30'),
(281, '', '', 'Burning feeling', 'Pemphigus', '2018-03-30'),
(282, '', '', 'Burning feeling', 'Refraction Abnormalities', '2018-03-30'),
(283, '', '', 'Burning feeling', 'Caustics Toxicity   ', '2018-03-30'),
(284, '', '', 'Burning feeling', 'Plant Poisoning   ', '2018-03-30'),
(285, '', '', 'Burning feeling', 'Sjogren''s Syndrome', '2018-03-30'),
(286, '', '', 'Burning feeling', 'Environmental / Work Exposure   ', '2018-03-30'),
(287, '', '', 'Burning feeling', 'Peptic Ulcer', '2018-03-30'),
(288, '', '', 'Burning feeling', 'Acid Ingestion   ', '2018-03-30'),
(289, '', '', 'Burning feeling', 'Centipede and Millipede Bites', '2018-03-30'),
(290, '', '', 'Burning feeling', 'Hypertrophic Osteoarthropathy', '2018-03-30'),
(291, '', '', 'Chills', 'Relapsing Fever', '2018-03-30'),
(292, '', '', 'Chills', 'Tularemia   ', '2018-03-30'),
(293, '', '', 'Chills', 'Human Granulocytic Anaplasmosis', '2018-03-30'),
(294, '', '', 'Chills', 'Pyelonephritis   ', '2018-03-30'),
(295, '', '', 'Chills', 'MRSA', '2018-03-30'),
(296, '', '', 'Chills', 'Sepsis and Shock   ', '2018-03-30'),
(297, '', '', 'Chills', 'Lung Abscess   ', '2018-03-30'),
(298, '', '', 'Chills', 'Food Poisoning   ', '2018-03-30'),
(299, '', '', 'Chills', 'Influenza', '2018-03-30'),
(300, '', '', 'Chills', 'Osteomyelitis and Septic Arthritis   ', '2018-03-30'),
(301, '', '', 'Chills', 'Babesiosis', '2018-03-30'),
(302, '', '', 'Chills', 'Brucellosis', '2018-03-30'),
(303, '', '', 'Chills', 'Histoplasmosis', '2018-03-30'),
(304, '', '', 'Chills', 'Hypothermia   ', '2018-03-30'),
(305, '', '', 'Chills', 'Leptospirosis', '2018-03-30'),
(306, '', '', 'Chills', 'Prostatitis   ', '2018-03-30'),
(307, '', '', 'Chills', 'Viral Pneumonia', '2018-03-30'),
(308, '', '', 'Chills', 'Rat-Bite Fever', '2018-03-30'),
(309, '', '', 'Chills', 'Rhabdomyolysis', '2018-03-30'),
(310, '', '', 'Chills', 'Endocarditis   ', '2018-03-30'),
(311, '', '', 'Chills', 'Gallstones', '2018-03-30'),
(312, '', '', 'Chills', 'Lyme Disease', '2018-03-30'),
(313, '', '', 'Chills', 'Pancreatic Cancer', '2018-03-30'),
(314, '', '', 'Chills', 'Pleurisy', '2018-03-30'),
(315, '', '', 'Chills', 'Q Fever', '2018-03-30'),
(316, '', '', 'Chills', 'Quinsy   ', '2018-03-30'),
(317, '', '', 'Chills', 'Cholecystitis   ', '2018-03-30'),
(318, '', '', 'Chills', 'Diphtheria', '2018-03-30'),
(319, '', '', 'Chills', 'Heavy Metal Intoxication   ', '2018-03-30'),
(320, '', '', 'Chills', 'Kikuchi Disease', '2018-03-30'),
(321, '', '', 'Chills', 'Meningococcal Meningitis   ', '2018-03-30'),
(322, '', '', 'Chills', 'Plague', '2018-03-30'),
(323, '', '', 'Chills', 'Round Worm', '2018-03-30'),
(324, '', '', 'Chills', 'Gonorrhea', '2018-03-30'),
(325, '', '', 'Chills', 'Hypersensitivity Pneumonitis', '2018-03-30'),
(326, '', '', 'Cold', 'Autoimmune Hemolytic Anemias', '2018-03-30'),
(327, '', '', 'Cold', 'Leg Ischemia   ', '2018-03-30'),
(328, '', '', 'Cold', 'Hives   ', '2018-03-30'),
(329, '', '', 'Cold', 'Common Cold', '2018-03-30'),
(330, '', '', 'Cold', 'Tooth Abscess   ', '2018-03-30'),
(331, '', '', 'Cold', 'Familial Cold Autoinflammatory Syndrome (FCAS)', '2018-03-30'),
(332, '', '', 'Cold', 'Arterial Thrombosis   ', '2018-03-30'),
(333, '', '', 'Cold', 'Sinusitis', '2018-03-30'),
(334, '', '', 'Cold', 'Meningococcal Meningitis   ', '2018-03-30'),
(335, '', '', 'Cold', 'Hypothermia   ', '2018-03-30'),
(336, '', '', 'Cold', 'Periodic Paralysis', '2018-03-30'),
(337, '', '', 'Cold', 'Rhinoviral Infection', '2018-03-30'),
(338, '', '', 'Cold', 'Thoracic Outlet Syndrome', '2018-03-30'),
(339, '', '', 'Cold', 'Testicular Torsion   ', '2018-03-30'),
(340, '', '', 'Cold', 'Asthma   ', '2018-03-30'),
(341, '', '', 'Cold', 'Creutzfeldt-Jakob Disease', '2018-03-30'),
(342, '', '', 'Cold', 'Job''s Syndrome', '2018-03-30'),
(343, '', '', 'Cold', 'Livedoid Vasculitis', '2018-03-30'),
(344, '', '', 'Cold', 'Secondary Adrenal Insufficiency', '2018-03-30'),
(345, '', '', 'Cold', 'Hashimoto''s Thyroiditis', '2018-03-30'),
(346, '', '', 'Cold', 'Hypothenar Hammer Syndrome', '2018-03-30'),
(347, '', '', 'Cold', 'Hypothyroidism', '2018-03-30'),
(348, '', '', 'Cold', 'Iron Deficiency Anemia', '2018-03-30'),
(349, '', '', 'Cold', 'Chilblain', '2018-03-30'),
(350, '', '', 'Cold', 'Cold-Induced Fat Necrosis / Panniculitis', '2018-03-30'),
(351, '', '', 'Cold', 'Raynaud''s Disease', '2018-03-30'),
(352, '', '', 'Cold', 'Devic''s Disease', '2018-03-30'),
(353, '', '', 'Cold', 'Frostbite', '2018-03-30'),
(354, '', '', 'Cold', 'Spinal Infections   ', '2018-03-30'),
(355, '', '', 'Cold', 'Thromboangiitis Obliterans', '2018-03-30'),
(356, '', '', 'Cold', 'Cryoglobulinemia', '2018-03-30'),
(357, '', '', 'Cold', 'Systemic Sclerosis', '2018-03-30'),
(358, '', '', 'Cold', 'Immersion Foot', '2018-03-30'),
(359, '', '', 'Cold', 'Coarctation of the Aorta', '2018-03-30'),
(360, '', '', 'Cold', 'Frostnip', '2018-03-30'),
(361, '', '', 'Cold', 'Hypovolemic Shock ', '2018-03-30'),
(362, '', '', 'Cough', 'Influenza', '2018-03-30'),
(363, '', '', 'Cough', 'Lung Abscess   ', '2018-03-30'),
(364, '', '', 'Cough', 'Lung Cancer', '2018-03-30'),
(365, '', '', 'Cough', 'Atypical Pneumonia   ', '2018-03-30'),
(366, '', '', 'Cough', 'Asthma   ', '2018-03-30'),
(367, '', '', 'Cough', 'Cough Headache Syndrome', '2018-03-30'),
(368, '', '', 'Cough', 'Whooping Cough', '2018-03-30'),
(369, '', '', 'Cough', 'Bronchiectasis', '2018-03-30'),
(370, '', '', 'Cough', 'Pulmonary Embolism   ', '2018-03-30'),
(371, '', '', 'Cough', 'Aspergillosis', '2018-03-30'),
(372, '', '', 'Cough', 'Histoplasmosis', '2018-03-30'),
(373, '', '', 'Cough', 'Lung Tuberculosis', '2018-03-30'),
(374, '', '', 'Cough', 'Bronchitis', '2018-03-30'),
(375, '', '', 'Cough', 'Common Cold', '2018-03-30'),
(376, '', '', 'Cough', 'Esophageal Cancer', '2018-03-30'),
(377, '', '', 'Cough', 'Human Metapneumovirus', '2018-03-30'),
(378, '', '', 'Cough', 'Idiopathic Pulmonary Fibrosis', '2018-03-30'),
(379, '', '', 'Cough', 'Laryngeal Sensory Neuropathy', '2018-03-30'),
(380, '', '', 'Cough', 'Relapsing Fever', '2018-03-30'),
(381, '', '', 'Cough', 'Respiratory Papillomatosis', '2018-03-30'),
(382, '', '', 'Cough', 'Thymic Cancer', '2018-03-30'),
(383, '', '', 'Cough', 'Chiari Malformation', '2018-03-30'),
(384, '', '', 'Cough', 'Measles', '2018-03-30'),
(385, '', '', 'Cough', 'Tularemia   ', '2018-03-30'),
(386, '', '', 'Cough', 'Aspiration Syndromes   ', '2018-03-30'),
(387, '', '', 'Cough', 'Bird Flu', '2018-03-30'),
(388, '', '', 'Cough', 'Parainfluenza Virus', '2018-03-30'),
(389, '', '', 'Cough', 'Pulmonary Edema   ', '2018-03-30'),
(390, '', '', 'Cough', 'Sarcoidosis', '2018-03-30'),
(391, '', '', 'Cough', 'Tracheomalacia', '2018-03-30'),
(392, '', '', 'Cough', 'Hypersensitivity Pneumonitis', '2018-03-30'),
(393, '', '', 'Cough', 'Cystic Fibrosis', '2018-03-30'),
(394, '', '', 'Coughing', 'Influenza', '2018-03-30'),
(395, '', '', 'Coughing', 'Lung Abscess   ', '2018-03-30'),
(396, '', '', 'Coughing', 'Lung Cancer', '2018-03-30'),
(397, '', '', 'Coughing', 'Atypical Pneumonia   ', '2018-03-30'),
(398, '', '', 'Coughing', 'Asthma   ', '2018-03-30'),
(399, '', '', 'Coughing', 'Cough Headache Syndrome', '2018-03-30'),
(400, '', '', 'Coughing', 'Whooping Cough', '2018-03-30'),
(401, '', '', 'Coughing', 'Bronchiectasis', '2018-03-30'),
(402, '', '', 'Coughing', 'Pulmonary Embolism   ', '2018-03-30'),
(403, '', '', 'Coughing', 'Aspergillosis', '2018-03-30'),
(404, '', '', 'Coughing', 'Histoplasmosis', '2018-03-30'),
(405, '', '', 'Coughing', 'Lung Tuberculosis', '2018-03-30'),
(406, '', '', 'Coughing', 'Bronchitis', '2018-03-30'),
(407, '', '', 'Coughing', 'Common Cold', '2018-03-30'),
(408, '', '', 'Coughing', 'Esophageal Cancer', '2018-03-30'),
(409, '', '', 'Coughing', 'Human Metapneumovirus', '2018-03-30'),
(410, '', '', 'Coughing', 'Idiopathic Pulmonary Fibrosis', '2018-03-30'),
(411, '', '', 'Coughing', 'Laryngeal Sensory Neuropathy', '2018-03-30'),
(412, '', '', 'Coughing', 'Relapsing Fever', '2018-03-30'),
(413, '', '', 'Coughing', 'Respiratory Papillomatosis', '2018-03-30'),
(414, '', '', 'Coughing', 'Thymic Cancer', '2018-03-30'),
(415, '', '', 'Coughing', 'Chiari Malformation', '2018-03-30'),
(416, '', '', 'Coughing', 'Measles', '2018-03-30'),
(417, '', '', 'Coughing', 'Tularemia   ', '2018-03-30'),
(418, '', '', 'Coughing', 'Aspiration Syndromes   ', '2018-03-30'),
(419, '', '', 'Coughing', 'Bird Flu', '2018-03-30'),
(420, '', '', 'Coughing', 'Parainfluenza Virus', '2018-03-30'),
(421, '', '', 'Coughing', 'Pulmonary Edema   ', '2018-03-30'),
(422, '', '', 'Coughing', 'Sarcoidosis', '2018-03-30'),
(423, '', '', 'Coughing', 'Tracheomalacia', '2018-03-30'),
(424, '', '', 'Coughing', 'Hypersensitivity Pneumonitis', '2018-03-30'),
(425, '', '', 'Coughing', 'Cystic Fibrosis', '2018-03-30'),
(426, '', '', 'Stammer', 'Dystonia Disorders', '2018-03-30'),
(427, '', '', 'Stammering', 'Dystonia Disorders', '2018-03-30'),
(428, '', '', 'Dry mouth', 'Sjogren''s Syndrome', '2018-03-30'),
(429, '', '', 'Dry mouth', 'Sialadenitis', '2018-03-30'),
(430, '', '', 'Dry mouth', 'Sleep Apnea', '2018-03-30'),
(431, '', '', 'Dry mouth', 'Ectodermal Dysplasias', '2018-03-30'),
(432, '', '', 'Dry mouth', 'Mumps Infection', '2018-03-30'),
(433, '', '', 'Dry mouth', 'Autoimmune Hepatitis', '2018-03-30'),
(434, '', '', 'Dry mouth', 'Acute / Subacute Dysautonomias', '2018-03-30'),
(435, '', '', 'Dry mouth', 'Alcoholic Liver Disease', '2018-03-30'),
(436, '', '', 'Dry mouth', 'Aortic Aneurysm   ', '2018-03-30'),
(437, '', '', 'Dry mouth', 'Bell''s Palsy', '2018-03-30'),
(438, '', '', 'Dry mouth', 'Cirrhosis', '2018-03-30'),
(439, '', '', 'Dry mouth', 'Enlarged Adenoids', '2018-03-30'),
(440, '', '', 'Dry mouth', 'Gastroenteritis', '2018-03-30'),
(441, '', '', 'Dry mouth', 'General Anxiety Disorder', '2018-03-30'),
(442, '', '', 'Dry mouth', 'Graft Versus Host Disease', '2018-03-30'),
(443, '', '', 'Dry mouth', 'Lichen Planus', '2018-03-30'),
(444, '', '', 'Dry mouth', 'Mouth Cancer', '2018-03-30'),
(445, '', '', 'Dry mouth', 'Myasthenia Gravis', '2018-03-30'),
(446, '', '', 'Dry mouth', 'Oral Thrush', '2018-03-30'),
(447, '', '', 'Dry mouth', 'Panic Attack', '2018-03-30'),
(448, '', '', 'Dry mouth', 'Renal Failure', '2018-03-30'),
(449, '', '', 'Dry mouth', 'Scurvy', '2018-03-30'),
(450, '', '', 'Dry mouth', 'Sialolithiasis', '2018-03-30'),
(451, '', '', 'Dry mouth', 'Thoracic Aortic Aneurysm   ', '2018-03-30'),
(452, '', '', 'Dry mouth', 'Type 1 Diabetes   ', '2018-03-30'),
(453, '', '', 'Dry mouth', 'Botulism   ', '2018-03-30'),
(454, '', '', 'Dry mouth', 'Substance Abuse', '2018-03-30'),
(455, '', '', 'Dry mouth', 'Systemic Lupus Erythematosus', '2018-03-30'),
(456, '', '', 'Dry mouth', 'Systemic Sclerosis', '2018-03-30'),
(457, '', '', 'Dry mouth', 'Lung Cancer', '2018-03-30'),
(458, '', '', 'Dry mouth', 'Sarcoidosis', '2018-03-30'),
(459, '', '', 'Dry mouth', 'Alpha-1-Antitrypsin Deficiency', '2018-03-30'),
(460, '', '', 'Dry mouth', 'Antidepressants Toxicity   ', '2018-03-30'),
(461, '', '', 'Dry mouth', 'Carbamazepine Toxicity   ', '2018-03-30'),
(462, '', '', 'Dry mouth', 'Salivary Gland Trauma   ', '2018-03-30'),
(463, '', '', 'Dry mouth', 'Thorn Apple Seed Poisoning   ', '2018-03-30'),
(464, '', '', 'Dry nose', 'Sinusitis', '2018-03-30'),
(465, '', '', 'Dry nose', 'Nosebleeds', '2018-03-30'),
(466, '', '', 'Dry nose', 'Sjogren''s Syndrome', '2018-03-30'),
(467, '', '', 'Dry nose', 'Vasomotor Rhinitis', '2018-03-30'),
(468, '', '', 'Body temperature', 'Sepsis and Shock   ', '2018-03-30'),
(469, '', '', 'Body temperature', 'Autoimmune Hemolytic Anemias', '2018-03-30'),
(470, '', '', 'Body temperature', 'Measles', '2018-03-30'),
(471, '', '', 'Body temperature', 'Influenza', '2018-03-30'),
(472, '', '', 'Body temperature', 'Dengue Fever', '2018-03-30'),
(473, '', '', 'Body temperature', 'Fibromyalgia', '2018-03-30'),
(474, '', '', 'Body temperature', 'Eating Disorders', '2018-03-30'),
(475, '', '', 'Body temperature', 'Diabetic Neuropathy', '2018-03-30'),
(476, '', '', 'Body temperature', 'Diabetes Insipidus', '2018-03-30'),
(477, '', '', 'Body temperature', 'Thyroid Storm   ', '2018-03-30'),
(478, '', '', 'Body temperature', 'Serotonin Syndrome   ', '2018-03-30'),
(479, '', '', 'Body temperature', 'Body Lice', '2018-03-30'),
(480, '', '', 'Body temperature', 'Scabies', '2018-03-30'),
(481, '', '', 'Body temperature', 'Acute Appendicitis   ', '2018-03-30'),
(482, '', '', 'Body temperature', 'Epidemic Typhus', '2018-03-30'),
(483, '', '', 'Body temperature', 'Psoriasis', '2018-03-30'),
(484, '', '', 'Body temperature', 'Meningococcal Meningitis   ', '2018-03-30'),
(485, '', '', 'Body temperature', 'Chickenpox', '2018-03-30'),
(486, '', '', 'Body temperature', 'Hives   ', '2018-03-30'),
(487, '', '', 'Body temperature', 'Optic Neuritis', '2018-03-30'),
(488, '', '', 'Body temperature', 'Arteriovenous Fistulas   ', '2018-03-30'),
(489, '', '', 'Body temperature', 'Chronic Fatigue Syndrome', '2018-03-30'),
(490, '', '', 'Body temperature', 'Hemolytic Uremic Syndrome', '2018-03-30'),
(491, '', '', 'Body temperature', 'Pituitary Cancer', '2018-03-30'),
(492, '', '', 'Body temperature', 'Poxviruses', '2018-03-30'),
(493, '', '', 'Body temperature', 'Sickle Cell Anemia   ', '2018-03-30'),
(494, '', '', 'Body temperature', 'Spinal Cord Compression   ', '2018-03-30'),
(495, '', '', 'Body temperature', 'Spinal Cord Trauma   ', '2018-03-30'),
(496, '', '', 'Body temperature', 'Spinal Infections   ', '2018-03-30'),
(497, '', '', 'Body temperature', 'Stroke   ', '2018-03-30'),
(498, '', '', 'Body temperature', 'Substance Abuse', '2018-03-30'),
(499, '', '', 'Body temperature', 'Transient Ischemic Attack   ', '2018-03-30'),
(500, '', '', 'Body temperature', 'Atypical Pneumonia   ', '2018-03-30'),
(501, '', '', 'Body temperature', 'Complex Regional Pain Syndrome', '2018-03-30'),
(502, '', '', 'Body temperature', 'Erythromelalgia', '2018-03-30'),
(503, '', '', 'Body temperature', 'Parkinson''s Disease', '2018-03-30'),
(504, '', '', 'Body temperature', 'Poikilothermia', '2018-03-30'),
(505, '', '', 'Body temperature', 'Naphazoline Toxicity   ', '2018-03-30'),
(506, '', '', 'Body temperature', 'Barbiturates Toxicity   ', '2018-03-30'),
(507, '', '', 'Body temperature', 'Heat Exhaustion   ', '2018-03-30'),
(508, '', '', 'Hives', 'Hives   ', '2018-03-30'),
(509, '', '', 'Hives', 'Hodgkin Disease', '2018-03-30'),
(510, '', '', 'Hives', 'Anaphylaxis   ', '2018-03-30'),
(511, '', '', 'Hives', 'Contact Dermatitis', '2018-03-30'),
(512, '', '', 'Hives', 'Atopic Eczema', '2018-03-30'),
(513, '', '', 'Hives', 'Pruritus Ani', '2018-03-30'),
(514, '', '', 'Hives', 'Prickly Heat', '2018-03-30'),
(515, '', '', 'Hives', 'Drug Allergy   ', '2018-03-30'),
(516, '', '', 'Hives', 'Food Allergy', '2018-03-30'),
(517, '', '', 'Hives', 'Renal Failure', '2018-03-30'),
(518, '', '', 'Hives', 'Strongyloidiasis', '2018-03-30'),
(519, '', '', 'Hives', 'Dyshidrotic Eczema', '2018-03-30'),
(520, '', '', 'Hives', 'Psoriasis', '2018-03-30'),
(521, '', '', 'Hives', 'Scabies', '2018-03-30'),
(522, '', '', 'Hives', 'Hay Fever', '2018-03-30'),
(523, '', '', 'Hives', 'Schamberg''s Disease', '2018-03-30'),
(524, '', '', 'Hives', 'Cholangiocarcinoma', '2018-03-30'),
(525, '', '', 'Hives', 'Cirrhosis', '2018-03-30'),
(526, '', '', 'Hives', 'Conjunctivitis', '2018-03-30'),
(527, '', '', 'Hives', 'Scalp Ringworm', '2018-03-30'),
(528, '', '', 'Hives', 'Shingles', '2018-03-30'),
(529, '', '', 'Hives', 'Brachioradial Pruritus', '2018-03-30'),
(530, '', '', 'Hives', 'Body Lice', '2018-03-30'),
(531, '', '', 'Hives', 'Furunculosis, Furuncles and Carbuncles', '2018-03-30'),
(532, '', '', 'Hives', 'Mast Cell Disease', '2018-03-30'),
(533, '', '', 'Hives', 'Piles', '2018-03-30'),
(534, '', '', 'Hives', 'Erythema Multiforme', '2018-03-30'),
(535, '', '', 'Hives', 'Nephrogenic Systemic Fibrosis', '2018-03-30'),
(536, '', '', 'Hives', 'Pancreatic Cancer', '2018-03-30'),
(537, '', '', 'Hives', 'Insect Sting Allergy', '2018-03-30'),
(538, '', '', 'Itching', 'Hives   ', '2018-03-30'),
(539, '', '', 'Itching', 'Hodgkin Disease', '2018-03-30'),
(540, '', '', 'Itching', 'Anaphylaxis   ', '2018-03-30'),
(541, '', '', 'Itching', 'Contact Dermatitis', '2018-03-30'),
(542, '', '', 'Itching', 'Atopic Eczema', '2018-03-30'),
(543, '', '', 'Itching', 'Pruritus Ani', '2018-03-30'),
(544, '', '', 'Itching', 'Prickly Heat', '2018-03-30'),
(545, '', '', 'Itching', 'Drug Allergy   ', '2018-03-30'),
(546, '', '', 'Itching', 'Food Allergy', '2018-03-30'),
(547, '', '', 'Itching', 'Renal Failure', '2018-03-30'),
(548, '', '', 'Itching', 'Strongyloidiasis', '2018-03-30'),
(549, '', '', 'Itching', 'Dyshidrotic Eczema', '2018-03-30'),
(550, '', '', 'Itching', 'Psoriasis', '2018-03-30'),
(551, '', '', 'Itching', 'Scabies', '2018-03-30'),
(552, '', '', 'Itching', 'Hay Fever', '2018-03-30'),
(553, '', '', 'Itching', 'Schamberg''s Disease', '2018-03-30'),
(554, '', '', 'Itching', 'Cholangiocarcinoma', '2018-03-30'),
(555, '', '', 'Itching', 'Cirrhosis', '2018-03-30'),
(556, '', '', 'Itching', 'Conjunctivitis', '2018-03-30'),
(557, '', '', 'Itching', 'Scalp Ringworm', '2018-03-30'),
(558, '', '', 'Itching', 'Shingles', '2018-03-30'),
(559, '', '', 'Itching', 'Brachioradial Pruritus', '2018-03-30'),
(560, '', '', 'Itching', 'Body Lice', '2018-03-30'),
(561, '', '', 'Itching', 'Furunculosis, Furuncles and Carbuncles', '2018-03-30'),
(562, '', '', 'Itching', 'Mast Cell Disease', '2018-03-30'),
(563, '', '', 'Itching', 'Piles', '2018-03-30'),
(564, '', '', 'Itching', 'Erythema Multiforme', '2018-03-30'),
(565, '', '', 'Itching', 'Nephrogenic Systemic Fibrosis', '2018-03-30'),
(566, '', '', 'Itching', 'Pancreatic Cancer', '2018-03-30'),
(567, '', '', 'Itching', 'Insect Sting Allergy', '2018-03-30'),
(568, '', '', 'Itchiness', 'Hives   ', '2018-03-30'),
(569, '', '', 'Itchiness', 'Hodgkin Disease', '2018-03-30'),
(570, '', '', 'Itchiness', 'Anaphylaxis   ', '2018-03-30'),
(571, '', '', 'Itchiness', 'Contact Dermatitis', '2018-03-30'),
(572, '', '', 'Itchiness', 'Atopic Eczema', '2018-03-30'),
(573, '', '', 'Itchiness', 'Pruritus Ani', '2018-03-30'),
(574, '', '', 'Itchiness', 'Prickly Heat', '2018-03-30'),
(575, '', '', 'Itchiness', 'Drug Allergy   ', '2018-03-30'),
(576, '', '', 'Itchiness', 'Food Allergy', '2018-03-30'),
(577, '', '', 'Itchiness', 'Renal Failure', '2018-03-30'),
(578, '', '', 'Itchiness', 'Strongyloidiasis', '2018-03-30'),
(579, '', '', 'Itchiness', 'Dyshidrotic Eczema', '2018-03-30'),
(580, '', '', 'Itchiness', 'Psoriasis', '2018-03-30'),
(581, '', '', 'Itchiness', 'Scabies', '2018-03-30'),
(582, '', '', 'Itchiness', 'Hay Fever', '2018-03-30'),
(583, '', '', 'Itchiness', 'Schamberg''s Disease', '2018-03-30'),
(584, '', '', 'Itchiness', 'Cholangiocarcinoma', '2018-03-30'),
(585, '', '', 'Itchiness', 'Cirrhosis', '2018-03-30'),
(586, '', '', 'Itchiness', 'Conjunctivitis', '2018-03-30'),
(587, '', '', 'Itchiness', 'Scalp Ringworm', '2018-03-30'),
(588, '', '', 'Itchiness', 'Shingles', '2018-03-30'),
(589, '', '', 'Itchiness', 'Brachioradial Pruritus', '2018-03-30'),
(590, '', '', 'Itchiness', 'Body Lice', '2018-03-30'),
(591, '', '', 'Itchiness', 'Furunculosis, Furuncles and Carbuncles', '2018-03-30'),
(592, '', '', 'Itchiness', 'Mast Cell Disease', '2018-03-30'),
(593, '', '', 'Itchiness', 'Piles', '2018-03-30'),
(594, '', '', 'Itchiness', 'Erythema Multiforme', '2018-03-30'),
(595, '', '', 'Itchiness', 'Nephrogenic Systemic Fibrosis', '2018-03-30'),
(596, '', '', 'Itchiness', 'Pancreatic Cancer', '2018-03-30'),
(597, '', '', 'Itchiness', 'Insect Sting Allergy', '2018-03-30'),
(598, '', '', 'Lump', 'Breast Abscess', '2018-03-30'),
(599, '', '', 'Lump', 'Epidermoid Cyst', '2018-03-30'),
(600, '', '', 'Lump', 'Intestinal Fistula and Abscess   ', '2018-03-30'),
(601, '', '', 'Lump', 'Keloids', '2018-03-30'),
(602, '', '', 'Lump', 'Testicular Cancer', '2018-03-30'),
(603, '', '', 'Lump', 'Piles', '2018-03-30'),
(604, '', '', 'Lump', 'Varicocele', '2018-03-30'),
(605, '', '', 'Lump', 'Ganglion', '2018-03-30'),
(606, '', '', 'Lump', 'Mouth Cancer', '2018-03-30'),
(607, '', '', 'Lump', 'Lipoma', '2018-03-30'),
(608, '', '', 'Lump', 'Hodgkin Disease', '2018-03-30'),
(609, '', '', 'Lump', 'Epididymitis   ', '2018-03-30'),
(610, '', '', 'Lump', 'Testicular Torsion   ', '2018-03-30'),
(611, '', '', 'Lump', 'Anal Abscess   ', '2018-03-30'),
(612, '', '', 'Lump', 'Arm Abscess   ', '2018-03-30'),
(613, '', '', 'Lump', 'Benign Bone Tumors', '2018-03-30'),
(614, '', '', 'Lump', 'Cutaneous Nevi', '2018-03-30'),
(615, '', '', 'Lump', 'Head and Neck Cancer', '2018-03-30'),
(616, '', '', 'Lump', 'Peritoneal Carcinomatosis', '2018-03-30'),
(617, '', '', 'Lump', 'Pharyngeal Muscle Dysfunction', '2018-03-30'),
(618, '', '', 'Lump', 'Pilar Cyst', '2018-03-30'),
(619, '', '', 'Lump', 'Shingles', '2018-03-30'),
(620, '', '', 'Lump', 'Small Bowel Melanoma', '2018-03-30'),
(621, '', '', 'Lump', 'Soft Tissue Cancer', '2018-03-30'),
(622, '', '', 'Lump', 'Thyroid Cancer', '2018-03-30'),
(623, '', '', 'Lump', 'Warts', '2018-03-30'),
(624, '', '', 'Lump', 'Urachal Cyst', '2018-03-30'),
(625, '', '', 'Lump', 'Bunion', '2018-03-30'),
(626, '', '', 'Lump', 'Hernias', '2018-03-30'),
(627, '', '', 'Lump', 'Congestive Epididymitis', '2018-03-30'),
(628, '', '', 'Lump', 'Fibrodysplasia Ossificans Progressiva', '2018-03-30'),
(629, '', '', 'Lump', 'Genital Warts', '2018-03-30'),
(630, '', '', 'Lump', 'Male Breast Carcinoma', '2018-03-30'),
(631, '', '', 'Lump', 'Penis Cancer', '2018-03-30'),
(632, '', '', 'Lump', 'Spermatocele', '2018-03-30'),
(633, '', '', 'Lump', 'Lymphocytic Hypophysitis', '2018-03-30'),
(634, '', '', 'Lump', 'Insect Sting Allergy', '2018-03-30'),
(635, '', '', 'Muscle pain', 'Influenza', '2018-03-30'),
(636, '', '', 'Muscle pain', 'Rhabdomyolysis', '2018-03-30'),
(637, '', '', 'Muscle pain', 'Relapsing Fever', '2018-03-30'),
(638, '', '', 'Muscle pain', 'Human Granulocytic Anaplasmosis', '2018-03-30'),
(639, '', '', 'Muscle pain', 'Cold ', '2018-03-30'),
(640, '', '', 'Muscle pain', 'Leptospirosis', '2018-03-30'),
(641, '', '', 'Muscle pain', 'Myofascial Pain Syndrome', '2018-03-30'),
(642, '', '', 'Muscle pain', 'Fibromyalgia', '2018-03-30'),
(643, '', '', 'Muscle pain', 'Tularemia   ', '2018-03-30'),
(644, '', '', 'Muscle pain', 'Babesiosis', '2018-03-30'),
(645, '', '', 'Muscle pain', 'Bird Flu', '2018-03-30'),
(646, '', '', 'Muscle pain', 'Brucellosis', '2018-03-30'),
(647, '', '', 'Muscle pain', 'Chronic Fatigue Syndrome', '2018-03-30'),
(648, '', '', 'Muscle pain', 'Compartment Syndrome   ', '2018-03-30'),
(649, '', '', 'Muscle pain', 'Gastroenteritis', '2018-03-30'),
(650, '', '', 'Muscle pain', 'Hypothyroidism', '2018-03-30'),
(651, '', '', 'Muscle pain', 'Varicose Veins', '2018-03-30'),
(652, '', '', 'Muscle pain', 'Viral Hepatitis', '2018-03-30'),
(653, '', '', 'Muscle pain', 'Dengue Fever', '2018-03-30'),
(654, '', '', 'Muscle pain', 'Eosinophilia-Myalgia Syndrome', '2018-03-30'),
(655, '', '', 'Muscle pain', 'Lyme Disease', '2018-03-30'),
(656, '', '', 'Muscle pain', 'Microscopic Polyangiitis', '2018-03-30'),
(657, '', '', 'Muscle pain', 'Cellulitis   ', '2018-03-30'),
(658, '', '', 'Muscle pain', 'Chronic Autonomic Failure', '2018-03-30'),
(659, '', '', 'Muscle pain', 'Coccidioidomycosis', '2018-03-30'),
(660, '', '', 'Muscle pain', 'Dermatomyositis', '2018-03-30'),
(661, '', '', 'Muscle pain', 'Glomerulonephritis', '2018-03-30'),
(662, '', '', 'Muscle pain', 'Infectious Mononucleosis', '2018-03-30'),
(663, '', '', 'Muscle pain', 'Lemierre''s Syndrome   ', '2018-03-30'),
(664, '', '', 'Muscle pain', 'Q Fever', '2018-03-30'),
(665, '', '', 'Muscle pain', 'West Nile Encephalitis   ', '2018-03-30'),
(666, '', '', 'Muscle pain', 'Churg-Strauss Syndrome', '2018-03-30'),
(667, '', '', 'Muscle pain', 'Kikuchi Disease', '2018-03-30'),
(668, '', '', 'Muscle pain', 'Rat-Bite Fever', '2018-03-30'),
(669, '', '', 'Muscle pain', 'Syphilis', '2018-03-30'),
(670, '', '', 'Muscle pain', 'Toxic Myopathy', '2018-03-30'),
(671, '', '', 'Muscle pain', 'Trichinosis', '2018-03-30'),
(672, '', '', 'Muscle pain', 'Cytomegalovirus', '2018-03-30'),
(673, '', '', 'Muscle pain', 'Carnitine Cycle Defects', '2018-03-30'),
(674, '', '', 'Muscle pain', 'Drug-Induced Movement Disorders', '2018-03-30'),
(675, '', '', 'Polyuria', 'Diabetes Insipidus', '2018-03-30'),
(676, '', '', 'Polyuria', 'Conn''s Syndrome', '2018-03-30'),
(677, '', '', 'Polyuria', 'Nonketotic Hyperosmolar Coma   ', '2018-03-30'),
(678, '', '', 'Polyuria', 'Pathological Hypercalcemia', '2018-03-30'),
(679, '', '', 'Polyuria', 'Cushing''s Syndrome', '2018-03-30'),
(680, '', '', 'Polyuria', 'Diabetic Hypoglycemia   ', '2018-03-30'),
(681, '', '', 'Polyuria', 'Interstitial Nephritis', '2018-03-30'),
(682, '', '', 'Polyuria', 'Langerhans Cell Histiocytosis Class 1', '2018-03-30'),
(683, '', '', 'Polyuria', 'Type 1 Diabetes   ', '2018-03-30'),
(684, '', '', 'Polyuria', 'Type 2 Diabetes', '2018-03-30'),
(685, '', '', 'Polyuria', 'Fanconi Syndrome', '2018-03-30'),
(686, '', '', 'Polyuria', 'Kidney Stones', '2018-03-30'),
(687, '', '', 'Polyuria', 'Lower Urinary Tract Obstruction', '2018-03-30'),
(688, '', '', 'Polyuria', 'Primary Hypogonadism', '2018-03-30'),
(689, '', '', 'Polyuria', 'Sjogren''s Syndrome', '2018-03-30'),
(690, '', '', 'Polyuria', 'Adrenal Cancer', '2018-03-30'),
(691, '', '', 'Polyuria', 'Renal Tubular Acidosis', '2018-03-30'),
(692, '', '', 'Polyuria', 'Acquired Hypopituitarism', '2018-03-30'),
(693, '', '', 'Polyuria', 'Glomerulonephritis', '2018-03-30'),
(694, '', '', 'Polyuria', 'Hyperparathyroidism', '2018-03-30'),
(695, '', '', 'Polyuria', 'Hypopituitarism', '2018-03-30'),
(696, '', '', 'Polyuria', 'Obstructive Uropathy', '2018-03-30'),
(697, '', '', 'Polyuria', 'Renal Artery Stenosis', '2018-03-30'),
(698, '', '', 'Polyuria', 'Heavy Metal Intoxication   ', '2018-03-30'),
(699, '', '', 'Polyuria', 'Graves Disease', '2018-03-30'),
(700, '', '', 'Polyuria', 'Bartter Syndrome', '2018-03-30'),
(701, '', '', 'Polyuria', 'Cystinosis', '2018-03-30'),
(702, '', '', 'Polyuria', 'Hypovolemic Shock   ', '2018-03-30'),
(703, '', '', 'Polyuria', 'Lithium Carbonate Toxicity   ', '2018-03-30'),
(704, '', '', 'Polyuria', 'Milk-Alkali Syndrome', '2018-03-30'),
(705, '', '', 'Polyuria', 'Renal Failure', '2018-03-30'),
(706, '', '', 'Stomach Pain', 'Pancreatitis   ', '2018-03-30'),
(707, '', '', 'Stomach Pain', 'Irritable Bowel Syndrome', '2018-03-30'),
(708, '', '', 'Stomach Pain', 'Acute Appendicitis   ', '2018-03-30'),
(709, '', '', 'Stomach Pain', 'Lactose Intolerance', '2018-03-30'),
(710, '', '', 'Stomach Pain', 'Biliary Colic', '2018-03-30'),
(711, '', '', 'Stomach Pain', 'Intestinal Ischemia   ', '2018-03-30'),
(712, '', '', 'Stomach Pain', 'Cirrhosis', '2018-03-30'),
(713, '', '', 'Stomach Pain', 'Gallstones', '2018-03-30'),
(714, '', '', 'Stomach Pain', 'Peritonitis   ', '2018-03-30'),
(715, '', '', 'Stomach Pain', 'Liver Cancer', '2018-03-30'),
(716, '', '', 'Stomach Pain', 'Cholangiocarcinoma', '2018-03-30'),
(717, '', '', 'Stomach Pain', 'Bowel Cancer', '2018-03-30'),
(718, '', '', 'Stomach Pain', 'Viral Hepatitis', '2018-03-30'),
(719, '', '', 'Stomach Pain', 'Acute Porphyria   ', '2018-03-30'),
(720, '', '', 'Stomach Pain', 'Cholangitis   ', '2018-03-30'),
(721, '', '', 'Stomach Pain', 'Crohn''s Disease', '2018-03-30'),
(722, '', '', 'Stomach Pain', 'Hereditary Angioedema', '2018-03-30'),
(723, '', '', 'Stomach Pain', 'Kidney Stones', '2018-03-30'),
(724, '', '', 'Stomach Pain', 'Pancreatic Cancer', '2018-03-30'),
(725, '', '', 'Stomach Pain', 'Sickle Cell Anemia   ', '2018-03-30'),
(726, '', '', 'Stomach Pain', 'Diverticular Diseases of the Colon', '2018-03-30'),
(727, '', '', 'Stomach Pain', 'Bacterial Liver Abscess   ', '2018-03-30'),
(728, '', '', 'Stomach Pain', 'Intussusception   ', '2018-03-30'),
(729, '', '', 'Stomach Pain', 'Small Bowel Melanoma', '2018-03-30'),
(730, '', '', 'Stomach Pain', 'Henoch-Schonlein Purpura', '2018-03-30'),
(731, '', '', 'Stomach Pain', 'Intestinal Angioedema', '2018-03-30'),
(732, '', '', 'Stomach Pain', 'Ulcerative Colitis', '2018-03-30'),
(733, '', '', 'Stomach Pain', 'Drug-Induced Colitis', '2018-03-30'),
(734, '', '', 'Stomach Pain', 'Gilbert''s Syndrome', '2018-03-30'),
(735, '', '', 'Stomach Pain', 'CMV Colitis', '2018-03-30'),
(736, '', '', 'Stomach Pain', 'Cholecystitis   ', '2018-03-30'),
(737, '', '', 'Stomach Pain', 'Gastroparesis', '2018-03-30'),
(738, '', '', 'Stomach Pain', 'Inflammatory Bowel Disease', '2018-03-30'),
(739, '', '', 'Stomach Pain', 'Tuberculosis ', '2018-03-30'),
(740, '', '', 'Sweating', 'Cystic Fibrosis', '2018-03-30'),
(741, '', '', 'Sweating', 'Hodgkin Disease', '2018-03-30'),
(742, '', '', 'Sweating', 'Ectodermal Dysplasias', '2018-03-30'),
(743, '', '', 'Sweating', 'Adrenal Cancer', '2018-03-30'),
(744, '', '', 'Sweating', 'Lung Abscess   ', '2018-03-30'),
(745, '', '', 'Sweating', 'Miliaria Profunda', '2018-03-30'),
(746, '', '', 'Sweating', 'Acute Appendicitis   ', '2018-03-30'),
(747, '', '', 'Sweating', 'Alcohol Withdrawal Syndrome   ', '2018-03-30'),
(748, '', '', 'Sweating', 'Body Odor', '2018-03-30'),
(749, '', '', 'Sweating', 'Brucellosis', '2018-03-30'),
(750, '', '', 'Sweating', 'Endocarditis   ', '2018-03-30'),
(751, '', '', 'Sweating', 'Pulmonary Edema   ', '2018-03-30'),
(752, '', '', 'Sweating', 'Complex Regional Pain Syndrome', '2018-03-30'),
(753, '', '', 'Sweating', 'Hyperthyroidism', '2018-03-30'),
(754, '', '', 'Sweating', 'Castleman''s Disease', '2018-03-30'),
(755, '', '', 'Sweating', 'HIV/AIDS', '2018-03-30'),
(756, '', '', 'Sweating', 'Leukemia', '2018-03-30'),
(757, '', '', 'Sweating', 'Nontuberculous Mycobacteria', '2018-03-30'),
(758, '', '', 'Sweating', 'Panic Attack', '2018-03-30'),
(759, '', '', 'Sweating', 'Prickly Heat', '2018-03-30'),
(760, '', '', 'Sweating', 'Sepsis and Shock   ', '2018-03-30'),
(761, '', '', 'Sweating', 'Asthma   ', '2018-03-30'),
(762, '', '', 'Sweating', 'Non-Hodgkin Lymphoma', '2018-03-30'),
(763, '', '', 'Sweating', 'Amoebic Liver Abscess   ', '2018-03-30'),
(764, '', '', 'Sweating', 'Lung Tuberculosis', '2018-03-30'),
(765, '', '', 'Sweating', 'Coccidioidomycosis', '2018-03-30'),
(766, '', '', 'Sweating', 'Tuberculosis   ', '2018-03-30'),
(767, '', '', 'Sweating', 'Chlorophenoxyacetate Herbicides   ', '2018-03-30'),
(768, '', '', 'Sweating', 'Dengue Fever', '2018-03-30'),
(769, '', '', 'Sweating', 'Graves Disease', '2018-03-30');
INSERT INTO `symptoms` (`id`, `age_group`, `gender`, `symptom`, `disease`, `added_date`) VALUES
(770, '', '', 'Sweating', 'Spider Bites   ', '2018-03-30'),
(771, '', '', 'Sweating', 'Marine Envenomation   ', '2018-03-30'),
(772, '', '', 'Sweating', 'Salicylates Toxicity   ', '2018-03-30'),
(773, '', '', 'Sweating', 'Heat Exhaustion   ', '2018-03-30'),
(774, '', '', 'Sweating', 'Heat Stroke ', '2018-03-30'),
(775, '', '', 'Swollen tongue', 'Anaphylaxis', '2018-03-30'),
(776, '', '', 'Swollen tongue', 'Food Allergy', '2018-03-30'),
(777, '', '', 'Swollen tongue', 'Hives', '2018-03-30'),
(778, '', '', 'Swollen tongue', 'Melkersson-Rosenthal Syndrome', '2018-03-30'),
(779, '', '', 'Swollen tongue', 'Scarlet Fever', '2018-03-30'),
(780, '', '', 'Swollen tongue', 'Superior Vena Cava Syndrome', '2018-03-30'),
(781, '', '', 'Swollen tongue', 'Amyloidosis', '2018-03-30'),
(782, '', '', 'Swollen tongue', 'Hereditary Angioedema', '2018-03-30'),
(783, '', '', 'Swollen tongue', 'Insect Sting Allergy', '2018-03-30'),
(784, '', '', 'Trouble talking', 'Aphasic Syndromes', '2018-03-30'),
(785, '', '', 'Trouble talking', 'Dyslexia', '2018-03-30'),
(786, '', '', 'Trouble talking', 'Progressive Multifocal Leucoencephalopathy', '2018-03-30'),
(787, '', '', 'Trouble talking', 'Opsoclonus-Myoclonus Syndrome', '2018-03-30'),
(788, '', '', 'Trouble talking', 'Sarcoidosis', '2018-03-30'),
(789, '', '', 'Trouble talking', 'Brain Abscess   ', '2018-03-30'),
(790, '', '', 'Trouble talking', 'Intracranial Hemorrhage   ', '2018-03-30'),
(791, '', '', 'Trouble talking', 'Moya Moya Disease', '2018-03-30'),
(792, '', '', 'Trouble talking', 'Cerebral AV Malformations', '2018-03-30'),
(793, '', '', 'Trouble talking', 'Cerebral Sinus Venous Thrombosis   ', '2018-03-30'),
(794, '', '', 'Trouble talking', 'Ideational Apraxia', '2018-03-30'),
(795, '', '', 'Trouble talking', 'Measles', '2018-03-30'),
(796, '', '', 'Trouble talking', 'Multiple Sclerosis', '2018-03-30'),
(797, '', '', 'Trouble talking', 'Syndromes of Electrographic Status Epilepticus in Sleep', '2018-03-30'),
(798, '', '', 'Trouble talking', 'HIV Neuro Complications', '2018-03-30'),
(799, '', '', 'Trouble talking', 'Neuronal Ceroid Lipofuscinoses', '2018-03-30'),
(800, '', '', 'Trouble talking', 'Stroke   ', '2018-03-30'),
(801, '', '', 'Trouble talking', 'NMDA Receptor Antibody Encephalitis', '2018-03-30'),
(802, '', '', 'Trouble talking', 'Tuberculous Meningitis', '2018-03-30'),
(803, '', '', 'Trouble talking', 'Acoustic Neuroma', '2018-03-30'),
(804, '', '', 'Trouble talking', 'Bardet-Biedl Syndrome', '2018-03-30'),
(805, '', '', 'Trouble talking', 'Chronic Autonomic Failure', '2018-03-30'),
(806, '', '', 'Trouble talking', 'Friedreich''s Ataxia', '2018-03-30'),
(807, '', '', 'Trouble talking', 'Transient Ischemic Attack   ', '2018-03-30'),
(808, '', '', 'Trouble talking', 'Chromosomal Deletions', '2018-03-30'),
(809, '', '', 'Trouble talking', 'Malignant Atrophic Papulosis', '2018-03-30'),
(810, '', '', 'Trouble talking', 'Adrenoleukodystrophy', '2018-03-30'),
(811, '', '', 'Trouble talking', 'Creutzfeldt-Jakob Disease', '2018-03-30'),
(812, '', '', 'Trouble talking', 'XLMR Syndrome', '2018-03-30'),
(813, '', '', 'Trouble talking', 'Epiglottitis   ', '2018-03-30'),
(814, '', '', 'Trouble talking', 'Fragile X Syndrome', '2018-03-30'),
(815, '', '', 'Trouble talking', 'Disulfiram Toxicity', '2018-03-30'),
(816, '', '', 'Vomiting', 'Acute Appendicitis   ', '2018-03-30'),
(817, '', '', 'Vomiting', 'Gastroenteritis', '2018-03-30'),
(818, '', '', 'Vomiting', 'Cyclic Vomiting Syndrome', '2018-03-30'),
(819, '', '', 'Vomiting', 'Food Poisoning   ', '2018-03-30'),
(820, '', '', 'Vomiting', 'Peptic Ulcer', '2018-03-30'),
(821, '', '', 'Vomiting', 'Viral Hepatitis', '2018-03-30'),
(822, '', '', 'Vomiting', 'Traumatic Brain Injury   ', '2018-03-30'),
(823, '', '', 'Vomiting', 'Brain Tumors   ', '2018-03-30'),
(824, '', '', 'Vomiting', 'Stomach Cancer', '2018-03-30'),
(825, '', '', 'Vomiting', 'Cannabinoid Hyperemesis', '2018-03-30'),
(826, '', '', 'Vomiting', 'Pyelonephritis   ', '2018-03-30'),
(827, '', '', 'Vomiting', 'Acute Disseminated Encephalomyelitis  ', '2018-03-30'),
(828, '', '', 'Vomiting', 'Esophageal Perforation   ', '2018-03-30'),
(829, '', '', 'Vomiting', 'Hirschsprung''s Disease   ', '2018-03-30'),
(830, '', '', 'Vomiting', 'Relapsing Fever', '2018-03-30'),
(831, '', '', 'Vomiting', 'Sepsis and Shock   ', '2018-03-30'),
(832, '', '', 'Vomiting', 'Strongyloidiasis', '2018-03-30'),
(833, '', '', 'Vomiting', 'Viral Meningoencephalitis   ', '2018-03-30'),
(834, '', '', 'Vomiting', 'Crohn''s Disease', '2018-03-30'),
(835, '', '', 'Vomiting', 'Eating Disorders', '2018-03-30'),
(836, '', '', 'Vomiting', 'Tularemia   ', '2018-03-30'),
(837, '', '', 'Vomiting', 'Addison''s Disease   ', '2018-03-30'),
(838, '', '', 'Vomiting', 'Alcohol Toxicity   ', '2018-03-30'),
(839, '', '', 'Vomiting', 'Gastric Volvulus   ', '2018-03-30'),
(840, '', '', 'Vomiting', 'Migraine', '2018-03-30'),
(841, '', '', 'Vomiting', 'Peritonitis   ', '2018-03-30'),
(842, '', '', 'Vomiting', 'Wilkie Syndrome', '2018-03-30'),
(843, '', '', 'Vomiting', 'Brain Abscess   ', '2018-03-30'),
(844, '', '', 'Vomiting', 'CMV Colitis', '2018-03-30'),
(845, '', '', 'Vomiting', 'Esophagitis', '2018-03-30'),
(846, '', '', 'Vomiting', 'Gastroesophageal Reflux', '2018-03-30'),
(847, '', '', 'Vomiting', 'Glomerulonephritis', '2018-03-30'),
(848, '', '', 'Vomiting', 'Pancreatitis   ', '2018-03-30'),
(849, '', '', 'Vomiting', 'Round Worm', '2018-03-30'),
(850, '', '', 'Vomiting', 'Environmental / Work Exposure   ', '2018-03-30'),
(851, '', '', 'Vomiting', 'Meningococcal Meningitis   ', '2018-03-30'),
(852, '', '', 'Vomiting', 'Primary Amoebic Meningoencephalitis   ', '2018-03-30'),
(853, '', '', 'Vomiting', 'Acute Diarrhea', '2018-03-30'),
(854, '', '', 'Vomiting', 'Marine Envenomation   ', '2018-03-30'),
(855, '', '', 'Vomiting', 'Tuberculous Meningitis', '2018-03-30'),
(856, '', '', 'Weight gain', 'Hashimoto''s Thyroiditis', '2018-03-30'),
(857, '', '', 'Weight gain', 'Depression   ', '2018-03-30'),
(858, '', '', 'Weight gain', 'Pancreatic Cancer', '2018-03-30'),
(859, '', '', 'Weight gain', 'Hypothyroidism', '2018-03-30'),
(860, '', '', 'Weight gain', 'Type 2 Diabetes', '2018-03-30'),
(861, '', '', 'Weight gain', 'Heart Failure   ', '2018-03-30'),
(862, '', '', 'Weight gain', 'Rhabdomyolysis', '2018-03-30'),
(863, '', '', 'Weight gain', 'Transposition of the Great Arteries', '2018-03-30'),
(864, '', '', 'Weight gain', 'Noonan Syndrome', '2018-03-30'),
(865, '', '', 'Weight gain', 'Secondary Adrenal Insufficiency', '2018-03-30'),
(866, '', '', 'Weight gain', 'Binge Eating Disorder', '2018-03-30'),
(867, '', '', 'Weight gain', 'Adrenal Cancer', '2018-03-30'),
(868, '', '', 'Weight gain', 'Lower Urinary Tract Obstruction', '2018-03-30'),
(869, '', '', 'Weight gain', 'Bipolar Disorder', '2018-03-30'),
(870, '', '', 'Weight gain', 'Brain Tumors   ', '2018-03-30'),
(871, '', '', 'Weight gain', 'Bronchiectasis', '2018-03-30'),
(872, '', '', 'Weight gain', 'Cushing''s Syndrome', '2018-03-30'),
(873, '', '', 'Weight gain', 'Food Allergy', '2018-03-30'),
(874, '', '', 'Weight gain', 'Graft Versus Host Disease', '2018-03-30'),
(875, '', '', 'Weight gain', 'Hypopituitarism', '2018-03-30'),
(876, '', '', 'Weight gain', 'McCune-Albright Syndrome', '2018-03-30'),
(877, '', '', 'Weight gain', 'Pericarditis', '2018-03-30'),
(878, '', '', 'Weight gain', 'Pituitary Cancer', '2018-03-30'),
(879, '', '', 'Weight gain', 'Seasonal Affective Disorder', '2018-03-30'),
(880, '', '', 'Weight gain', 'Eating Disorders', '2018-03-30'),
(881, '', '', 'Weight gain', 'Nephrotic Syndrome', '2018-03-30'),
(882, '', '', 'Weight gain', 'Pyelonephritis   ', '2018-03-30'),
(883, '', '', 'Weight gain', 'Systemic Lupus Erythematosus', '2018-03-30'),
(884, '', '', 'Weight gain', 'Drug-induced Cushing''s Syndrome', '2018-03-30'),
(885, '', '', 'Weight loss', 'Hodgkin Disease', '2018-03-30'),
(886, '', '', 'Weight loss', 'Liver Cancer', '2018-03-30'),
(887, '', '', 'Weight loss', 'Crohn''s Disease', '2018-03-30'),
(888, '', '', 'Weight loss', 'Adrenal Cancer', '2018-03-30'),
(889, '', '', 'Weight loss', 'Pancreatic Cancer', '2018-03-30'),
(890, '', '', 'Weight loss', 'Cholangiocarcinoma', '2018-03-30'),
(891, '', '', 'Weight loss', 'Kidney Cancer', '2018-03-30'),
(892, '', '', 'Weight loss', 'Stomach Cancer', '2018-03-30'),
(893, '', '', 'Weight loss', 'Celiac Disease', '2018-03-30'),
(894, '', '', 'Weight loss', 'Endocarditis   ', '2018-03-30'),
(895, '', '', 'Weight loss', 'Hyperthyroidism', '2018-03-30'),
(896, '', '', 'Weight loss', 'Malignant Bone Tumors', '2018-03-30'),
(897, '', '', 'Weight loss', 'Whipple Disease', '2018-03-30'),
(898, '', '', 'Weight loss', 'Lung Cancer', '2018-03-30'),
(899, '', '', 'Weight loss', 'Depression   ', '2018-03-30'),
(900, '', '', 'Weight loss', 'Gastroparesis', '2018-03-30'),
(901, '', '', 'Weight loss', 'Kikuchi Disease', '2018-03-30'),
(902, '', '', 'Weight loss', 'Non-Hodgkin Lymphoma', '2018-03-30'),
(903, '', '', 'Weight loss', 'Tuberculosis   ', '2018-03-30'),
(904, '', '', 'Weight loss', 'Ulcerative Colitis', '2018-03-30'),
(905, '', '', 'Weight loss', 'Addison''s Disease   ', '2018-03-30'),
(906, '', '', 'Weight loss', 'Bowel Cancer', '2018-03-30'),
(907, '', '', 'Weight loss', 'Castleman''s Disease', '2018-03-30'),
(908, '', '', 'Weight loss', 'Exocrine Pancreatic Insufficiency', '2018-03-30'),
(909, '', '', 'Weight loss', 'Gastritis', '2018-03-30'),
(910, '', '', 'Weight loss', 'Idiopathic Pulmonary Fibrosis', '2018-03-30'),
(911, '', '', 'Weight loss', 'Leukemia', '2018-03-30'),
(912, '', '', 'Weight loss', 'Pancreatitis   ', '2018-03-30'),
(913, '', '', 'Weight loss', 'Small Bowel Melanoma', '2018-03-30'),
(914, '', '', 'Weight loss', 'Strongyloidiasis', '2018-03-30'),
(915, '', '', 'Weight loss', 'Sjogren''s Syndrome', '2018-03-30'),
(916, '', '', 'Weight loss', 'Eating Disorders', '2018-03-30'),
(917, '', '', 'Weight loss', 'Graves Disease', '2018-03-30'),
(918, '', '', 'Weight loss', 'Microscopic Polyangiitis', '2018-03-30'),
(919, '', '', 'Weight loss', 'Sarcoidosis', '2018-03-30'),
(920, '', '', 'Weight loss', 'Wegener''s Granulomatosis', '2018-03-30'),
(921, '', '', 'Weight loss', 'Heart Cancer', '2018-03-30'),
(922, '', '', 'Weight loss', 'Hypersensitivity Pneumonitis', '2018-03-30'),
(923, 'kid', 'female', 'Headache', 'Intracranial Hypotension', '2018-03-30'),
(924, 'kid', 'female', 'Headache', 'Thrombotic Thrombocytopenic Purpura', '2018-03-30'),
(925, 'kid', 'female', 'Headache', 'Leptospirosis', '2018-03-30'),
(926, 'kid', 'female', 'Headache', 'Paroxysmal Hemicrania', '2018-03-30'),
(927, 'kid', 'female', 'Headache', 'Reversible Cerebral Vasoconstriction Syndrome', '2018-03-30'),
(928, 'junior&adole', 'male', 'Headache on one side', 'Migraine', '2018-03-30'),
(929, 'junior&adole', 'male', 'Headache on one side', 'Sinusitis', '2018-03-30'),
(930, 'junior&adole', 'male', 'Headache on one side', 'Intracranial Hemorrhage   ', '2018-03-30'),
(931, 'junior&adole', 'male', 'Headache on one side', 'Medication Overuse Headache', '2018-03-30'),
(932, 'junior&adole', 'male', 'Headache on one side', 'Cluster Headache', '2018-03-30');

-- --------------------------------------------------------

--
-- Table structure for table `table_doctor`
--

CREATE TABLE `table_doctor` (
  `did` varchar(100) NOT NULL,
  `dname` varchar(255) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `pass` varchar(100) NOT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `dob` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  `degree` varchar(100) DEFAULT NULL,
  `department` varchar(200) DEFAULT NULL,
  `fees` varchar(200) DEFAULT NULL,
  `contact` varchar(100) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `reg_date` varchar(100) DEFAULT NULL,
  `deptid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_doctor`
--

INSERT INTO `table_doctor` (`did`, `dname`, `email`, `pass`, `gender`, `dob`, `age`, `degree`, `department`, `fees`, `contact`, `address`, `reg_date`, `deptid`) VALUES
('DID-135', 'Dinesh Singh', 'Dinesh1210@gmail.com', 'Don123', 'Male', '1980-03-16', '33', 'M.B.B.S', 'Neurology', '1550', '1478523690', 'thane', '2018-03-15', 2),
('DID-172', 'Ankita more', 'ankita@gmail.com', 'Ankita123', 'Male', '1996-03-27', '22', 'B.D.S', 'Cardiologist', '1000', '4547000000', 'Thane', '2018-03-15', 1),
('DID-194', 'ankit', 'ankit12@gmail.com', 'Ankit123', 'Male', '1978-04-09', '40', 'D.D.S', 'Neurology', '1550', '8585858585', 'tt', '2018-04-10', 2),
('DID-399', 'Dharmesh D', 'don@gmail.com', 'Don123', 'Male', '1996-04-04', '22', 'D.D.S', 'Dentist', '500', '8588878800', 'tt', '2018-04-08', 3),
('DID-515', 'Sohan P', 'sohanm', 'Sohan123', 'Male', '1996-03-07', '22', 'B.Sc Nursing', 'Dentist', '500', '8588878042', 'India', '2018-03-29', 3),
('DID-758', 'uuu1', 'golden1', 'Wow123', 'Male', '1985-03-29', '33', 'B.D.S', 'Dentist', '1000', '85858585', 'Kanjurmarg', '2018-03-15', 1);

-- --------------------------------------------------------

--
-- Table structure for table `table_patient`
--

CREATE TABLE `table_patient` (
  `pid` varchar(10) NOT NULL,
  `pname` varchar(255) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `pass` varchar(100) DEFAULT NULL,
  `contact` varchar(100) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `age` varchar(255) NOT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `pstatus` varchar(100) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `reg_date` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_patient`
--

INSERT INTO `table_patient` (`pid`, `pname`, `email`, `pass`, `contact`, `dob`, `age`, `gender`, `pstatus`, `address`, `reg_date`) VALUES
('PID-104', 'Vishal', 'vishal12@gmail.com', 'Vishal12', '8588878845', '1996-03-13', '22', 'Male', 'Single', 'thane', '2018-03-29'),
('PID-170', 'admin', 'dharmeshmourya0043@gmail.com', 'Don123', '2222222222', '1998-04-19', '19', 'Male', 'Divorced', 'ee', '2018-04-10'),
('PID-217', 'ooooo', 'ooo12@gmail.com', 'Oop123', '8588878822', '1996-12-06', '21', 'Male', 'Single', 'tt', '2018-04-08'),
('PID-484', 'Dinesh Singh', 'dinesh123@gmail.com', 'Ramesh123', '1230456957', '1996-03-18', '22', 'Male', 'Single', 'Mumbai', '2018-03-15'),
('PID-541', 'golden', 'golden12@gmail.com', 'Golden123', '5686454454', '1996-04-18', '21', 'Male', 'Single', 'ttt', '2018-04-09'),
('PID-648', 'wonder', 'wonder12@gmail.com', 'Woo123', '8588878800', '1996-03-02', '22', 'Female', 'Single', 'Mulund West', '2018-03-15'),
('PID-695', 'Ankit', 'dharmesh', 'Ankit123', '1230456900', '1999-03-21', '19', 'Male', 'Divorced', 'Mulund West', '2018-03-15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dept`
--
ALTER TABLE `dept`
  ADD PRIMARY KEY (`deptid`);

--
-- Indexes for table `diseasecost`
--
ALTER TABLE `diseasecost`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient_bill`
--
ALTER TABLE `patient_bill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `queries`
--
ALTER TABLE `queries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `symptoms`
--
ALTER TABLE `symptoms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_doctor`
--
ALTER TABLE `table_doctor`
  ADD PRIMARY KEY (`did`),
  ADD UNIQUE KEY `Email` (`email`),
  ADD UNIQUE KEY `Contact` (`contact`);

--
-- Indexes for table `table_patient`
--
ALTER TABLE `table_patient`
  ADD PRIMARY KEY (`pid`),
  ADD UNIQUE KEY `Email` (`email`),
  ADD UNIQUE KEY `Contact` (`contact`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `dept`
--
ALTER TABLE `dept`
  MODIFY `deptid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `diseasecost`
--
ALTER TABLE `diseasecost`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `patient_bill`
--
ALTER TABLE `patient_bill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `queries`
--
ALTER TABLE `queries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `symptoms`
--
ALTER TABLE `symptoms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=933;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
