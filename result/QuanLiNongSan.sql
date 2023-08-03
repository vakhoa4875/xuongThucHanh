use master
go
drop database if exists QuanLySanPhamNN
go
CREATE DATABASE QuanLySanPhamNN
go

-- Sử dụng cơ sở dữ liệu vừa tạo
USE QuanLySanPhamNN;

-- priority 1
-- Tạo bảng Nhà Cung Cấp
CREATE TABLE NhaCungCap (
    MaNCC INT PRIMARY KEY,
    TenNCC NVARCHAR(255) NOT NULL,
    DiaChi NVARCHAR(255) not null,
    SDT VARCHAR(15) not null,
	email varchar(50)
);
-- Tạo bảng Kho
CREATE TABLE Kho (
    MaKho INT PRIMARY KEY,
    TenKho NVARCHAR(255) not null,
    DiaChi NVARCHAR(255) not null
);

-- Tạo bảng Khách hàng
CREATE TABLE KhachHang (
    MaKH INT PRIMARY KEY,
    tenKH NVARCHAR(255) NOT NULL,
    DiaChi NVARCHAR(255) not null,
    SDT NVARCHAR(15) not null
);

--Tạo bảng nhân viên
CREATE TABLE NhanVien(
	MaNV INT PRIMARY KEY,
	TenNV NVARCHAR(30) not null,
	SDT NVARCHAR(15) not null
);

-- priority 2
-- Tạo bảng Sản Phẩm
CREATE TABLE SanPham (
    MaSP INT PRIMARY KEY,
	MaNCC INT not null,
    TenSP NVARCHAR(255) NOT NULL,
    DonViTinh NVARCHAR(50),
    HinhDaiDien NVARCHAR(255),
    DonGia FLOAT not null,
    QuiCachDongGoi NVARCHAR(100),
    HinhThucBaoQuan NVARCHAR(100), 
	constraint fk_sp_ncc foreign key (mancc) references nhacungcap(mancc)
);

-- Tạo bảng Đơn nhập hàng
CREATE TABLE DonNhapHang (
    maDNH INT PRIMARY KEY,
    NgayLap DATE not null,
    MaNV INT not null,
    MaNCC INT not null,
	MaKho int not null,
	tongTien float null,
	constraint fk_nh_ncc foreign key (mancc) references nhacungcap(mancc),
	constraint fk_nh_nv foreign key (MaNV) references nhanvien(MaNV),
	constraint fk_nh_kho foreign key (makho) references kho(makho)
);

-- Tạo bảng Đơn xuất hàng
CREATE TABLE DonXuatHang (
    maDXH INT PRIMARY KEY,
    NgayLap DATE not null,
    NgayDuKien DATE not null,
    MaNV INT not null,
    MaKH INT not null,
	tongTien float null,
	constraint fk_xh_nv foreign key (manv) references nhanvien(manv),
	constraint fk_xh_kh foreign key (makh) references khachhang(makh)
);


-- priority 3
-- Tạo bảng Sản phẩm tồn kho
CREATE TABLE SanPhamTonKho (
	maSPtonKho int primary key,
    MaKho INT not null,
    MaSP INT not null,
    SoLuongTonKho INT not null,
	constraint fk_tk_kho foreign key (makho) references kho(makho),
	constraint fk_tk_sp foreign key (masp) references sanpham(masp),
	constraint unique_sptk unique (makho, masp)
);

--priority 4
-- Tạo bảng Nhập hàng chi tiết
CREATE TABLE NhapHangChiTiet (
    --maNHCT INT primary key,
	maDNH INT not null,
	maSPTK INT not null,
    SoLuongNhap INT not null,
	constraint pk_nhct primary key (madnh, maSPTK),
	constraint fk_nhct_nh foreign key (maDNH) references donnhaphang(maDNH),
	constraint fk_nhct_kho foreign key (maSPTK) references sanphamtonkho(maSPtonKho)
);
-- Tạo bảng Xuất hàng chi tiết
CREATE TABLE XuatHangChiTiet (
    --maXHCT INT PRIMARY KEY ,
	SoLuongSp INT not null,
    maDXH INT not null,
	maSPtonKho INT not null,
	constraint pk_xhct primary key (madxh, masptonkho) ,
	constraint fk_xhct_nh foreign key (maDXH) 
	references donxuathang(maDXH),
	constraint fk_xhct_kho foreign key (maSPtonKho) 
	references sanphamtonkho(maSPtonKho)
);









