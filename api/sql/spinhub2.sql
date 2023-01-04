-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2022 at 01:13 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spinhub2`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `album_id` int(11) NOT NULL,
  `album_title` varchar(255) NOT NULL,
  `artist` varchar(255) NOT NULL,
  `year` year(4) DEFAULT NULL,
  `img_url` varchar(255) NOT NULL,
  `genre_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`album_id`, `album_title`, `artist`, `year`, `img_url`, `genre_id`) VALUES
(1, 'Abbey Road', 'The Beatles', 2001, 'https://i.discogs.com/M2yc5OJZPdVoDm2_UlRRXuDlDguamLLSdnbziNmZoQI/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTI2MDc0/MjQtMTYzMDYwMTA4/Ny0xMTk5LmpwZWc.jpeg', 1),
(2, 'OK Computer', 'Radiohead', 2001, 'https://i.discogs.com/k1fBOV3OHda7VLhSTxEvxfs6BTYqUpOLZALtKh2v2-w/rs:fill/g:sm/q:40/h:300/w:300/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTQ5NTA3/OTgtMTM4ODYyMzYx/MS0yMzYyLmpwZWc.jpeg', 1),
(3, '666 Ways to Love', 'Jeffrey Records', 2001, 'https://i.discogs.com/YN5TYIltmm284QYOD4JeCwkCXjkzv13BKDnh-yU8trs/rs:fit/g:sm/q:90/h:600/w:577/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTI1MjU1/OTMzLTE2NjkyMDI4/ODgtODA0MC5qcGVn.jpeg', 1),
(4, 'Marblebog', 'Tova', 2001, 'https://i.discogs.com/EG8IgEmqJIJzTntBObJgS8FNNlArV4qv12EU-vyjAnI/rs:fit/g:sm/q:90/h:600/w:599/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTI0NDEw/MTE0LTE2NjIyODQz/ODEtMTQxNS5qcGVn.jpeg', 1),
(5, '2 Minutes Or Less', 'Subsonics', 2001, 'https://i.discogs.com/ezJuHBh_s4gxHncfhJYsnBGYHjsfy9Iwta4iaSIe8eA/rs:fit/g:sm/q:90/h:600/w:593/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTI1MjU2/MDgwLTE2NjkyMDc0/MjEtMTYxOS5qcGVn.jpeg', 1),
(6, 'We\'re All Grown Up 7\"', 'Hazel O\'Connor', 2001, 'https://www.vinylnet.co.uk/_assets/_user/images/prods/16551816551854_1.jpg', 1),
(7, 'Madness In Manila', 'Shadows Fall', 2001, 'https://i.discogs.com/T_lB7S-XrO0yLCQE-yHfB-YS4p9mUaAJ6WGbkbkDCSA/rs:fit/g:sm/q:90/h:400/w:400/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTg3NjI1/MzYtMTQ2ODIzMzU2/My05MDQ3LmpwZWc.jpeg', 1),
(8, 'Mirrorworld', 'Serious Black', 2001, 'https://i.discogs.com/nXDGFW-AjUQjEO49FOsW-CHuZAwElR2qBuAXgJXPQKs/rs:fit/g:sm/q:40/h:300/w:300/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTkxNTY0/MzAtMTUyNzE1MDA0/Ny01Nzk4LmpwZWc.jpeg', 2),
(9, 'Mastery', 'Lancer', 2001, 'https://i.discogs.com/aGXZBvn8vOB5KcWUX01mRSsm7cpVRkfj-mUcpwO-LVc/rs:fit/g:sm/q:40/h:300/w:300/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTk2NjA5/ODAtMTQ4NjEzMzky/Ni00MjIwLmpwZWc.jpeg', 2),
(10, 'Karmacode', 'Lacuna Coil', 2001, 'https://i.discogs.com/6aoonYeEIhsipXhZUJsWdP1kkZl6mGvO-NKl3Bha8Nk/rs:fit/g:sm/q:90/h:352/w:400/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTQ0NTk5/NzEtMTM5Nzc1MTEx/My0zMTkzLmpwZWc.jpeg', 2),
(11, 'Infinity', 'Journey', 2001, 'https://i.discogs.com/5mfa1_UwOAQOviDf6lKl4WIWie8A6Z5DJReSJ34u290/rs:fit/g:sm/q:40/h:300/w:300/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTk0NTIx/MjQtMTUxMDc3MTQx/MC0yNDM3LmpwZWc.jpeg', 2),
(12, 'Scatter The Crow', 'Slaves To Gravity', 1969, 'https://i.discogs.com/LlCMo20hlzXybq3-fUjS4o-iEIlbEJLsr55q3Nxl7eA/rs:fit/g:sm/q:90/h:516/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTExNTQx/Mzk3LTE1MTgxODQw/MzktODI2My5qcGVn.jpeg', 2),
(13, 'The Defiants', 'The Defiants', 1969, 'https://i.discogs.com/56ZMXo9b8VdwuiOWT4F560dBhryms9oOAie5bUsBJUg/rs:fit/g:sm/q:40/h:300/w:300/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTg1Nzcx/MzgtMTQ5NjM0MzI3/Mi03MTQ3LmpwZWc.jpeg', 2),
(14, 'State Of Emergency', 'The Living End', 1969, 'https://i.discogs.com/ryFrCCYDQdwRiG9KpdbfsVFxsfWn4TobVQVtihmsRis/rs:fit/g:sm/q:40/h:300/w:300/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTc1NDQx/MDUtMTQ0MzY4NTg3/Mi02NzMzLmpwZWc.jpeg', 2),
(15, 'The End Is The Beginning', 'Smashing Pumpkins', 1977, 'https://i.discogs.com/TV8Z0AFfHVtpGRgMG1SpGTlCCeFWFrsRkx9ln5ln3N0/rs:fit/g:sm/q:90/h:530/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTQ3Mjg0/ODEtMTM3MzYxNDMz/Ny0yODkyLmpwZWc.jpeg', 2),
(16, 'The Nexus', 'Amaranthe', 1977, 'https://i.discogs.com/4qLAP9ALAiwdl9rsCWoqfGZwKoftdIgR8QfYWzcCqPA/rs:fit/g:sm/q:90/h:525/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTQzNzY0/ODktMTM2ODg3NzA3/OC0xNTExLmpwZWc.jpeg', 3),
(17, 'Delusions', 'Elway', 1977, 'https://i.discogs.com/zeTknrThtLj1wHPnSyX7EmLQ-zeHtZcpEl1DRqmAeFw/rs:fit/g:sm/q:40/h:300/w:300/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTc2NTc0/NjktMTQ0NjEwMjgz/My01MzA0LmpwZWc.jpeg', 3),
(18, 'Inner Monster Out', 'Shadowside', 1969, 'https://i.discogs.com/36zBGiwIJZ_IIYGvW7nDGJTQKJxaXQcfNiCsIxnqCGE/rs:fit/g:sm/q:40/h:300/w:300/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEwODAw/MTE5LTE1MDQ1MjUz/NTItOTE3OC5qcGVn.jpeg', 3),
(19, 'Aeronautics', 'Masterplan', 1969, 'https://i.discogs.com/kpYzRPoXyen9IAB8n5MXTsyg4c5kwN_a52iy5LkmfqU/rs:fit/g:sm/q:90/h:529/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTIyODky/NzUtMTI4ODQ1OTY3/MC5qcGVn.jpeg', 3),
(20, 'One Way Out', 'Ravenscry', 1999, 'https://i.discogs.com/LGLwrgfBbYvFHAS38iRyQZpLlN4HXKSiS4kFxh7YTTA/rs:fit/g:sm/q:40/h:300/w:300/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTM1NDE1/MzktMTUzNDQyMTU2/OS0xOTU1LmpwZWc.jpeg', 3),
(21, 'The Clans Will Rise Again', 'Grave Digger', 1999, 'https://i.discogs.com/ZKFqFhROqYAHxHAwtHPcgInpqnc8KrqZ-gWWlfmRJrI/rs:fit/g:sm/q:40/h:300/w:300/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTc4ODA3/ODYtMTU3Njg1NDk5/MS03MzI3LmpwZWc.jpeg', 3),
(22, 'Heathen Warrior', 'Stormwarrior', 1999, 'https://i.discogs.com/JSpCW52c4Rl6HP3iy15JYoj--Ky1SNSbF4Y2D3E0hnY/rs:fit/g:sm/q:40/h:300/w:300/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTMyMDg5/MzEtMTQ2Mjg5NjY5/My04MDc4LnBuZw.jpeg', 3),
(23, 'Last Autumn\'s Dream', 'Last Autumn\'s Dream', 1999, 'https://i.discogs.com/UXc9drxwWd--xpF8T3eMDaEa0CPlPK-bn2ZwE6YsvC8/rs:fit/g:sm/q:40/h:300/w:300/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTQzMzU0/MzQtMTM3NzA5NDM2/OS05MTIyLmpwZWc.jpeg', 4),
(24, 'Disc-Connected', 'Loud & Clear', 1999, 'https://i.discogs.com/ysFxpMgXX-Oz4Ms1MmW_nVqUzZIogNi0TFKu51wG3Mo/rs:fit/g:sm/q:40/h:300/w:300/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTk4MDY5/MjctMTQ4NjYyNDQ5/Ny03NjI4LmpwZWc.jpeg', 4),
(25, 'Hymn', 'Sarah Brightman', 1999, 'https://i.discogs.com/un7C3v2TAdh9O8R0cbTHXe5JUeBKyhTJDs5nrj4eb3E/rs:fit/g:sm/q:40/h:300/w:300/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEyNzg3/ODE4LTE1NjgwMjMz/MDktMjAyNi5qcGVn.jpeg', 4),
(26, 'Do Or Die', 'Dropkick Murphys', 1999, 'https://i.discogs.com/HT93TEIF99v5Kxuy3Jc6gMe8khQ4x0M88HxXXNZyvuU/rs:fit/g:sm/q:40/h:300/w:300/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEwODM1/MzktMTMxMTk2MTM3/MS5qcGVn.jpeg', 4),
(27, 'Core', 'Stone Temple Pilots', 1999, 'https://i.discogs.com/EBBy0poBXSfXKvLRHo76CM2vl-_MpNJL1EiOh3KNK3Q/rs:fit/g:sm/q:40/h:300/w:300/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTQ3OTg3/ODEtMTQzNjQ1MTY5/MC03NzQyLmpwZWc.jpeg', 4),
(28, 'The Head On The Door', 'The Cure', 1999, 'https://i.discogs.com/er5JBwDN_uB77ExA9aJ_sU2xbquhh5cwUVdtZ1RVvH4/rs:fit/g:sm/q:90/h:584/w:573/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTExNDEz/NzEtMTU2MzcxNTY2/OS00MTI3LmpwZWc.jpeg', 4),
(29, 'The Hurting Kind', 'John Paul White', 1999, 'https://i.discogs.com/TI-7t_3urQFVqyVlBEMtwRVIuWM9RjjbPBEgvdIiNsI/rs:fit/g:sm/q:40/h:300/w:300/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEzNzUz/MDEyLTE1NjM0MTQ0/OTgtODQ4MC5qcGVn.jpeg', 4),
(30, 'Bu$hleaguer', 'Pearl Jam', 2013, 'https://i.discogs.com/MW_OPHy0Q1VMRC5y5vpq8maDe7UJ-Vg5CjvUg18dOoE/rs:fit/g:sm/q:90/h:603/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTExMTE1/Mzk0LTE1MTAxMzM4/NjgtNDU1MS5qcGVn.jpeg', 5),
(31, 'I\'ve Never Been To Me', 'Charlene', 2013, 'https://i.discogs.com/mmbsw31uB3Iznyw5g4kcKuqu4u8dvLu7CO02q6f8V3A/rs:fit/g:sm/q:40/h:300/w:300/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTExMjAx/MDY3LTE1MTE3NzAy/NzctOTE4Ni5qcGVn.jpeg', 5),
(32, 'Party Of One', 'George Thorogood', 2013, 'https://i.discogs.com/TYwWHAmi3vDQlYIxx8bGQoq1754W_hvfnzdRcDANQvE/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEwNjkx/Mjg0LTE1Mjk3Nzgw/MDgtNDY5MS5qcGVn.jpeg', 5),
(33, 'Lollipop Sixteen', 'Soleil', 2013, 'https://i.discogs.com/YxT_NkCbOkU1-gv8CQPKIBzD2RZdYdlTE_JdBqHSyws/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEzODg0/MjkzLTE1NjMyODU4/OTEtMTk3Ny5qcGVn.jpeg', 5),
(34, 'Silver Tongue', 'Torres', 2013, 'https://i.discogs.com/GEp0F-vJJtrs-H5zQB0lvlxZ79QOF6PAl7hDkfIEdJ8/rs:fit/g:sm/q:40/h:300/w:300/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE0NzMx/MDI3LTE1ODA0ODk3/MTMtODIzMS5qcGVn.jpeg', 5),
(35, 'The Allman Brothers Band At Fillmore East', 'The Allman Brothers Band', 2007, 'https://i.discogs.com/0o7eUNgciKcUndMVE6JaL13rmxqUYBrh5K3p8-ci-s8/rs:fit/g:sm/q:40/h:300/w:300/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEyMjU3/MDI1LTE1MzE3ODc1/ODYtNzA1OS5qcGVn.jpeg', 5),
(36, 'Against The Wind', 'Bob Seger & The Silver Bullet Band*', 2007, 'https://i.discogs.com/p5gDSrePk3ZerqMAk_XQxCm71cbcm-Vgs7UVBFyJy0c/rs:fit/g:sm/q:90/h:529/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEyMjM2/NDI5LTE1MzExMjk4/MTgtMzY0Mi5qcGVn.jpeg', 5),
(37, 'Music Man', 'Waylon Jennings', 2007, 'https://i.discogs.com/mi-h6a9RbEqBvltjlg4pU2sYk8ydJgv0pxHTfHAkyy0/rs:fit/g:sm/q:40/h:300/w:300/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE0OTAw/MjE0LTE1ODM3MDg2/MzItMzQ2NS5qcGVn.jpeg', 6),
(38, 'Thinking Back', 'Gordon Jackson', 2007, 'https://i.discogs.com/JQAujmV8FeoLn8P5vYRaFTk303yzCedUCKwgH953-rE/rs:fit/g:sm/q:90/h:359/w:372/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTM4OTMw/ODQtMTM1ODU5NjA2/OC02NDQwLmpwZWc.jpeg', 6),
(39, 'All I Want Is You', 'U2', 2007, 'https://i.discogs.com/osIM1kCxpHXrfL8WFUX93_UIxr0VfT056-tW6xXJFXg/rs:fit/g:sm/q:90/h:601/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEzNDQw/ODYtMTQzOTU0MTI5/My0zODA5LmpwZWc.jpeg', 6),
(40, 'Inside the Flesh Hotel', 'Beechwood', 2007, 'https://i.discogs.com/zjzOGhioFociL4yLvaVni1EQ87iZ7FRu5ZFYxMyWiwU/rs:fit/g:sm/q:40/h:300/w:300/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEyMDQx/NjI5LTE1MjcxMDUz/MTAtMzQyMi5qcGVn.jpeg', 6),
(42, 'She\'s A Mystery To Me', 'Roy Orbison', 2007, 'https://i.discogs.com/isJEgmjhYandJcRQsbFDu9j5dMEYOcPxjxHnUBFfEgQ/rs:fit/g:sm/q:40/h:300/w:300/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTYwODI0/ODktMTQxMDYxMjk1/NC0zMjcyLmpwZWc.jpeg', 6),
(43, 'Voodoo Lounge In Japan 1995', 'The Rolling Stones', 2005, 'https://i.discogs.com/BFAg-1Lo9C9VLo6PXU38BGwZre9-5hHkwZpdCAdWMHs/rs:fit/g:sm/q:40/h:300/w:300/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEzNDA4/MjQ2LTE1NTQ5OTg0/NjgtMjI5Ni5qcGVn.jpeg', 7),
(44, 'She Loves You', 'The Beatles', 2005, 'https://i.discogs.com/LO1nY6TkWF79m5T-hnyPKRjLSIEzvhNRbosdmX275G4/rs:fit/g:sm/q:40/h:300/w:300/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTM3Mjg4/OTItMTM0MjAxMzQw/Ni0zNzg3LmpwZWc.jpeg', 7),
(45, 'Astral Weeks', 'Van Morrison', 2005, 'https://i.discogs.com/62RGjMBkF6q3Kx3OHsFJV9JYt57fmZUtHL-lH5kErG0/rs:fit/g:sm/q:40/h:300/w:300/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEzOTg1/MzcxLTE1NjU0OTY0/NDktNzg2OC5qcGVn.jpeg', 7),
(46, 'The Best Of Talking Heads', 'Talking Heads', 2005, 'https://i.discogs.com/5YvZ2VxnpXtujJlVYZRDQYQx6TMI4_LXXn74IjaUj0c/rs:fit/g:sm/q:90/h:358/w:400/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEzOTYy/NzI1LTE1NjUwMTQw/ODYtODU2OC5qcGVn.jpeg', 7),
(47, 'New Wall / I Want U To Love Me', 'Alexandros', 2005, 'https://i.discogs.com/bLwj5CFd1UJdB0ObpnKI-VqoXzuVOf0yiuYrgMzfGQQ/rs:fit/g:sm/q:90/h:300/w:300/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEzODMz/NTAyLTE1NjIxNTg0/OTgtNDAwMC5qcGVn.jpeg', 7),
(48, 'Machine Head', 'Deep Purple', 2005, 'https://i.discogs.com/ZHNjX87pz8ogfgH80s-Naz8IEobjwL5KsoKd-r5DlGQ/rs:fit/g:sm/q:40/h:300/w:300/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEzOTgx/MTMxLTE1NjU0MDkw/MDUtNTk3Mi5qcGVn.jpeg', 7),
(49, 'Go Away Little Girl', 'Various', 2005, 'https://i.discogs.com/z8Y_cdaN-354oiwAPxtk-A562s_Vu8_tsXOrtCRi9kc/rs:fit/g:sm/q:90/h:534/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE1MjQ5/MTQyLTE2NDY1NzQz/OTktNjgzMi5qcGVn.jpeg', 7),
(50, 'The Best Of The Door - The Elektra Years', 'The Doors', 2005, 'https://i.discogs.com/5YvZ2VxnpXtujJlVYZRDQYQx6TMI4_LXXn74IjaUj0c/rs:fit/g:sm/q:90/h:358/w:400/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEzOTYy/NzI1LTE1NjUwMTQw/ODYtODU2OC5qcGVn.jpeg', 7),
(51, 'The Best Of The Doors', 'The Doors', 2005, 'https://i.discogs.com/5YvZ2VxnpXtujJlVYZRDQYQx6TMI4_LXXn74IjaUj0c/rs:fit/g:sm/q:90/h:358/w:400/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEzOTYy/NzI1LTE1NjUwMTQw/ODYtODU2OC5qcGVn.jpeg', 7),
(53, 'Album 99', 'SE 21', 2024, 'https://i.discogs.com/bgARegozmRaxCowFw75VCInN9VBVxp1rroKxyaulx1A/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTI1MzU3/ODk3LTE2NzAwODEw/NDgtMTY3Ny5qcGVn.jpeg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `userid` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'member'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`userid`, `username`, `password`, `status`) VALUES
(1000, 'anna', '123', 'admin'),
(1001, 'cyber', '123', 'member'),
(1002, 'david', '123', 'member'),
(1003, 'emma', '123', 'member'),
(1004, 'frank', '123', 'member'),
(1005, 'gina', '123', 'member'),
(1006, 'harry', '123', 'member'),
(1007, 'isabella', '123', 'member'),
(1008, 'james', '123', 'member'),
(1009, 'kate', '123', 'member'),
(1010, 'lisa', '123', 'member'),
(1011, 'mike', '123', 'member'),
(1012, 'nancy', '123', 'member'),
(1013, 'olivia', '123', 'member'),
(1014, 'peter', '123', 'member'),
(1015, 'quinn', '123', 'member'),
(1016, 'robert', '123', 'member'),
(1017, 'sarah', '123', 'member'),
(1018, 'tom', '123', 'member'),
(1019, 'ursula', '123', 'member'),
(1020, 'victor', '123', 'member'),
(1021, 'william', '123', 'member'),
(1022, 'xenia', '123', 'member'),
(1023, 'yvonne', '123', 'member'),
(1024, 'zoe', '123', 'member'),
(1025, 'michael', '123', 'member'),
(1026, 'jennifer', '123', 'member'),
(1027, 'daniel', '123', 'member'),
(1028, 'joshua', '123', 'member'),
(1029, 'jason', '123', 'member'),
(1030, 'joseph', '123', 'member'),
(1031, 'oliver', '123', 'member'),
(1032, 'john', '123', 'member'),
(1033, 'jose', '123', 'member'),
(1034, 'jacob', '123', 'member'),
(1035, 'juliii', '123', 'member'),
(1036, 'jessica', '123', 'member'),
(1037, 'judy', '123', 'member'),
(1038, 'jenni', '123', 'member'),
(1039, 'jordan', '123', 'member'),
(1040, 'jerry', '123', 'member'),
(1041, 'jimmy', '123', 'member'),
(1042, 'jim', '123', 'member'),
(1043, 'jane', '123', 'member'),
(1044, 'jake', '123', 'member'),
(1045, 'josh', '123', 'member'),
(1046, 'jenny', '123', 'member'),
(1047, 'julian', '123', 'member'),
(1048, 'juliet', '123', 'member'),
(1049, 'julius', '123', 'member'),
(1050, 'juliana', '123', 'member'),
(1051, 'julie', '123', 'member'),
(1052, 'julia', '123', 'member'),
(1053, 'elon', '123', 'member'),
(1054, 'bill', '123', 'member'),
(1055, 'steve', '123', 'member'),
(1056, 'messi', '123', 'member'),
(1057, 'ronaldo', '123', 'member'),
(1058, 'neymar', '123', 'member'),
(1059, 'kane', '123', 'member'),
(1060, 'hazard', '123', 'member'),
(1061, 'debruyne', '123', 'member'),
(1062, 'salah', '123', 'member'),
(1063, 'aguero', '123', 'member'),
(1064, 'suarez', '123', 'member'),
(1065, 'pogba', '123', 'member'),
(1066, 'mbappe', '123', 'member'),
(1067, 'griezmann', '123', 'member'),
(1068, 'benzema', '123', 'member'),
(1069, 'bale', '123', 'member'),
(1070, 'modric', '123', 'member'),
(1071, 'kroos', '123', 'member'),
(1072, 'ramos', '123', 'member'),
(1073, 'pique', '123', 'member'),
(1074, 'busquets', '123', 'member'),
(1075, 'iniesta', '123', 'member'),
(1076, 'alba', '123', 'member'),
(1077, 'terstegen', '123', 'member'),
(1078, 'neuer', '123', 'member'),
(1079, 'muller', '123', 'member'),
(1080, 'lewandowski', '123', 'member'),
(1081, 'robben', '123', 'member'),
(1082, 'hummels', '123', 'member'),
(1083, 'kimmich', '123', 'member'),
(1084, 'goretzka', '123', 'member'),
(1085, 'reus', '123', 'member'),
(1086, 'putin', '123', 'member'),
(1087, 'trump', '123', 'member'),
(1088, 'obama', '123', 'member'),
(1089, 'biden', '123', 'member'),
(1090, 'clinton', '123', 'member'),
(1091, 'bush', '123', 'member'),
(1092, 'reagan', '123', 'member'),
(1093, 'ron', '123', 'member'),
(1094, 'nixon', '123', 'member'),
(1095, 'ford', '123', 'member'),
(1096, 'carter', '123', 'member'),
(1097, 'eisenhower', '123', 'member'),
(1098, 'truman', '123', 'member'),
(1099, 'roosevelt', '123', 'member'),
(1100, 'muhammad', '123', 'member');

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`id`, `name`, `description`) VALUES
(1, 'Rock', 'Rock music or rock and roll in full name is a genre of popular music that originated as \"rock and roll\" in the United States in the early 1950s, and developed into a range of different styles in the late 1950s, 1960s and later, particularly in the United Kingdom and the United States.'),
(2, 'Electronic', 'Electronic music is music that employs electronic musical instruments and electronic music technology in its production, an electronic musician being a musician who composes and/or performs such music.'),
(3, 'Pop', 'Pop music is a genre of popular music that originated in its modern form during the mid-1950s in the United States and the United Kingdom. The terms popular music and pop music are often used interchangeably, although the former describes all music that is popular and includes many disparate styles.'),
(4, 'Jazz', 'Jazz is a genre of music that originated in African-American communities during the late 19th and early 20th century. Jazz emerged in many parts of the United States of independent popular musical styles; linked by the common bonds of European American and African-American musical parentage with a performance orientation.'),
(5, 'Hip Hop', 'Hip hop music, also called hip-hop, rap music, or hip-hop music, is a music genre consisting of a stylized rhythmic music that commonly accompanies rapping, a rhythmic and rhyming speech that is chanted.'),
(6, 'Disco', 'Disco is a style of music that was most popular from the mid-1970s to the early 1980s, featuring African-American and Latino musicians and audiences, and in private dance parties thrown in the underground gay community of New York. People usually dance to disco music at bars called disco clubs.'),
(7, 'Classical', 'Classical music generally refers to the art music of the Western world, considered to be distinct from Western folk music or popular music traditions. It is sometimes distinguished as Western classical music, as the term classical music also applies to non-Western art music.'),
(8, 'Explore All', 'Something short and leading about the collection below—its\n                    contents, the creator, etc. Make it short and sweet, but not too short so folks don’t\n                    simply skip over it entirely.');

-- --------------------------------------------------------

--
-- Table structure for table `member_info`
--

CREATE TABLE `member_info` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `DoB` date NOT NULL,
  `phone_number` char(16) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `member_info`
--

INSERT INTO `member_info` (`id`, `firstname`, `lastname`, `email`, `DoB`, `phone_number`, `user_id`) VALUES
(1, 'Anna', 'Smith', 'anna.smith@gmail.com', '1990-01-01', '+44070000000', 1000),
(2, 'Cyber', 'Holmes', 'cyber.holmes@gmail.com', '2002-02-03', '+44070000001', 1001),
(3, 'David', 'Jones', 'david.jones@gmail.com', '2002-02-04', '+44070000002', 1002),
(4, 'Emma', 'Williams', 'emma.williams@gmail.com', '2002-02-05', '+44070000003', 1003),
(5, 'Frank', 'Brown', 'frank.brown@gmail.com', '2002-02-06', '+44070000004', 1004),
(6, 'Gina', 'Davies', 'gina.davies@gmail.com', '2002-02-07', '+44070000005', 1005),
(7, 'Harry', 'Evans', 'harry.evans@gmail.com', '2002-02-08', '+44070000006', 1006),
(8, 'Isabella', 'Wilson', 'isabella.wilson@gmail.com', '2002-02-09', '+44070000007', 1007),
(9, 'James', 'Thomas', 'james.thomas@gmail.com', '2002-02-10', '+44070000008', 1008),
(10, 'Kate', 'Roberts', 'kate.roberts@gmail.com', '2002-02-11', '+44070000009', 1009),
(11, 'Lisa', 'Johnson', 'lisa.johnson@gmail.com', '2002-02-12', '+44070000010', 1010),
(12, 'Mike', 'Lewis', 'mike.lewis@gmail.com', '2002-02-13', '+44070000011', 1011),
(13, 'Nancy', 'Walker', 'nancy.walker@gmail.com', '2002-02-14', '+44070000012', 1012),
(14, 'Olivia', 'Robinson', 'olivia.robinson@gmail.com', '2002-02-15', '+44070000013', 1013),
(15, 'Peter', 'Wood', 'peter.wood@gmail.com', '2002-02-16', '+44070000014', 1014),
(16, 'Quinn', 'Thompson', 'quinn.thompson@gmail.com', '2002-02-17', '+44070000015', 1015),
(17, 'Robert', 'White', 'robert.white@gmail.com', '2002-02-18', '+44070000016', 1016);

-- --------------------------------------------------------

--
-- Table structure for table `my_albums`
--

CREATE TABLE `my_albums` (
  `id` int(11) NOT NULL,
  `album_id` int(11) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `my_albums`
--

INSERT INTO `my_albums` (`id`, `album_id`, `userid`) VALUES
(1, 1, 1000),
(2, 2, 1001),
(3, 3, 1002),
(4, 4, 1003),
(5, 5, 1004),
(6, 6, 1005),
(7, 7, 1006),
(8, 8, 1007),
(9, 9, 1013),
(10, 10, 1014),
(11, 11, 1015),
(12, 12, 1016),
(13, 13, 1017),
(14, 14, 1000),
(15, 15, 1001),
(16, 16, 1002),
(17, 17, 1003),
(18, 18, 1004),
(19, 19, 1005),
(20, 20, 1006),
(21, 21, 1007),
(22, 22, 1013),
(23, 23, 1014),
(24, 24, 1015),
(25, 25, 1016),
(26, 26, 1017),
(27, 27, 1000),
(28, 28, 1001),
(29, 29, 1002),
(30, 30, 1003),
(31, 31, 1004),
(32, 32, 1005),
(33, 33, 1006),
(34, 34, 1007),
(35, 35, 1013),
(36, 36, 1014),
(37, 37, 1015),
(38, 38, 1016),
(39, 39, 1017),
(40, 40, 1000),
(42, 42, 1002),
(43, 43, 1003),
(44, 44, 1004),
(45, 45, 1005),
(46, 46, 1006),
(47, 47, 1007),
(48, 48, 1013),
(49, 49, 1014),
(50, 50, 1015),
(51, 51, 1016),
(53, 53, 1000);

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

CREATE TABLE `newsletter` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `newsletter`
--

INSERT INTO `newsletter` (`id`, `email`, `date`) VALUES
(3, 'jay@myshow.io', '2022-12-14'),
(4, 'sherlock@gmail.com', '2022-12-14'),
(6, 'sergashev01@qub.ac.uk', '2022-12-14');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `album_id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `album_id`, `userid`, `content`) VALUES
(4, 4, 1003, 'This is a great album'),
(5, 5, 1004, 'This is a great album'),
(6, 6, 1005, 'This is a great album'),
(7, 7, 1006, 'This is a great album'),
(8, 8, 1007, 'This is a great album'),
(9, 9, 1013, 'This is a great album'),
(10, 10, 1014, 'This is a great album'),
(11, 11, 1015, 'This is a great album'),
(12, 12, 1016, 'This is a great album'),
(13, 13, 1017, 'This is a great album'),
(16, 16, 1002, 'This is a great album'),
(17, 17, 1003, 'This is a great album'),
(18, 18, 1004, 'This is a great album'),
(19, 19, 1005, 'This is a great album'),
(20, 20, 1006, 'This is a great album'),
(21, 21, 1007, 'This is a great album'),
(22, 22, 1013, 'This is a great album'),
(23, 23, 1014, 'This is a great album'),
(24, 24, 1015, 'This is a great album'),
(25, 25, 1016, 'This is a great album'),
(26, 26, 1017, 'This is a great album'),
(29, 29, 1002, 'This is a great album'),
(30, 30, 1003, 'This is a great album'),
(31, 31, 1004, 'This is a great album'),
(32, 32, 1005, 'This is a great album'),
(33, 33, 1006, 'This is a great album'),
(34, 34, 1007, 'This is a great album'),
(35, 35, 1013, 'This is a great album'),
(36, 36, 1014, 'This is a great album'),
(37, 37, 1015, 'This is a great album'),
(38, 38, 1016, 'This is a great album'),
(39, 39, 1017, 'This is a great album'),
(40, 40, 1000, 'This is a great album'),
(42, 42, 1002, 'This is a great album'),
(43, 43, 1003, 'This is a great album'),
(44, 44, 1004, 'This is a great album'),
(45, 45, 1005, 'This is a great album'),
(46, 46, 1006, 'This is a great album'),
(47, 47, 1007, 'This is a great album'),
(48, 48, 1013, 'This is a great album'),
(49, 49, 1014, 'This is a great album'),
(50, 50, 1015, 'This is a great album'),
(51, 51, 1016, 'This is a great album'),
(52, 26, 1000, 'i love it'),
(53, 28, 1001, 'Hiii!'),
(59, 40, 1000, 'ohhh'),
(60, 40, 1000, 'gone');

-- --------------------------------------------------------

--
-- Table structure for table `tracklist`
--

CREATE TABLE `tracklist` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `album_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tracklist`
--

INSERT INTO `tracklist` (`id`, `title`, `album_id`) VALUES
(1, 'Caught Up in You', 1),
(2, 'Fantasy Girl', 3),
(3, 'Hold On Loosely', 4),
(4, 'Rockin  Into the Night', 5),
(5, 'Art For Arts Sake', 6),
(6, 'Kryptonite', 7),
(7, 'Loser', 8),
(8, 'When I m Gone', 9),
(9, 'What s Up?', 10),
(10, 'Take On Me', 11),
(11, 'Baby, Please Don t Go   ', 12),
(12, 'Back In Black', 13),
(13, 'Big Gun', 14),
(14, 'CAN T STOP ROCK N ROLL', 15),
(15, 'Dirty Deeds Done Dirt Cheap', 16),
(16, 'For Those About To Rock', 17),
(17, 'Girls Got Rhythm', 18),
(18, 'Hard As A Rock', 19),
(19, 'Have a Drink On Me', 20),
(20, 'Hells Bells', 21),
(21, 'Highway To Hell', 22),
(22, 'It s A Long Way To The Top', 23),
(23, 'Jailbreak', 24),
(24, 'Let There Be Rock', 25),
(25, 'Let s Get It Up', 26),
(26, 'Live Wire', 27),
(27, 'Moneytalks', 28),
(28, 'Night Prowler', 29),
(29, 'Rock and Roll Ain t Noise Pollution', 30),
(30, 'Shoot To Thrill', 31),
(31, 'Shot Down In Flames', 32),
(32, 'Sin City', 33),
(33, 'T.N.T.', 34),
(34, 'Thunderstruck', 35),
(35, 'Touch Too Much', 36),
(36, 'What Do You Do For Money Honey', 37),
(37, 'Who Made Who', 38),
(38, 'Whole Lotta Rosie', 39),
(39, 'You Shook Me All Night Long', 40),
(41, 'Dog On A Leash', 42),
(42, 'Angel', 43),
(43, 'Baby, Please Don t Go   ', 44),
(44, 'Back in the Saddle', 45),
(45, 'Big Ten Inch', 46),
(46, 'Come Together', 47),
(47, 'Crazy', 48),
(48, 'Cryin ', 49),
(49, 'Draw The Line', 50),
(50, 'Dream On', 51),
(51, 'Dude (Looks Like a Lady)', 51),
(52, 'Jaded', 1),
(53, 'Janie s Got A Gun', 2),
(54, 'Kings and Queens', 3),
(55, 'Last Child', 4),
(56, 'Let the Music Do the Talking', 5),
(57, 'Livin  On The Edge', 6),
(58, 'Love In An Elevator', 7),
(59, 'Mama Kin', 8),
(60, 'No More No More', 9),
(61, 'One Way Street', 10),
(62, 'Pink', 11),
(63, 'Rag Doll', 12),
(64, 'Same Old Song and Dance', 13),
(65, 'Seasons of Wither', 14),
(66, 'Sweet Emotion', 15),
(67, 'The Other Side', 16),
(68, 'Toys in the Attic', 17),
(69, 'Train Kept A-Rollin ', 18),
(70, 'Walk This Way', 19),
(71, 'What It Takes', 20),
(72, 'You See Me Crying', 21),
(73, 'Hand In My Pocket', 22),
(74, 'You Oughta Know', 23),
(75, 'Black Velvet', 24),
(76, 'Fantasy', 25),
(77, 'BE MY LOVER', 26),
(78, 'Billion Dollar Babies', 27),
(79, 'Eighteen', 28),
(80, 'Elected', 29),
(81, 'House Of Fire', 30),
(82, 'I m Eighteen', 31),
(83, 'No More Mr. Nice Guy', 32),
(84, 'School s Out', 33),
(85, 'Under My Wheels', 34),
(86, 'Welcome To My Nightmare', 35),
(87, 'Down in a Hole', 36),
(88, 'Man In The Box', 37),
(89, 'No Excuses', 38),
(90, 'Rooster', 39),
(91, 'Them Bones', 40),
(93, 'Ain t Wastin  Time No More', 42),
(94, 'Blue Sky', 43),
(95, 'Good Clean Fun', 44),
(96, 'In Memory Of Elizabeth Reed', 45),
(97, 'Jessica', 46),
(98, 'Melissa', 47),
(99, 'Midnight Rider', 48),
(100, 'No One to Run With', 49),
(101, 'One Way Out', 50),
(102, 'Ramblin  Man', 51),
(103, 'Southbound', 1),
(104, 'Statesboro Blues', 2),
(105, 'Whippin  Post', 3),
(106, 'A Horse With No Name', 4),
(107, 'Sister Golden Hair', 5),
(108, 'Ventura Highway', 6),
(109, 'Don t Bring Me Down', 7),
(110, 'Don t Let Me Be Misunderstood', 8),
(111, 'Immigrant Song', 9),
(112, 'Roller', 10),
(113, 'Hold Your Head Up', 11),
(114, 'Coming into Los Angeles', 12),
(115, 'Wayside', 13),
(116, 'Heat of the Moment', 14),
(117, 'Only Time Will Tell', 15),
(118, 'So Into You', 16),
(119, 'Spooky', 17),
(120, 'Like a Stone', 18),
(121, 'Blondes In Black Cars', 19),
(122, 'Turn Up the Radio', 20),
(123, 'Rock And Roll Party In The Streets', 21),
(124, 'Let It Ride', 22),
(125, 'Roll On Down The Highway', 23),
(126, 'Takin  Care Of Business', 24),
(127, 'You Ain t Seen Nothin  Yet', 25),
(128, 'Bad Company', 26),
(129, 'Burnin  Sky', 27),
(130, 'Can t Get Enough', 28),
(131, 'Feel Like Makin  Love', 29),
(132, 'Gone Gone Gone', 30),
(133, 'Good Lovin  Gone Bad', 31),
(134, 'Movin  On', 32),
(135, 'Ready For Love', 33),
(136, 'Rock  n  Roll Fantasy', 34),
(137, 'Rock Steady', 35),
(138, 'Run With The Pack', 36),
(139, 'Seagull', 37),
(140, 'Shooting Star', 38),
(141, 'Silver, Blue And Gold   ', 39),
(142, 'When I See You Smile', 40),
(144, 'Walks Like A Woman', 42),
(145, '(You Gotta) Fight for Your Right (To Party)', 43),
(146, 'No Sleep Till Brooklyn', 44),
(147, 'Loser', 45),
(148, 'In a Big Country', 46),
(149, 'Rock Around the Clock', 47),
(150, 'AIN T NO SUNSHINE', 48),
(151, 'Cradle of Love', 49),
(152, 'Dancing With Myself', 50),
(153, 'Eyes Without a Face', 51),
(154, 'Mony Mony', 1),
(155, 'Rebel Yell', 2),
(156, 'White Wedding', 3),
(157, 'Allentown', 4),
(158, 'Big Shot', 5),
(159, 'Captain Jack', 6),
(160, 'Don t Ask Me Why', 7),
(161, 'Goodnight Saigon', 8),
(162, 'It s Still Rock And Roll To Me', 9),
(163, 'Miami 2017 {seen The Lights Go Out On Broadway} (live 1', 10),
(164, 'Movin  Out (Anthony s Song)', 11),
(165, 'My Life', 12),
(166, 'New York State Of Mind', 13),
(167, 'Only The Good Die Young', 14),
(168, 'Piano Man', 15),
(169, 'Prelude/angry Young Man', 16),
(170, 'Scenes From An Italian Restaurant', 17),
(171, 'SHE S ALWAYS A WOMAN', 18),
(172, 'Sometimes A Fantasy', 19),
(173, 'The Ballad Of Billy The Kid', 20),
(174, 'The Stranger', 21),
(175, 'You May Be Right', 22),
(176, 'Baby Come Back', 23),
(177, 'Everybody Wants You', 24),
(178, 'In the Dark', 25),
(179, 'Lonely Is the Night', 26),
(180, 'My Kinda Lover', 27),
(181, 'Rock Me Tonight', 28),
(182, 'She s a Runner', 29),
(183, 'The Stroke', 30),
(184, 'Children Of The Sun', 31),
(185, 'Fairies Wear Boots', 32),
(186, 'Heaven and Hell', 33),
(187, 'Iron Man', 34),
(188, 'N.i.b.', 35),
(189, 'Neon Knights', 36),
(190, 'Paranoid', 37),
(191, 'Sweet Leaf', 38),
(192, 'The Wizard', 39),
(193, 'War Pigs', 40),
(195, 'Train, Train   ', 42),
(196, 'Can t Find My Way Home', 43),
(197, 'Presence of the Lord', 44),
(198, 'No Rain', 45),
(199, 'Presence of the Lord', 46),
(200, 'All the Small Things', 47),
(201, 'Call Me', 48),
(202, 'Heart of Glass', 49),
(203, 'One Way Or Another', 50),
(204, '(Don t Fear) The Reaper', 51),
(205, 'Bucks Boogie', 1),
(206, 'Burnin  for You', 2),
(207, 'Godzilla', 3),
(208, 'I Love the Night', 4),
(209, 'Summertime Blues', 5),
(210, 'Song 2', 6),
(211, 'Just Like A Woman', 7),
(212, 'Knockin  On Heaven s Door', 8),
(213, 'Like a Rolling Stone', 9),
(214, 'Positively 4th Street', 10),
(215, 'Subterranean Homesick Blues', 11),
(216, 'Tangled Up In Blue', 12),
(217, 'Exodus', 13),
(218, 'Jamming', 14),
(219, 'No Woman, No Cry   ', 15),
(220, 'One Love', 16),
(221, 'Stir It Up', 17),
(222, 'Three Little Birds', 18),
(223, 'Against The Wind', 19),
(224, 'Betty Lou s Gettin  Out Tonigh', 20),
(225, 'Come to Poppa', 21),
(226, 'Feel Like a Number', 22),
(227, 'Fire Down Below', 23),
(228, 'Get Out of Denver', 24),
(229, 'Her Strut', 25),
(230, 'Hollywood Nights', 26),
(231, 'Horizontal Bop', 27),
(232, 'Katmandu', 28),
(233, 'Mainstreet', 29),
(234, 'Night Moves', 30),
(235, 'Old Time Rock & Roll', 31),
(236, 'Ramblin  Gamblin  Man', 32),
(237, 'Rock And Roll Never Forgets', 33),
(238, 'Roll Me Away', 34),
(239, 'Still the Same', 35),
(240, 'Sunspot Baby', 36),
(241, 'The Fire Down Below', 37),
(242, 'Travelin  Man', 38),
(243, 'Turn On Your Love Light', 39),
(244, 'Turn The Page', 40),
(246, 'You ll Accompany Me', 42),
(247, 'Hypnotized', 43),
(248, 'Bad Medicine', 44),
(249, 'Blaze of Glory', 45),
(250, 'Born To Be My Baby', 46),
(251, 'Lay Your Hands On Me', 47),
(252, 'Livin  On A Prayer', 48),
(253, 'Raise Your Hands', 49),
(254, 'Runaway', 50),
(255, 'She Don t Know Me', 51),
(256, 'Wanted Dead or Alive', 1),
(257, 'You Give Love A Bad Name', 2),
(258, 'Wait For You', 3),
(259, 'Green Onions', 4),
(260, 'A Man I ll Never Be', 5),
(261, 'Amanda', 6),
(262, 'Cool The Engines', 7),
(263, 'Don t Look Back', 8),
(264, 'Feelin  Satisfied', 9),
(265, 'Foreplay (Long Time)', 10),
(266, 'Hitch A Ride', 11),
(267, 'Let Me Take You Home Tonight', 12),
(268, 'More Than a Feeling', 13),
(269, 'Party', 14),
(270, 'Peace of Mind', 15),
(271, 'Rock & Roll Band', 16),
(272, 'Smokin ', 17),
(273, 'Something About You', 18),
(274, 'The Journey/It s Easy', 19),
(275, 'Used To Bad News', 20),
(276, 'We re Ready', 21),
(277, 'Lido Shuffle', 22),
(278, 'Lowdown', 23),
(279, 'Tarkio Road', 24),
(280, 'The Way It Is', 25),
(281, 'Atlantic City', 26),
(282, 'Backstreets', 27),
(283, 'Badlands', 28),
(284, 'Blinded By the Light', 29),
(285, 'Born In the U.S.A.', 30),
(286, 'Born To Run', 31),
(287, 'Cover Me', 32),
(288, 'Dancing In the Dark', 33),
(289, 'Glory Days', 34),
(290, 'Growin  Up', 35),
(291, 'Hungry Heart', 36),
(292, 'I m On Fire', 37),
(293, 'It s Hard to Be a Saint in the City', 38),
(294, 'Jersey Girl', 39),
(295, 'Jungleland', 40),
(297, 'Prove It All Night', 42),
(298, 'Racing in the Streets', 43),
(299, 'Rosalita (Come Out Tonight)', 44),
(300, 'She s The One', 45),
(301, 'Spirit In The Night', 46),
(302, 'Tenth Avenue Freeze-Out', 47),
(303, 'Thunder Road', 48),
(304, 'Cuts Like a Knife', 49),
(305, 'Heaven', 50),
(306, 'Run to You', 51),
(307, 'Somebody', 1),
(308, 'Summer Of  69', 2),
(309, 'Sorry', 3),
(310, 'For What It s Worth', 4),
(311, 'Mr. Soul', 5),
(312, 'Rock & Roll Woman', 6),
(313, 'Comedown', 7),
(314, 'Machinehead', 8),
(315, 'Far Behind', 9),
(316, 'Goin  up the Country', 10),
(317, 'On the Road Again', 11),
(318, 'IT S TOO LATE', 12),
(319, 'Oh Very Young', 13),
(320, 'WILD WORLD', 14),
(321, 'In America', 15),
(322, 'Long Haired Country Boy', 16),
(323, 'The Devil Went Down To Georgia', 17),
(324, 'The Legend Of Wooley Swamp', 18),
(325, 'The South s Gonna Do It Again', 19),
(326, 'Uneasy Rider', 20),
(327, 'Ain t That a Shame', 21),
(328, 'Dream Police', 22),
(329, 'I Want You to Want Me', 23),
(330, 'She s Tight', 24),
(331, 'Surrender', 25),
(332, 'Take Out The Gunman', 26),
(333, '25 Or 6 To 4', 27),
(334, 'Beginnings', 28),
(335, 'Feeling Stronger Every', 29),
(336, 'I m a Man', 30),
(337, 'JUST YOU AND ME', 31),
(338, 'Make Me Smile', 32),
(339, 'Questions 67 and 68', 33),
(340, 'Saturday In the Park', 34),
(341, 'South California Purples', 35),
(342, 'JOHNNY B. GOODE', 36),
(343, 'Coming Home', 37),
(344, 'Don t Know What You Got', 38),
(345, 'Gypsy Road', 39),
(346, 'Nobody s Fool', 40),
(348, 'Better Off Without You', 42),
(349, 'Born Too Late', 43),
(350, 'Cigarette', 44),
(351, 'Hey You', 45),
(352, 'Maybe', 46),
(353, 'Penny On The Floor', 47),
(354, 'The River', 48),
(355, 'December', 49),
(356, 'Shine', 50),
(357, 'The World I Know', 51),
(358, 'Hot Rod Lincoln', 1),
(359, 'Monkey Bars', 2),
(360, 'Mr. Jones', 3),
(361, 'Low', 4),
(362, 'Badge', 5),
(363, 'Born Under A Bad Sign', 6),
(364, 'Crossroads', 7),
(365, 'I m So Glad', 8),
(366, 'Sunshine of Your Love', 9),
(367, 'Tales Of Brave Ulysses', 10),
(368, 'White Room', 11),
(369, 'Higher', 12),
(370, 'My Sacrifice', 13),
(371, 'With Arms Wide Open', 14),
(372, 'Bad Moon Rising', 15),
(373, 'Born On the Bayou', 16),
(374, 'Commotion', 17),
(375, 'Down On the Corner', 18),
(376, 'Fortunate Son', 19),
(377, 'Green River', 20),
(378, 'Have You Ever Seen the Rain?', 21),
(379, 'I Heard It Through the Grapevine', 22),
(380, 'Lodi', 23),
(381, 'Lookin  Out My Back Door', 24),
(382, 'Proud Mary', 25),
(383, 'Run Through the Jungle', 26),
(384, 'Suzie Q', 27),
(385, 'Sweet Hitch Hiker', 28),
(386, 'The Midnight Special', 29),
(387, 'Travelin  Band', 30),
(388, 'Up Around the Bend', 31),
(389, 'Who ll Stop the Rain', 32),
(390, 'Fire Woman', 33),
(391, 'Helplessly Hoping', 34),
(392, 'Long Time Gone', 35),
(393, 'Southern Cross', 36),
(394, 'Suite: Judy Blue Eyes', 37),
(395, 'Carry On', 38),
(396, 'Ohio', 39),
(397, 'Woodstock', 40),
(399, 'High Enough', 42),
(400, 'I HEAR YOU KNOCKING', 43),
(401, 'Headkeeper', 44),
(402, 'Only You Know And I Know', 45),
(403, 'We Just Disagree', 46),
(404, 'Welcome To The Boomtown', 47),
(405, 'Changes', 48),
(406, 'China Girl', 49),
(407, 'Diamond Dogs', 50),
(408, 'Fame', 51),
(409, 'Fashion', 1),
(410, 'Friday on My Mind', 2),
(411, 'Golden Years', 3),
(412, 'Heroes', 4),
(413, 'Jean Genie', 5),
(414, 'Let s Dance', 6),
(415, 'Modern Love', 7),
(416, 'Panic in Detroit', 8),
(417, 'Rebel Rebel', 9),
(418, 'Space Oddity', 10),
(419, 'Starman', 11),
(420, 'Stay', 12),
(421, 'Suffragette City', 13),
(422, 'Young Americans', 14),
(423, 'Ziggy Stardust', 15),
(424, 'Rock On', 16),
(425, 'There s No Way Out Of Here', 17),
(426, 'There s No Way Out Of Here', 18),
(427, 'Frenchette', 19),
(428, 'California Girls', 20),
(429, 'Just A Gigolo / I Ain t Got Nobody', 21),
(430, 'Yankee Rose', 22),
(431, 'Burn', 23),
(432, 'Child In Time', 24),
(433, 'Highway Star', 25),
(434, 'Hush', 26),
(435, 'Kentucky Woman', 27),
(436, 'Knocking At Your Backdoo', 28),
(437, 'Lazy', 29),
(438, 'Perfect Strangers', 30),
(439, 'Smoke On The Water', 31),
(440, 'Space Truckin ', 32),
(441, 'Woman From Tokyo', 33),
(442, 'Animal', 34),
(443, 'Armageddon It', 35),
(444, 'Bringin  On The Heartbreak', 36),
(445, 'Foolin ', 37),
(446, 'Hysteria', 38),
(447, 'Love Bites', 39),
(448, 'On Through The Night', 40),
(450, 'Pour Some Sugar On Me', 42),
(451, 'Rock of Ages', 43),
(452, 'Rock Rock', 44),
(453, 'Rocket', 45),
(454, 'Too Late for Love', 46),
(455, 'Enjoy the Silence', 47),
(456, 'Bell Bottom Blues', 48),
(457, 'Have You Ever Loved a Woman', 49),
(458, 'Layla', 50),
(459, 'Recognition', 51),
(460, 'ANGELOS', 1),
(461, 'Holy Diver', 2),
(462, 'Rainbow In the Dark', 3),
(463, 'The Last In Line', 4),
(464, 'Brothers In Arms', 5),
(465, 'Down To The Waterline', 6),
(466, 'Expresso Love', 7),
(467, 'Industrial Disease', 8),
(468, 'Lady Writer', 9),
(469, 'Money for Nothing', 10),
(470, 'Romeo And Juliet', 11),
(471, 'So Far Away', 12),
(472, 'Solid Rock', 13),
(473, 'Sultans of Swing', 14),
(474, 'Walk of Life', 15),
(475, 'Counting Blue Cars', 16),
(476, 'Drift Away', 17),
(477, 'Alone Again', 18),
(478, 'In My Dreams', 19),
(479, 'Into The Fire', 20),
(480, 'Heavy Metal', 21),
(481, 'All She Wants to Do Is Dance', 22),
(482, 'Dirty Laundry', 23),
(483, 'Sunset Grill', 24),
(484, 'The Boys Of Summer', 25),
(485, 'The Heart of the Matter', 26),
(486, 'The Last Worthless Evening', 27),
(487, 'American Pie', 28),
(488, 'Ah! Leah!', 29),
(489, 'Love Is Like A Rock', 30),
(490, 'Season of the Witch', 31),
(491, 'Sunshine Superman', 32),
(492, 'COVER OF THE ROLLING STONE', 33),
(493, 'Right Place Wrong Time', 34),
(494, 'Anything, Anything   ', 35),
(495, 'Hey, Hey (What Can I Do?)   ', 36),
(496, 'Rio', 37),
(497, 'Already Gone', 38),
(498, 'Desperado', 39),
(499, 'Heartache Tonight', 40),
(501, 'I Can t Tell You Why', 42),
(502, 'In The City', 43),
(503, 'Life in the Fast Lane', 44),
(504, 'Lyin  Eyes', 45),
(505, 'New Kid In Town', 46),
(506, 'One of These Nights', 47),
(507, 'Peaceful Easy Feeling', 48),
(508, 'Seven Bridges Road', 49),
(509, 'Take It Easy', 50),
(510, 'Take It to the Limit', 51);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`album_id`),
  ADD UNIQUE KEY `album_id` (`album_id`,`album_title`),
  ADD KEY `album_title` (`album_title`,`artist`),
  ADD KEY `genre_id` (`genre_id`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `name_2` (`name`);

--
-- Indexes for table `member_info`
--
ALTER TABLE `member_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`,`email`,`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `my_albums`
--
ALTER TABLE `my_albums`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `album_id` (`album_id`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `album_id` (`album_id`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `tracklist`
--
ALTER TABLE `tracklist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `album_id` (`album_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `album_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1101;

--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE `genre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `member_info`
--
ALTER TABLE `member_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `my_albums`
--
ALTER TABLE `my_albums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `tracklist`
--
ALTER TABLE `tracklist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=511;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `album`
--
ALTER TABLE `album`
  ADD CONSTRAINT `album_ibfk_1` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `member_info`
--
ALTER TABLE `member_info`
  ADD CONSTRAINT `member_info_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `my_albums`
--
ALTER TABLE `my_albums`
  ADD CONSTRAINT `my_albums_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `album` (`album_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `my_albums_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `auth_user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `album` (`album_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `auth_user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tracklist`
--
ALTER TABLE `tracklist`
  ADD CONSTRAINT `tracklist_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `album` (`album_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
