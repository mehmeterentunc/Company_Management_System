USE [GAPtest]
GO
/****** Object:  StoredProcedure [dbo].[sp_LogHataEkle]    Script Date: 2.10.2023 01:23:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[sp_LogHataEkle]
@Log varchar(max)
AS
INSERT INTO 
LogHata(Log)
VALUES
(@Log)