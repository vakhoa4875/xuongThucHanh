--use QuanLySanPhamNN
--go
----1.	Tạo các procedure thuận tiện cho người dùng nhập dữ liệu vào database<bắt lỗi từng trường dữ liệu>(nhà cung cấp, khách hàng, nhân viên, kho, đơn nhập hàng, đơn xuất hàng, nhập hàng chi tiết, xuất hàng chi tiêt)
--create or alter proc them_NCC @mancc int, @tenncc nvarchar(255), 
--	@diachi nvarchar(255), @sdt varchar(15), @email varchar(50) = null
--as
--begin	
--	begin tran
--	begin try
--		set @tenncc = ltrim(rtrim(@tenncc))
--		set @diachi = ltrim(rtrim(@diachi))
--		set @sdt = ltrim(rtrim(@sdt))
--		set @email = ltrim(rtrim(@email))
--		if @tenncc = ''
--			raiserror(N'Tên nhà cung cấp không hợp lệ.',16,1)
--		if @diachi = ''
--			raiserror(N'Địa chỉ nhà cung cấp không hợp lệ.',16,1)
--		if LEFT(@sdt,1) != '0' or @sdt = '' or LEN(@sdt) < 10
--			raiserror(N'SĐT nhà cung cấp không phù hợp', 16, 1)
--		insert into NhaCungCap values(@mancc, @tenncc, @diachi, @sdt, @email)
--		commit
--	end try
--	begin catch
--		if @@TRANCOUNT > 0 rollback;
--		print
--		case error_number()
--			when 2627 then N'Trùng mã nhà cung cấp'
--			when 515 then N'Nhà cung cấp chưa có mã(khóa chính)'
--			else error_message()
--		end
--	end catch
--end
--go
---- test proc
--exec them_NCC 1, 'supplier 1', 'district 1, hcm city', '0345789613'
----
--select * from NhaCungCap

--go

--create or alter proc them_Kho @makho int,@tenkho nvarchar(255),@diachi nvarchar(255)
--as
--begin	
--	begin tran
--	begin try
--		set @tenkho = ltrim(rtrim(@tenkho))
--		set @diachi = ltrim(rtrim(@diachi))
--		if @tenkho = ''
--			raiserror(N'Tên kho không hợp lệ.',16,1)
--		if @diachi = ''
--			raiserror(N'Địa chỉ kho không hợp lệ.',16,1)
--		insert into NhaCungCap values(@makho, @tenkho, @diachi)
--		commit
--	end try
--	begin catch
--		if @@TRANCOUNT > 0 rollback;
--		print
--		case error_number()
--			when 2627 then N'Trùng mã kho'
--			when 515 then N'kho chưa có mã(khóa chính)'
--			else error_message()
--		end
--	end catch
--end
--go
---- test proc
----exec them_NCC 1, 'supplier 1', 'district 1, hcm city', '0345789613'
----
--select * from NhaCungCap

--go

-- yêu cầu 4
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

-- 5
create or alter trigger tr_checkTonKho on xuathangchitiet
for insert
as begin
	begin tran
	begin try
		declare @masptk int, @sl int;
		select @masptk = masptonkho, @sl = SoLuongSp from inserted
		if (@masptk not in (select masptonkho from SanPhamTonKho))
		begin
			raiserror(N'Mã sản phẩm tồn kho không tồn tại', 16, 2)
			rollback
		end
		else begin
			if (@sl > (select SoLuongTonKho from SanPhamTonKho where maSPtonKho = @masptk))
			begin
				raiserror(N'Số lượng sản phẩm không đủ', 16, 2)
				rollback
			end
		end
	end try
	begin catch
		if @@TRANCOUNT > 0 rollback;	
	end catch
end



