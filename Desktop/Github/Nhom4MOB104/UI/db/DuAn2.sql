CREATE DATABASE DuAn2
IF OBJECT_ID('Users') IS NOT NULL
	DROP TABLE Users
GO
CREATE TABLE Users
(
	TenDN	NVARCHAR(50) NOT NULL,
	MatKhau	NVARCHAR(50) NULL,
	HoTen	NVARCHAR(50) NULL,
	Sdt		int,
	DiaChi  NVARCHAR(50) NULL,
	Email   NVARCHAR(50) NULL,
	VaiTro	NVARCHAR(50) NULL,
	CONSTRAINT PK_Users PRIMARY KEY(TenDN)
)
IF OBJECT_ID('KhachHang') IS NOT NULL
	DROP TABLE KhachHang
GO
CREATE TABLE KhachHang
(
	MaKH	NVARCHAR(50) NOT NULL,
	TenKH	NVARCHAR(50) NULL,
	TenDN	NVARCHAR(50) NULL,
	Sdt		int,
	DiaChi  NVARCHAR(50) NULL,
	MatKhau	NVARCHAR(50) NULL,
	Email   NVARCHAR(50) NULL,
	CONSTRAINT PK_KhachHang PRIMARY KEY(MaKH)
)
IF OBJECT_ID('KhachHang') IS NOT NULL
	DROP TABLE KhachHang
GO
CREATE TABLE KhachHang
(
	MaKH	NVARCHAR(50) NOT NULL,
	TenKH	NVARCHAR(50) NULL,
	TenDN	NVARCHAR(50) NULL,
	Sdt		int,
	DiaChi  NVARCHAR(50) NULL,
	MatKhau	NVARCHAR(50) NULL,
	Email   NVARCHAR(50) NULL,
	CONSTRAINT PK_KhachHang PRIMARY KEY(MaKH)
)
IF OBJECT_ID('QLLoaiAo') IS NOT NULL
	DROP TABLE QLLoaiAo
GO
CREATE TABLE QLLoaiAo
(
	MaLoai	    NVARCHAR(50) NOT NULL,
	PhanLoai	NVARCHAR(50) NULL,
	CONSTRAINT PK_QLLoaiAo PRIMARY KEY(MaLoai)
)
IF OBJECT_ID('QLLogo') IS NOT NULL
	DROP TABLE QLLogo
GO
CREATE TABLE QLLogo
(
	MaLogo	    NVARCHAR(50) NOT NULL,
	Anh			NVARCHAR(50) NOT NULL,
	Gia			FLOAT NULL,
	KieuIn		NVARCHAR(50) NOT NULL,
	GiaLogo		FLOAT NULL,
	CONSTRAINT PK_QLLogo PRIMARY KEY(MaLogo)
)
IF OBJECT_ID('SanPham') IS NOT NULL
	DROP TABLE SanPham
GO
CREATE TABLE SanPham
(
	MaSP	NVARCHAR(50) NOT NULL,
	TenSP	NVARCHAR(50) NULL,
	KichCo	NVARCHAR(10) NULL,
	MauSac	NVARCHAR(50) NULL,
	MaLoai  NVARCHAR(50) NULL,
	SoLuongTon	int NULL,
	DonGia   Float NULL,
	Anh   NVARCHAR(50) NULL,
	ChatLieu   NVARCHAR(50) NULL,
	CONSTRAINT PK_SanPham PRIMARY KEY(MaSP),
	CONSTRAINT FK_QLLoaiAo_SanPham FOREIGN KEY(MaLoai) REFERENCES QLLoaiAo,
)

IF OBJECT_ID('HoaDon') IS NOT NULL
	DROP TABLE HoaDon
GO
CREATE TABLE HoaDon
(
	MaHD	    int identity(1,1) NOT NULL,
	MaKH		NVARCHAR(50) NOT NULL,
	NgayXuat	DATE NULL,
	TenDN		NVARCHAR(50) NOT NULL,
	CONSTRAINT PK_HoaDon PRIMARY KEY(MaHD),
	CONSTRAINT FK_KhachHang_HoaDon FOREIGN KEY(MaKH) REFERENCES KhachHang,
	CONSTRAINT FK_Users_HoaDon FOREIGN KEY(TenDN) REFERENCES Users,
)

IF OBJECT_ID('HoaDonChiTiet') IS NOT NULL
	DROP TABLE HoaDonChiTiet
GO
CREATE TABLE HoaDonChiTiet
(
	MaHoaDonChiTiet int identity(1,1) NOT NULL,
	MaHD	    int NOT NULL,
	MaSP		NVARCHAR(50) NOT NULL,
	SoLuong		int NOT NULL,
	DonGia		FLOAT NULL,
	Malogo		NVARCHAR(50) NOT NULL,
	GiaLogo		FLOAT NULL,
	TongTien	FLOAT NULL,
	CONSTRAINT PK_HoaDonChiTiet PRIMARY KEY(MaHoaDonChiTiet),
	CONSTRAINT FK_HoaDon_HoaDonChiTiet FOREIGN KEY(MaHD) REFERENCES HoaDon,
	CONSTRAINT FK_SanPham_HoaDonChiTiet FOREIGN KEY(MaSP) REFERENCES SanPham,
	CONSTRAINT FK_QLLogo_HoaDonChiTiet FOREIGN KEY(Malogo) REFERENCES QLLogo,
)

insert into QLLoaiAo(MaLoai,PhanLoai) values(N'ML01',N'Loai 1');
insert into QLLoaiAo(MaLoai,PhanLoai) values(N'ML02',N'Loai 1');
insert into QLLoaiAo(MaLoai,PhanLoai) values(N'ML03',N'Loai 1');
insert into QLLoaiAo(MaLoai,PhanLoai) values(N'ML04',N'Loai 1');
insert into QLLoaiAo(MaLoai,PhanLoai) values(N'ML05',N'Loai 1');
insert into QLLoaiAo(MaLoai,PhanLoai) values(N'ML06',N'Loai 1');
--
select * from QLLoaiAo


insert into SanPham(MaSP,TenSP,KichCo,MauSac,MaLoai,SoLuongTon,DonGia,Anh,ChatLieu) values(N'SP01',N'Áo phông Chính ngu',N'Size M',N'Blue',N'ML01',30,180000,N'anh1.jpg',N'Cotton');
insert into SanPham(MaSP,TenSP,KichCo,MauSac,MaLoai,SoLuongTon,DonGia,Anh,ChatLieu) values(N'SP02',N'Áo phông Chính ngu',N'Size S',N'Pink',N'ML02',30,180000,N'anh2.jpg',N'Cotton');
insert into SanPham(MaSP,TenSP,KichCo,MauSac,MaLoai,SoLuongTon,DonGia,Anh,ChatLieu) values(N'SP03',N'Áo phông Chính ngu',N'Size XXL',N'Violet',N'ML03',30,180000,N'anh3.jpg',N'Cotton');
insert into SanPham(MaSP,TenSP,KichCo,MauSac,MaLoai,SoLuongTon,DonGia,Anh,ChatLieu) values(N'SP04',N'Áo phông Chính ngu',N'Size XL',N'Black',N'ML04',30,180000,N'anh4.jpg',N'Cotton');
insert into SanPham(MaSP,TenSP,KichCo,MauSac,MaLoai,SoLuongTon,DonGia,Anh,ChatLieu) values(N'SP05',N'Áo phông Chính ngu',N'Size L',N'Green',N'ML05',30,180000,N'anh5.jpg',N'Cotton');
insert into SanPham(MaSP,TenSP,KichCo,MauSac,MaLoai,SoLuongTon,DonGia,Anh,ChatLieu) values(N'SP06',N'Áo phông Chính ngu',N'Size S',N'Yellow',N'ML06',30,180000,N'anh6.jpg',N'Cotton');
--
select * from SanPham


