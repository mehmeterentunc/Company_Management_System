USE [GAPtest]
GO
/****** Object:  StoredProcedure [dbo].[sp_KullaniciGiris]    Script Date: 2.10.2023 01:21:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[sp_KullaniciGiris]
@username varchar(10),
@pw nvarchar(20)
AS
BEGIN

SELECT*FROM Kullanicilar WHERE username=@username AND
pw=@pw and IsActive=1

END





