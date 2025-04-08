-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 08, 2025 at 03:23 AM
-- Server version: 8.3.0
-- PHP Version: 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: petshop
--

-- --------------------------------------------------------

--
-- Table structure for table dogs
--

CREATE TABLE dogs (
  id int NOT NULL,
  dog_name varchar(255) NOT NULL,
  dog_image varchar(255) NOT NULL,
  sex varchar(50) NOT NULL,
  location varchar(50) NOT NULL,
  price varchar(255) NOT NULL,
  created_at timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  updates_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table dogs
--

INSERT INTO dogs (id, dog_name, dog_image, sex, location, price, created_at, updates_at) VALUES
(1, 'Sam', 'bea2.png', 'Male', 'London', 'CAD 700', '2025-04-07 23:50:45', '2025-04-02 02:23:26'),
(2, 'Mini', 'chi2.png', 'Female', 'St. Thomas', 'CAD 600', '2025-04-07 21:58:34', '2025-04-02 02:25:42'),
(3, 'Coffee', 'cor2.png', 'Female', 'Stratford', 'CAD 680', '2025-04-07 21:58:43', '2025-04-02 02:26:56'),
(4, 'Marvel', 'dac2.png', 'Male', 'London', 'CAD 820', '2025-04-07 21:58:50', '2025-04-02 02:26:56'),
(5, 'Rocky', 'hus2.png', 'Male', 'St. Marys', 'CAD 960', '2025-04-07 21:58:56', '2025-04-02 02:28:12'),
(6, 'Honey', 'pug2.png', 'Male', 'Woodstock', 'CAD 690', '2025-04-07 21:59:03', '2025-04-02 02:28:12');

-- --------------------------------------------------------

--
-- Table structure for table pets
--

CREATE TABLE pets (
  id int NOT NULL,
  breed varchar(255) NOT NULL,
  dog_id int NOT NULL,
  pet_image varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  character_1 text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  character_2 text NOT NULL,
  created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updates_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table pets
--

INSERT INTO pets (id, breed, dog_id, pet_image, character_1, character_2, created_at, updates_at) VALUES
(1, 'Beagle', 1, 'bea1.png', 'Friendly, affectionate, and social. Good with children and other pets.', '', '2025-04-02 02:14:38', '2025-04-02 02:14:38'),
(2, 'Chihuahua', 2, 'chi1.png', 'Smallest dog breed, often weighing under 6 pounds. Loyal, affectionate, and protective of their owner.', '', '2025-04-02 02:14:38', '2025-04-02 02:14:38'),
(3, 'Corgi', 3, 'cor1.png', 'Friendly, playful, and intelligent. Great with families and children.', '', '2025-04-02 02:21:11', '2025-04-02 02:21:11'),
(4, 'Dachshund', 4, 'dac1.png', 'Curious, brave, and stubborn. Good with families, but can be territorial.', '', '2025-04-02 02:21:11', '2025-04-02 02:21:11'),
(5, 'Husky', 5, 'hus1.png', 'Friendly, outgoing, and energetic. Independent but loyal to their families.', '', '2025-04-02 02:22:13', '2025-04-02 02:22:13'),
(6, 'Pug', 6, 'pug1.png', 'Affectionate, charming, and loving. Friendly with both children and other pets.', '', '2025-04-02 02:22:13', '2025-04-02 02:22:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table dogs
--
ALTER TABLE dogs
  ADD PRIMARY KEY (id);

--
-- Indexes for table pets
--
ALTER TABLE pets
  ADD PRIMARY KEY (id);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table dogs
--
ALTER TABLE dogs
  MODIFY id int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table pets
--
ALTER TABLE pets
  MODIFY id int NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
