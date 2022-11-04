-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 05, 2022 at 11:46 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `id` int(11) NOT NULL,
  `detail` varchar(255) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `wards` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`id`, `detail`, `district`, `name`, `phone_number`, `province`, `user_id`, `wards`) VALUES
(62, 'Nha Rieng', 'Thành phố Sơn La', 'Dang Van Kiet', '0397919744', 'Tỉnh Sơn La', 28, 'Phường Tô Hiệu'),
(63, 'Cong ty', 'Thành phố Sơn La', 'Dang Van Kiet', '0397919744', 'Tỉnh Sơn La', 28, 'Phường Chiềng Lề'),
(74, 'Nha rieng', 'Thị xã Mường Lay', 'Pham the bao', '0397919744', 'Tỉnh Điện Biên', 28, 'Phường Na Lay'),
(80, 'Nha rieng', 'Huyện Thuận Châu', 'Dang van kiet', '0397919744', 'Tỉnh Sơn La', 30, 'Xã Mường Bám'),
(88, 'nha rieng', 'Quận Hải Châu', 'dang van kiet', '01369', 'Thành phố Đà Nẵng', 30, 'Phường Hòa Thuận Tây');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `author` varchar(255) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `type_of_book` varchar(255) DEFAULT NULL,
  `date_add` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `author`, `description`, `image`, `name`, `price`, `type_of_book`, `date_add`) VALUES
(5, 'Nguyễn Nhật Ánh', 'Ta bắt gặp trong Tôi Thấy Hoa Vàng Trên Cỏ Xanh một thế giới đấy bất ngờ và thi vị non trẻ với những suy ngẫm giản dị thôi nhưng gần gũi đến lạ. Câu chuyện của Tôi Thấy Hoa Vàng Trên Cỏ Xanh có chút này chút kia, để ai soi vào cũng thấy mình trong đó, kiểu như lá thư tình đầu đời của cu Thiều chẳng hạ ngây ngô và khờ khạo.', 'https://salt.tikicdn.com/cache/400x400/ts/product/24/60/67/285edab8194f4dbe15ee8b93f0bd3250.jpg.webp', 'Tôi Thấy Hoa Vàng Trên Cỏ Xanh', 130000, 'Văn Học', NULL),
(6, 'Nguyễn Nhật Ánh', 'Câu chuyện về 5 chú chó đầy thú vị và cũng không kém cảm xúc lãng mạn- tác phẩm mới nhất của nhà văn bestseller Nguyễn Nhật Ánh sẽ khiến bạn thay đổi nhiều trong cách nhìn về loài thú cưng số 1 thế giới này.', 'https://salt.tikicdn.com/cache/400x400/ts/product/9b/54/18/3644094bbd2abf97688c192cbaf9d99f.jpg.webp', 'Con Chó Nhỏ Mang Giỏ Hoa Hồng', 130000, 'Văn Học', NULL),
(7, 'Nguyễn Nhật Ánh', 'Mở đầu là kỳ nghỉ hè tại một ngôi làng thơ mộng ven sông với nhân vật là những đứa trẻ mới lớn có vô vàn trò chơi đơn sơ hấp dẫn ghi dấu mãi trong lòng.   Mối tình đầu trong veo của cô bé Rùa và chàng sinh viên quê học ở thành phố có giống tình đầu của bạn thời đi học? Và cái cách họ thương nhau giấu giếm, không dám làm nhau buồn, khát khao hạnh phúc đến nghẹt thở có phải là câu chuyện chính?', 'https://salt.tikicdn.com/cache/400x400/ts/product/ab/e4/1d/99f8e207c44bee4ac86c06cfeaefba8e.jpg.webp', 'Ngồi Khóc Trên Cây: Truyện Dài', 97000, 'Truyện Dài', NULL),
(8, 'Nguyễn Nhật Ánh', 'Một câu chuyện giản dị, chứa đầy bất ngờ cho tới trang cuối cùng. Và đẹp lộng lẫy, vì lòng vị tha và tình yêu thương, khiến mắt rưng rưng vì một nỗi mừng vui hân hoan. Cuốn sách như một đốm lửa thắp lên lòng khát khao sống tốt trên đời.', 'https://salt.tikicdn.com/cache/400x400/ts/product/b8/87/c8/542c790cf9d95460b1cb9ac0d2901dde.jpg.webp', 'Làm Bạn Với Bầu Trời (Bìa Cứng)', 120000, 'Văn Học', NULL),
(9, 'Nguyễn Nhật Ánh', 'Mắt biếc là một tác phẩm được nhiều người bình chọn là hay nhất của nhà văn Nguyễn Nhật Ánh. Tác phẩm này cũng đã được dịch giả Kato Sakae dịch sang tiếng Nhật để giới thiệu với độc giả Nhật Bản. ', 'https://salt.tikicdn.com/cache/400x400/ts/product/10/d1/35/b2098bf8884bb8a5fbcd42a978a6b601.jpg.webp', 'Mắt Biếc (Tái Bản 2019 Bìa cứng)', 200000, 'Văn Học', NULL),
(10, 'Nguyễn Nhật Ánh', 'Ngày xưa có một chuyện tình có phải là một câu chuyện cảm động khi người ta yêu nhau, nỗi khát khao một hạnh phúc êm đềm ấm áp đến thế; hay đơn giản chỉ là chuyện ba người - anh, em, và người ấy…?', 'https://salt.tikicdn.com/cache/400x400/ts/product/5b/39/44/d3f194b3a009608d58985a3fedf07124.jpg.webp', 'Ngày Xưa Có Một Chuyện Tình', 120000, 'Văn Học', NULL),
(38, 'Tiêu Đỉnh', 'Sách tiên hiệp hay', 'https://res.cloudinary.com/testingcloudinary123/image/upload/v1659410855/my-uploads/crxis4miytbhlrv2dg7i.jpg', 'Tru Tiên Thanh Vân Chí - Tiêu Đỉnh', 200000, 'Tản văn', NULL),
(39, 'Lư Tư Hạo', 'Sách tản văn tiên hiệp hay', 'https://res.cloudinary.com/testingcloudinary123/image/upload/v1659410928/my-uploads/es9qjdujfyy4ij7vqniq.jpg', 'Dám mơ lớn, đừng hoài phí tuổi trẻ', 200000, 'Tản văn', NULL),
(48, 'Lư Tư Hạo', 'sach hay', 'https://res.cloudinary.com/testingcloudinary123/image/upload/v1659431586/my-uploads/z2fmcgii1hr0jsxsjmtt.jpg', 'Dám mơ lớn, đừng hoài phí tuổi trẻ', 200000, 'Tản văn', NULL),
(86, 'Lư Tư Hạo', 'sach', 'https://res.cloudinary.com/testingcloudinary123/image/upload/v1659512377/my-uploads/lpm1aknjcyqkg6d4coec.jpg', 'Dám mơ lớn, đừng hoài phí tuổi trẻ', 200000, 'Tiên hiêp', NULL),
(87, 'Lư Tư Hạo', 'sach', 'https://res.cloudinary.com/testingcloudinary123/image/upload/v1659512382/my-uploads/zrlqq5nwzuh6v9l0jet6.jpg', 'Dám mơ lớn, đừng hoài phí tuổi trẻ', 200000, 'Tiên hiêp', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cartitem`
--

CREATE TABLE `cartitem` (
  `id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cartitem`
--

INSERT INTO `cartitem` (`id`, `book_id`, `qty`, `user_id`) VALUES
(27, 5, 1, 1),
(66, 9, 2, 30),
(67, 5, 1, 30),
(68, 10, 2, 30),
(84, 6, 1, 30);

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `rate` int(11) NOT NULL,
  `time_create` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `favorite_book`
--

CREATE TABLE `favorite_book` (
  `id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `date_add` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(89);

-- --------------------------------------------------------

--
-- Table structure for table `selling_book`
--

CREATE TABLE `selling_book` (
  `id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `admin` bit(1) DEFAULT NULL,
  `birthday` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `pass_word` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `admin`, `birthday`, `full_name`, `pass_word`, `user_name`) VALUES
(28, b'0', '2000-10-10', 'Dang Van Kiet', '$2a$10$OwPAKoUZdn91ayYd3sUOueqbcBY3zhjO1KkHAMPLSDClfDaUgvrwK', 'dangkiet'),
(30, b'1', '2000-10-10', 'Dang Kiet', '$2a$10$sPvZ.oPYTDzsNFK7nPifrOvkaMF4N9R1gWXlnTGRyGO4Xk6sXqRL2', 'dangkietadmin');

-- --------------------------------------------------------

--
-- Table structure for table `user_order`
--

CREATE TABLE `user_order` (
  `id` int(11) NOT NULL,
  `address_id` int(11) NOT NULL,
  `create_day` varchar(255) DEFAULT NULL,
  `list_products` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_order`
--

INSERT INTO `user_order` (`id`, `address_id`, `create_day`, `list_products`, `status`, `user_id`) VALUES
(81, 80, '3/8/2022 | 14:10', '9-2;', 'Chờ xác nhận', 30),
(82, 80, '3/8/2022 | 14:18', '9-2;', 'Chờ xác nhận', 30),
(83, 80, '3/8/2022 | 14:19', '9-2;', 'Chờ xác nhận', 30),
(85, 80, '3/8/2022 | 14:38', '9-2;', 'Chờ xác nhận', 30);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cartitem`
--
ALTER TABLE `cartitem`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favorite_book`
--
ALTER TABLE `favorite_book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `selling_book`
--
ALTER TABLE `selling_book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_order`
--
ALTER TABLE `user_order`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
