USE [GAPtest]
GO
/****** Object:  StoredProcedure [dbo].[sp_PozisyonGetir]    Script Date: 2.10.2023 01:24:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[sp_PozisyonGetir]
AS
SELECT PozisyonID,Pozisyon FROM Pozisyonlar ORDER BY PozisyonID DESC