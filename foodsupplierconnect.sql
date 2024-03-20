-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2024 at 09:38 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodsupplierconnect`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `count` int(11) NOT NULL,
  `adminID` varchar(55) NOT NULL,
  `password` varchar(55) NOT NULL,
  `information` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`count`, `adminID`, `password`, `information`) VALUES
(1, 'Admin', 'Admin@120', ''),
(2, 'Empire', 'emp@120', 'emp@120'),
(3, 'Krishna Palace', 'kp@120', 'kp@120'),
(4, 'The coffee house', 'coffee@120', 'the coffee house'),
(5, 'Annapurna Kitchen', 'ak@120', 'ak@120');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` decimal(10,2) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_supplier` varchar(255) NOT NULL,
  `cust_name` varchar(255) NOT NULL,
  `cust_email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`product_id`, `product_name`, `product_price`, `product_image`, `product_supplier`, `cust_name`, `cust_email`) VALUES
(1, 'Manchorian', 55.00, 'manchoori.jpeg', 'The coffee house', 'vish', 'vish@gmail.com'),
(2, 'Dhokla', 40.00, 'dhokla.jpeg', 'Krishna Palace', 'vish', 'vish@gmail.com'),
(3, 'Khaja', 100.00, 'khaja.jpeg', 'Annapurna Kitchen', 'vish', 'vish@gmail.com'),
(4, 'Upma', 30.00, 'upma.jpeg', 'Krishna Palace', 'Vaishnavi Ghatage', 'vaishnavi@gmail.com'),
(5, 'Paneer Masala', 120.00, 'paneer-masala.jpeg', 'Empire', 'Vaishnavi Ghatage', 'vaishnavi@gmail.com'),
(6, 'Papad', 120.00, 'papad.jpeg', 'Annapurna Kitchen', 'Rutuja Kinange', 'rutuja@gmail.com'),
(7, 'Bharit Bhakri', 120.00, 'bharit.jpeg', 'Annapurna Kitchen', 'Rutuja Kinange', 'rutuja@gmail.com'),
(8, 'Papad', 120.00, 'papad.jpeg', 'Annapurna Kitchen', 'sanika Kulakarni', 'sanika@gmail.com'),
(9, 'Akkha Masoor Thali', 100.00, 'masoor.jpeg', 'Krishna Palace', 'sanika Kulakarni', 'sanika@gmail.com'),
(10, 'South Indian Thali', 100.00, 'south-indian.jpeg', 'Krishna Palace', 'sanika Kulakarni', 'sanika@gmail.com'),
(11, 'Manchorian', 55.00, 'manchoori.jpeg', 'The coffee house', 'sanika Kulakarni', 'sanika@gmail.com'),
(12, 'Ice Cream', 40.00, 'ice-cream.jpeg', 'The coffee house', 'sanika Kulakarni', 'sanika@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_desc` varchar(255) NOT NULL,
  `product_price` decimal(10,2) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_category` varchar(255) NOT NULL,
  `product_supplier` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`product_id`, `product_name`, `product_desc`, `product_price`, `product_image`, `product_category`, `product_supplier`) VALUES
(1, 'Poha', 'Poha is a flattened rice dish from India, seasoned with spices, vegetables, and sometimes peanuts, popular for breakfast or snacks.', 25.00, 'pohe.jpeg', 'Breakfast', 'Empire'),
(2, 'Dhokla', 'Dhokla is a savory steamed cake from India, made with fermented rice and chickpea flour, served as a snack or breakfast.', 40.00, 'dhokla.jpeg', 'Breakfast', 'Krishna Palace'),
(3, 'Upma', 'Upma is a South Indian dish made from semolina, seasoned with spices, vegetables, and sometimes nuts, commonly eaten for breakfast or as a snack.', 30.00, 'upma.jpeg', 'Breakfast', 'Krishna Palace'),
(4, 'Khaja', 'Khaja is a traditional Indian sweet made from flour, ghee, and sugar, typically layered and fried until crispy, then coated in sugar syrup.', 100.00, 'khaja.jpeg', 'Homemade', 'Annapurna Kitchen'),
(5, 'Papad', 'Papad is a thin, crisp disc-shaped Indian appetizer made from lentil, chickpea, or rice flour, often seasoned with spices and then sun-dried or roasted.', 120.00, 'papad.jpeg', 'Homemade', 'Annapurna Kitchen'),
(6, 'Mix Pickle', 'Mixed pickle is a condiment consisting of various vegetables such as carrots, cauliflower, and green chilies, marinated in a spicy and tangy mixture of vinegar and spices.', 100.00, 'mix.jpeg', 'Homemade', 'Annapurna Kitchen'),
(7, 'Bharit Bhakri', 'Bharit bhakri is a traditional Maharashtrian dish consisting of spiced mashed vegetables, typically eggplant (bharit), served with unleavened bread (bhakri).', 120.00, 'bharit.jpeg', 'Main Course', 'Annapurna Kitchen'),
(8, 'Paneer Masala', 'Paneer masala is a North Indian dish featuring paneer (Indian cottage cheese) cooked in a spiced tomato-based gravy, often accompanied by onions, bell peppers, and aromatic spices.', 120.00, 'paneer-masala.jpeg', 'Main Course', 'Empire'),
(9, 'Palak Paneer', 'Palak Paneer is a North Indian dish consisting of paneer (Indian cottage cheese) cooked in a creamy spinach (palak) gravy, flavored with garlic, onions, and spices.', 120.00, 'palak.jpeg', 'Main Course', 'Empire'),
(10, 'Akkha Masoor Thali', '\"Akkha Masoor Thali\" typically refers to a traditional Indian meal featuring dishes made with whole red lentils (masoor dal). This thali might include various dishes like Akkha Masoor Dal (whole red lentil curry), rice, roti (flatbread), vegetable dishes,', 100.00, 'masoor.jpeg', 'Thali', 'Krishna Palace'),
(11, 'South Indian Thali', 'A South Indian Thali is a traditional meal consisting of a variety of dishes typically served on a large platter or banana leaf. It usually includes staples like rice, sambar (a lentil-based vegetable stew), rasam (a tangy soup), a variety of vegetable cu', 100.00, 'south-indian.jpeg', 'Thali', 'Krishna Palace'),
(12, 'punjabi Thali', 'Punjabi thali: A rich and diverse spread featuring dishes like dal makhani, paneer tikka, chole, roti, and lassi. Flavorful and satisfying.', 100.00, 'panjabi.jpeg', 'Thali', 'Krishna Palace'),
(13, 'Kanda Bhaji', 'Kanda bhaji: Crispy onion fritters made by coating onion slices in chickpea flour batter, seasoned with spices, fried until golden brown.', 100.00, 'kanda-bhaji.jpeg', 'Snacks', 'Krishna Palace'),
(14, 'Palak Bhaji', 'A savory Indian dish made by sautéing spinach leaves with spices, onions, garlic, and sometimes potatoes or paneer.', 25.00, 'palak-bhaji.jpeg', 'Snacks', 'Krishna Palace'),
(15, 'Misal Pav', ' A spicy Maharashtrian dish made with sprouted moth beans or lentils, served with spicy gravy, onions, farsan (crispy toppings), and bread.', 45.00, 'missal.jpeg', 'Snacks', 'Krishna Palace'),
(16, 'Noodles', 'A versatile dish made from unleavened dough, typically wheat or rice flour, stretched, rolled, or extruded, cooked in various ways.', 60.00, 'noodle.jpeg', 'Desserts and ColdDrinks', 'The coffee house'),
(17, 'Manchorian', 'A popular Indo-Chinese dish made by deep-frying vegetable or meat balls, then tossing them in a tangy and spicy sauce.', 55.00, 'manchoori.jpeg', 'Desserts and ColdDrinks', 'The coffee house'),
(18, 'Ice Cream', 'A frozen dessert made from cream, sugar, and flavorings, churned while freezing to create a creamy texture, available in various flavors.', 40.00, 'ice-cream.jpeg', 'Desserts and ColdDrinks', 'The coffee house');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `food` varchar(30) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `dateTime` date NOT NULL,
  `mode` varchar(55) NOT NULL,
  `status` varchar(55) NOT NULL,
  `cust_name` varchar(55) NOT NULL,
  `cust_contact` varchar(55) NOT NULL,
  `cust_email` varchar(55) NOT NULL,
  `cust_address` varchar(55) NOT NULL,
  `product_supplier` varchar(55) NOT NULL,
  `username` varchar(55) NOT NULL,
  `email` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `food`, `price`, `quantity`, `total`, `dateTime`, `mode`, `status`, `cust_name`, `cust_contact`, `cust_email`, `cust_address`, `product_supplier`, `username`, `email`) VALUES
(1, 'Dhokla', 40.00, 2, 80.00, '2024-03-15', 'cash', 'Ordered', 'vish', '86599689', 'vish@gmail.com', 'nidasoshi', 'Krishna Palace', 'vish', 'vish@gmail.com'),
(2, 'South Indian Thali', 100.00, 4, 400.00, '2024-03-15', 'cash', 'Ordered', 'Vaishnavi Ghatage', '6958564567', 'vaishnavi@gmail.com', 'Janawad', 'Krishna Palace', 'Vaishnavi Ghatage', 'vaishnavi@gmail.com'),
(3, 'Kanda Bhaji', 100.00, 1, 100.00, '2024-03-15', 'cash', 'Ordered', 'Vaishnavi Ghatage', '9846750988', 'vaishnavi@gmail.com', 'Janawad', 'Krishna Palace', 'Vaishnavi Ghatage', 'vaishnavi@gmail.com'),
(4, 'punjabi Thali', 100.00, 3, 300.00, '2024-03-15', 'cash', 'Ordered', 'Rutuja Kinange', '9856388876', 'rutuja@gmail.com', 'Kagawad', 'Krishna Palace', 'Rutuja Kinange', 'rutuja@gmail.com'),
(5, 'punjabi Thali', 100.00, 3, 300.00, '2024-03-15', 'cash', 'Ordered', 'Sanika Kulkarni', '5677969800', 'sanika@gmail.com', 'Rampur', 'The coffee house', 'sanika Kulakarni', 'sanika@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `signin`
--

CREATE TABLE `signin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(55) NOT NULL,
  `password` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `signin`
--

INSERT INTO `signin` (`id`, `username`, `email`, `password`) VALUES
(1, 'Vaishnavi Ghatage', 'vaishnavi@gmail.com', 'vaishnavi'),
(2, 'Rutuja Kinange', 'rutuja@gmail.com', 'rutuja'),
(3, 'sanika kulakarni', 'sanika@gmail.com', 'sanika'),
(4, 'hit', 'hit@gmail.com', 'hit'),
(5, 'vish', 'vish@gmail.com', 'vish');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`count`,`adminID`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signin`
--
ALTER TABLE `signin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `count` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `signin`
--
ALTER TABLE `signin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
