USE [GAPtest]
GO
/****** Object:  StoredProcedure [dbo].[sp_KullaniciSifreDegistir]    Script Date: 2.10.2023 01:21:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[sp_KullaniciSifreDegistir] 
(
@username varchar(10),
@pw nvarchar(20),
@Question varchar(20)
)
AS
BEGIN

DECLARE @RowCount int

UPDATE Kullanicilar
SET
pw=@pw
WHERE username=@username and Question=@Question
 
 IF @@ROWCOUNT > 0	
		
		SELECT 1
 

 ELSE
        SELECT 0

END

