
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


--
-- Database: `movietheatredb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bookings`
--

CREATE TABLE `tbl_bookings` (
  `book_id` int(11) NOT NULL,
  `ticket_id` varchar(30) NOT NULL,
  `t_id` int(11) NOT NULL COMMENT 'theater id',
  `user_id` int(11) NOT NULL,
  `show_id` int(11) NOT NULL,
  `screen_id` int(11) NOT NULL,
  `no_seats` int(3) NOT NULL COMMENT 'number of seats',
  `amount` int(5) NOT NULL,
  `ticket_date` date NOT NULL,
  `date` date NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `tbl_bookings` (`book_id`, `ticket_id`, `t_id`, `user_id`, `show_id`, `screen_id`, `no_seats`, `amount`, `ticket_date`, `date`, `status`) VALUES
(12, 'BKID6369842', 4, 4, 17, 3, 1, 380, '2021-04-15', '2021-11-15', 1),
(13, 'BKID2313964', 6, 5, 21, 6, 4, 2400, '2021-04-16', '2021-11-16', 1),
(14, 'BKID1766021', 6, 5, 22, 6, 2, 1200, '2021-04-16', '2021-11-19', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `contact_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` int(11) NOT NULL,
  `subject` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

CREATE TABLE `tbl_login` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL COMMENT 'email',
  `password` varchar(50) NOT NULL,
  `user_type` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `tbl_login` (`id`, `user_id`, `username`, `password`, `user_type`) VALUES
(1, 0, 'admin', 'password', 0),
(2, 3, 'theatre', 'password', 1),
(3, 4, 'theatre2', 'password', 1),
(12, 2, 'harryden@gmail.com', 'password', 2),
(15, 14, 'USR295127', 'PWD195747', 1),
(17, 4, 'bruno@gmail.com', 'password', 2),
(18, 6, 'THR760801', 'PWD649976', 1),
(19, 5, 'james@gmail.com', 'password', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movie`
--

CREATE TABLE `tbl_movie` (
  `movie_id` int(11) NOT NULL,
  `t_id` int(11) NOT NULL COMMENT 'theatre id',
  `movie_name` varchar(255) NOT NULL,
  `cast` varchar(500) NOT NULL,
  `desc` varchar(1000) NOT NULL,
  `release_date` date NOT NULL,
  `image` varchar(200) NOT NULL,
  `video_url` varchar(200) NOT NULL,
  `status` int(1) NOT NULL COMMENT '0 means active '
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `tbl_movie` (`movie_id`, `t_id`, `movie_name`, `cast`, `desc`, `release_date`, `image`, `video_url`, `status`) VALUES
(1, 6, 'The Eternals', 'Richard Madden, Salma Hayek, Angelina Jolie, Kit Harrington', '2021-11-04', 'The saga of the eternals, a race of immortal beings who lived on earth and shaped its history and civilizations.', 'images/eternals.jpg', 'https://www.youtube.com/watch?v=x_me3xsvDgk', 0),
(11, 6, 'Shang-Chi and the Legend of the Ten Rings', 'Simu Liu, Awkwafina, Tony Leung, Fala Chen, Micheele Yeoh', '2021-09-20', 'Shang-Chi is a master of numerous unarmed and weaponry-based wushu styles, including the use of the gun, nunchaku, and jian.','images/Shang_Chi.jpg', 'https://www.youtube.com/watch?v=8YjFbMbfXaQ', 0),
(12, 6, 'Dune', ' Timothée Chalamet, Rebecca Ferguson, Oscar Isaac, Jason Momoa', 'Feature adaptation of Frank Herberts science fiction novel, about the son of a noble family entrusted with the protection of the most valuable asset and most vital element in the galaxy', '2021-10-22', 'images/Dune.jpg', 'https://www.youtube.com/watch?v=8g18jFHCLXk', 0),
(13, 6, 'Spencer', ' Kristen Stewart, Timothy Spall, Jack Nielen ', 'During her Christmas holidays with the royal family at the Sandringham estate in Norfolk, England, Diana Spencer, struggling with mental health problems, decides to end her decade-long marriage to Prince Charles.', '2021-11-04', 'images/spencer.jpg', 'https://www.youtube.com/watch?v=Lagauhb5GyY', 0),
(17, 6, 'Ghostbusters: Afterlife', 'Ben Affleck, Henry Cavil, Ezra Miller', 'This is a demo description for the movie ZSJL.', '2021-11-19', 'images/ghost.jpg', 'https://www.youtube.com/watch?v=ahZFCF--uRY', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_news`
--

CREATE TABLE `tbl_news` (
  `news_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cast` varchar(100) NOT NULL,
  `news_date` date NOT NULL,
  `description` varchar(200) NOT NULL,
  `attachment` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `tbl_news` (`news_id`, `name`, `cast`, `news_date`, `description`, `attachment`) VALUES

(3, 'Spider-Man: No Way Home', 'Zendaya, Benedict Cumberbatch, Tom Holland, Marisa Tomei, Jon Favreau ', '2021-12-19', 'With Spider-Mans identity now revealed, Peter asks Doctor Strange for help. When a spell goes wrong, dangerous foes from other worlds start to appear, forcing Peter to discover what it truly means to be Spider-Man.', 'news_images/spider_man.jpg'),
(9, 'The Matrix Resurrections', 'Keanu Reeves, Christina Ricci, Carrie-Anne Moss, Yahya Abdul-Mateen II ', '2021-12-22', 'Plagued by strange memories, Neos life takes an unexpected turn when he finds himself back inside the Matrix.', 'news_images/matrix.jpg'),
(10, 'The Batman', 'Barry Keoghan, Peter Sarsgaard, Robert Pattinson, Colin Farrell ', '2022-01-04', 'In his second year of fighting crime, Batman uncovers corruption in Gotham City that connects to his own family while facing a serial killer known as the Riddler.', 'news_images/batman.jpg');
-- --------------------------------------------------------

--
-- Table structure for table `tbl_registration`
--

CREATE TABLE `tbl_registration` (
  `user_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `age` int(2) NOT NULL,
  `gender` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `tbl_registration` (`user_id`, `name`, `email`, `phone`, `age`, `gender`) VALUES
(2, 'Harry Den', 'harryden@gmail.com', '1247778540', 22, 'gender'),
(4, 'Bruno', 'bruno@gmail.com', '7451112450', 30, 'gender'),
(5, 'James', 'james@gmail.com', '7124445696', 25, 'gender');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_screens`
--

CREATE TABLE `tbl_screens` (
  `screen_id` int(11) NOT NULL,
  `t_id` int(11) NOT NULL COMMENT 'theatre id',
  `screen_name` varchar(110) NOT NULL,
  `seats` int(11) NOT NULL COMMENT 'number of seats',
  `charge` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `tbl_screens` (`screen_id`, `t_id`, `screen_name`, `seats`, `charge`) VALUES
(1, 3, 'Screen 1', 100, 350),
(2, 3, 'Screen 2', 150, 310),
(3, 4, 'Screen 1', 200, 380),
(4, 14, 'Screen1', 34, 250),
(5, 6, 'Demo Screen', 150, 300),
(6, 6, 'IMX Screen', 200, 600);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shows`
--

CREATE TABLE `tbl_shows` (
  `s_id` int(11) NOT NULL,
  `st_id` int(11) NOT NULL COMMENT 'show time id',
  `theatre_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `status` int(11) NOT NULL COMMENT '1 means show available',
  `r_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `tbl_shows` (`s_id`, `st_id`, `theatre_id`, `movie_id`, `start_date`, `status`, `r_status`) VALUES
(19, 15, 6, 11, '2021-11-15', 0, 1),
(20, 20, 6, 13, '2021-11-15', 0, 1),
(21, 19, 6, 12, '2021-11-31', 1, 1),
(22, 18, 6, 17, '2021-11-16', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_show_time`
--

CREATE TABLE `tbl_show_time` (
  `st_id` int(11) NOT NULL,
  `screen_id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL COMMENT 'noon,second,etc',
  `start_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `tbl_show_time` (`st_id`, `screen_id`, `name`, `start_time`) VALUES
(1, 1, 'Noon', '10:00:00'),
(2, 1, 'Matinee', '14:00:00'),
(3, 1, 'First', '18:00:00'),
(4, 1, 'Second', '21:00:00'),
(5, 2, 'Noon', '10:00:00'),
(6, 2, 'Matinee', '14:00:00'),
(7, 2, 'First', '18:00:00'),
(8, 2, 'Second', '21:00:00'),
(9, 3, 'Noon', '10:00:00'),
(10, 3, 'Matinee', '14:00:00'),
(11, 3, 'First', '18:00:00'),
(12, 3, 'Second', '21:00:00'),
(14, 4, 'Noon', '12:03:00'),
(15, 5, 'First', '00:08:00'),
(16, 5, 'Second', '15:10:00'),
(17, 5, 'Others', '18:10:00'),
(18, 6, 'Noon', '00:02:00'),
(19, 6, 'First', '06:35:00'),
(20, 6, 'Second', '09:18:00'),
(21, 5, 'Matinee', '20:04:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_theatre`
--

CREATE TABLE `tbl_theatre` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `place` varchar(100) NOT NULL,
  `state` varchar(50) NOT NULL,
  `pin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `tbl_theatre` (`id`, `name`, `address`, `place`, `state`, `pin`) VALUES
(3, 'City Pride Satara  Rd', 'Satara Rd', 'Pune', 'MH', 411037),
(4, 'Cinepolis', 'Westend Mall Aundh', 'Pune', 'MH', 411007),
(5, 'City Pride Kothrud', 'Kothrud', 'Pune', 'MH', 411038),
(6, 'INOX', 'Bund Garden Rd', 'Pune', 'MH', 411001);



ALTER TABLE `tbl_bookings`
  ADD PRIMARY KEY (`book_id`);


ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`contact_id`);


ALTER TABLE `tbl_login`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `tbl_movie`
  ADD PRIMARY KEY (`movie_id`);


ALTER TABLE `tbl_news`
  ADD PRIMARY KEY (`news_id`);


ALTER TABLE `tbl_registration`
  ADD PRIMARY KEY (`user_id`);


ALTER TABLE `tbl_screens`
  ADD PRIMARY KEY (`screen_id`);


ALTER TABLE `tbl_shows`
  ADD PRIMARY KEY (`s_id`);


ALTER TABLE `tbl_show_time`
  ADD PRIMARY KEY (`st_id`);


ALTER TABLE `tbl_theatre`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `tbl_bookings`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

ALTER TABLE `tbl_contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `tbl_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

ALTER TABLE `tbl_movie`
  MODIFY `movie_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

ALTER TABLE `tbl_news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

ALTER TABLE `tbl_registration`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

ALTER TABLE `tbl_screens`
  MODIFY `screen_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

ALTER TABLE `tbl_shows`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

ALTER TABLE `tbl_show_time`
  MODIFY `st_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

ALTER TABLE `tbl_theatre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
