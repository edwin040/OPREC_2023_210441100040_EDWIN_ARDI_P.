CREATE DATABASE toko_buku;

USE toko_buku;

CREATE TABLE penulis(
	id_penulis INT, 
	nama VARCHAR(100), 
	negara VARCHAR(100));

INSERT penulis(id_penulis, nama, negara)VALUES
	(01,"rid","indonesia"),
	(01,"ri","indonesia"),
	(01,"ridwan","indonesia"),
	(01,"ridwan","indonesia");

CREATE TABLE buku(
	id_buku INT, 
	judul VARCHAR(100),
	id_penulis INT,
	harga INT,
	stok INT);
	
CREATE TABLE penjualan(
	id_pejualan INT, 
	id_buku INT,
	tanggal DATE,
	jumlah INT);
	
CREATE VIEW viewBukuPenulis(
 FROM TABLE buku AS penulis(
	judul, buku,harga, stok, nama penulis, negara penulis)
);

//DELIMITER
CREATE PROCEDURE cek_penjualan(INT id_buku)
INT tambah = 1;
FROM TABLE buku WHERE id_buku = id_buku
	START
	SELECT FROM buku (
	stok + tambah);
	END//
DELIMITER
);

