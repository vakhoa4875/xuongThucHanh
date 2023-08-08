use QuanLySanPhamNN
go


--1.	Tạo các procedure thuận tiện cho người dùng nhập dữ liệu vào database<bắt lỗi từng trường dữ liệu>
--(nhà cung cấp, khách hàng, nhân viên, kho, đơn nhập hàng, đơn xuất hàng, nhập hàng chi tiết, xuất hàng chi tiêt)
create or alter proc them_NCC @mancc int, @tenncc nvarchar(255), 
	@diachi nvarchar(255), @sdt varchar(15), @email varchar(50) = null
as
begin	
	begin tran
	begin try
		set @tenncc = ltrim(rtrim(@tenncc))
		set @diachi = ltrim(rtrim(@diachi))
		set @sdt = ltrim(rtrim(@sdt))
		set @email = ltrim(rtrim(@email))
		if @tenncc = ''
			raiserror(N'Tên nhà cung cấp không hợp lệ.',16,1)
		if @diachi = ''
			raiserror(N'Địa chỉ nhà cung cấp không hợp lệ.',16,1)
		if LEFT(@sdt,1) != '0' or @sdt = '' or LEN(@sdt) < 10
			raiserror(N'SĐT nhà cung cấp không phù hợp', 16, 1)
		insert into NhaCungCap values(@mancc, @tenncc, @diachi, @sdt, @email)
		commit
	end try
	begin catch
		if @@TRANCOUNT > 0 rollback;
		print
		case error_number()
			when 2627 then N'Trùng mã nhà cung cấp'
			when 515 then N'Nhà cung cấp chưa có mã(khóa chính)'
			else error_message()
		end
	end catch
end
go
-- test proc
exec them_NCC 1, 'supplier 1', 'district 1, hcm city', '0345789613'
--
select * from NhaCungCap




go

create or alter proc them_Kho @makho int,@tenkho nvarchar(255),@diachi nvarchar(255)
as
begin	
	begin tran
	begin try
		set @tenkho = ltrim(rtrim(@tenkho))
		set @diachi = ltrim(rtrim(@diachi))
		if @tenkho = ''
			raiserror(N'Tên kho không hợp lệ.',16,1)
		if @diachi = ''
			raiserror(N'Địa chỉ kho không hợp lệ.',16,1)
		insert into Kho values(@makho, @tenkho, @diachi)
		commit
	end try
	begin catch
		if @@TRANCOUNT > 0 rollback;
		print
		case error_number()
			when 2627 then N'Trùng mã kho'
			when 515 then N'kho chưa có mã(khóa chính)'
			else error_message()
		end
	end catch
end
go
-- test proc
exec them_NCC 1, 'supplier 1', 'district 1, hcm city', '0345789613'
--
select * from NhaCungCap

go
create or alter proc themKhachhang @makh int , @tenKH nvarchar(255),@diachikH nvarchar(255), @sdt int
as
begin
	begin tran
	begin try
		set @tenkh = ltrim(rtrim(@tenkh))
		set @diachiKH = ltrim(rtrim(@diachiKH))
		set @sdt = ltrim(rtrim(@sdt))
		if @tenkh = ''
			raiserror(N'Tên khách hàng không hợp lệ.',16,1)
		if @diachiKH = ''
			raiserror(N'Địa chỉ khách hàng không hợp lệ.',16,1)
		if LEFT(@sdt,1) != '0' or @sdt = '' or LEN(@sdt) < 10
			raiserror(N'SĐT nhà cung cấp không phù hợp', 16, 1)
		insert into KhachHang values(@makh, @tenkh, @diachiKH, @sdt)
		commit
		
	end try
	begin catch
		if @@TRANCOUNT > 0 rollback;
		print
		case error_number()
			when 2627 then N'Trùng mã kho'
			when 515 then N'kho chưa có mã(khóa chính)'
			else error_message()
		end
	end catch
end

go
create or alter proc themNhanVien @manv int , @tennv nvarchar(255), @sdt int
as
begin
	begin tran
	begin try
		set @tennv = ltrim(rtrim(@tennv))
		set @sdt = ltrim(rtrim(@sdt))
		if @tennv = ''
			raiserror(N'Tên nhân viên không hợp lệ.',16,1)
		if LEFT(@sdt,1) != '0' or @sdt = '' or LEN(@sdt) < 10
			raiserror(N'SĐT nhà cung cấp không phù hợp', 16, 1)
		insert into NhanVien values(@manv, @tennv, @sdt)
		commit
		
	end try
	begin catch
		if @@TRANCOUNT > 0 rollback;
		print
		case error_number()
			when 2627 then N'Trùng mã kho'
			when 515 then N'kho chưa có mã(khóa chính)'
			else error_message()
		end
	end catch
end

go
create or alter proc themSP @maSP int , @tensp nvarchar(255),@donvitinh nvarchar(50), @hinhdaidien nvarchar(255),@DonGia FLOAT,
					@QuiCachDongGoi NVARCHAR(100),@HinhThucBaoQuan NVARCHAR(100)
as
begin
	begin tran
	begin try
		set @tensp = ltrim(rtrim(@tensp))
		set @donvitinh = ltrim(rtrim(@donvitinh))
		set @hinhdaidien = ltrim(rtrim(@hinhdaidien))
		set @QuiCachDongGoi = ltrim(rtrim(@QuiCachDongGoi))
		set @HinhThucBaoQuan = ltrim(rtrim(@HinhThucBaoQuan))

		
		if @tensp = ''
			raiserror(N'Tên nhà cung cấp không hợp lệ.',16,1)
		if @donvitinh = ''
			raiserror(N'Tên nhà cung cấp không hợp lệ.',16,1)
		if @hinhdaidien = ''
			raiserror(N'Tên nhà cung cấp không hợp lệ.',16,1)
		if @QuiCachDongGoi = ''
			raiserror(N'Tên nhà cung cấp không hợp lệ.',16,1)
		if @HinhThucBaoQuan = ''
			raiserror(N'Tên nhà cung cấp không hợp lệ.',16,1)

		if @DonGia < 0
			raiserror(N'Đơn giá không phù hợp', 16, 1)

		insert into SanPham values(@maSP, @tensp,@donvitinh, @hinhdaidien,@DonGia,
					@QuiCachDongGoi,@HinhThucBaoQuan)
		commit
		
	end try
	begin catch
		if @@TRANCOUNT > 0 rollback;
		print
		case error_number()
			when 2627 then N'Trùng mã kho'
			when 515 then N'kho chưa có mã(khóa chính)'
			else error_message()
		end
	end catch
end

go
create or alter proc donhangnhap  @maDHN int , @NgayLap DATE,
				@MaNV int, @MaNCC INT,@MaKho int				
as
begin
	begin tran
	begin try
		if @NgayLap > GETDATE()
			raiserror(N'Ngày lập không phù hợp', 16, 1)

		insert into donhangnhap values(@maDHN , @NgayLap ,@MaNV,
					@MaNCC,@MaKho)
		commit
		
	end try
	begin catch
		if @@TRANCOUNT > 0 rollback;
		print
		case error_number()
			when 2627 then N'Trùng mã kho'
			when 515 then N'kho chưa có mã(khóa chính)'
			else error_message()
		end
	end catch
end

-- PRO Đơn xuất hàng
GO
create or alter proc donXuatHang  @maDXH int , @NgayLap DATE,@NgayDuKien DATE,
				@MaNV int, @MaKH INT				
as
begin
	begin tran
	begin try
		if @NgayLap > GETDATE()
			raiserror(N'Ngày lập không phù hợp', 16, 1)

		if @NgayDuKien < @NgayLap
			raiserror(N'Ngày dự kiến không phù hợp', 16, 1)

		insert into donXuatHang values(@maDXH , @NgayLap ,@NgayDuKien,
				@MaNV, @MaKH)
		commit
		
	end try
	begin catch
		if @@TRANCOUNT > 0 rollback;
		print
		case error_number()
			when 2627 then N'Trùng mã kho'
			when 515 then N'kho chưa có mã(khóa chính)'
			else error_message()
		end
	end catch
end
-- pro xuất hàng chi tiết
GO
create or alter proc XuatHangCT  @maXHCT int , @SoLuongSp INT,@maDXH INT,
				@maSPtonKho int		
as
begin
	begin tran
	begin try
		set @SoLuongSp = ltrim(rtrim(@SoLuongSp))
		if @SoLuongSp <= 0
			raiserror(N'Tên nhà cung cấp không hợp lệ.',16,1)

		insert into XuatHangCT values(@maXHCT , @SoLuongSp ,@maDXH,
				@maSPtonKho)
		commit
		
	end try
	begin catch
		if @@TRANCOUNT > 0 rollback;
		print
		case error_number()
			when 2627 then N'Trùng mã kho'
			when 515 then N'kho chưa có mã(khóa chính)'
			else error_message()
		end
	end catch
end

-- pro nhập hàng chi tiết
GO
create or alter proc XuatHangCT  @maXHCT int , @SoLuongSp INT,@maDXH INT,
				@maSPtonKho int		
as
begin
	begin tran
	begin try
		set @SoLuongSp = ltrim(rtrim(@SoLuongSp))
		if @SoLuongSp <= 0
			raiserror(N'Tên nhà cung cấp không hợp lệ.',16,1)

		insert into XuatHangCT values(@maXHCT , @SoLuongSp ,@maDXH,
				@maSPtonKho)
		commit
		
	end try
	begin catch
		if @@TRANCOUNT > 0 rollback;
		print
		case error_number()
			when 2627 then N'Trùng mã kho'
			when 515 then N'kho chưa có mã(khóa chính)'
			else error_message()
		end
	end catch
end

--2.	Tạo function xuất ra thông tin của những sản phẩm bán chạy nhất<có biến int là top sản phẩm bán chạy>


--3.	Tạo view xuất ra các sản phẩm tồn kho và số lượng của chúng <group by maKho>


--4.	Tạo trigger khi insert sản phẩm, và insert kho, sẽ tạo thêm số sản phẩm tồn kho tương ứng 
--(thông tin thêm: tổng số sp tồn kho = tổng số sp x tổng số kho)
create or alter trigger tr_insertSP on sanpham
after insert
as
begin
	declare @i int = 1, @masp int, @maxsptk int;
	select @masp = masp from inserted
	while @i <= (select max(MaKho) from Kho)

	begin
		begin try
		begin tran
			if (@i not in (select makho from Kho))
			begin
				set @i += 1;
				continue;
			end
			select @maxsptk = MAX(masptonkho) from SanPhamTonKho;
			set @maxsptk += 1;
			insert into SanPhamTonKho values
			(@maxsptk, @i, @masp, 0)
			commit
		end try
		begin catch
		if @@TRANCOUNT > 0 rollback;
		print
		case error_number()
			when 2627 then N'Trùng mã sptk'
			when 515 then N'kho chưa có mã sptk(khóa chính)'
			else error_message()
		end
		end catch
	end
end
go



create or alter trigger tr_insertKho on Kho
after insert
as
begin
	declare @i int = 1, @makho int, @maxsptk int;
	select @makho = MaKho from inserted
	while @i <= (select max(masp) from SanPham)

	begin
		begin try
		begin tran
			if (@i not in (select masp from SanPham))
			begin
				set @i += 1;
				continue;
			end
			select @maxsptk = MAX(masptonkho) from SanPhamTonKho;
			set @maxsptk += 1;
			insert into SanPhamTonKho values
			(@maxsptk, @makho, @i, 0)
			commit
		end try
		begin catch
		if @@TRANCOUNT > 0 rollback;
		print
		case error_number()
			when 2627 then N'Trùng mã sptk'
			when 515 then N'kho chưa có mã sptk(khóa chính)'
			else error_message()
		end
		end catch
	end
end
go
--5.	Tạo trigger khi bán hàng<insert into xuất hàng chi tiết>, nếu số lượng sản phẩm được mua lớn hơn số lượng 
--tồn kho thì sẽ thông báo là hàng không đủ, nhân viên thực nghiệp vụ trong 1 khoảng thời gian nhất định và đưa ra
--kết quả nhanh chóng nhất <hủy đơn, giảm số lượng mặt hàng, delay (check thời gian tối đa)>


--6.	Tạo procedure cho nhân viên tạo đơn xuất hàng


--7.	Tạo trigger khi thêm đơn nhập hàng hoặc đơn xuất hàng, tính tổng tiền
--nhập hoặc xuất hàng của tùy loại đơn TongDNH += (95%*đơn giá)* SL SP || TongDXH += đơn giá * SLSP


--8.	Tạo view doanh thu công ty = tổng tất cả đơn xh – tổng tất cả đơn nhập hàng



