-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 27, 2020 lúc 03:13 PM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db_project`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category_documents`
--

CREATE TABLE `category_documents` (
  `Id` int(10) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Description` varchar(300) NOT NULL,
  `DateCreated` date NOT NULL ,
  `DateModified` date NOT NULL 
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `category_documents`
--

INSERT INTO `category_documents` (`Id`, `Title`, `Description`, `DateCreated`, `DateModified`) VALUES
(1, 'Tai lieu update ne', 'Mieu ta', '2020-05-05', '2020-05-05'),
(32, 'UpdateNe dsadas', 'Update lun nè', '2020-05-07', '2020-05-07'),
(35, 'Tai lei moi them', 'Tai lieu lien quan den gai', '2020-05-07', '2020-05-07'),
(36, 'Tai lei moi them', 'Tai lieu lien quan den gai', '2020-05-07', '2020-05-07'),
(37, 'Tai lei moi them', 'Tai lieu lien quan den gai', '2020-05-07', '2020-05-07');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `Id` int(10) NOT NULL,
  `Content` varchar(500) NOT NULL,
  `UserId` int(10) NOT NULL,
  `DocumentID` int(10) NOT NULL,
  `ParentCommentID` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `documents`
--

CREATE TABLE `documents` (
  `Id` int(10) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `DateCreaated` date NOT NULL ,
  `DateModified` date NOT NULL ,
  `UserId` int(10) NOT NULL,
  `CategoryDocumentId` int(10) NOT NULL,
  `Content_trailer` varchar(500) NOT NULL,
  `File` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`File`)),
  `Image` varchar(500) NOT NULL,
  `Views` int(11) NOT NULL,
  `Dowloads` int(11) NOT NULL,
  `Shares` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `documents`
--

INSERT INTO `documents` (`Id`, `Title`, `DateCreaated`, `DateModified`, `UserId`, `CategoryDocumentId`, `Content_trailer`, `File`, `Image`, `Views`, `Dowloads`, `Shares`) VALUES
(1, 'Thới giới không học', '2020-05-21', '2020-05-21', 4, 1, 'Tài liệu được chia sẽ', '{\"url\":\"/file/file-1590051641177-217998449.pdf\"}', '{\"url\":\"/file/file-1590051641199-557468681.jpeg\"}', 3212, 2122, 2312),
(2, 'Tài liệu update nè', '2020-05-21', '2020-05-21', 4, 1, 'Tài liệu được chia sẽ', '{\"url\":\"file/file-1590072057902-603282215.pdf\"}', '{\"url\":\"file/file-1590072057928-249142046.jpeg\"}', 231, 23, 12),
(3, 'Tài liệu toán học', '2020-05-21', '2020-05-21', 4, 1, 'Tài liệu được chia sẽ', '{\"url\":\"/file/file-1590051702037-578169808.pdf\"}', '{\"url\":\"/file/file-1590051702197-994082215.jpeg\"}', 2312, 231, 122),
(4, 'Tài liệu văn học', '2020-05-21', '2020-05-21', 4, 1, 'Tài liệu được chia sẽ', '{\"url\":\"/file/file-1590051721321-953775837.pdf\"}', '{\"url\":\"/file/file-1590051721337-387000371.jpeg\"}', 542, 431, 233),
(5, 'Tài liệu ôn thi', '2020-05-21', '2020-05-21', 4, 1, 'Tài liệu được chia sẽ', '{\"url\":\"/file/file-1590051731411-31168409.pdf\"}', '{\"url\":\"/file/file-1590051731448-850495427.jpeg\"}', 542, 431, 233),
(6, 'Tài liệu TOIEC', '2020-05-21', '2020-05-21', 4, 1, 'Tài liệu được chia sẽ', '{\"url\":\"/file/file-1590051746943-64590908.pdf\"}', '{\"url\":\"/file/file-1590051746949-805967454.jpeg\"}', 5422, 4312, 2331),
(7, 'Đồ án tốt nghiệp', '2020-05-21', '2020-05-21', 4, 1, 'Tài liệu được chia sẽ', '{\"url\":\"/file/file-1590051767678-480366426.pdf\"}', '{\"url\":\"/file/file-1590051767687-837715672.jpeg\"}', 54222, 43122, 23312),
(8, 'Đề tài bảo vệ', '2020-05-21', '2020-05-21', 4, 1, 'Tài liệu được chia sẽ', '{\"url\":\"/file/file-1590051787921-173973143.pdf\"}', '{\"url\":\"/file/file-1590051787926-173275451.jpeg\"}', 685, 234, 57),
(9, 'Ôn thi đại học toán học', '2020-05-21', '2020-05-21', 4, 1, 'Tài liệu được chia sẽ', '{\"url\":\"/file/file-1590051809598-8902193.pdf\"}', '{\"url\":\"/file/file-1590051809605-890390492.jpeg\"}', 6852, 2342, 572),
(10, 'Tài liệu tiếng anh speak', '2020-05-21', '2020-05-21', 4, 1, 'Tài liệu được chia sẽ', '{\"url\":\"/file/file-1590051844692-27470100.pdf\"}', '{\"url\":\"/file/file-1590051844723-182345485.jpeg\"}', 976, 657, 572),
(11, 'Tài liệu sinh vật học', '2020-05-21', '2020-05-21', 4, 1, 'Tài liệu được chia sẽ', '{\"url\":\"/file/file-1590051866372-870363112.pdf\"}', '{\"url\":\"/file/file-1590051866405-141068557.jpeg\"}', 9761, 6571, 5721),
(12, 'Tài liệu tâm lý học', '2020-05-21', '2020-05-21', 4, 1, 'Tài liệu được chia sẽ', '{\"url\":\"/file/file-1590051888762-112817991.pdf\"}', '{\"url\":\"/file/file-1590051888786-168495784.jpeg\"}', 4356, 2345, 1123),
(13, 'Tài liệu toán cao cấp', '2020-05-21', '2020-05-21', 4, 1, 'Tài liệu được chia sẽ', '{\"url\":\"/file/file-1590051912303-924485547.pdf\"}', '{\"url\":\"/file/file-1590051912312-729278980.jpeg\"}', 431, 321, 123),
(14, 'Tài liệu bì bật quốc gia', '2020-05-21', '2020-05-21', 4, 1, 'Tài liệu được chia sẽ', '{\"url\":\"/file/file-1590051927015-301788224.pdf\"}', '{\"url\":\"/file/file-1590051927023-168778045.jpeg\"}', 4312, 3212, 1232),
(15, 'Thới giới không học', '2020-05-22', '2020-05-22', 10, 1, 'Tài liệu được chia sẽ', '{\"url\":\"/file/file-1590402103698-530892911.pdf\",\"fileName\":\"file-1590402103698-530892911.pdf\"}', '{\"url\":\"/file/image-1590402127612-628478537.jpeg\",\"fileName\":\"image-1590402127612-628478537.jpeg\"}', 3212, 2122, 2312),
(17, 'Thới giới quan học', '2020-05-22', '2020-05-22', 10, 1, 'Tài liệu được chia sẽ', '{\"url\":\"/file/file-1590402169015-422473821.pdf\",\"fileName\":\"file-1590402169015-422473821.pdf\"}', '{\"url\":\"/file/image-1590402169001-540870270.jpeg\",\"fileName\":\"image-1590402169001-540870270.jpeg\"}', 1232, 1232, 122),
(18, 'Thới giới bóng đêm update', '2020-05-22', '2020-05-22', 10, 1, 'Tài liệu được chia sẽ', '{\"url\":\"/file/file-1590402703980-357290476.pdf\",\"fileName\":\"file-1590402703980-357290476.pdf\"}', '{\"url\":\"/file/file-1590130102741-816403474.jpeg\"}', 233, 123, 12),
(19, 'Tài liệu tối mật ', '2020-05-22', '2020-05-22', 10, 1, 'Tài liệu được chia sẽ', '{\"url\":\"/file/file-1590130137449-163131371.pdf\"}', '{\"url\":\"/file/file-1590130137545-363592463.jpeg\"}', 2333, 1234, 122),
(21, 'Mới thêm thêm nữa nè', '2020-05-25', '2020-05-25', 10, 32, 'Tài liệu này số 1', '{\"url\":\"/file/file-1590402378276-365818707.pdf\",\"fileName\":\"file-1590402378276-365818707.pdf\"}', '{\"url\":\"/file/image-1590401507465-733653299.jpeg\",\"fileName\":\"image-1590401507465-733653299.jpeg\"}', 0, 0, 0),
(22, 'Liên hệ Viezon', '2020-05-25', '2020-05-25', 10, 35, 'demo nè', '{\"url\":\"/file/file-1590402451621-220622663.pdf\",\"fileName\":\"file-1590402451621-220622663.pdf\"}', '{\"url\":\"/file/image-1590401782471-937911849.jpeg\",\"fileName\":\"image-1590401782471-937911849.jpeg\"}', 0, 0, 0),
(24, 'Đêm tình tứ', '2020-05-25', '2020-05-25', 10, 35, 'dsad', '{\"url\":\"/file/file-1590396757656-693589917.pdf\"}', '{\"url\":\"/file/image-1590396757690-600634120.jpeg\"}', 0, 0, 0),
(25, 'Tài liệu liên quan cấp cao', '2020-05-25', '2020-05-25', 10, 35, 'dsa', '{\"url\":\"/file/file-1590396906338-839876771.pdf\"}', '{\"url\":\"/file/image-1590396906375-938324064.jpeg\"}', 0, 0, 0),
(26, 'Tài liệu mới thêm', '2020-05-25', '2020-05-25', 10, 32, 'đâsd', '{\"url\":\"/file/file-1590398815988-980787118.pdf\",\"fileName\":\"file-1590398815988-980787118.pdf\"}', '{\"url\":\"/file/image-1590398816099-63888920.jpeg\",\"fileName\":\"file-1590398815988-980787118.pdf\"}', 0, 0, 0),
(29, 'Mới thêm', '2020-05-26', '2020-05-26', 10, 36, 'Thêm tài liệu nhiều', '{\"url\":\"/file/file-1590465825005-371496571.pdf\",\"fileName\":\"file-1590465825005-371496571.pdf\"}', '{\"url\":\"/file/image-1590465825074-504135299.jpeg\",\"fileName\":\"image-1590465825074-504135299.jpeg\"}', 0, 0, 0),
(30, 'Thới giới bóng đêm', '2020-05-26', '2020-05-26', 10, 37, 'Thêm tài liệu nhiều ', '{\"url\":\"/file/file-1590465855030-262982322.pdf\",\"fileName\":\"file-1590465855030-262982322.pdf\"}', '{\"url\":\"/file/image-1590465855047-920649786.jpeg\",\"fileName\":\"image-1590465855047-920649786.jpeg\"}', 0, 0, 0),
(31, 'Thới giới bóng đêm khuya', '2020-05-26', '2020-05-26', 10, 32, 'Thêm tài liệu nhiều ', '{\"url\":\"/file/file-1590465876755-880993758.pdf\",\"fileName\":\"file-1590465876755-880993758.pdf\"}', '{\"url\":\"/file/image-1590465876797-867525438.jpeg\",\"fileName\":\"image-1590465876797-867525438.jpeg\"}', 0, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `document_share`
--

CREATE TABLE `document_share` (
  `Id` int(10) NOT NULL,
  `RoleId` int(10) NOT NULL,
  `DateCreated` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `Id` int(10) NOT NULL,
  `Permission` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `DateCreated` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`Id`, `Permission`, `DateCreated`) VALUES
(1, 'Read', '2020-05-05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `Id` int(10) NOT NULL,
  `FullName` varchar(100) NOT NULL,
  `DayOfBirth` date NOT NULL,
  `Email` varchar(100) NOT NULL,
  `PhoneNumber` varchar(10) NOT NULL,
  `Description` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`Id`, `FullName`, `DayOfBirth`, `Email`, `PhoneNumber`, `Description`, `Password`) VALUES
(4, 'Nghia', '2020-01-25', 'nghia@gmail.com', '011235645', 'mieu ta', '12313456'),
(7, 'Nghĩa', '1998-10-19', 'mailne@gmaial.com', '0912345678', 'Mei ta ne', '$2a$10$29Pj11vNP/e6YApTStk0Qeke7wSutVYpYRkvJR4qc6LvKXOq/EqFW'),
(8, 'Nghĩa', '1998-10-19', 'mailne@gamaial.com', '0912345678', 'Mei ta ne', '$2a$10$rPYKL2gNWyKt0oLuCX3oFOI3k1QIqbsmYjxCIx1VcOsIY3in3WkNW'),
(9, 'Nghĩa', '1998-10-19', 'concu@gmaial.com', '0912345678', 'Mei ta ne', '$2a$10$jKRrSsNRpES5fBfY5eBZxuCJliyBSNRYnpn4hoIwUOAkZGMN.Nscu'),
(10, 'Nghĩa', '1998-10-19', 'demo@gmail.com', '0912345678', 'Mei ta ne', '$2a$10$414gGdyjpL1dNvkYlAefUeYlaM52p8YDRteY5cyrmEmPD/Gk8LrjK'),
(11, 'Ngĩa', '1998-12-10', 'nghiademo@gmail.com', '123456897', '1233', '123456');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `category_documents`
--
ALTER TABLE `category_documents`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `UserId` (`UserId`),
  ADD KEY `DocumentID` (`DocumentID`),
  ADD KEY `ParentCommentID` (`ParentCommentID`);

--
-- Chỉ mục cho bảng `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `UserId` (`UserId`),
  ADD KEY `CategoryDocumentsId` (`CategoryDocumentId`);

--
-- Chỉ mục cho bảng `document_share`
--
ALTER TABLE `document_share`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `RoleId` (`RoleId`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `category_documents`
--
ALTER TABLE `category_documents`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `documents`
--
ALTER TABLE `documents`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `document_share`
--
ALTER TABLE `document_share`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `user` (`Id`),
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`DocumentID`) REFERENCES `documents` (`Id`),
  ADD CONSTRAINT `comment_ibfk_3` FOREIGN KEY (`ParentCommentID`) REFERENCES `comment` (`Id`);

--
-- Các ràng buộc cho bảng `documents`
--
ALTER TABLE `documents`
  ADD CONSTRAINT `documents_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `user` (`Id`),
  ADD CONSTRAINT `documents_ibfk_2` FOREIGN KEY (`CategoryDocumentId`) REFERENCES `category_documents` (`Id`);

--
-- Các ràng buộc cho bảng `document_share`
--
ALTER TABLE `document_share`
  ADD CONSTRAINT `document_share_ibfk_1` FOREIGN KEY (`RoleId`) REFERENCES `roles` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
