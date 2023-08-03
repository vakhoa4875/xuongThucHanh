use QuanLySanPhamNN
go
--INSERT INTO NhaCungCap (TenNCC, DiaChi, SDT, email) VALUES
--('Supplier 1', 'Address 1', '123456789', 'supplier1@example.com'),
--('Supplier 2', 'Address 2', '987654321', 'supplier2@example.com'),
--('Supplier 3', 'Address 3', '555555555', 'supplier3@example.com'),
--('Supplier 4', 'Address 4', '777777777', 'supplier4@example.com'),
--('Supplier 5', 'Address 5', '444444444', 'supplier5@example.com'),
--('Supplier 6', 'Address 6', '222222222', 'supplier6@example.com'),
--('Supplier 7', 'Address 7', '333333333', 'supplier7@example.com'),
--('Supplier 8', 'Address 8', '999999999', 'supplier8@example.com'),
--('Supplier 9', 'Address 9', '111111111', 'supplier9@example.com'),
--('Supplier 10', 'Address 10', '666666666', 'supplier10@example.com');

--INSERT INTO Kho (TenKho, DiaChi) VALUES
--('Warehouse A', 'Address A'),
--('Warehouse B', 'Address B'),
--('Warehouse C', 'Address C'),
--('Warehouse D', 'Address D'),
--('Warehouse E', 'Address E');

--INSERT INTO KhachHang (tenKH, DiaChi, SDT) VALUES
--('Customer 1', 'Customer Address 1', '111111111'),
--('Customer 2', 'Customer Address 2', '222222222'),
--('Customer 3', 'Customer Address 3', '333333333'),
--('Customer 4', 'Customer Address 4', '444444444'),
--('Customer 5', 'Customer Address 5', '555555555'),
--('Customer 6', 'Customer Address 6', '666666666'),
--('Customer 7', 'Customer Address 7', '777777777'),
--('Customer 8', 'Customer Address 8', '888888888'),
--('Customer 9', 'Customer Address 9', '999999999'),
--('Customer 10', 'Customer Address 10', '1010101010'),
--('Customer 11', 'Customer Address 11', '1010101010'),
--('Customer 12', 'Customer Address 12', '1010101010'),
--('Customer 13', 'Customer Address 13', '1010101010'),
--('Customer 14', 'Customer Address 14', '1010101010'),
--('Customer 15', 'Customer Address 15', '1010101010'),
--('Customer 16', 'Customer Address 16', '1616161616'),
--('Customer 17', 'Customer Address 17', '1717171717'),
--('Customer 18', 'Customer Address 18', '1818181818'),
--('Customer 19', 'Customer Address 19', '1919191919'),
--('Customer 20', 'Customer Address 20', '2020202020'),
--('Customer 21', 'Customer Address 21', '2121212121'),
--('Customer 22', 'Customer Address 22', '2222222222'),
--('Customer 23', 'Customer Address 23', '2323232323'),
--('Customer 24', 'Customer Address 24', '2424242424'),
--('Customer 25', 'Customer Address 25', '2525252525');

--INSERT INTO NhanVien (TenNV, SDT) VALUES
--('Employee 1', '111111111'),
--('Employee 2', '222222222'),
--('Employee 3', '333333333'),
--('Employee 4', '444444444'),
--('Employee 5', '555555555'),
--('Employee 6', '666666666'),
--('Employee 7', '777777777'),
--('Employee 8', '888888888'),
--('Employee 9', '999999999'),
--('Employee 10', '1010101010'),
--('Employee 11', '1111111111'),
--('Employee 12', '1212121212'),
--('Employee 13', '1313131313'),
--('Employee 14', '1414141414'),
--('Employee 15', '1515151515');

--INSERT INTO SanPham (MaNCC, TenSP, DonViTinh, HinhDaiDien, DonGia, QuiCachDongGoi, HinhThucBaoQuan) VALUES
--(1, 'Product A', 'Piece', 'product_a.jpg', 10.99, 'Packaging A', 'Storage A'),
--(2, 'Product B', 'Piece', 'product_b.jpg', 7.99, 'Packaging B', 'Storage B'),
--(3, 'Product C', 'Piece', 'product_c.jpg', 5.49, 'Packaging C', 'Storage C'),
--(1, 'Product D', 'Piece', 'product_d.jpg', 15.99, 'Packaging D', 'Storage D'),
--(2, 'Product E', 'Piece', 'product_e.jpg', 12.49, 'Packaging E', 'Storage E'),
--(3, 'Product F', 'Piece', 'product_f.jpg', 8.99, 'Packaging F', 'Storage F'),
--(1, 'Product G', 'Piece', 'product_g.jpg', 9.99, 'Packaging G', 'Storage G'),
--(2, 'Product H', 'Piece', 'product_h.jpg', 6.99, 'Packaging H', 'Storage H'),
--(3, 'Product I', 'Piece', 'product_i.jpg', 14.49, 'Packaging I', 'Storage I'),
--(1, 'Product J', 'Piece', 'product_j.jpg', 11.99, 'Packaging J', 'Storage J'),
--(2, 'Product K', 'Piece', 'product_k.jpg', 13.99, 'Packaging K', 'Storage K'),
--(3, 'Product L', 'Piece', 'product_l.jpg', 9.49, 'Packaging L', 'Storage L'),
--(1, 'Product M', 'Piece', 'product_m.jpg', 12.99, 'Packaging M', 'Storage M'),
--(2, 'Product N', 'Piece', 'product_n.jpg', 10.49, 'Packaging N', 'Storage N'),
--(3, 'Product O', 'Piece', 'product_o.jpg', 6.49, 'Packaging O', 'Storage O'),
--(1, 'Product P', 'Piece', 'product_p.jpg', 14.99, 'Packaging P', 'Storage P'),
--(2, 'Product Q', 'Piece', 'product_q.jpg', 11.49, 'Packaging Q', 'Storage Q'),
--(3, 'Product R', 'Piece', 'product_r.jpg', 7.99, 'Packaging R', 'Storage R'),
--(1, 'Product S', 'Piece', 'product_s.jpg', 16.49, 'Packaging S', 'Storage S'),
--(2, 'Product T', 'Piece', 'product_t.jpg', 13.99, 'Packaging T', 'Storage T'),
--(3, 'Product U', 'Piece', 'product_u.jpg', 9.99, 'Packaging U', 'Storage U'),
--(1, 'Product V', 'Piece', 'product_v.jpg', 12.49, 'Packaging V', 'Storage V'),
--(2, 'Product W', 'Piece', 'product_w.jpg', 8.99, 'Packaging W', 'Storage W'),
--(3, 'Product X', 'Piece', 'product_x.jpg', 15.49, 'Packaging X', 'Storage X'),
--(1, 'Product Y', 'Piece', 'product_y.jpg', 11.99, 'Packaging Y', 'Storage Y'),
--(2, 'Product Z', 'Piece', 'product_z.jpg', 7.99, 'Packaging Z', 'Storage Z');


--INSERT INTO DonNhapHang (NgayLap, MaNV, MaNCC) VALUES
--('2023-08-01', 1, 1),
--('2023-08-02', 2, 2),
--('2023-08-03', 3, 3),
--('2023-08-04', 4, 1),
--('2023-08-05', 5, 2),
--('2023-08-06', 6, 3),
--('2023-08-07', 7, 1),
--('2023-08-08', 8, 2),
--('2023-08-09', 9, 3),
--('2023-08-10', 10, 1);

--INSERT INTO DonXuatHang (NgayLap, NgayDuKien, MaNV, MaKH) VALUES
--('2023-08-01', '2023-08-05', 1, 1),
--('2023-08-02', '2023-08-06', 2, 2),
--('2023-08-03', '2023-08-07', 3, 3),
--('2023-08-04', '2023-08-08', 4, 1),
--('2023-08-05', '2023-08-09', 5, 2),
--('2023-08-06', '2023-08-10', 6, 3),
--('2023-08-07', '2023-08-11', 7, 1),
--('2023-08-08', '2023-08-12', 8, 2),
--('2023-08-09', '2023-08-13', 9, 3),
--('2023-08-10', '2023-08-14', 10, 1);

INSERT INTO TenBang (MaNCC, TenNCC, DiaChi, SDT, Email)
VALUES 
(1, N'Nhà Cung Cấp A', N'123 Đường ABC', N'0123456789', N'ncc_a@example.com'),
(2, N'Nhà Cung Cấp B', N'456 Đường XYZ', N'0987654321', N'ncc_b@example.com'),
(3, N'Nhà Cung Cấp C', N'789 Đường LMN', N'0369852147', N'ncc_c@example.com'),
(4, N'Nhà Cung Cấp D', N'111 Đường PQR', N'0765432198', N'ncc_d@example.com'),
(5, N'Nhà Cung Cấp E', N'222 Đường UVW', N'0123456789', N'ncc_e@example.com'),
(6, N'Nhà Cung Cấp F', N'333 Đường XYZ', N'0987654321', N'ncc_f@example.com'),
(7, N'Nhà Cung Cấp G', N'444 Đường LMN', N'0369852147', N'ncc_g@example.com'),
(8, N'Nhà Cung Cấp H', N'555 Đường PQR', N'0765432198', N'ncc_h@example.com'),
(9, N'Nhà Cung Cấp I', N'666 Đường ABC', N'0987654321', N'ncc_i@example.com'),
(10, N'Nhà Cung Cấp J', N'777 Đường XYZ', N'0123456789', N'ncc_j@example.com')


INSERT INTO Kho (MaKho, TenKho, DiaChi)
VALUES
(1, N'Kho A', N'123 Đường ABC'),
(2, N'Kho B', N'456 Đường XYZ'),
(3, N'Kho C', N'789 Đường LMN'),
(4, N'Kho D', N'111 Đường PQR'),
(5, N'Kho E', N'222 Đường UVW'),
(6, N'Kho F', N'333 Đường XYZ'),
(7, N'Kho G', N'444 Đường LMN'),
(8, N'Kho H', N'555 Đường PQR'),
(9, N'Kho I', N'666 Đường ABC'),
(10, N'Kho J', N'777 Đường XYZ');

INSERT INTO TenBang (MaKH, TenKH, DiaChi, SDT)
VALUES
(1, N'Khách Hàng A', N'123 Đường ABC', N'0123456789'),
(2, N'Khách Hàng B', N'456 Đường XYZ', N'0987654321'),
(3, N'Khách Hàng C', N'789 Đường LMN', N'0369852147'),
(4, N'Khách Hàng D', N'111 Đường PQR', N'0765432198'),
(5, N'Khách Hàng E', N'222 Đường UVW', N'0123456789'),
(6, N'Khách Hàng F', N'333 Đường XYZ', N'0987654321'),
(7, N'Khách Hàng G', N'444 Đường LMN', N'0369852147'),
(8, N'Khách Hàng H', N'555 Đường PQR', N'0765432198'),
(9, N'Khách Hàng I', N'666 Đường ABC', N'0123456789'),
(10, N'Khách Hàng J', N'777 Đường XYZ', N'0987654321');

INSERT INTO TenBang (MaNV, TenNV, SDT)
VALUES
(1, N'Nhân Viên A', N'0123456789'),
(2, N'Nhân Viên B', N'0987654321'),
(3, N'Nhân Viên C', N'0369852147'),
(4, N'Nhân Viên D', N'0765432198'),
(5, N'Nhân Viên E', N'0123456789'),
(6, N'Nhân Viên F', N'0987654321'),
(7, N'Nhân Viên G', N'0369852147'),
(8, N'Nhân Viên H', N'0765432198'),
(9, N'Nhân Viên I', N'0123456789'),
(10, N'Nhân Viên J', N'0987654321');

INSERT INTO SanPham (MaSP, MaNCC, TenSP, DonViTinh, HinhDaiDien, DonGia, QuiCachDongGoi, HinhThucBaoQuan)
VALUES
(1, 1, N'Sản Phẩm A', N'Chai', N'/duong-dan/hinh-a.jpg', 10000, N'1 chai/ hộp', N'Bảo quản nơi khô ráo'),
(2, 2, N'Sản Phẩm B', N'Gói', N'/duong-dan/hinh-b.jpg', 5000, N'1 gói/ túi', N'Bảo quản nơi mát lạnh'),
(3, 1, N'Sản Phẩm C', N'Chai', N'/duong-dan/hinh-c.jpg', 15000, N'1 chai/ hộp', N'Bảo quản nơi thoáng mát'),
(4, 3, N'Sản Phẩm D', N'Lon', N'/duong-dan/hinh-d.jpg', 20000, N'1 lon/ hộp', N'Bảo quản nơi khô ráo'),(5, 2, N'Sản Phẩm E', N'Gói', N'/duong-dan/hinh-e.jpg', 8000, N'1 gói/ túi', N'Bảo quản nơi khô ráo'),
(6, 1, N'Sản Phẩm F', N'Chai', N'/duong-dan/hinh-f.jpg', 12000, N'1 chai/ hộp', N'Bảo quản nơi mát lạnh'),
(7, 3, N'Sản Phẩm G', N'Lon', N'/duong-dan/hinh-g.jpg', 25000, N'1 lon/ hộp', N'Bảo quản nơi thoáng mát'),
(8, 2, N'Sản Phẩm H', N'Gói', N'/duong-dan/hinh-h.jpg', 6000, N'1 gói/ túi', N'Bảo quản nơi khô ráo'),
(9, 1, N'Sản Phẩm I', N'Chai', N'/duong-dan/hinh-i.jpg', 11000, N'1 chai/ hộp', N'Bảo quản nơi khô ráo'),
(10, 3, N'Sản Phẩm J', N'Lon', N'/duong-dan/hinh-j.jpg', 18000, N'1 lon/ hộp', N'Bảo quản nơi thoáng mát');

INSERT INTO DonNhapHang (MaDNH, NgayLap, MaNV, MaNCC)
VALUES
(1, '2023-08-01', 1, 1),
(2, '2023-08-02', 2, 2),
(3, '2023-08-03', 3, 1),
(4, '2023-08-04', 4, 3),
(5, '2023-08-05', 5, 2),
(6, '2023-08-06', 6, 1),
(7, '2023-08-07', 7, 3),
(8, '2023-08-08', 8, 2),
(9, '2023-08-09', 9, 1),
(10, '2023-08-10', 10, 3);

INSERT INTO DonXuatHang (MaDXH, NgayLap, NgayDuKien, MaNV, MaKH)
VALUES
(1, '2023-08-01', '2023-08-05', 1, 1),
(2, '2023-08-02', '2023-08-06', 2, 2),
(3, '2023-08-03', '2023-08-07', 3, 1),
(4, '2023-08-04', '2023-08-08', 4, 3),
(5, '2023-08-05', '2023-08-09', 5, 2),
(6, '2023-08-06', '2023-08-10', 6, 1),
(7, '2023-08-07', '2023-08-11', 7, 3),
(8, '2023-08-08', '2023-08-12', 8, 2),
(9, '2023-08-09', '2023-08-13', 9, 1),
(10, '2023-08-10', '2023-08-14', 10, 3);

INSERT INTO SanPhamTonKho (MaSpTonKho, MaKho, MaSP, SoLuongTonKho)
VALUES
(1, 1, 1, 100),
(2, 2, 2, 200),
(3, 1, 3, 150),
(4, 3, 4, 300),
(5, 2, 5, 50),
(6, 1, 6, 250),
(7, 3, 7, 180),
(8, 2, 8, 80),
(9, 1, 9, 120),
(10, 3, 10, 220);

INSERT INTO NhapHangChiTiet (MaNHCT, MaDNH, MaSpTonKho, SoLuongNhap)
VALUES
(1, 1, 1, 50),
(2, 1, 2, 30),
(3, 2, 3, 40),
(4, 2, 4, 25),
(5, 3, 5, 60),
(6, 3, 6, 70),
(7, 4, 7, 80),
(8, 4, 8, 55),
(9, 5, 9, 90),
(10, 5, 10, 100);

INSERT INTO XuatHangChiTiet (MaXHCT, SoLuongSP, MaDXH, MaSpTonKho)
VALUES
(1, 20, 1, 1),
(2, 15, 1, 2),
(3, 25, 2, 3),
(4, 30, 2, 4),
(5, 10, 3, 5),
(6, 18, 3, 6),
(7, 22, 4, 7),
(8, 12, 4, 8),
(9, 28, 5, 9),
(10, 35, 5, 10);