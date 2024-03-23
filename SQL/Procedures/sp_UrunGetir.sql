USE [GAPtest]
GO
/****** Object:  StoredProcedure [dbo].[sp_UrunGetir]    Script Date: 2.10.2023 01:25:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[sp_UrunGetir]
AS
SELECT u.UrunID, u.Urun, m.Model, u.Fiyat, u.StokSayısı, t.Tedarikci, u.ModelID, u.TedarikciID from Urunler u
inner join Modeller m on u.ModelID=m.ModelID
inner join Tedarikciler t on u.TedarikciID = t.TedarikciID
ORDER BY u.UrunID DESC



