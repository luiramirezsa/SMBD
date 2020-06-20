USE [DW_Farmacia]
GO

/****** Object:  Table [dbo].[Ventas]    Script Date: 6/19/2020 8:22:56 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Ventas](
	[VentaId] [varchar](8) NOT NULL,
	[ClienteCodigo] [varchar](8) NOT NULL,
	[EmpleadoCodigo] [varchar](8) NOT NULL,
	[ProveedorCodigo] [varchar](8) NOT NULL,
	[DistritoCodigo] [varchar](8) NOT NULL,
	[CategoriaCodigo] [varchar](8) NOT NULL,
	[TiempoId] [int] NOT NULL,
	[CantidadVenta] [int] NOT NULL,
	[PrecioVenta] [float] NOT NULL,
	[CreadoFecha] [datetime] NOT NULL,
	[CreadoPor] [varchar](40) NOT NULL,
 CONSTRAINT [PK_Ventas] PRIMARY KEY CLUSTERED 
(
	[VentaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Ventas] ADD  CONSTRAINT [DF_Ventas_CreadoFecha]  DEFAULT (getdate()) FOR [CreadoFecha]
GO

ALTER TABLE [dbo].[Ventas] ADD  CONSTRAINT [DF_Ventas_CreadoPor]  DEFAULT ('ETL_Process') FOR [CreadoPor]
GO

