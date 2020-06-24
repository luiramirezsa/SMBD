USE [DW_Farmacia]
GO
/****** Object:  Table [dbo].[DimCategorias]    Script Date: 6/24/2020 4:04:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimCategorias](
	[CategoriaCodigo] [varchar](8) NOT NULL,
	[CategoriaNombre] [varchar](40) NOT NULL,
	[CreadoFecha] [datetime] NOT NULL,
	[CreadoPor] [varchar](40) NOT NULL,
 CONSTRAINT [PK_Categorias] PRIMARY KEY CLUSTERED 
(
	[CategoriaCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimClientes]    Script Date: 6/24/2020 4:04:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimClientes](
	[ClienteCodigo] [varchar](8) NOT NULL,
	[ClienteNombre] [varchar](40) NOT NULL,
	[ClienteTelefono] [int] NOT NULL,
	[ClienteCelular] [int] NULL,
	[CreadoFecha] [datetime] NOT NULL,
	[CreadoPor] [varchar](40) NOT NULL,
	[DistritoNombre] [varchar](40) NOT NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[ClienteCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimDistritos]    Script Date: 6/24/2020 4:04:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimDistritos](
	[DistritoCodigo] [varchar](8) NOT NULL,
	[DistritoNombre] [varchar](40) NOT NULL,
	[CreadoFecha] [datetime] NOT NULL,
	[CreadoPor] [varchar](40) NOT NULL,
 CONSTRAINT [PK_Distritos] PRIMARY KEY CLUSTERED 
(
	[DistritoCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimEmpleados]    Script Date: 6/24/2020 4:04:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimEmpleados](
	[EmpleadoCodigo] [varchar](8) NOT NULL,
	[EmpleadoNombre] [varchar](40) NOT NULL,
	[EmpleadoDireccion] [varchar](40) NOT NULL,
	[EmpleadoTelefono] [int] NOT NULL,
	[EmpleadoCelular] [int] NULL,
	[EmpleadoEdad] [varchar](20) NULL,
	[EmpleadoCargo] [varchar](40) NULL,
	[CreadoFecha] [datetime] NOT NULL,
	[CreadoPor] [varchar](40) NOT NULL,
	[DistritoNombre] [varchar](40) NOT NULL,
 CONSTRAINT [PK_Empleados] PRIMARY KEY CLUSTERED 
(
	[EmpleadoCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimProductos]    Script Date: 6/24/2020 4:04:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimProductos](
	[ProductoCodigo] [varchar](8) NOT NULL,
	[ProductoNombre] [varchar](40) NOT NULL,
	[FechaVencimiento] [datetime] NOT NULL,
	[Stock] [int] NOT NULL,
	[CreadoFecha] [datetime] NOT NULL,
	[CreadoPor] [varchar](40) NOT NULL,
	[CategoriaNombre] [varchar](40) NOT NULL,
 CONSTRAINT [PK_Producto] PRIMARY KEY CLUSTERED 
(
	[ProductoCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimProveedores]    Script Date: 6/24/2020 4:04:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimProveedores](
	[ProveedorCodigo] [varchar](8) NOT NULL,
	[ProveedorNombre] [varchar](40) NOT NULL,
	[ProveedorDireccion] [varchar](50) NOT NULL,
	[ProveedorTelefono] [char](7) NOT NULL,
	[ProveedoCelular] [char](10) NULL,
	[CreadoFecha] [datetime] NOT NULL,
	[CreadoPor] [varchar](40) NOT NULL,
	[DistritoNombre] [varchar](40) NOT NULL,
 CONSTRAINT [PK_Proveedor] PRIMARY KEY CLUSTERED 
(
	[ProveedorCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimTiempo]    Script Date: 6/24/2020 4:04:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimTiempo](
	[Fecha] [date] NOT NULL,
	[Dia] [int] NOT NULL,
	[Mes] [int] NOT NULL,
	[Anio] [int] NOT NULL,
	[TiempoId] [int] IDENTITY(1,1) NOT NULL,
	[CreadoFecha] [datetime] NOT NULL,
	[CreadoPor] [varchar](40) NOT NULL,
 CONSTRAINT [PK_Tiempo] PRIMARY KEY CLUSTERED 
(
	[Fecha] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ErrorLog]    Script Date: 6/24/2020 4:04:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ErrorLog](
	[LogId] [int] IDENTITY(1,1) NOT NULL,
	[LogTable] [varchar](40) NOT NULL,
	[LogMensaje] [varchar](128) NOT NULL,
	[LogValue] [varchar](40) NOT NULL,
	[CreadoFecha] [datetime] NOT NULL,
	[CreadoPor] [varchar](40) NOT NULL,
 CONSTRAINT [PK_Log] PRIMARY KEY CLUSTERED 
(
	[LogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ventas]    Script Date: 6/24/2020 4:04:23 PM ******/
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
ALTER TABLE [dbo].[DimCategorias] ADD  CONSTRAINT [DF_DimCategorias_CreadoFecha]  DEFAULT (getdate()) FOR [CreadoFecha]
GO
ALTER TABLE [dbo].[DimCategorias] ADD  CONSTRAINT [DF_DimCategorias_CreadoPor]  DEFAULT ('ETL_Process') FOR [CreadoPor]
GO
ALTER TABLE [dbo].[DimClientes] ADD  CONSTRAINT [DF_DimClientes_CreadoFecha]  DEFAULT (getdate()) FOR [CreadoFecha]
GO
ALTER TABLE [dbo].[DimClientes] ADD  CONSTRAINT [DF_DimClientes_CreadoPor]  DEFAULT ('ETL_Process') FOR [CreadoPor]
GO
ALTER TABLE [dbo].[DimDistritos] ADD  CONSTRAINT [DF_DimDistritos_CreadoFecha]  DEFAULT (getdate()) FOR [CreadoFecha]
GO
ALTER TABLE [dbo].[DimDistritos] ADD  CONSTRAINT [DF_DimDistritos_CreadoPor]  DEFAULT ('ETL_Process') FOR [CreadoPor]
GO
ALTER TABLE [dbo].[DimEmpleados] ADD  CONSTRAINT [DF_DimEmpleados_CreadoFecha]  DEFAULT (getdate()) FOR [CreadoFecha]
GO
ALTER TABLE [dbo].[DimEmpleados] ADD  CONSTRAINT [DF_DimEmpleados_CreadoPor]  DEFAULT ('ETL_Process') FOR [CreadoPor]
GO
ALTER TABLE [dbo].[DimProductos] ADD  CONSTRAINT [DF_Producto_Stock]  DEFAULT ((0)) FOR [Stock]
GO
ALTER TABLE [dbo].[DimProductos] ADD  CONSTRAINT [DF_DimProductos_CreadoFecha]  DEFAULT (getdate()) FOR [CreadoFecha]
GO
ALTER TABLE [dbo].[DimProductos] ADD  CONSTRAINT [DF_DimProductos_CreadoPor]  DEFAULT ('ETL_Process') FOR [CreadoPor]
GO
ALTER TABLE [dbo].[DimProveedores] ADD  CONSTRAINT [DF_DimProveedores_CreadoFecha]  DEFAULT (getdate()) FOR [CreadoFecha]
GO
ALTER TABLE [dbo].[DimProveedores] ADD  CONSTRAINT [DF_DimProveedores_CreadoPor]  DEFAULT ('ETL_Process') FOR [CreadoPor]
GO
ALTER TABLE [dbo].[DimTiempo] ADD  CONSTRAINT [DF_DimTiempo_CreadoFecha]  DEFAULT (getdate()) FOR [CreadoFecha]
GO
ALTER TABLE [dbo].[DimTiempo] ADD  CONSTRAINT [DF_DimTiempo_CreadoPor]  DEFAULT ('ETL_Process') FOR [CreadoPor]
GO
ALTER TABLE [dbo].[ErrorLog] ADD  CONSTRAINT [DF_ErrorLog_CreadoFecha]  DEFAULT (getdate()) FOR [CreadoFecha]
GO
ALTER TABLE [dbo].[ErrorLog] ADD  CONSTRAINT [DF_ErrorLog_CreadoPor]  DEFAULT ('ETL_Process') FOR [CreadoPor]
GO
ALTER TABLE [dbo].[Ventas] ADD  CONSTRAINT [DF_Ventas_CreadoFecha]  DEFAULT (getdate()) FOR [CreadoFecha]
GO
ALTER TABLE [dbo].[Ventas] ADD  CONSTRAINT [DF_Ventas_CreadoPor]  DEFAULT ('ETL_Process') FOR [CreadoPor]
GO
