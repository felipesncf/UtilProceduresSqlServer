CREATE PROCEDURE Stb_BuscarConteudo    
@Texto VARCHAR(100)    
    
AS  
  
/********
Buscar procedures através de uma parte do seu conteudo  
************/  
    
SELECT DISTINCT o.name AS Object_Name,o.type_desc    
FROM sys.sql_modules m    
INNER JOIN sys.objects o ON m.object_id=o.object_id    
WHERE m.definition LIKE '%' + @Texto + '%'    
ORDER BY 2,1  


--------------------------------------------------------


CREATE PROCEDURE txt    
@nomeProcedure varchar(1000)    
    
AS  
/*****
Retorna texto da procedure  
******/  
    
exec sp_helptext @nomeProcedure


--------------------------------------------------------


CREATE PROCEDURE FindProc    
@PartOfName VARCHAR(200)    
    
as    
  
/*********** 
Pesquisa procedure no banco através do nome ou parte dele  
************/  
    
SELECT * FROM sys.procedures WHERE name like '%' + @PartOfName + '%'    
    