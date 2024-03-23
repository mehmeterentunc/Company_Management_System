USE [GAPtest]
GO
/****** Object:  StoredProcedure [dbo].[sp_PozisyonEkle]    Script Date: 2.10.2023 01:24:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[sp_PozisyonEkle]
(
@Pozisyon varchar(20),
@username varchar(10)
)
AS
INSERT INTO 
Pozisyonlar(Pozisyon)
VALUES(
@Pozisyon)
-----------------------------------------------------LOG---------------------------------------------------------------------
BEGIN

		INSERT INTO LogIslem(Kullanici,LogText,Sayfa,Islem)
		VALUES
		(	
		@username,
		+'Pozisyon:'+@Pozisyon,
		'Pozisyonlar',
		'Insert'
		)

END

