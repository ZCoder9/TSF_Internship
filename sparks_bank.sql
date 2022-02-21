

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sparks_bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(1, 'Kasim', 'Hassanraza', 900, '2022-01-03 18:08:56'),
(2, 'Sakib', 'Minhaj', 500, '2022-01-03 14:55:43'),
(3, 'Kasim', 'khalil', 190, '2022-01-13 14:58:55'),
(4, 'Aman', 'Bilal', 500, '2022-01-25 21:49:16'),
(5, 'Bilal', 'Aman', 900, '2022-01-29 20:41:06'),
(6, 'Aman', 'Bilal', 1000, '2022-02-05 23:34:40'),
(7, 'Bilal', 'Aman', 200, '2022-02-06 10:42:24');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1, 'Aman', 'amanzaz@gmail.com', 50000),
(2, 'Bilal', 'bilalsar55@gmail.com', 30000),
(3, 'Sakib', 'lodhawalasakib3@gmail.com', 39900),
(4, 'Ayan', 'ayankhalak4@gmail.com', 10000),
(5, 'Asharaf', 'asharafdholkawala@gmail.com', 40000),
(6, 'Kasim', 'kasims786@gmail.com', 19990),
(7, 'Hassanraza', 'hassanrazameghreji@gmail.com', 50009),
(8, 'Minhaj', 'minhajmori@gmail.com', 40100),
(9, 'Husnain', 'husnainsheth@gmail.com', 30000),
(10, 'Khalil', 'khalil.zk13@gmail.com', 50001);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
