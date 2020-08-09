-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2018 at 12:22 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.5.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `cpassword` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`id`, `username`, `email`, `password`, `cpassword`) VALUES
(1, 'Aishwarya18', 'aishasawant2010@gmail.com', '202418', '202418');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `pname` varchar(500) NOT NULL,
  `pimage` mediumtext NOT NULL,
  `price` varchar(255) NOT NULL,
  `discount_price` varchar(255) NOT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `total_price` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `pname`, `pimage`, `price`, `discount_price`, `quantity`, `total_price`, `phone`) VALUES
(8, 'Dailry Milk', 'image\\41HemcKMCTL.jpg', '250', '220', '1', '220', '9876541230'),
(12, 'India Gate Basmati Rice', 'image\\rice.jpg', '170', '120', '1', '120', '9876541230');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `cname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `cname`) VALUES
(1, 'Oil'),
(2, 'Flour'),
(3, 'Rice'),
(4, 'Dal'),
(5, 'Dry-Fruits'),
(6, 'Detergents'),
(7, 'Wheat'),
(8, 'Soap & Shampoos'),
(9, 'Noodles'),
(10, 'Personal Care'),
(11, 'Kitchen Appliance'),
(12, 'Salt&Sugar'),
(13, 'Chocolates'),
(14, 'Ice-Cream'),
(15, 'Biscuits'),
(16, 'Snacks'),
(17, 'Cold-Drinks');

-- --------------------------------------------------------

--
-- Table structure for table `checkout`
--

CREATE TABLE `checkout` (
  `id` int(11) NOT NULL,
  `fname` varchar(500) NOT NULL,
  `lname` varchar(500) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `postal` varchar(255) NOT NULL,
  `payment_mode` varchar(255) DEFAULT NULL,
  `card_number` varchar(255) DEFAULT NULL,
  `month` varchar(255) DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  `cvv` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `checkout`
--

INSERT INTO `checkout` (`id`, `fname`, `lname`, `phone`, `email`, `address`, `city`, `country`, `state`, `postal`, `payment_mode`, `card_number`, `month`, `year`, `cvv`) VALUES
(12, 'Aishwarya', 'Sawant', '9876541230', 'aishasawant2010@gmail.com', 'Vrindavan', 'Mumbai', 'INDIA', 'Maharashtra', '400603', 'Cash On Delievery', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `phone`, `message`) VALUES
(1, 'Aishwarya Sawant', 'aishasawant2010@gmail.com', '9876541230', 'I Can''t Find Your Store');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `order_id` varchar(500) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `pname` varchar(500) NOT NULL,
  `pimage` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `discount_price` varchar(255) NOT NULL,
  `total_price` varchar(255) NOT NULL,
  `added_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_id`, `phone`, `pname`, `pimage`, `quantity`, `discount_price`, `total_price`, `added_date`) VALUES
(10, '911672-3219-365682', '9876541230', 'Dailry Milk', 'image\\41HemcKMCTL.jpg', '1', '220', '220', '26-03-2018'),
(14, '208797-9312-194302', '9876541230', 'Dairy Milk Bubbly Special Edition', 'image\\bubbly.jpg', '2', '125', '250', '28-03-2018'),
(15, '528972-7864-707362', '7778889991', 'Dailry Milk', 'image\\41HemcKMCTL.jpg', '1', '220', '220', '31-03-2018'),
(16, '751326-5685-240765', '7778889991', 'Amul Cup Ice-Cream', 'image\\download (8).jpg', '2', '38', '76', '04-04-2018'),
(17, '751326-5685-240765', '7778889991', 'Pears Soap', 'image\\pears.jpg', '2', '62', '124', '04-04-2018'),
(18, '751326-5685-240765', '9876541230', 'Dailry Milk', 'image\\41HemcKMCTL.jpg', '1', '220', '220', '04-04-2018'),
(19, '751326-5685-240765', '9876541230', 'Amul Cup Ice-Cream', 'image\\download (8).jpg', '1', '38', '38', '04-04-2018'),
(20, '751326-5685-240765', '9876541230', 'Toor Dal', 'image\\download.jpg', '1', '180', '180', '04-04-2018');

-- --------------------------------------------------------

--
-- Table structure for table `orders1`
--

CREATE TABLE `orders1` (
  `id` int(11) NOT NULL,
  `order_id` varchar(500) NOT NULL,
  `pname` varchar(500) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `pimage` mediumtext NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `discount_price` varchar(255) NOT NULL,
  `total_price` varchar(255) NOT NULL,
  `added_date` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders1`
--

INSERT INTO `orders1` (`id`, `order_id`, `pname`, `phone`, `pimage`, `quantity`, `discount_price`, `total_price`, `added_date`, `status`) VALUES
(4, '147840-4909-718043', 'Dairy Milk Bubbly Special Edition', '9876541230', 'image\\bubbly.jpg', '1', '125', '125', '21-03-2018', 'Delievered'),
(5, '528972-7864-707362', 'Amul Sunday Family Pack', '7778889991', 'image\\images (7).jpg', '1', '195', '195', '31-03-2018', 'Delievered'),
(6, '208797-9312-194302', 'Almond(Badam)', '9876541230', 'image\\images (1).jpg', '2', '440', '880', '28-03-2018', 'Delievered'),
(7, '302020-3507-899261', 'Dairy Milk Silk Oreo', '9876541230', 'image\\oreo.jpg', '1', '110', '110', '04-04-2018', 'Delievered');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `pname` varchar(255) NOT NULL,
  `cname` varchar(255) NOT NULL,
  `pimage` mediumtext NOT NULL,
  `price` varchar(255) NOT NULL,
  `discount_price` varchar(255) NOT NULL,
  `sdescription` varchar(500) NOT NULL,
  `ldescription` varchar(1500) NOT NULL,
  `size` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `pname`, `cname`, `pimage`, `price`, `discount_price`, `sdescription`, `ldescription`, `size`, `status`) VALUES
(1, 'Sunflower Oil', 'Oil', 'image\\oil1.jpg', '350', '290', 'Sunflower oil is the non-volatile oil pressed from the seeds of sunflower. Sunflower oil is commonly used in food as a frying oil, and in cosmetic formulations as an emollient.', 'Sunflower oil is the non-volatile oil pressed from the seeds of sunflower. Sunflower oil is commonly used in food as a frying oil, and in cosmetic formulations as an emollient.', '1Litre', 'Middle'),
(2, 'Aashirwad Aata Fresh', 'Flour', 'image\\download (1).jpg', '650', '500', 'From the stable of Indias most trusted Atta brand - Aashirvaad - comes a new variety - Aashirvaad Atta with Multigrains. ', 'From the stable of Indias most trusted Atta brand - Aashirvaad - comes a new variety - Aashirvaad Atta with Multigrains. This all-new variant is designed to provide nourishment for people of all ages and is an integrated mix of six different grains - wheat, soya, channa, oat, maize & psyllium husk - which gives a healthy option for the consumers. Aashirvaad Atta with Multigrains is an excellent source of vitamins which are vital in strengthening immunity and extra protein content to improve body strength. The extra fibre makes your food easier to digest; ', '10 KG', 'Middle'),
(3, 'India gate basmati rice', 'Rice', 'image\\rice.jpg', '650', '600', 'India Gate Dubar Rice are identified by their long grains of rice and special fragrance. The cooked rice grains develop a fluffy texture and the length of grains also increase. The rice pairs well with curries, lentils etc.', 'India Gate Dubar Rice are identified by their long grains of rice and special fragrance. The cooked rice grains develop a fluffy texture and the length of grains also increase. The rice pairs well with curries, lentils etc.', '10 KG', 'Middle'),
(4, 'Toor Dal', 'Dal', 'image\\download.jpg', '220', '180', 'Pro Nature Tur Dal is one of the staple foods to add its importance in Indian cuisines. Toor dal is mostly rich in Carbohydrates, Fibre, Calcium, Protein and Fat. It is also helpful in the treatment of internal organ swelling.', 'Pro Nature Tur Dal is one of the staple foods to add its importance in Indian cuisines. Toor dal is mostly rich in Carbohydrates, Fibre, Calcium, Protein and Fat. It is also helpful in the treatment of internal organ swelling. Toor dal is finest to have it with rice and rotis. Toor Dal is one of the fresh and fine class products presented by Pro Nature.', '1 KG', 'Top'),
(5, 'Almond(Badam)', 'Dry-Fruits', 'image\\images (1).jpg', '500', '440', 'Dry Fruits are a rich source of anti-oxidants and nutrients, no artificial color, flavor or preservative is added to any of the products, thereby making them 100% natural and healthy for consumption.', ' These are candied with sulfur-less sugar and liquid glucose. Fresho Signature Candied Dry Fruits are a rich source of anti-oxidants and nutrients, no artificial color, flavor or preservative is added to any of the products, thereby making them 100% natural and healthy for consumption.', '1 KG', 'Top'),
(6, 'Cashew(Kaju)', 'Dry-Fruits', 'image\\cashew_nuts-2.jpg', '1100', '1090', 'Shelf Life: 6 Months Specialty: No Preservatives and No Artificial Flavor Package Contents: 1 Pack of Split Cashew Nuts, 500 grams Storage instructions: Keep in a cool and dry place for longer life and quality', 'Shelf Life: 6 Months Specialty: No Preservatives and No Artificial Flavor Package Contents: 1 Pack of Split Cashew Nuts, 500 grams Storage instructions: Keep in a cool and dry place for longer life and quality', '1 KG', 'Top'),
(8, 'Detergents', 'Detergents', 'image\\images (2).jpg', '350', '299', 'Soaps are water-soluble sodium or potassium salts of fatty acids. Soaps are made from fats and oils, or their fatty acids, by treating them chemically with a strong alkali.', 'Soaps are water-soluble sodium or potassium salts of fatty acids. Soaps are made from fats and oils, or their fatty acids, by treating them chemically with a strong alkali. First let''s examine the composition of fats, oils and alkalis; then we''ll review the soap-making process.', '1 Litre', 'Middle'),
(10, 'India Gate Basmati Rice', 'Rice', 'image\\rice.jpg', '170', '120', 'India Gate Dubar Rice are identified by their long grains of rice and special fragrance. The cooked rice grains develop a fluffy texture and the length of grains also increase. The rice pairs well with curries, lentils etc.', 'India Gate Dubar Rice are identified by their long grains of rice and special fragrance. The cooked rice grains develop a fluffy texture and the length of grains also increase. The rice pairs well with curries, lentils etc.', '1 KG', 'Bottom'),
(11, 'Toor Dal', 'Dal', 'image\\download.jpg', '280', '220', 'Pro Nature Tur Dal is one of the staple foods to add its importance in Indian cuisines. Toor dal is mostly rich in Carbohydrates, Fibre, Calcium, Protein and Fat. It is also helpful in the treatment of internal organ swelling.', 'Pro Nature Tur Dal is one of the staple foods to add its importance in Indian cuisines. Toor dal is mostly rich in Carbohydrates, Fibre, Calcium, Protein and Fat. It is also helpful in the treatment of internal organ swelling. Toor dal is finest to have it with rice and rotis. Toor Dal is one of the fresh and fine class products presented by Pro Nature.', '1 KG', 'Bottom'),
(12, 'Wheat', 'Wheat', 'image\\download (4).jpg', '300', '240', 'Organic Multi Grain Atta has high protein content and helps keep your body healthy and active. It has abundant minerals that play a decisive role in improving the overall liveliness of the body. It is also used in the preparation of a variety of delicious snacks. It can be mixed with whole wheat flour to produce a variety of nutritious food items.', 'Organic Multi Grain Atta has high protein content and helps keep your body healthy and active. It has abundant minerals that play a decisive role in improving the overall liveliness of the body. It is also used in the preparation of a variety of delicious snacks. It can be mixed with whole wheat flour to produce a variety of nutritious food items.', '5 KG', 'Bottom'),
(13, 'Sunflower Oil', 'OIl', 'image\\images (3).jpg', '650', '590', 'Sunflower oil is the non-volatile oil pressed from the seeds of sunflower. Sunflower oil is commonly used in food as a frying oil, and in cosmetic formulations as an emollient.', 'Sunflower oil is the non-volatile oil pressed from the seeds of sunflower. Sunflower oil is commonly used in food as a frying oil, and in cosmetic formulations as an emollient.', '5 Litre', 'Bottom'),
(14, 'Soap & Shampoos', 'Soap & Shampoos', 'image\\soap.jpg', '100', '80', 'Oxygen Moisture shampoo is a transparent, lightweight formula enriched with Oxyfusion Technology. Its oxygen-fused moisturizing ingredients help to gently cleanse and moisturize hair, to give it bounce and a thicker look.', 'Oxygen Moisture shampoo is a transparent, lightweight formula enriched with Oxyfusion Technology. Its oxygen-fused moisturizing ingredients help to gently cleanse and moisturize hair, to give it bounce and a thicker look.', '1', 'Bottom'),
(15, 'Detergents', 'Detergent', 'image\\images (2).jpg', '400', '310', 'Soaps are water-soluble sodium or potassium salts of fatty acids. Soaps are made from fats and oils, or their fatty acids, by treating them chemically with a strong alkali.', 'Soaps are water-soluble sodium or potassium salts of fatty acids. Soaps are made from fats and oils, or their fatty acids, by treating them chemically with a strong alkali.', '1 Litre', 'Bottom'),
(16, 'Maggi Noodles', 'Noodles', 'image\\maggi.jpg', '150', '125', 'Maggi 2-Minute Masala Noodles (Pack of 12)', 'Maggi 2-Minute Masala Noodles (Pack of 12)', '', 'Middle'),
(18, 'Vim Lemon Dishwash Bar', 'Kitchen Appliance', 'image\\download (6).jpg', '45', '38', 'Vim Lemon Dishwash Bar', 'Vim Lemon Dishwash Bar', '300 Gm', 'Bottom'),
(19, 'Tata Salt', 'Salt&Sugar', 'image\\images (5).jpg', '25', '18', 'Table salt or common salt is a mineral composed primarily of sodium chloride, a chemical compound belonging to the larger class of salts; salt in its natural form as a crystalline mineral is known as rock salt or halite.', 'Table salt or common salt is a mineral composed primarily of sodium chloride, a chemical compound belonging to the larger class of salts; salt in its natural form as a crystalline mineral is known as rock salt or halite.', '1 KG', 'Middle'),
(20, 'Madhur Sugar - Refined', 'Salt&Sugar', 'image\\download (7).jpg', '80', '60', 'Madhur Sugar - Refined, 1 kg Pouch', 'Madhur Sugar - Refined, 1 kg Pouch', '1 KG', 'Top'),
(21, 'Dailry Milk', 'Chocolates', 'image\\41HemcKMCTL.jpg', '250', '220', 'Cadbury Dairy Milk is all about regaling in the chocolate''s richness and creaminess Indulge in the irresistible taste of silk Indulge in a rich, smooth and creamy celebration', 'Cadbury Dairy Milk is all about regaling in the chocolate''s richness and creaminess Indulge in the irresistible taste of silk Indulge in a rich, smooth and creamy celebration', '60G', 'Top'),
(22, 'Dairy Milk Bubbly Special Edition', 'Chocolates', 'image\\bubbly.jpg', '150', '125', 'Cadbury Dairy Milk is all about regaling in the chocolate''s richness and creaminess Indulge in the irresistible taste of silk Indulge in a rich, smooth and creamy celebration', 'Cadbury Dairy Milk is all about regaling in the chocolate''s richness and creaminess Indulge in the irresistible taste of silk Indulge in a rich, smooth and creamy celebration', '40G', 'Bottom'),
(23, 'Dairy Milk Silk Oreo', 'Chocolates', 'image\\oreo.jpg', '140', '110', 'Cadbury Dairy Milk is all about regaling in the chocolate''s richness and creaminess Indulge in the irresistible taste of silk Indulge in a rich, smooth and creamy celebration', 'Cadbury Dairy Milk is all about regaling in the chocolate''s richness and creaminess Indulge in the irresistible taste of silk Indulge in a rich, smooth and creamy celebration', '40G', 'Middle'),
(24, 'Amul Sunday Family Pack', 'Ice-Cream', 'image\\images (7).jpg', '250', '195', 'Made from Fresh Milk (Real Milk, Real Ice cream): No added vegetable oil, hence no Frozen Dessert. No Differentiation in Quality Standards of Consumer & Catering/ Institutional Packs: Stringent Standards than Specified by PFA & BIS for more fat and less overrun (less air) to give creamier feeling. Best Ingredients: Fresh milk, superior fruits & nuts.', 'Made from Fresh Milk (Real Milk, Real Ice cream): No added vegetable oil, hence no Frozen Dessert. No Differentiation in Quality Standards of Consumer & Catering/ Institutional Packs: Stringent Standards than Specified by PFA & BIS for more fat and less overrun (less air) to give creamier feeling. Best Ingredients: Fresh milk, superior fruits & nuts.', '500G', 'Top'),
(25, 'Amul Cup Ice-Cream', 'Ice-Cream', 'image\\download (8).jpg', '45', '38', 'Made from Fresh Milk (Real Milk, Real Ice cream): No added vegetable oil, hence no Frozen Dessert. No Differentiation in Quality Standards of Consumer & Catering/ Institutional Packs: Stringent Standards than Specified by PFA & BIS for more fat and less overrun (less air) to give creamier feeling. Best Ingredients: Fresh milk, superior fruits & nuts.', 'Made from Fresh Milk (Real Milk, Real Ice cream): No added vegetable oil, hence no Frozen Dessert. No Differentiation in Quality Standards of Consumer & Catering/ Institutional Packs: Stringent Standards than Specified by PFA & BIS for more fat and less overrun (less air) to give creamier feeling. Best Ingredients: Fresh milk, superior fruits & nuts.', '50G', 'Bottom'),
(26, 'Amul Happy''s Ice-Cream', 'Ice-Cream', 'image\\images (6).jpg', '450', '390', 'Made from Fresh Milk (Real Milk, Real Ice cream): No added vegetable oil, hence no Frozen Dessert. No Differentiation in Quality Standards of Consumer & Catering/ Institutional Packs: Stringent Standards than Specified by PFA & BIS for more fat and less overrun (less air) to give creamier feeling. Best Ingredients: Fresh milk, superior fruits & nuts.', 'Made from Fresh Milk (Real Milk, Real Ice cream): No added vegetable oil, hence no Frozen Dessert. No Differentiation in Quality Standards of Consumer & Catering/ Institutional Packs: Stringent Standards than Specified by PFA & BIS for more fat and less overrun (less air) to give creamier feeling. Best Ingredients: Fresh milk, superior fruits & nuts.', '600G', 'Middle'),
(27, 'All Types Of Biscuits', 'Biscuits', 'image\\download (2).jpg', '250', '210', 'Biscuit is a term used for a variety of primarily flour-based baked food products. The term is applied to two distinct products in North America and the Commonwealth of Nations and Europe', 'Biscuit is a term used for a variety of primarily flour-based baked food products. The term is applied to two distinct products in North America and the Commonwealth of Nations and Europe', '500G', 'Middle'),
(28, 'Pears Soap', 'Personal Care', 'image\\pears.jpg', '75', '62', 'Pears Soap', 'Pears Soap', '125G', 'Middle'),
(29, 'Mix Farsan', 'Snacks', 'image\\snack4.jpg', '150', '125', 'A snack is a portion of food, smaller than a regular meal, generally eaten between meals. Snacks come in a variety of forms including packaged snack foods and other processed foods, as well as items made from fresh ingredients at home.', 'A snack is a portion of food, smaller than a regular meal, generally eaten between meals. Snacks come in a variety of forms including packaged snack foods and other processed foods, as well as items made from fresh ingredients at home.', '500G', 'Top'),
(30, 'Kurkure', 'Snacks', 'image\\snack3.jpg', '80', '65', 'A snack is a portion of food, smaller than a regular meal, generally eaten between meals. Snacks come in a variety of forms including packaged snack foods and other processed foods, as well as items made from fresh ingredients at home.', 'A snack is a portion of food, smaller than a regular meal, generally eaten between meals. Snacks come in a variety of forms including packaged snack foods and other processed foods, as well as items made from fresh ingredients at home.', '500G', 'Bottom'),
(31, 'Thums Up', 'Cold-Drinks', 'image\\cold1.jpg', '75', '66', 'Introduced in 1977, Thums Up is among the largest selling soft drinks in the country. For several decades now, Thums Ups strong taste packed with a punch of soda has been loved by children and adults alike, often defining an adventurous aspect of the drinkers personality. These people have tasted the thunder and will have it no other way. ', 'Introduced in 1977, Thums Up is among the largest selling soft drinks in the country. For several decades now, Thums Ups strong taste packed with a punch of soda has been loved by children and adults alike, often defining an adventurous aspect of the drinkers personality. These people have tasted the thunder and will have it no other way. ', '1.5L', 'Middle'),
(32, 'Cococola', 'Cold-Drinks', 'image\\cold2.jpg', '75', '68', 'Coca-Cola is the most popular and biggest-selling soft drink in history, as well as the best-known brand in the world.', 'Coca-Cola is the most popular and biggest-selling soft drink in history, as well as the best-known brand in the world.', '750 ml', 'Top'),
(33, 'Fanta Fruity Orange', 'Cold-Drinks', 'image\\cold3.jpg', '38', '35', 'The same refreshing Fanta taste, now with added Orange Fruit Juice! The all new Fanta Fruity Orange is more Fun, more vibrant, bubbly and more natural. Fanta lets you make the most of a moment with the tempting taste and its tingling bubbles', 'The same refreshing Fanta taste, now with added Orange Fruit Juice! The all new Fanta Fruity Orange is more Fun, more vibrant, bubbly and more natural. Fanta lets you make the most of a moment with the tempting taste and its tingling bubbles', '300 ml', 'Bottom'),
(34, 'Sprite Soft Drink', 'Cold-Drinks', 'image\\cold4.jpg', '35', '38', 'Sprite is a clear lime drink launched in 1999 and since has established itself as one of the most selling lemon-flavoured soft drinks. The crisp lemon-lime taste of Sprite refreshes your every moment, providing you a cut-thru perspective with an authentic, edgy, urban and straight forward style.', 'Sprite is a clear lime drink launched in 1999 and since has established itself as one of the most selling lemon-flavoured soft drinks. The crisp lemon-lime taste of Sprite refreshes your every moment, providing you a cut-thru perspective with an authentic, edgy, urban and straight forward style.', '300 ml', 'Bottom');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `postal` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`id`, `fname`, `lname`, `phone`, `email`, `country`, `city`, `postal`, `state`, `address`) VALUES
(1, 'Aishwarya', 'Sawant', '9876541230', 'aishasawant2010@gmail.com', 'INDIA', 'Mumbai', '400603', 'Maharashtra', 'Vrindavan Society'),
(2, 'Riya', 'Desai', '7778889991', 'riyadesai@gmail.com', 'INDIA', 'Mumbai', '400604', 'Maharashtra', 'R-city mall');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `fname`, `lname`, `phone`, `email`, `password`) VALUES
(2, 'Aishwarya', 'Sawant', '9876541230', 'aishasawant2010@gmail.com', '2018'),
(7, 'Riya', 'Desai', '7778889991', 'riyadesai@gmail.com', '6789');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `pname` varchar(255) NOT NULL,
  `pimage` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `discount_price` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `pname`, `pimage`, `price`, `discount_price`, `phone`) VALUES
(12, 'Dailry Milk', 'image\\41HemcKMCTL.jpg', '250', '220', '9876541230'),
(13, 'Amul Sunday Family Pack', 'image\\images (7).jpg', '250', '195', '7778889991');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `checkout`
--
ALTER TABLE `checkout`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders1`
--
ALTER TABLE `orders1`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `order_id` (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `checkout`
--
ALTER TABLE `checkout`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `orders1`
--
ALTER TABLE `orders1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
