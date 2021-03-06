USE [Vente]
GO
/****** Object:  Table [dbo].[Clients]    Script Date: 17/06/2022 8:47:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clients](
	[idClient] [int] NOT NULL,
	[nomClient] [varchar](100) NOT NULL,
	[Téléphone] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idClient] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Factures]    Script Date: 17/06/2022 8:47:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Factures](
	[codeFacture] [varchar](100) NOT NULL,
	[DateFacture] [date] NOT NULL,
	[Montant] [float] NOT NULL,
	[idClient] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[codeFacture] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Factures]  WITH CHECK ADD FOREIGN KEY([idClient])
REFERENCES [dbo].[Clients] ([idClient])
GO
