CREATE DATABASE QLNHAC;

USE QLNHAC; 

CREATE TABLE tacgia
(
	ma_tgia INT UNSIGNED  NOT NULL PRIMARY KEY,
	ten_tgia VARCHAR(100) NOT NULL,
	hinh_tgia VARCHAR(100)
)

CREATE TABLE theloai 
(
	ma_tloai INT UNSIGNED NOT NULL PRIMARY KEY,
	ten_tloai VARCHAR(50) NOT NULL
)

CREATE TABLE baiviet
(
	ma_bviet INT UNSIGNED NOT NULL PRIMARY KEY,
	tieude VARCHAR(200) NOT NULL,
	ten_bhat VARCHAR(100) NOT NULL,
	ma_tloai INT UNSIGNED NOT NULL,
	tomtat TEXT NOT NULL,
	noidung TEXT,
	ma_tgia INT UNSIGNED NOT NULL,
	ngayviet DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	hinhanh VARCHAR(200),
	FOREIGN KEY (ma_tloai) REFERENCES theloai(ma_tloai),
	FOREIGN KEY (ma_tgia) REFERENCES tacgia(ma_tgia)
)

CREATE TABLE users
(
	uid INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	username VARCHAR(30) NOT NULL UNIQUE,
	pw VARCHAR(15) NOT NULL
	
)

a. Liệt kê các bài viết về các bài hát thuộc thể loại Nhạc trữ tình 
SELECT * FROM baiviet INNER JOIN theloai ON baiviet.ma_tloai = theloai.ma_tloai
WHERE theloai.ten_tloai = 'Nhạc trữ tình';


b. Liệt kê các bài viết của tác giả “Nhacvietplus” 
SELECT * FROM baiviet INNER JOIN tacgia ON baiviet.ma_tgia = tacgia.ma_tgia
WHERE tacgia.ten_tgia = 'Nhacvietplus';


c. Liệt kê các thể loại nhạc chưa có bài viết cảm nhận nào.


d. Liệt kê các bài viết với các thông tin sau: mã bài viết, tên bài viết, tên bài hát, tên tác giả, tên 
thể loại, ngày viết.
SELECT baiviet.ma_bviet, baiviet.ten_bviet, baiviet.ten_bhat, tacgia.ten_tgia, theloai.ten_tloai, baiviet.ngayviet FROM tacgia, theloai, baiviet
WHERE tacgia.ma_tgia = baiviet.ma_tgia AND theloai.ma_tloai = baiviet.ma_tloai;


e. Tìm thể loại có số bài viết nhiều nhất
SELECT baiviet.ma_tloai, COUNT(baiviet.ma_tloai) mycount
FROM baiviet INNER JOIN theloai ON baiviet.ma_tloai = theloai.ma_tloai
GROUP BY baiviet.ma_tloai;

SELECT MAX(mycount)
FROM (SELECT baiviet.ma_tloai, COUNT(baiviet.ma_tloai) 
FROM baiviet INNER JOIN theloai ON baiviet.ma_tloai = theloai.ma_tloai
GROUP BY baiviet.ma_tloai);

SELECT baiviet.ma_tloai, COUNT(baiviet.ma_tloai) 
FROM baiviet INNER JOIN theloai ON baiviet.ma_tloai = theloai.ma_tloai
GROUP BY baiviet.ma_tloai
HAVING COUNT(baiviet.ma_tloai) = SELECT MAX(mycount)
FROM (SELECT baiviet.ma_tloai, COUNT(baiviet.ma_tloai) 
FROM baiviet INNER JOIN theloai ON baiviet.ma_tloai = theloai.ma_tloai
GROUP BY baiviet.ma_tloai);


f. Liệt kê 2 tác giả có số bài viết nhiều nhất 
SELECT MAX(mycount)
FROM (SELECT baiviet.ma_tgia, COUNT(baiviet.ma_tgia)
FROM baiviet INNER JOIN tacgia ON baiviet.ma_tacgia = tacgia.ma_tgia
GROUP BY baiviet.ma_tacgia);

g. Liệt kê các bài viết về các bài hát có tựa bài hát chứa 1 trong các từ “yêu”, “thương”, “anh”, 
“em”
SELECT * FROM baiviet
WHERE ten_bhat IN ('yêu', 'thương', 'anh', 'em');