USE [GAPtest]
GO
/****** Object:  StoredProcedure [dbo].[sp_TedarikciGetir]    Script Date: 2.10.2023 01:25:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[sp_TedarikciGetir]
AS
SELECT*FROM Tedarikciler ORDER BY TedarikciID DESC