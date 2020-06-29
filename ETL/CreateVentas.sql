USE [DW_Farmacia]
GO

/****** Object:  Table [dbo].[HVentas]    Script Date: 6/28/2020 9:26:30 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[HVentas](
	[VentaId] [varchar](8) NOT NULL,
	[ClienteCodigo] [varchar](8) NOT NULL,
	[EmpleadoCodigo] [varchar](8) NOT NULL,
	[ProveedorCodigo] [varchar](8) NOT NULL,
	[DistritoCodigo] [varchar](8) NOT NULL,
	[CategoriaCodigo] [varchar](8) NOT NULL,
	[ProductoCodigo] [varchar](8) NOT NULL,
	[TiempoId] [int] NOT NULL,
	[CantidadVenta] [int] NOT NULL,
	[PrecioVenta] [float] NOT NULL,
	[CreadoFecha] [datetime] NOT NULL,
	[CreadoPor] [varchar](40) NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Ventas_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[HVentas] ADD  CONSTRAINT [DF_Ventas_CreadoFecha]  DEFAULT (getdate()) FOR [CreadoFecha]
GO

ALTER TABLE [dbo].[HVentas] ADD  CONSTRAINT [DF_Ventas_CreadoPor]  DEFAULT ('ETL_Process') FOR [CreadoPor]
GO

ALTER TABLE [dbo].[HVentas]  WITH CHECK ADD  CONSTRAINT [FK_Ventas_DimCategorias] FOREIGN KEY([CategoriaCodigo])
REFERENCES [dbo].[DimCategorias] ([CategoriaCodigo])
GO

ALTER TABLE [dbo].[HVentas] CHECK CONSTRAINT [FK_Ventas_DimCategorias]
GO

ALTER TABLE [dbo].[HVentas]  WITH CHECK ADD  CONSTRAINT [FK_Ventas_DimClientes] FOREIGN KEY([ClienteCodigo])
REFERENCES [dbo].[DimClientes] ([ClienteCodigo])
GO

ALTER TABLE [dbo].[HVentas] CHECK CONSTRAINT [FK_Ventas_DimClientes]
GO

ALTER TABLE [dbo].[HVentas]  WITH CHECK ADD  CONSTRAINT [FK_Ventas_DimDistritos] FOREIGN KEY([DistritoCodigo])
REFERENCES [dbo].[DimDistritos] ([DistritoCodigo])
GO

ALTER TABLE [dbo].[HVentas] CHECK CONSTRAINT [FK_Ventas_DimDistritos]
GO

ALTER TABLE [dbo].[HVentas]  WITH CHECK ADD  CONSTRAINT [FK_Ventas_DimEmpleados] FOREIGN KEY([EmpleadoCodigo])
REFERENCES [dbo].[DimEmpleados] ([EmpleadoCodigo])
GO

ALTER TABLE [dbo].[HVentas] CHECK CONSTRAINT [FK_Ventas_DimEmpleados]
GO

ALTER TABLE [dbo].[HVentas]  WITH CHECK ADD  CONSTRAINT [FK_Ventas_DimProductos] FOREIGN KEY([ProductoCodigo])
REFERENCES [dbo].[DimProductos] ([ProductoCodigo])
GO

ALTER TABLE [dbo].[HVentas] CHECK CONSTRAINT [FK_Ventas_DimProductos]
GO

ALTER TABLE [dbo].[HVentas]  WITH CHECK ADD  CONSTRAINT [FK_Ventas_DimProveedores] FOREIGN KEY([ProveedorCodigo])
REFERENCES [dbo].[DimProveedores] ([ProveedorCodigo])
GO

ALTER TABLE [dbo].[HVentas] CHECK CONSTRAINT [FK_Ventas_DimProveedores]
GO

ALTER TABLE [dbo].[HVentas]  WITH CHECK ADD  CONSTRAINT [FK_Ventas_DimTiempo] FOREIGN KEY([TiempoId])
REFERENCES [dbo].[DimTiempo] ([TiempoId])
GO

ALTER TABLE [dbo].[HVentas] CHECK CONSTRAINT [FK_Ventas_DimTiempo]
GO

