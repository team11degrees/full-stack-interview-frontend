-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 17, 2023 at 04:12 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pfnl23`
--

-- --------------------------------------------------------

--
-- Table structure for table `payroll_data`
--

CREATE TABLE `payroll_data` (
  `id` int(11) NOT NULL,
  `employee_name` varchar(255) NOT NULL,
  `payroll_number` varchar(20) NOT NULL,
  `basic_salary` decimal(10,2) NOT NULL,
  `allowances` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`allowances`)),
  `deductions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`deductions`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payroll_data`
--

INSERT INTO `payroll_data` (`id`, `employee_name`, `payroll_number`, `basic_salary`, `allowances`, `deductions`) VALUES
(1, 'John Doe', 'P12345', '50000.00', '[{\"id\": 1, \"name\": \"Housing Allowance\", \"amount\": 10000, \"is_cash_benefit\": true, \"activated_at\": \"2023-01-15\"}]', '[{\"id\": 1, \"name\": \"Tax Deduction\", \"amount\": 8000, \"has_relief\": true, \"relief\": {\"id\": 1, \"name\": \"Tax Relief\", \"amount\": 2000, \"affecting_gross\": false, \"activated_at\": \"2023-01-15\"}}, {\"id\": 2, \"name\": \"Pension Deduction\", \"amount\": 3000, \"has_relief\": false}]'),
(2, 'Jane Smith', 'P67890', '60000.00', '[{\"id\": 1, \"name\": \"Housing Allowance\", \"amount\": 12000, \"is_cash_benefit\": true, \"activated_at\": \"2023-02-01\"}]', '[{\"id\": 1, \"name\": \"Tax Deduction\", \"amount\": 10000, \"has_relief\": true, \"relief\": {\"id\": 1, \"name\": \"Tax Relief\", \"amount\": 2500, \"affecting_gross\": false, \"activated_at\": \"2023-02-01\"}}]'),
(3, 'Alice Johnson', 'P54321', '55000.00', '[{\"id\": 2, \"name\": \"Transport Allowance\", \"amount\": 4000, \"is_cash_benefit\": true, \"activated_at\": \"2023-03-10\"}]', '[{\"id\": 2, \"name\": \"Pension Deduction\", \"amount\": 3500, \"has_relief\": false}]'),
(4, 'Michael Brown', 'P98765', '48000.00', '[{\"id\": 3, \"name\": \"Meal Allowance\", \"amount\": 2000, \"is_cash_benefit\": true, \"activated_at\": \"2023-04-15\"}]', '[{\"id\": 3, \"name\": \"Tax Deduction\", \"amount\": 7000, \"has_relief\": true, \"relief\": {\"id\": 2, \"name\": \"Tax Relief\", \"amount\": 1800, \"affecting_gross\": false, \"activated_at\": \"2023-04-15\"}}]'),
(5, 'Emily Davis', 'P24680', '52000.00', '[]', '[{\"id\": 4, \"name\": \"Tax Deduction\", \"amount\": 7200, \"has_relief\": true, \"relief\": {\"id\": 3, \"name\": \"Tax Relief\", \"amount\": 1600, \"affecting_gross\": false, \"activated_at\": \"2023-05-20\"}}]'),
(6, 'David Wilson', 'P13579', '56000.00', '[{\"id\": 4, \"name\": \"Transport Allowance\", \"amount\": 2500, \"is_cash_benefit\": true, \"activated_at\": \"2023-06-10\"}]', '[{\"id\": 4, \"name\": \"Tax Deduction\", \"amount\": 8500, \"has_relief\": true, \"relief\": {\"id\": 4, \"name\": \"Tax Relief\", \"amount\": 2100, \"affecting_gross\": false, \"activated_at\": \"2023-06-10\"}}]'),
(7, 'Olivia Miller', 'P97531', '58000.00', '[{\"id\": 5, \"name\": \"Housing Allowance\", \"amount\": 14000, \"is_cash_benefit\": true, \"activated_at\": \"2023-07-05\"}]', '[{\"id\": 5, \"name\": \"Tax Deduction\", \"amount\": 8200, \"has_relief\": true, \"relief\": {\"id\": 5, \"name\": \"Tax Relief\", \"amount\": 1900, \"affecting_gross\": false, \"activated_at\": \"2023-07-05\"}}]'),
(8, 'William Taylor', 'P86420', '54000.00', '[{\"id\": 6, \"name\": \"Transport Allowance\", \"amount\": 3000, \"is_cash_benefit\": true, \"activated_at\": \"2023-08-20\"}]', '[{\"id\": 6, \"name\": \"Tax Deduction\", \"amount\": 7800, \"has_relief\": true, \"relief\": {\"id\": 6, \"name\": \"Tax Relief\", \"amount\": 1700, \"affecting_gross\": false, \"activated_at\": \"2023-08-20\"}}]'),
(9, 'Sophia Martinez', 'P75309', '51000.00', '[]', '[{\"id\": 7, \"name\": \"Tax Deduction\", \"amount\": 7600, \"has_relief\": true, \"relief\": {\"id\": 7, \"name\": \"Tax Relief\", \"amount\": 1400, \"affecting_gross\": false, \"activated_at\": \"2023-09-15\"}}, {\"id\": 8, \"name\": \"Pension Deduction\", \"amount\": 3200, \"has_relief\": false}]'),
(10, 'Liam Anderson', 'P64287', '57000.00', '[{\"id\": 7, \"name\": \"Housing Allowance\", \"amount\": 11000, \"is_cash_benefit\": true, \"activated_at\": \"2023-10-10\"}]', '[{\"id\": 8, \"name\": \"Tax Deduction\", \"amount\": 8300, \"has_relief\": true, \"relief\": {\"id\": 8, \"name\": \"Tax Relief\", \"amount\": 2000, \"affecting_gross\": false, \"activated_at\": \"2023-10-10\"}}]');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `payroll_data`
--
ALTER TABLE `payroll_data`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `payroll_data`
--
ALTER TABLE `payroll_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
