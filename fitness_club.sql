-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 01, 2026 at 07:07 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fitness_club`
--

-- --------------------------------------------------------

--
-- Table structure for table `muscle_groups`
--

CREATE TABLE `muscles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `muscle_groups`
--

INSERT INTO `muscles` (`id`, `name`) VALUES
(5, 'Chest'),
(4, 'Back'),
(3, 'Legs'),
(6, 'Shoulders'),
(8, 'Arms'),
(9, 'Core');

-- --------------------------------------------------------

--
-- Table structure for table `allergens_for_recipe`
--

CREATE TABLE `muscles_for_training` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `muscle_id` bigint(20) UNSIGNED NOT NULL,
  `training_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `allergens_for_recipe`
--

INSERT INTO `muscles_for_training` (`id`, `muscle_id`, `training_id`) VALUES
(1, 5, 1),
(2, 3, 1),
(3, 3, 2),
(4, 5, 3),
(5, 4, 3),
(6, 8, 3),
(7, 9, 1),
(8, 9, 2),
(9, 9, 4);

-- --------------------------------------------------------

--
-- Table structure for table `drinks`
--

CREATE TABLE `equipment` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `difficulty` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `drinks`
--

INSERT INTO `equipment` (`id`, `name`, `type`, `difficulty`) VALUES
(2, 'Dumbbells', 'free_weights', 'medium'),
(3, 'Barbell', 'free_weights', 'hard'),
(4, 'Kettlebell', 'free_weights', 'medium'),
(5, 'Yoga Mat', 'mat', 'easy'),
(6, 'Pull-up Bar', 'bodyweight', 'hard'),
(7, 'No Equipment', 'none', 'easy');

-- --------------------------------------------------------

--
-- Table structure for table `drinks_for_recipe`
--

CREATE TABLE `equipment_for_training` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `equipment_id` bigint(20) UNSIGNED NOT NULL,
  `training_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `drinks_for_recipe`
--

INSERT INTO `equipment_for_training` (`id`, `equipment_id`, `training_id`) VALUES
(1, 2, 1),
(2, 7, 2),
(3, 3, 3),
(4, 5, 4);

-- --------------------------------------------------------

--
-- Table structure for table `ingredients`
--

CREATE TABLE `exercises` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ingredients`
--

INSERT INTO `exercises` (`id`, `name`) VALUES
(8, 'Push-ups'),
(6, 'Squats'),
(4, 'Plank'),
(2, 'Burpees'),
(5, 'Pull-ups'),
(3, 'Bench Press'),
(7, 'Sun Salutation'),
(9, 'Deadlift');

-- --------------------------------------------------------

--
-- Table structure for table `ingredients_for_recipe`
--

CREATE TABLE `exercises_for_training` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `exercise_id` bigint(20) UNSIGNED NOT NULL,
  `training_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ingredients_for_recipe`
--

INSERT INTO `exercises_for_training` (`id`, `exercise_id`, `training_id`) VALUES
(1, 8, 1),
(2, 6, 1),
(3, 4, 1),
(4, 2, 2),
(5, 5, 3),
(6, 3, 3),
(7, 9, 3),
(8, 7, 4);

-- --------------------------------------------------------

--
-- Table structure for table `recipes`
--

CREATE TABLE `trainings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `difficulty` varchar(50) NOT NULL,
  `duration` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recipes`
--

INSERT INTO `trainings` (`id`, `name`, `type`, `difficulty`, `duration`) VALUES
(1, 'Full Body Beginner', 'full_body', 'easy', 45),
(2, 'Cardio Burn', 'cardio', 'medium', 30),
(3, 'Upper Body Strength', 'strength', 'hard', 60),
(4, 'Morning Yoga Flow', 'yoga', 'easy', 40);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `allergens`
--
ALTER TABLE `muscles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `allergens_for_recipe`
--
ALTER TABLE `muscles_for_training`
  ADD PRIMARY KEY (`id`),
  ADD KEY `muscle_id` (`muscle_id`),
  ADD KEY `training_id` (`training_id`);

--
-- Indexes for table `drinks`
--
ALTER TABLE `equipment`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `drinks_for_recipe`
--
ALTER TABLE `equipment_for_training`
  ADD PRIMARY KEY (`id`),
  ADD KEY `equipment_id` (`equipment_id`),
  ADD KEY `training_id` (`training_id`);

--
-- Indexes for table `ingredients`
--
ALTER TABLE `exercises`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `ingredients_for_recipe`
--
ALTER TABLE `exercises_for_training`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exercise_id` (`exercise_id`),
  ADD KEY `training_id` (`training_id`);

--
-- Indexes for table `recipes`
--
ALTER TABLE `trainings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `allergens`
--
ALTER TABLE `muscles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `allergens_for_recipe`
--
ALTER TABLE `muscles_for_training`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `drinks`
--
ALTER TABLE `equipment`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `drinks_for_recipe`
--
ALTER TABLE `equipment_for_training`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `ingredients`
--
ALTER TABLE `exercises`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `ingredients_for_recipe`
--
ALTER TABLE `exercises_for_training`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `recipes`
--
ALTER TABLE `trainings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `allergens_for_recipe`
--
ALTER TABLE `muscles_for_training`
  ADD CONSTRAINT `muscles_for_training_ibfk_1` FOREIGN KEY (`muscle_id`) REFERENCES `muscles` (`id`),
  ADD CONSTRAINT `muscles_for_training_ibfk_2` FOREIGN KEY (`training_id`) REFERENCES `trainings` (`id`);

--
-- Constraints for table `drinks_for_recipe`
--
ALTER TABLE `equipment_for_training`
  ADD CONSTRAINT `equipment_for_training_ibfk_1` FOREIGN KEY (`equipment_id`) REFERENCES `equipment` (`id`),
  ADD CONSTRAINT `equipment_for_training_ibfk_2` FOREIGN KEY (`training_id`) REFERENCES `trainings` (`id`);

--
-- Constraints for table `ingredients_for_recipe`
--
ALTER TABLE `exercises_for_training`
  ADD CONSTRAINT `exercises_for_training_ibfk_1` FOREIGN KEY (`exercise_id`) REFERENCES `exercises` (`id`),
  ADD CONSTRAINT `exercises_for_training_ibfk_2` FOREIGN KEY (`training_id`) REFERENCES `trainings` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
