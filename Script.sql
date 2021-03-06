USE [VETERINARIO]
GO
/****** Object:  Table [dbo].[Animal_Vet]    Script Date: 17/10/2016 20:15:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Animal_Vet](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](50) NULL,
	[idade] [int] NULL,
	[raca] [varchar](50) NULL,
	[cor] [varchar](50) NULL,
	[peso] [decimal](5, 3) NULL,
 CONSTRAINT [PK_Animal_Vet] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Atendimento_Vet]    Script Date: 17/10/2016 20:15:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Atendimento_Vet](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[animal_id] [int] NULL,
	[data] [datetime] NULL,
 CONSTRAINT [PK_Atendente_Vet] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cliente_Vet]    Script Date: 17/10/2016 20:15:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cliente_Vet](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](50) NULL,
	[cpf] [decimal](11, 0) NULL,
	[fone] [decimal](18, 0) NULL,
	[endereco] [varchar](50) NULL,
	[cidade] [varchar](50) NULL,
 CONSTRAINT [PK_Cliente_Vet] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ficha_Vet]    Script Date: 17/10/2016 20:15:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ficha_Vet](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[atendimento_id] [int] NULL,
	[status] [varchar](50) NULL,
 CONSTRAINT [PK_Ficha_Vet] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Atendimento_Vet]  WITH CHECK ADD  CONSTRAINT [FK_Atendimento_Vet_Animal_Vet] FOREIGN KEY([animal_id])
REFERENCES [dbo].[Animal_Vet] ([id])
GO
ALTER TABLE [dbo].[Atendimento_Vet] CHECK CONSTRAINT [FK_Atendimento_Vet_Animal_Vet]
GO
