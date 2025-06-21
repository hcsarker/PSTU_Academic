-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 15, 2025 at 11:14 AM
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
-- Database: `creativity_freaks`
--

-- --------------------------------------------------------

--
-- Table structure for table `batches`
--

CREATE TABLE `batches` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `category` varchar(100) NOT NULL,
  `start_date` date NOT NULL,
  `total_seats` int(11) NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `original_price` decimal(10,2) NOT NULL,
  `discounted_price` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `batches`
--

INSERT INTO `batches` (`id`, `title`, `description`, `category`, `start_date`, `total_seats`, `image_url`, `original_price`, `discounted_price`, `created_at`) VALUES
(1, 'College Admission', 'Comprehensive preparation for all stages of College examination', 'Exam Preparation', '2023-06-15', 60, 'https://images.unsplash.com/photo-1434030216411-0b793f4b4173?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60', 12000.00, 8999.00, '2025-05-24 18:08:46'),
(2, 'SSC Exam', 'Crash course for engineering aspirants targeting top ranks', 'Exam Preparation', '2023-05-25', 50, 'https://images.unsplash.com/photo-1503676260728-1c00da094a0b?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60', 12000.00, 8999.00, '2025-05-24 18:08:46'),
(3, 'BCS Examination', 'Strategies and practice for business school admission test', 'Exam Preparation', '2023-06-01', 40, 'https://images.unsplash.com/photo-1454165804606-c3d57bc86b40?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60', 12000.00, 8999.00, '2025-05-24 18:08:46'),
(4, 'Bank Exam', 'Complete preparation for medical entrance examination', 'Exam Preparation', '2023-06-05', 30, 'https://images.unsplash.com/photo-1523050854058-8df90110c9f1?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60', 12000.00, 8999.00, '2025-05-24 18:08:46'),
(5, 'Varsity Admission', 'Comprehensive preparation for all stages of UPSC examination', 'Admission', '2023-06-15', 60, 'https://images.unsplash.com/photo-1522202176988-66273c2fd55f', 12000.00, 8999.00, '2025-05-24 18:08:46'),
(6, 'Medical Entrance', 'Crash course for engineering aspirants targeting top ranks', 'Admission', '2023-05-25', 50, 'https://images.unsplash.com/photo-1544947950-fa07a98d237f', 12000.00, 8999.00, '2025-05-24 18:08:46'),
(7, 'Engineering Entrance', 'Strategies and practice for engineering school admission test', 'Admission', '2023-06-01', 40, 'https://images.unsplash.com/photo-1503676382389-4809596d5290', 12000.00, 8999.00, '2025-05-24 18:08:46'),
(8, 'Science & Technology', 'Complete preparation for medical entrance examination', 'Admission', '2023-06-05', 30, 'https://images.unsplash.com/photo-1523240795612-9a054b0db644', 12000.00, 8999.00, '2025-05-24 18:08:46'),
(9, 'Physics', 'Comprehensive preparation for all stages of HSC examination', 'HSC Final', '2023-06-15', 60, 'https://images.unsplash.com/photo-1434030216411-0b793f4b4173?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60', 12000.00, 8999.00, '2025-05-24 18:08:46'),
(10, 'Chemistry', 'Crash course for engineering aspirants targeting top ranks', 'HSC Final', '2023-05-25', 50, 'https://images.unsplash.com/photo-1503676260728-1c00da094a0b?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60', 12000.00, 8999.00, '2025-05-24 18:08:46'),
(11, 'Biology', 'Strategies and practice for medical school admission test', 'HSC Final', '2023-06-01', 40, 'https://images.unsplash.com/photo-1454165804606-c3d57bc86b40?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60', 12000.00, 8999.00, '2025-05-24 18:08:46'),
(12, 'Math', 'Complete preparation for medical entrance examination', 'HSC Final', '2023-06-05', 30, 'https://images.unsplash.com/photo-1523050854058-8df90110c9f1?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60', 12000.00, 8999.00, '2025-05-24 18:08:46');

-- --------------------------------------------------------

--
-- Table structure for table `comment_likes`
--

CREATE TABLE `comment_likes` (
  `id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `action` enum('like','dislike') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comment_likes`
--

INSERT INTO `comment_likes` (`id`, `comment_id`, `user_id`, `action`, `created_at`) VALUES
(1, 1, 6, 'like', '2025-05-24 11:20:27'),
(2, 2, 7, 'like', '2025-05-24 13:35:56'),
(21, 3, 7, 'like', '2025-05-24 14:10:54'),
(23, 5, 7, 'like', '2025-05-24 14:11:02'),
(47, 2, 3, 'like', '2025-05-25 13:56:17'),
(49, 3, 3, 'like', '2025-05-25 13:56:23'),
(50, 4, 3, 'like', '2025-05-25 13:56:28'),
(51, 5, 3, 'like', '2025-05-25 13:56:39'),
(52, 1, 3, 'like', '2025-05-25 13:56:50'),
(53, 6, 3, 'like', '2025-05-25 13:56:57');

-- --------------------------------------------------------

--
-- Table structure for table `comment_replies`
--

CREATE TABLE `comment_replies` (
  `id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `reply` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comment_replies`
--

INSERT INTO `comment_replies` (`id`, `comment_id`, `user_id`, `reply`, `created_at`) VALUES
(1, 1, 6, 'sfsf', '2025-05-24 14:27:24'),
(2, 1, 6, 'ugyugu', '2025-05-24 14:27:57');

-- --------------------------------------------------------

--
-- Table structure for table `community_comments`
--

CREATE TABLE `community_comments` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `community_comments`
--

INSERT INTO `community_comments` (`id`, `post_id`, `user_id`, `comment`, `image`, `created_at`) VALUES
(1, 1, 6, 'nice', NULL, '2025-05-24 11:20:15'),
(2, 2, 6, 'ff', NULL, '2025-05-24 13:34:25'),
(3, 2, 7, 'hi', NULL, '2025-05-24 13:36:04'),
(4, 2, 7, 'hi', NULL, '2025-05-24 13:40:58'),
(5, 2, 7, 'test', NULL, '2025-05-24 14:10:26'),
(6, 1, 6, 'eww', NULL, '2025-05-24 14:28:09');

-- --------------------------------------------------------

--
-- Table structure for table `community_likes`
--

CREATE TABLE `community_likes` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` enum('post','comment') NOT NULL,
  `target_id` int(11) NOT NULL,
  `action` enum('like','dislike') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `community_likes`
--

INSERT INTO `community_likes` (`id`, `user_id`, `type`, `target_id`, `action`, `created_at`) VALUES
(1, 5, 'post', 1, 'like', '2025-05-24 11:16:45'),
(3, 6, 'post', 2, 'like', '2025-05-24 13:34:20'),
(6, 7, 'post', 2, 'like', '2025-05-24 14:10:10'),
(8, 6, 'post', 1, 'like', '2025-05-24 16:32:06');

-- --------------------------------------------------------

--
-- Table structure for table `community_posts`
--

CREATE TABLE `community_posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `community_posts`
--

INSERT INTO `community_posts` (`id`, `user_id`, `title`, `content`, `image`, `created_at`) VALUES
(1, 5, 'hi', 'Hi', '1748085402_d9d80d1290.png', '2025-05-24 11:16:42'),
(2, 6, 'Help post', 'How to solve this', '1748085576_8a6f67bba7.png', '2025-05-24 11:19:36'),
(3, 3, 'f', 'gdgd', NULL, '2025-05-25 14:10:47');

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

CREATE TABLE `contact_messages` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_messages`
--

INSERT INTO `contact_messages` (`id`, `name`, `email`, `subject`, `message`, `created_at`) VALUES
(1, 'Hridoy Chandra Sarker', 'hridoy6@gmail.com', 'ddw', 'wfwefwf', '2025-05-20 23:11:25'),
(2, 'Hridoy Chandra Sarker', 'hridoy6@gmail.com', 'REW', 'dqdd', '2025-05-20 23:17:21'),
(3, 'Hridoy Chandra Sarker', 'hridoy6@gmail.com', 'REW', 'dqdd', '2025-05-20 23:35:21'),
(4, 'Hridoy Chandra Sarker', 'hridoy6@gmail.com', 'REW', 'dqdd', '2025-05-21 00:09:00'),
(5, 'Hridoy Chandra Sarker', 'hridoy6@gmail.com', 'REW', 'dqdd', '2025-05-21 00:10:55'),
(6, 'Hridoy Chandra Sarker', 'hridoy6@gmail.com', 'REW', 'dqdd', '2025-05-21 00:13:42'),
(7, 'Hridoy Chandra Sarker', 'hridoy6@gmail.com', 'qqdd', 'wqdqdd', '2025-05-21 00:14:00'),
(8, 'Hridoy Chandra Sarker', 'hridoy6@gmail.com', 'gegee', 'egeegege', '2025-05-21 00:19:12'),
(9, 'Hridoy Chandra Sarker', 'hridoy6@gmail.com', 'gegee', 'egeegege', '2025-05-21 00:30:10'),
(10, 'Hridoy Chandra Sarker', 'hridoy6@gmail.com', 'REW', 'dqwdqd', '2025-05-21 00:31:00'),
(11, 'Hridoy Chandra Sarker', 'hridoy6@gmail.com', 'sdvs', 'wfwfw', '2025-05-21 00:41:06'),
(12, 'Hridoy Chandra Sarker', 'hridoy6@gmail.com', 'dadd', 'adaaad', '2025-05-21 00:43:07'),
(13, 'Hridoy Chandra Sarker', 'yeasin@gmail.com', 'hello', 'need help', '2025-05-24 18:18:08');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `category` varchar(100) NOT NULL,
  `thumbnail` varchar(255) DEFAULT 'default-course.jpg',
  `price` decimal(10,2) DEFAULT 0.00,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `instructor_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `subcategory` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `title`, `description`, `category`, `thumbnail`, `price`, `featured`, `instructor_id`, `created_at`, `subcategory`) VALUES
(1, 'Web Development Basics', 'Learn HTML, CSS, and JavaScript from scratch.', 'Web Development', 'webdev.jpg', 0.00, 0, 1, '2025-05-20 15:07:57', NULL),
(2, 'Advanced PHP', 'Deep dive into PHP and backend development.', 'Web Development', 'php.jpg', 49.99, 0, 1, '2025-05-20 15:07:57', NULL),
(3, 'Graphic Design Fundamentals', 'Learn the basics of graphic design and tools.', 'Design', 'design.jpg', 0.00, 0, 2, '2025-05-20 15:07:57', NULL),
(4, 'UI/UX Mastery', 'Master user experience and interface design.', 'Design', 'uiux.jpg', 79.99, 0, 2, '2025-05-20 15:07:57', NULL),
(5, 'Python for Beginners', 'Start coding in Python from scratch.', 'Programming', 'python.jpg', 0.00, 0, 1, '2025-05-20 15:07:57', NULL),
(6, 'Basic Web Development', 'Learn HTML, CSS, JS', 'Skill', 'web.jpg', 0.00, 0, 2, '2025-05-20 20:45:04', 'Web Development'),
(7, 'Medical Admission Test', 'Full preparation for MBBS', 'Admission', 'medical.jpg', 20.00, 0, 1, '2025-05-20 20:45:04', 'Medical'),
(8, 'Class 9 Math', 'Complete math guide for Class 9', 'Academic', 'math9.jpg', 0.00, 0, 3, '2025-05-20 20:45:04', 'Class 6-10'),
(9, 'Class 10 Math', 'Complete math guide for Class 10', 'Academic', 'math10.jpg', 0.00, 0, 3, '2025-05-20 20:45:04', 'Class 6-10'),
(10, 'Class 11 Math', 'Complete math guide for Class 11', 'Academic', 'math11.jpg', 0.00, 0, 3, '2025-05-20 20:45:04', 'Class 11-12'),
(11, 'Class 12 Math', 'Complete math guide for Class 12', 'Academic', 'math12.jpg', 0.00, 0, 3, '2025-05-20 20:45:04', 'Class 11-12'),
(12, 'Mathematics for Class 10', 'Comprehensive math course covering algebra, geometry, and more for Class 10 students.', 'Academic', 'math-class10.jpg', 49.99, 0, 1, '2025-05-20 22:38:41', 'Class 6-10'),
(13, 'Physics for 11th Grade', 'In-depth physics lessons focusing on mechanics and thermodynamics.', 'Academic', 'physics-11th.jpg', 59.99, 0, 2, '2025-05-20 22:38:41', 'Class 11-12'),
(14, 'Introduction to Programming', 'Learn basic programming concepts using Python.', 'Skill', 'intro-programming.jpg', 39.99, 0, 3, '2025-05-20 22:38:41', 'Programming'),
(15, 'Medical Entrance Exam Prep', 'Preparation course for medical entrance exams including MCQs and mock tests.', 'Admission', 'medical-prep.jpg', 79.99, 0, 1, '2025-05-20 22:38:41', 'Medical'),
(16, 'English Conversation Skills', 'Improve your spoken English for everyday conversations.', 'Language', 'english-conversation.jpg', 29.99, 0, 2, '2025-05-20 22:38:41', 'English'),
(17, 'Engineering Admission Guidance', 'Step-by-step guide for engineering entrance exams and admission process.', 'Admission', 'engineering-admission.jpg', 69.99, 0, 3, '2025-05-20 22:38:41', 'Engineering'),
(18, 'Creative Writing Workshop', 'Enhance your writing skills with practical exercises and feedback.', 'Skill', 'creative-writing.jpg', 34.99, 0, 1, '2025-05-20 22:38:41', 'Writing'),
(19, 'Advanced French', 'Master advanced French grammar, vocabulary, and conversation.', 'Language', 'advanced-french.jpg', 44.99, 0, 2, '2025-05-20 22:38:41', 'French'),
(20, 'Creative Writing Basics', 'Learn the art of storytelling...', 'Skill', 'creative-writing.jpg', 29.99, 1, 2, '2025-05-23 17:55:38', NULL),
(21, 'Introduction to Programming', 'Start coding from scratch...', 'Academic', 'programming.jpg', 49.99, 1, 3, '2025-05-23 17:55:38', NULL),
(22, 'Digital Marketing 101', 'Basics of marketing in the digital age', 'Skill', 'marketing.jpg', 39.99, 0, 4, '2025-05-23 17:55:38', NULL),
(23, 'Web Development Basics', 'Learn HTML, CSS, JS', 'Skill', 'webdev.jpg', 49.99, 1, 1, '2025-05-23 20:02:12', NULL),
(24, 'Python for Beginners', 'Start coding with Python', 'Skill', 'python.jpg', 59.99, 1, 1, '2025-05-23 20:02:12', NULL),
(25, 'IELTS Preparation', 'Crack IELTS test with confidence', 'Language', 'ielts.jpg', 39.99, 1, 2, '2025-05-23 20:02:12', NULL),
(26, 'Class 10 Math', 'Complete Class 10 syllabus', 'Academic', 'math.jpg', 29.99, 1, 3, '2025-05-23 20:02:12', NULL),
(27, 'Medical Admission', 'Medical university entrance prep', 'Admission', 'medical.jpg', 69.99, 1, 2, '2025-05-23 20:02:12', NULL),
(28, 'Digital Marketing', 'Promote brands online', 'Skill', 'marketing.jpg', 54.99, 1, 3, '2025-05-23 20:02:12', NULL),
(29, 'Full Stack Development', 'Test file', 'Skill', '1748327759_1278156f8c.png', 200.00, 0, 12, '2025-05-27 06:35:59', 'Web Development'),
(30, 'Advanced Korean', 'Master advanced Korean grammar, vocabulary and conversation', 'Language', '1748328703_6dd5feb98e.png', 30.00, 0, 12, '2025-05-27 06:51:43', 'Korean'),
(31, 'HSC Physics Crash Course', 'Fast-track your Physics preparation for HSC with short lectures, key concepts, and problem solving.', 'Academic', '1748330070_b21a206812.png', 49.00, 0, 12, '2025-05-27 07:14:30', 'Class 11-12'),
(32, 'Web development', 'test', 'Skill', '1748330916_db35c54856.png', 0.00, 0, 12, '2025-05-27 07:28:36', 'Web Development');

-- --------------------------------------------------------

--
-- Table structure for table `course_contents`
--

CREATE TABLE `course_contents` (
  `id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `instructor_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `type` enum('video','pdf','ppt','doc','sheet','link') NOT NULL,
  `file_path` text DEFAULT NULL,
  `video_url` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `course_reviews`
--

CREATE TABLE `course_reviews` (
  `id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rating` int(11) DEFAULT NULL CHECK (`rating` between 1 and 5),
  `review` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `enrollments`
--

CREATE TABLE `enrollments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `enrolled_at` datetime DEFAULT current_timestamp(),
  `payment_status` enum('pending','completed','failed') DEFAULT 'pending',
  `transaction_id` varchar(255) DEFAULT NULL,
  `amount_paid` decimal(10,2) DEFAULT NULL,
  `batch_id` int(11) DEFAULT NULL,
  `payment_method` varchar(50) DEFAULT NULL,
  `payment_details` text DEFAULT NULL,
  `payment_verified` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `enrollments`
--

INSERT INTO `enrollments` (`id`, `user_id`, `course_id`, `enrolled_at`, `payment_status`, `transaction_id`, `amount_paid`, `batch_id`, `payment_method`, `payment_details`, `payment_verified`) VALUES
(1, 4, 13, '2025-05-24 05:10:43', 'pending', NULL, NULL, NULL, NULL, NULL, 0),
(2, 4, 1, '2025-05-24 05:14:46', 'pending', NULL, NULL, NULL, NULL, NULL, 0),
(3, 4, 7, '2025-05-24 05:15:47', 'pending', NULL, NULL, NULL, NULL, NULL, 0),
(4, 4, 17, '2025-05-24 05:20:20', 'pending', NULL, NULL, NULL, NULL, NULL, 0),
(5, 4, 9, '2025-05-24 05:45:45', 'pending', NULL, NULL, NULL, NULL, NULL, 0),
(6, 4, 8, '2025-05-24 06:14:17', 'pending', NULL, NULL, NULL, NULL, NULL, 0),
(7, 3, 1, '2025-05-24 15:06:34', 'pending', NULL, NULL, NULL, NULL, NULL, 0),
(8, 6, 1, '2025-05-24 17:31:45', 'pending', NULL, NULL, NULL, NULL, NULL, 0),
(9, 6, 8, '2025-05-24 17:54:54', 'pending', NULL, NULL, NULL, NULL, NULL, 0),
(17, 6, 6, '2025-05-25 04:32:54', 'pending', NULL, NULL, NULL, NULL, NULL, 0),
(18, 6, 3, '2025-05-25 05:32:56', 'pending', NULL, NULL, NULL, NULL, NULL, 0),
(20, 3, 9, '2025-05-25 19:55:31', 'pending', NULL, NULL, NULL, NULL, NULL, 0),
(22, 3, 3, '2025-05-25 22:23:05', 'pending', NULL, NULL, NULL, NULL, NULL, 0),
(23, 3, 5, '2025-05-25 22:51:22', 'pending', NULL, NULL, NULL, NULL, NULL, 0),
(24, 3, 2, '2025-05-25 23:01:35', 'pending', NULL, NULL, NULL, NULL, NULL, 0),
(26, 3, 14, '2025-05-26 00:30:51', 'pending', 'CF_683361db6442c', 39.99, NULL, NULL, NULL, 0),
(27, 3, 7, '2025-05-26 00:41:42', 'pending', 'CF_68336465eb44a', 20.00, NULL, NULL, NULL, 0),
(30, 3, 4, '2025-05-26 00:44:53', 'pending', 'CF_683365258206e', 79.99, NULL, NULL, NULL, 0),
(31, 3, 28, '2025-05-26 00:45:39', 'pending', 'CF_68336552d7bee', 54.99, NULL, NULL, NULL, 0),
(33, 6, 2, '2025-05-26 00:55:24', 'pending', 'CF_6833679c4566b', 49.99, NULL, NULL, NULL, 0),
(34, 6, 4, '2025-05-26 01:01:26', 'pending', 'CF_68336906557ef', 79.99, NULL, NULL, NULL, 0),
(35, 6, 12, '2025-05-26 01:08:39', 'pending', 'CF_68336ab71364b', 49.99, NULL, NULL, NULL, 0),
(36, 6, 18, '2025-05-26 01:09:17', 'pending', 'CF_68336add455aa', 34.99, NULL, NULL, NULL, 0),
(37, 6, 16, '2025-05-26 01:10:57', 'pending', 'CF_68336b418a2a8', 29.99, NULL, NULL, NULL, 0),
(38, 6, 28, '2025-05-26 01:11:39', 'pending', 'CF_68336b6bc557e', 54.99, NULL, NULL, NULL, 0),
(43, 6, 7, '2025-05-26 01:14:05', 'pending', 'CF_68336bfdaa292', 20.00, NULL, NULL, NULL, 0),
(46, 6, 13, '2025-05-26 01:16:37', 'pending', 'CF_68336c95b0ee2', 59.99, NULL, NULL, NULL, 0),
(47, 6, 17, '2025-05-26 01:18:15', 'pending', 'CF_68336cf796866', 69.99, NULL, NULL, NULL, 0),
(50, 7, 2, '2025-05-26 10:06:38', 'pending', 'CF_6833e8cdda37c', 49.99, NULL, NULL, NULL, 0),
(52, 7, 4, '2025-05-26 10:12:01', 'pending', 'CF_6833ea11374cb', 79.99, NULL, NULL, NULL, 0),
(53, 7, 7, '2025-05-26 10:21:36', 'pending', 'CF_6833ec504dc2b', 20.00, NULL, NULL, NULL, 0),
(54, 7, 12, '2025-05-26 10:22:27', 'pending', 'CF_6833ec833474f', 49.99, NULL, NULL, NULL, 0),
(57, 7, 15, '2025-05-26 10:24:13', 'pending', 'CF_6833ecedb44ea', 79.99, NULL, NULL, NULL, 0),
(59, 7, 14, '2025-05-26 11:11:53', 'pending', 'CF_6833f819cdb55', 39.99, NULL, NULL, NULL, 0),
(60, 7, 17, '2025-05-26 11:24:15', 'pending', 'CF_6833faff2cd43', 69.99, NULL, NULL, NULL, 0),
(61, 7, 19, '2025-05-26 11:32:16', 'pending', 'CF_6833fce088975', 44.99, NULL, NULL, NULL, 0),
(62, 7, 16, '2025-05-26 11:32:37', 'pending', 'CF_6833fcf56ade5', 29.99, NULL, NULL, NULL, 0),
(64, 8, 2, '2025-05-26 15:56:09', 'pending', 'CF_68343ab8c38a4', 49.99, NULL, NULL, NULL, 0),
(65, 8, 1, '2025-05-26 15:58:07', 'pending', NULL, NULL, NULL, NULL, NULL, 0),
(66, 8, 4, '2025-05-26 15:58:27', 'pending', 'CF_68343b437fb37', 79.99, NULL, NULL, NULL, 0),
(67, 8, 7, '2025-05-26 16:00:49', 'pending', 'CF_68343bccafc65', 20.00, NULL, NULL, NULL, 0),
(71, 8, 13, '2025-05-26 16:11:06', 'pending', 'CF_68343e27c4ea4', 59.99, NULL, NULL, NULL, 0),
(77, 9, 4, '2025-05-26 16:22:22', 'pending', 'CF_683440de32fb9', 79.99, NULL, NULL, NULL, 0),
(78, 9, 7, '2025-05-26 16:39:56', 'completed', 'CF_683444fc51f93', 20.00, NULL, 'SSLCommerz', NULL, 1),
(101, 9, NULL, '2025-05-26 23:41:40', 'completed', 'CF_6834a7d4011e4', NULL, 2, NULL, NULL, 0),
(102, 9, NULL, '2025-05-26 23:42:22', 'completed', 'CF_6834a7febbb80', NULL, 3, NULL, NULL, 0),
(103, 9, 1, '2025-05-26 23:47:07', 'pending', NULL, NULL, NULL, NULL, NULL, 0),
(106, 9, 18, '2025-05-26 23:48:01', 'completed', 'CF_6834a950b75ae', 34.99, NULL, 'SSLCommerz', NULL, 1),
(107, 9, NULL, '2025-05-26 23:58:25', 'completed', 'CF_6834abc18f7b7', NULL, 1, NULL, NULL, 0),
(108, 9, NULL, '2025-05-26 23:59:28', 'completed', 'CF_6834ac0076ec0', NULL, 5, NULL, NULL, 0),
(109, 1, NULL, '2025-05-27 02:00:58', 'completed', 'CF_6834c87aaf538', NULL, 2, NULL, NULL, 0),
(110, 13, NULL, '2025-05-27 13:44:11', 'completed', 'CF_68356d4bb298a', NULL, 2, NULL, NULL, 0),
(111, 13, 2, '2025-05-27 13:45:14', 'completed', 'CF_68356d8a1a73a', 49.99, NULL, 'SSLCommerz', NULL, 1),
(112, 13, 1, '2025-05-27 13:45:50', 'pending', NULL, NULL, NULL, NULL, NULL, 0),
(113, 13, 3, '2025-05-27 13:46:11', 'pending', NULL, NULL, NULL, NULL, NULL, 0),
(114, 13, 30, '2025-05-27 14:55:47', 'completed', 'CF_68357e12f0256', 30.00, NULL, 'SSLCommerz', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` enum('course','community','message','system') NOT NULL,
  `message` text NOT NULL,
  `is_read` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `related_id` int(11) DEFAULT NULL COMMENT 'ID of related item (course, post, etc)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `type`, `message`, `is_read`, `created_at`, `related_id`) VALUES
(1, 1, 'course', 'New course \"Advanced JavaScript\" is now available!', 0, '2025-05-24 13:46:59', 101),
(2, 2, 'community', 'Someone commented on your post in the community.', 0, '2025-05-24 13:46:59', 205),
(3, 3, 'message', 'You have received a new private message from John.', 0, '2025-05-24 13:46:59', 0),
(4, 1, 'system', 'Your password was changed successfully.', 1, '2025-05-24 13:46:59', NULL),
(5, 2, 'course', 'Your enrollment in \"Python Basics\" was confirmed.', 0, '2025-05-24 13:46:59', 102),
(6, 3, 'community', 'Your post was liked by 5 users.', 1, '2025-05-24 13:46:59', 207),
(7, 1, 'message', 'Reminder: Your scheduled tutoring session is tomorrow.', 0, '2025-05-24 13:46:59', 0);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rating` int(11) DEFAULT NULL CHECK (`rating` between 1 and 5),
  `review` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT 'default.png',
  `role` enum('student','instructor','admin') DEFAULT 'student',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `avatar`, `role`, `created_at`) VALUES
(1, 'Hridoy Chandra Sarker', 'hridoy@gmail.com', '$2y$10$6Nd/ggoPKDiwB66v3fGYS.jg244PAj3d/NpNPzl7W3NmiRfRqFKbm', 'default.png', 'admin', '2025-05-16 17:13:21'),
(2, 'Bidhan', 'hridoy1@gmail.com', '$2y$10$AbIugY3IYtHA.pIoYVCVyu5sVjPQ7tM0usANdediRDnTTNr/n5.OO', '682789a5295e3_Bidhan_optimized_450.jpg', 'student', '2025-05-16 17:16:05'),
(3, 'Hridoy Chandra Sarker', 'hridoy6@gmail.com', '$2y$10$PkPa4aBpBOdl7AcaCotLHOvTK5gCTYJN94RSFgzZbqTzzaMzm89Pi', '682c90ce3f8b4_9122285.jpg', 'student', '2025-05-19 06:05:07'),
(4, 'Yeash', 'yeash@gmail.com', '$2y$10$5lxnXfCKWzSdCQxyrTWep.EaP9.goHDXKV/JP9Z2VOrvih/wLCWQa', '68302a6856328_Bidhan_optimized_450.jpg', 'student', '2025-05-23 07:57:06'),
(5, 'Sarker', 'nexgenixtoolsbestbuy@signinid.com', '$2y$10$9bkRvRQMITyJgbyoR.DKi.bhVojZyWgZ5jXlMnfZhvDXaWuzAx1O2', '68304a4f68221_Scree.png', 'student', '2025-05-23 10:13:24'),
(6, 'Hridoy Sarker', 'hcsarker2002@gmail.com', '$2y$10$kY95xQ/RPAK2vTJKTCubKebJUYhMU6.437FigfKX96arfbn0n8nGK', '6831ab1e9e2a5_IMG20230407090222.jpg', 'student', '2025-05-24 11:18:13'),
(7, 'YEasin', 'yeasin@gmail.com', '$2y$10$sRt3dQ/eiatQDYP/m9GFv.r...mcQeVMBFrLl0s4HcDK9uakHnqpy', '6831cb3084f2b_Screenshot (29).png', 'student', '2025-05-24 13:35:23'),
(8, 'Roudo Protap', 'roudo@gmail.com', '$2y$10$rzzZ.pJLyB0YHo/BxyvKkej1AWtvR5twKBtS2SD0l344Fe41hfLPW', 'default.png', 'student', '2025-05-26 05:33:57'),
(9, 'Hridoy Chandra Sarker', 'ss@gmail.com', '$2y$10$EYBIfa51KUMoREi2xKVNT.j1iJ/BIoeXhz57KP0jb0dYElPldVyHi', 'default.png', 'student', '2025-05-26 10:22:01'),
(10, 'Admin User', 'admin@creativityfreaks.com', '$2y$10$KIXQyYqzBZ/4O9dZhePlYObMP7GLksN76a3f1O/1gLRaUPndzCmGy', 'default.png', 'admin', '2025-05-26 18:59:19'),
(11, 'Instructor User', 'instructor@creativityfreaks.com', '$2y$10$KIXQyYqzBZ/4O9dZhePlYObMP7GLksN76a3f1O/1gLRaUPndzCmGy', 'default.png', 'instructor', '2025-05-26 18:59:19'),
(12, 'Instructor', 'instructor1@creativityfreaks.com', '$2y$10$c1HVc0C/7hKFRMBWxMuwoOlCfP9lhrHhsAjxEAR4P0emXaeJGnytS', 'default.png', 'instructor', '2025-05-26 20:48:01'),
(13, 'Bidhan Chokroborty', 'bidhanckb1000@gmail.com', '$2y$10$Iv1i8EWj752BuHNO6SOaMeawsaW8H2L170RdpvffEIJljSqcokPqa', '68356d3e03394_Bidhan_optimized_450.jpg', 'student', '2025-05-27 06:53:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `batches`
--
ALTER TABLE `batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment_likes`
--
ALTER TABLE `comment_likes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `comment_id` (`comment_id`,`user_id`);

--
-- Indexes for table `comment_replies`
--
ALTER TABLE `comment_replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `community_comments`
--
ALTER TABLE `community_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `community_likes`
--
ALTER TABLE `community_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `community_posts`
--
ALTER TABLE `community_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `instructor_id` (`instructor_id`);

--
-- Indexes for table `course_contents`
--
ALTER TABLE `course_contents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `instructor_id` (`instructor_id`);

--
-- Indexes for table `course_reviews`
--
ALTER TABLE `course_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `enrollments`
--
ALTER TABLE `enrollments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_enrollment` (`user_id`,`course_id`),
  ADD KEY `batch_id` (`batch_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`,`is_read`,`created_at`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `batches`
--
ALTER TABLE `batches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `comment_likes`
--
ALTER TABLE `comment_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `comment_replies`
--
ALTER TABLE `comment_replies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `community_comments`
--
ALTER TABLE `community_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `community_likes`
--
ALTER TABLE `community_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `community_posts`
--
ALTER TABLE `community_posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `course_contents`
--
ALTER TABLE `course_contents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course_reviews`
--
ALTER TABLE `course_reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `enrollments`
--
ALTER TABLE `enrollments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comment_replies`
--
ALTER TABLE `comment_replies`
  ADD CONSTRAINT `comment_replies_ibfk_1` FOREIGN KEY (`comment_id`) REFERENCES `community_comments` (`id`),
  ADD CONSTRAINT `comment_replies_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `community_comments`
--
ALTER TABLE `community_comments`
  ADD CONSTRAINT `community_comments_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `community_posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `community_comments_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `community_likes`
--
ALTER TABLE `community_likes`
  ADD CONSTRAINT `community_likes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `community_posts`
--
ALTER TABLE `community_posts`
  ADD CONSTRAINT `community_posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_ibfk_1` FOREIGN KEY (`instructor_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `course_contents`
--
ALTER TABLE `course_contents`
  ADD CONSTRAINT `course_contents_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  ADD CONSTRAINT `course_contents_ibfk_2` FOREIGN KEY (`instructor_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `course_reviews`
--
ALTER TABLE `course_reviews`
  ADD CONSTRAINT `course_reviews_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `course_reviews_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `enrollments`
--
ALTER TABLE `enrollments`
  ADD CONSTRAINT `enrollments_ibfk_1` FOREIGN KEY (`batch_id`) REFERENCES `batches` (`id`),
  ADD CONSTRAINT `enrollments_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `enrollments_ibfk_3` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`);

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
