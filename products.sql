-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2021 at 04:42 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock` int(11) NOT NULL DEFAULT 1,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'M',
  `condition` enum('default','new','hot') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `price` double(8,2) NOT NULL,
  `discount` double(8,2) NOT NULL,
  `is_featured` tinyint(1) NOT NULL,
  `cat_id` bigint(20) UNSIGNED DEFAULT NULL,
  `child_cat_id` bigint(20) UNSIGNED DEFAULT NULL,
  `brand_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `slug`, `summary`, `description`, `photo`, `stock`, `size`, `condition`, `status`, `price`, `discount`, `is_featured`, `cat_id`, `child_cat_id`, `brand_id`, `created_at`, `updated_at`) VALUES
(1, 'Melange Casual Black', 'melange-casual-black', '<p><br></p>', '<h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; font-size: 14px; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><br></h3>', '/storage/photos/1/Products/405b7-pmtk004t.jpg,/storage/photos/1/Products/43f35-2_2.jpg', 6, 'S,M,XL', 'new', 'active', 60000.00, 10.00, 1, 1, 4, 4, '2020-08-14 04:38:26', '2021-06-28 05:54:12'),
(2, 'White Sports Casual T-', 'white-sports-casual-t', '<p style=\"text-align: justify; \"><font face=\"Open Sans, Arial, sans-serif\"><span style=\"font-size: 14px;\">Berbahan kain yang indah</span></font></p>', '<h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; font-size: 14px; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Meningkatkan kepercaan diri saat mengenakan pakaian ini</h3>', '/storage/photos/1/Products/1d60f-2.jpg', 3, 'XL', 'hot', 'active', 400000.00, 4.00, 1, 1, 4, 2, '2020-08-14 04:40:21', '2021-06-28 06:02:29'),
(3, 'Summer Round Neck T', 'summer-round-neck-t', '<p style=\"text-align: justify; \"><font face=\"Open Sans, Arial, sans-serif\"><span style=\"font-size: 14px;\">Summer Round Neck T</span></font></p>', '<h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; font-size: 14px; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Terbuat dari bahan berkualitas bagus, sehingga cocok digunakan saat sedang musim panas</h3>', '/storage/photos/1/Products/02090-pms003a.jpg,/storage/photos/1/Products/01f42-pwt004b.jpg,/storage/photos/1/Products/01bc5-mpd006b.jpg,/storage/photos/1/Products/0122b-wsd000t.jpg', 6, 'S,M', 'hot', 'active', 300000.00, 6.00, 0, 2, NULL, 2, '2020-08-14 05:57:48', '2021-06-28 05:53:59'),
(4, 'Melange Ethnic Kurthi', 'melange-ethnic-kurthi', '<p><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Bagi para wanita yang suka dengan fashion, produk ini menjadi andalan untuk pergi ke pesta</span><br></p>', '<h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; font-size: 14px; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Dengan Pilihan bahan yang berkualitas</h3><p style=\"margin: 15px 0px; padding: 0px; font-size: 14px; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Menjadikan produk ini menjadi produk yang sangat menarik dan banyak diminati</p>', '/storage/photos/1/Products/0a402-image4xxl-3-.jpg,/storage/photos/1/Products/2282b-wsd008t.jpg,/storage/photos/1/Products/21951-image4xxl.jpg', 5, 'XL', 'default', 'active', 40000.00, 50.00, 0, 2, NULL, 1, '2020-08-14 06:04:13', '2021-06-28 06:04:45'),
(5, 'Cotton High Quality Kurt', 'cotton-high-quality-kurt', '<font face=\"Open Sans, Arial, sans-serif\"><span style=\"font-size: 14px;\"><b>Jaket hitam jeans</b></span></font>', '<b>Pria menjadi ganteng </b>saat mengenakan ini', '/storage/photos/1/Products/0455e-c1.jpg,/storage/photos/1/Products/04ec4-pmtk001t.jpg,/storage/photos/1/Products/086c2-a1.jpg,/storage/photos/1/Products/09a16-mpd000t_6.jpg,/storage/photos/1/Products/0c2d2-wbk012c-royal-blue.jpg', 0, 'M,XL', 'new', 'active', 50000.00, 10.00, 0, 3, NULL, 3, '2020-08-14 06:10:52', '2021-06-28 06:06:27'),
(6, 'Ladies Cotton Kurti Sha', 'ladies-cotton-kurti-sha', '<p style=\"text-align: justify; \"><font face=\"Open Sans, Arial, sans-serif\"><span style=\"font-size: 14px;\">Dress Tosca</span></font></p>', '<h3 style=\"margin: 15px 0px; padding: 0px; font-size: 14px; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Di desain oleh desainer yang handal,sehingga menjadikan sebuah <b>Dress Tosca </b>sehingga menarik saat digunakan</h3>', '/storage/photos/1/Products/6a8b5-wsd013t.jpg,/storage/photos/1/Products/5ded8-image1xxl-5-.jpg,/storage/photos/1/Products/74840-image4xxl-6-.jpg', 6, 'M,L', 'hot', 'active', 60000.00, 3.00, 1, 3, NULL, 4, '2020-08-14 06:13:20', '2021-06-28 06:09:45'),
(7, 'GRAY BABY ROMPERS', 'gray-baby-rompers', '<p style=\"text-align: justify; \"><font face=\"Open Sans, Arial, sans-serif\"><span style=\"font-size: 14px;\">Koas merah santuy</span></font></p>', 'Bahan yang halus, serta warna merah yang menarik cocok untuk anak Anda', '/storage/photos/1/Products/08ec9-n3.jpg,/storage/photos/1/Products/07e30-mtk006b.jpg,/storage/photos/1/Products/18b18-wbk003b.jpg', 4, 'S,M', 'hot', 'active', 19990.00, 3.00, 0, 3, NULL, 1, '2020-08-14 06:23:33', '2021-06-28 07:07:03'),
(8, 'Baby Girls\' 2-Piece Yell', 'baby-girls-2-piece-yell', '<p><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit,</span><br></p>', '<h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; font-size: 14px; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">1914 translation by H. Rackham</h3><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p><h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; font-size: 14px; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Section 1.10.33 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC</h3><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"</p><h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; font-size: 14px; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">1914 translation by H. Rackham</h3><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">\"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their du</p>', '/storage/photos/1/Products/calvin-klein.jpg,/storage/photos/1/Products/calvin.jpg,/storage/photos/1/Products/d3fdb-image2xxl-4-.jpg', 4, 'S', 'new', 'active', 200000.00, 10.00, 0, 3, NULL, 6, '2020-08-14 06:25:42', '2021-06-28 05:52:45'),
(9, 'Lorem Ipsum is simply', 'lorem-ipsum-is-simply', '<p style=\"text-align: justify; \"><font face=\"Open Sans, Arial, sans-serif\"><span style=\"font-size: 14px;\"><b>Simple</b></span></font></p>', '<p style=\"text-align: justify; \"><font face=\"Open Sans, Arial, sans-serif\"><span style=\"font-size: 14px;\"><b>Simple</b></span></font></p>', '/storage/photos/1/Products/0455e-c1.jpg,/storage/photos/1/Products/04776-pms000a.jpg,/storage/photos/1/Products/04ec4-pmtk001t.jpg,/storage/photos/1/Products/032f0-image3xxl-1-.jpg', 4, 'S,M,XL', 'new', 'active', 200000.00, 5.00, 0, 1, NULL, 3, '2020-08-15 06:52:44', '2021-06-28 06:12:13'),
(10, 'Lorem Ipsum is simply', 'lorem-ipsum-is-simply-2008183507-655', '<p><br></p>', '<p><br></p>', '/storage/photos/1/Products/01f42-pwt004b.jpg,/storage/photos/1/Products/02090-pms003a.jpg,/storage/photos/1/Products/032f0-image3xxl-1-.jpg', 4, 'L,XL', 'hot', 'active', 300000.00, 10.00, 0, 2, NULL, 3, '2020-08-17 20:50:07', '2021-06-28 06:12:01'),
(12, 'V Neck Cool', 'v-neck-cool', '<p>Penambah kegantengan</p>', '<p><br></p>', '/storage/photos/1/646e6-8_2.jpg', 3, 'M,L', 'default', 'active', 1000.00, 1.00, 1, 1, NULL, 3, '2021-06-28 05:57:38', '2021-06-28 05:57:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_brand_id_foreign` (`brand_id`),
  ADD KEY `products_cat_id_foreign` (`cat_id`),
  ADD KEY `products_child_cat_id_foreign` (`child_cat_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `products_cat_id_foreign` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `products_child_cat_id_foreign` FOREIGN KEY (`child_cat_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
