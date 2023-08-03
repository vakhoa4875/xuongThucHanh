use QuanLySanPhamNN
go
--create or alter function
--go
create or alter trigger tr_insert_NHCT on nhaphangchitiet
for insert
as
begin
	declare @masptk int, @sl int;
	select @masptk = masptonkho, @sl = SoLuongNhap from inserted;
	--insert into @tempExists
	--select sptk.maSPtonKho from inserted ins
	--join SanPhamTonKho sptk on sptk.maSPtonKho = ins.maSPTonKho

	if @masptk in (select maSPtonKho from SanPhamTonKho)
	begin
		update SanPhamTonKho
		set SoLuongTonKho += @sl
		where maSPtonKho = @masptk
	end
	else
	begin
		insert into SanPhamTonKho values
		(@masptk, )
	end

end