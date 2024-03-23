USE [GAPtest]
GO
/****** Object:  StoredProcedure [dbo].[sp_KategoriGuncelle]    Script Date: 2.10.2023 01:21:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[sp_KategoriGuncelle]
@KategoriID int,
@Kategori varchar(50),
@username varchar(10)
AS
BEGIN
UPDATE Kategoriler
SET 
Kategori=@Kategori 
WHERE KategoriID=@KategoriID
END
-----------------------------------------------------LOG---------------------------------------------------------------------
BEGIN

		INSERT INTO LogIslem(Kullanici,LogText,Sayfa,Islem)
		VALUES
		(	
		@username,
		+'ID: '+CONVERT(VARCHAR(10),@KategoriID)+
		+'Urun:'+@Kategori,
		'Kategoriler',
		'Update'
		)

END
