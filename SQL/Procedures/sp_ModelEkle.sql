USE [GAPtest]
GO
/****** Object:  StoredProcedure [dbo].[sp_ModelEkle]    Script Date: 2.10.2023 01:23:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[sp_ModelEkle]
@Model varchar(50),
@KategoriID int,
@username varchar(10)
AS
INSERT INTO 
Modeller(Model, KategoriID)
VALUES(
@Model, 
@KategoriID)
-----------------------------------------------------LOG---------------------------------------------------------------------
BEGIN

		INSERT INTO LogIslem(Kullanici,LogText,Sayfa,Islem)
		VALUES
		(	
		@username,
		+'Model:'+@Model+
		' Kategori:'+CONVERT(varchar(10),@KategoriID),
		'Modeller',
		'Insert'
		)

END
