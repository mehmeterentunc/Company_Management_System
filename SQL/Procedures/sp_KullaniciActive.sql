USE [GAPtest]
GO
/****** Object:  StoredProcedure [dbo].[sp_KullaniciActive]    Script Date: 2.10.2023 01:21:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[sp_KullaniciActive]
@username varchar(10)
AS

UPDATE Kullanicilar
SET 
IsActive=1
WHERE 
username=@username