-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th4 03, 2023 lúc 02:42 PM
-- Phiên bản máy phục vụ: 8.0.31
-- Phiên bản PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `blog_bui`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id_commnent` int NOT NULL,
  `id_users` int NOT NULL,
  `id_post` int NOT NULL,
  `contents` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_comment` date NOT NULL,
  `name_comment` varchar(30) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id_commnent`, `id_users`, `id_post`, `contents`, `date_comment`, `name_comment`) VALUES
(51, 2, 1, 'scascaasacasc', '2023-03-27', 'toquoctung'),
(52, 2, 1, 'scascaasacasc', '2023-03-27', 'toquoctung'),
(53, 2, 2, 'scascaasacasc', '2023-03-27', 'Group Trade Thực Chiến'),
(60, 2, 1, 'hay qua', '2023-03-28', 'thai tai');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id_posts` int NOT NULL,
  `title_parend` text COLLATE utf8mb4_general_ci NOT NULL,
  `title_child` text COLLATE utf8mb4_general_ci NOT NULL,
  `content` text COLLATE utf8mb4_general_ci NOT NULL,
  `date` date NOT NULL,
  `srource` text COLLATE utf8mb4_general_ci NOT NULL,
  `images` text COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`id_posts`, `title_parend`, `title_child`, `content`, `date`, `srource`, `images`) VALUES
(1, 'Con người phải khám phá, và đây là khám phá ở mức cao nhất', 'Các vấn đề trông rất nhỏ từ 150 dặm trở lên', '1. Khái niệm về EFAPhân tích nhân tố khám phá (EFA) là một phương pháp phân tích định lượng dùng để rút gọn một tập gồm nhiều biến đo lường phụ thuộc lẫn nhau thành một tập biến ít hơn (gọi là các nhân tố) để chúng có ý nghĩa hơn nhưng vẫn chứa đựng hầu hết nội dung thông tin của tập biến ban đầu (Hair et al. 2009).2. Mục tiêu của EFAHai mục tiêu chính của phân tích EFA là phải xác định:- Số lượng các nhân tố ảnh hướng đến một tập các biến đo lường.- Cường độ về mối quan hệ giữa mỗi nhân tố với từng biến đo lường3. Ứng dụng của EFAEFA thường được sử dụng nhiều trong các lĩnh vực quản trị, kinh tế, tâm lý, xã hội học,... khi đã có được mô hình khái niệm(Conceptual Framework) từ các lý thuyết hay các nghiên cứu trước.Trong các nghiên cứu về kinh tế, người ta thường sử dụng thang đo(scale) chỉ mục bao gồm rất nhiều câu hỏi(biến đo lường) nhằm đo lường các khái niệm trong mô hình khái niệm, và EFA sẽ góp phần rút gọn một tập gồm rất nhiều biến đo lường thành một số nhân tố.Khi có được một số ít các nhân tố, nếu chúng ta sử dụng các nhân tố này với tư cách là các biến độc lập trong hàm hồi quy bội thì khi đó, mô hình  sẽ giảm khả năng vi phạm hiện tượng đa cộng tuyến.Ngoài ra, các nhân tố được rút ra sau khi thực hiện phân tích EFA sẽ có thể được thực hiện trong phân tích hồi quy đa biến (Multivariate Regression Analysis), mô hình Logit, sau đó có thể tiếp tục thực hiện phân tích nhân tố khẳng định(CFA) để đánh giá độ tin cậy của mô hình hay thực hiện mô hình cấu trúc tuyến tính (Structural Equation Modeling, SEM) để kiểm định về mối quan hệ phức tạp giữa các khái niệm.', '2023-04-03', 'Nguồn: WebBlog.Com.Cá', '307461331_3404316993188889_7640009784107414293_n.jpg'),
(2, 'Kinh nghiệm du lịch Đà Lạt chi tiết A - Z cho bạn thoả sức khám phá xứ sở ngàn hoa', 'Được thiên nhiên ưu ái với khí hậu quanh năm mát mẻ, dễ chịu, thành phố cao nguyên xinh đẹp này luôn là địa điểm du lịch và nghỉ dưỡng lý tưởng cho hàng triệu du khách mỗi năm. Nếu các bạn đang lên kế hoạch du lịch bụi Đà Lạt thì bài viết về kinh nghiệm du lịch Đà Lạt mới nhất năm 2022 dưới đây sẽ cung cấp bạn một số gợi ý để chuẩn bị hành trang thật tốt cho chuyến đi sắp tới.', '1. Thời điểm tốt nhất cho chuyến du lịch Đà LạtTheo kinh nghiệm du lịch Đà Lạt của bọn mình thì đây là một trong những nơi bạn có thể ghé thăm bất cứ khi nào. Nằm trên cao nguyên, khí hậu Đà Lạt luôn duy trì ở mức 20 độ C, mát mẻ quanh năm. Tất nhiên thành phố vẫn chia thành hai mùa mưa – nắng nhưng mỗi mùa, mỗi thời điểm, Đà Lạt đều mang một vẻ đẹp riêng.Mùa xuân - Mùa đôngThời điểm đến Đà Lạt đẹp nhất là vào thời điểm cuối thu, đầu đông và kéo dài qua hết mùa xuân, bởi lúc này thành phố vào mùa khô, tha hồ cho bạn tận hưởng chuyến du lịch của mình. Từ cuối tháng 10, thời tiết ở Đà Lạt bắt đâu trở lạnh, chuẩn bị cho mùa đông. Đây cũng là lúc Đà Lạt được khoác lên mình tấm áo rực rỡ của đủ loài hoa rực rỡ như hoa cải trắng (tháng 10 – 12), hoa cỏ hồng (tháng 11 – 12), hoa dã quỳ (tháng 11 – tháng 1).Đặc biệt, cuối tháng 12 là lúc thành phố đông đúc nhất khi đến Festival hoa Đà Lạt được tổ chức mỗi 2 năm / lần. Trong suốt năm ngày diễn ra festival, muôn hoa muôn sắc phủ khắp mọi ngả đường, thu hút hàng ngàn lượt khách tham quan đến vui chơi. Hãy lưu lại ý này trong cẩm nang du lịch Đà Lạt của bọn mình nhé.Festival Hoa Đà Lạt năm 2022 sẽ được tổ chức từ ngày Thứ 3 (1/11/2022) đến Thứ 7 (31/12/2022). Như vậy nếu du lịch Đà Lạt trong khoảng thời gian này, bạn sẽ có cơ hội chiêm ngưỡng Lễ hội hoa lớn nhất Việt Nam.', '2023-04-03', 'Nguồn: Đà Lạt ', 'Trade_thực_chiến__MR_PHÁO-removebg-preview.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id_user` int NOT NULL,
  `full_name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `images` text COLLATE utf8mb4_general_ci NOT NULL,
  `password` text COLLATE utf8mb4_general_ci NOT NULL,
  `date_put` date NOT NULL,
  `role` int NOT NULL,
  `status` int NOT NULL,
  `email` text COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id_user`, `full_name`, `images`, `password`, `date_put`, `role`, `status`, `email`) VALUES
(2, 'huỳnh ngọc tài ', 'tim-nha-cung-cap-rau-cu-qua-tuoi-ngon.jpg', '21232f297a57a5a743894a0e4a801fc3', '2023-03-24', 1, 1, 'admin@gmail.com'),
(3, 'huỳnh ngọc tài ', 'tim-nha-cung-cap-rau-cu-qua-tuoi-ngon.jpg', '21232f297a57a5a743894a0e4a801fc3', '2023-03-24', 1, 1, 'admin@gmail.com'),
(20, 'huynh ngoc tai', 'Huynh Ngoc Tai.png', '21232f297a57a5a743894a0e4a801fc3', '2023-03-31', 2, 1, 'haiqw1223wqq@gmail.com');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id_commnent`),
  ADD KEY `a` (`id_post`),
  ADD KEY `id_user` (`id_users`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id_posts`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id_commnent` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id_posts` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `a` FOREIGN KEY (`id_post`) REFERENCES `posts` (`id_posts`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`id_users`) REFERENCES `user` (`id_user`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
