USE [GAPtest]
GO
/****** Object:  StoredProcedure [dbo].[sp_KullaniciRolGetir]    Script Date: 2.10.2023 01:21:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROC [dbo].[sp_KullaniciRolGetir]
(
@username varchar(10)
)
AS
BEGIN
SELECT username,pw,Employees,Products,Orders,Customers,Suppliers,Titles,Userss,Question,IsActive from Kullanicilar 
where username = @username
END


