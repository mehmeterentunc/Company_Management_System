USE [GAPtest]
GO
/****** Object:  StoredProcedure [dbo].[sp_KullaniciPassive]    Script Date: 2.10.2023 01:21:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[sp_KullaniciPassive]
@username varchar(10)
AS

UPDATE Kullanicilar
SET 
IsActive=0
WHERE 
username=@username