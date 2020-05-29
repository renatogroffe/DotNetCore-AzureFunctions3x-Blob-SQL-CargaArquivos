USE BaseArquivos
GO


CREATE TABLE dbo.Arquivos(
	IdArquivo INT IDENTITY(1,1) NOT NULL,
	Nome VARCHAR(200) NOT NULL,
	DataCarga DATETIME NOT NULL,
	CONSTRAINT PK_Arquivos PRIMARY KEY (IdArquivo)
)
GO


CREATE TABLE dbo.LinhasArquivos(
	IdLinhaArquivo INT IDENTITY(1,1) NOT NULL,
	IdArquivo INT NOT NULL,
	NumLinha INT NOT NULL,
	Conteudo VARCHAR(MAX) NOT NULL,
	CONSTRAINT PK_LinhasArquivos PRIMARY KEY (IdLinhaArquivo),
	CONSTRAINT FK_LinhasArquivos_Arquivos FOREIGN KEY (IdArquivo) REFERENCES dbo.Arquivos (IdArquivo)
)
GO
