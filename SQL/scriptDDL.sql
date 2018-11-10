USE [sicove]
GO
ALTER TABLE [dbo].[vehiculo] DROP CONSTRAINT [FK_vehiculo_tipo_vehiculo]
GO
ALTER TABLE [dbo].[vehiculo] DROP CONSTRAINT [FK_vehiculo_marca_vehiculo]
GO
ALTER TABLE [dbo].[usuario] DROP CONSTRAINT [FK_usuario_persona]
GO
ALTER TABLE [dbo].[usuario] DROP CONSTRAINT [FK_usuario_perfil_usuario]
GO
ALTER TABLE [dbo].[remolque] DROP CONSTRAINT [FK_remolque_vehiculo]
GO
ALTER TABLE [dbo].[remolque] DROP CONSTRAINT [FK_remolque_playa_acarreo]
GO
ALTER TABLE [dbo].[remolque] DROP CONSTRAINT [FK_remolque_personal_remolque]
GO
ALTER TABLE [dbo].[provincia] DROP CONSTRAINT [FK_provincia_provincia]
GO
ALTER TABLE [dbo].[poliza] DROP CONSTRAINT [FK_poliza_vehiculo]
GO
ALTER TABLE [dbo].[poliza] DROP CONSTRAINT [FK_poliza_aseguradora]
GO
ALTER TABLE [dbo].[personal_remolque] DROP CONSTRAINT [FK_personal_remolque_usuario]
GO
ALTER TABLE [dbo].[persona] DROP CONSTRAINT [FK_persona_sexo]
GO
ALTER TABLE [dbo].[persona] DROP CONSTRAINT [FK_persona_provincia]
GO
ALTER TABLE [dbo].[persona] DROP CONSTRAINT [FK_persona_nacionalidad]
GO
ALTER TABLE [dbo].[persona] DROP CONSTRAINT [FK_persona_localidad]
GO
ALTER TABLE [dbo].[localidad] DROP CONSTRAINT [FK_localidad_provincia]
GO
ALTER TABLE [dbo].[licencia] DROP CONSTRAINT [FK_licencia_persona]
GO
ALTER TABLE [dbo].[licencia] DROP CONSTRAINT [FK_licencia_municipio]
GO
ALTER TABLE [dbo].[licencia] DROP CONSTRAINT [FK_licencia_categoria_licencia]
GO
ALTER TABLE [dbo].[infraccion] DROP CONSTRAINT [FK_infraccion_vehiculo]
GO
ALTER TABLE [dbo].[infraccion] DROP CONSTRAINT [FK_infraccion_provincia]
GO
ALTER TABLE [dbo].[infraccion] DROP CONSTRAINT [FK_infraccion_localidad]
GO
ALTER TABLE [dbo].[infraccion] DROP CONSTRAINT [FK_infraccion_licencia]
GO
ALTER TABLE [dbo].[infraccion] DROP CONSTRAINT [FK_infraccion_control]
GO
ALTER TABLE [dbo].[infraccion] DROP CONSTRAINT [FK_infraccion_codigo_infraccion]
GO
ALTER TABLE [dbo].[infraccion] DROP CONSTRAINT [FK_infraccion_agente_transito]
GO
ALTER TABLE [dbo].[denuncia] DROP CONSTRAINT [FK_denuncia_usuario]
GO
ALTER TABLE [dbo].[denuncia] DROP CONSTRAINT [FK_denuncia_infraccion]
GO
ALTER TABLE [dbo].[denuncia] DROP CONSTRAINT [FK_denuncia_estado_denuncia]
GO
ALTER TABLE [dbo].[codigo_infraccion] DROP CONSTRAINT [FK_codigo_infraccion_categoria_infraccion]
GO
ALTER TABLE [dbo].[cedula] DROP CONSTRAINT [FK_cedula_vehiculo]
GO
ALTER TABLE [dbo].[cedula] DROP CONSTRAINT [FK_cedula_uso_cedula]
GO
ALTER TABLE [dbo].[cedula] DROP CONSTRAINT [FK_cedula_persona]
GO
ALTER TABLE [dbo].[cedula] DROP CONSTRAINT [FK_cedula_estado_cedula]
GO
ALTER TABLE [dbo].[agente_transito] DROP CONSTRAINT [FK_agente_transito_usuario]
GO
/****** Object:  Index [IX_localidad]    Script Date: 10/11/2018 13:15:32 ******/
ALTER TABLE [dbo].[localidad] DROP CONSTRAINT [IX_localidad]
GO
/****** Object:  Table [dbo].[vehiculo]    Script Date: 10/11/2018 13:15:32 ******/
DROP TABLE [dbo].[vehiculo]
GO
/****** Object:  Table [dbo].[usuario]    Script Date: 10/11/2018 13:15:32 ******/
DROP TABLE [dbo].[usuario]
GO
/****** Object:  Table [dbo].[uso_cedula]    Script Date: 10/11/2018 13:15:32 ******/
DROP TABLE [dbo].[uso_cedula]
GO
/****** Object:  Table [dbo].[tipo_vehiculo]    Script Date: 10/11/2018 13:15:32 ******/
DROP TABLE [dbo].[tipo_vehiculo]
GO
/****** Object:  Table [dbo].[sexo]    Script Date: 10/11/2018 13:15:32 ******/
DROP TABLE [dbo].[sexo]
GO
/****** Object:  Table [dbo].[remolque]    Script Date: 10/11/2018 13:15:32 ******/
DROP TABLE [dbo].[remolque]
GO
/****** Object:  Table [dbo].[provincia]    Script Date: 10/11/2018 13:15:32 ******/
DROP TABLE [dbo].[provincia]
GO
/****** Object:  Table [dbo].[poliza]    Script Date: 10/11/2018 13:15:32 ******/
DROP TABLE [dbo].[poliza]
GO
/****** Object:  Table [dbo].[playa_acarreo]    Script Date: 10/11/2018 13:15:32 ******/
DROP TABLE [dbo].[playa_acarreo]
GO
/****** Object:  Table [dbo].[personal_remolque]    Script Date: 10/11/2018 13:15:32 ******/
DROP TABLE [dbo].[personal_remolque]
GO
/****** Object:  Table [dbo].[persona]    Script Date: 10/11/2018 13:15:32 ******/
DROP TABLE [dbo].[persona]
GO
/****** Object:  Table [dbo].[perfil_usuario]    Script Date: 10/11/2018 13:15:32 ******/
DROP TABLE [dbo].[perfil_usuario]
GO
/****** Object:  Table [dbo].[nacionalidad]    Script Date: 10/11/2018 13:15:32 ******/
DROP TABLE [dbo].[nacionalidad]
GO
/****** Object:  Table [dbo].[municipio]    Script Date: 10/11/2018 13:15:32 ******/
DROP TABLE [dbo].[municipio]
GO
/****** Object:  Table [dbo].[marca_vehiculo]    Script Date: 10/11/2018 13:15:32 ******/
DROP TABLE [dbo].[marca_vehiculo]
GO
/****** Object:  Table [dbo].[localidad]    Script Date: 10/11/2018 13:15:32 ******/
DROP TABLE [dbo].[localidad]
GO
/****** Object:  Table [dbo].[licencia]    Script Date: 10/11/2018 13:15:32 ******/
DROP TABLE [dbo].[licencia]
GO
/****** Object:  Table [dbo].[infraccion]    Script Date: 10/11/2018 13:15:32 ******/
DROP TABLE [dbo].[infraccion]
GO
/****** Object:  Table [dbo].[estado_denuncia]    Script Date: 10/11/2018 13:15:32 ******/
DROP TABLE [dbo].[estado_denuncia]
GO
/****** Object:  Table [dbo].[estado_cedula]    Script Date: 10/11/2018 13:15:32 ******/
DROP TABLE [dbo].[estado_cedula]
GO
/****** Object:  Table [dbo].[denuncia]    Script Date: 10/11/2018 13:15:32 ******/
DROP TABLE [dbo].[denuncia]
GO
/****** Object:  Table [dbo].[control]    Script Date: 10/11/2018 13:15:32 ******/
DROP TABLE [dbo].[control]
GO
/****** Object:  Table [dbo].[codigo_infraccion]    Script Date: 10/11/2018 13:15:32 ******/
DROP TABLE [dbo].[codigo_infraccion]
GO
/****** Object:  Table [dbo].[cedula]    Script Date: 10/11/2018 13:15:32 ******/
DROP TABLE [dbo].[cedula]
GO
/****** Object:  Table [dbo].[categoria_licencia]    Script Date: 10/11/2018 13:15:32 ******/
DROP TABLE [dbo].[categoria_licencia]
GO
/****** Object:  Table [dbo].[categoria_infraccion]    Script Date: 10/11/2018 13:15:32 ******/
DROP TABLE [dbo].[categoria_infraccion]
GO
/****** Object:  Table [dbo].[aseguradora]    Script Date: 10/11/2018 13:15:32 ******/
DROP TABLE [dbo].[aseguradora]
GO
/****** Object:  Table [dbo].[agente_transito]    Script Date: 10/11/2018 13:15:32 ******/
DROP TABLE [dbo].[agente_transito]
GO
USE [master]
GO
/****** Object:  Database [sicove]    Script Date: 10/11/2018 13:15:32 ******/
DROP DATABASE [sicove]
GO
/****** Object:  Database [sicove]    Script Date: 10/11/2018 13:15:32 ******/
CREATE DATABASE [sicove]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'sicove', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\sicove.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'sicove_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\sicove_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [sicove] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [sicove].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [sicove] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [sicove] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [sicove] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [sicove] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [sicove] SET ARITHABORT OFF 
GO
ALTER DATABASE [sicove] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [sicove] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [sicove] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [sicove] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [sicove] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [sicove] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [sicove] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [sicove] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [sicove] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [sicove] SET  DISABLE_BROKER 
GO
ALTER DATABASE [sicove] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [sicove] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [sicove] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [sicove] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [sicove] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [sicove] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [sicove] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [sicove] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [sicove] SET  MULTI_USER 
GO
ALTER DATABASE [sicove] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [sicove] SET DB_CHAINING OFF 
GO
ALTER DATABASE [sicove] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [sicove] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [sicove] SET DELAYED_DURABILITY = DISABLED 
GO
USE [sicove]
GO
/****** Object:  Table [dbo].[agente_transito]    Script Date: 10/11/2018 13:15:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[agente_transito](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[usuario_id] [int] NOT NULL,
	[nro_legajo] [int] NOT NULL,
 CONSTRAINT [PK_agente_transito] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aseguradora]    Script Date: 10/11/2018 13:15:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aseguradora](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [nvarchar](50) NULL,
 CONSTRAINT [PK_aseguradora] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[categoria_infraccion]    Script Date: 10/11/2018 13:15:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categoria_infraccion](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [nvarchar](50) NULL,
 CONSTRAINT [PK_categoria_infraccion] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[categoria_licencia]    Script Date: 10/11/2018 13:15:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categoria_licencia](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [nvarchar](50) NULL,
 CONSTRAINT [PK_categoria_licencia] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[cedula]    Script Date: 10/11/2018 13:15:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cedula](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nro_cedula] [nchar](10) NOT NULL,
	[persona_id] [int] NOT NULL,
	[uso_id] [int] NOT NULL,
	[estado_id] [int] NOT NULL,
	[vehiculo_id] [int] NOT NULL,
	[vencimiento] [date] NOT NULL,
	[flag_autorizado] [bit] NOT NULL,
 CONSTRAINT [PK_cedula] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[codigo_infraccion]    Script Date: 10/11/2018 13:15:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[codigo_infraccion](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codigo_infraccion] [nvarchar](50) NULL,
	[categoria_id] [int] NOT NULL,
	[descripcion] [nvarchar](100) NULL,
 CONSTRAINT [PK_codigo_infraccion] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[control]    Script Date: 10/11/2018 13:15:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[control](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[agente_transito_id] [int] NOT NULL,
	[vehiculo_id] [int] NOT NULL,
	[persona_id] [int] NOT NULL,
	[fecha_hora] [date] NULL,
	[provincia_id] [int] NOT NULL,
	[localidad_id] [int] NOT NULL,
	[locacion] [nchar](200) NULL,
	[observaciones] [nchar](300) NULL,
	[dominio] [nchar](10) NULL,
 CONSTRAINT [PK_control] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[denuncia]    Script Date: 10/11/2018 13:15:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[denuncia](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[usuario_id] [int] NOT NULL,
	[estado_id] [int] NOT NULL,
	[infraccion_id] [int] NOT NULL,
	[dominio] [nchar](10) NULL,
	[ubicacion] [nchar](100) NULL,
	[adjunto] [image] NULL,
	[fecha_hora] [date] NULL,
	[observaciones] [nchar](200) NULL,
 CONSTRAINT [PK_denuncia] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[estado_cedula]    Script Date: 10/11/2018 13:15:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[estado_cedula](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [nvarchar](50) NULL,
 CONSTRAINT [PK_estado_cedula] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[estado_denuncia]    Script Date: 10/11/2018 13:15:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[estado_denuncia](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [nvarchar](50) NULL,
 CONSTRAINT [PK_estado_denuncia] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[infraccion]    Script Date: 10/11/2018 13:15:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[infraccion](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[agente_transito_id] [int] NOT NULL,
	[vehiculo_id] [int] NOT NULL,
	[licencia_id] [int] NULL,
	[codigo_infraccion_id] [int] NOT NULL,
	[provincia_id] [int] NOT NULL,
	[localidad_id] [int] NOT NULL,
	[control_id] [int] NOT NULL,
	[nro_acta] [bigint] NULL,
	[fecha_hora] [date] NULL,
	[locacion] [nchar](200) NULL,
	[observaciones] [nchar](300) NULL,
	[documentacion_retenida] [nchar](100) NULL,
	[lugar_retencion] [nchar](200) NULL,
	[dominio] [nchar](10) NULL,
 CONSTRAINT [PK_infraccion] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[licencia]    Script Date: 10/11/2018 13:15:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[licencia](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nro_licencia] [nchar](10) NOT NULL,
	[categoria_id] [int] NOT NULL,
	[persona_id] [int] NOT NULL,
	[municipio_id] [int] NOT NULL,
	[clases] [nvarchar](20) NULL,
	[otorgamiento] [date] NULL,
	[vencimiento] [date] NULL,
	[observaciones] [nvarchar](100) NULL,
 CONSTRAINT [PK_licencia] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[localidad]    Script Date: 10/11/2018 13:15:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[localidad](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[provincia_id] [int] NOT NULL,
	[descripcion] [nvarchar](60) NULL,
 CONSTRAINT [PK_localidad] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[marca_vehiculo]    Script Date: 10/11/2018 13:15:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[marca_vehiculo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [nvarchar](50) NULL,
 CONSTRAINT [PK_marca_vehiculo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[municipio]    Script Date: 10/11/2018 13:15:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[municipio](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [nvarchar](50) NULL,
 CONSTRAINT [PK_municipio] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[nacionalidad]    Script Date: 10/11/2018 13:15:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nacionalidad](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [nvarchar](50) NULL,
 CONSTRAINT [PK_nacionalidad] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[perfil_usuario]    Script Date: 10/11/2018 13:15:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[perfil_usuario](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [nvarchar](50) NULL,
 CONSTRAINT [PK_perfil_usuario] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[persona]    Script Date: 10/11/2018 13:15:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[persona](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[apellido] [nvarchar](50) NULL,
	[nombre] [nvarchar](50) NULL,
	[dni] [bigint] NOT NULL,
	[sexo_id] [int] NOT NULL,
	[nacionalidad_id] [int] NOT NULL,
	[provincia_id] [int] NOT NULL,
	[localidad_id] [int] NOT NULL,
	[domicilio] [nvarchar](80) NULL,
	[piso] [smallint] NULL,
	[departamento] [nvarchar](50) NULL,
	[nro_puerta] [nvarchar](50) NULL,
	[fecha_nacimiento] [date] NULL,
	[lugar_nacimiento] [nvarchar](100) NULL,
	[flag_conductor] [bit] NOT NULL,
 CONSTRAINT [PK_persona] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[personal_remolque]    Script Date: 10/11/2018 13:15:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[personal_remolque](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[usuario_id] [int] NOT NULL,
	[nro_legajo] [int] NOT NULL,
 CONSTRAINT [PK_personal_remolque] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[playa_acarreo]    Script Date: 10/11/2018 13:15:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[playa_acarreo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [nvarchar](50) NULL,
 CONSTRAINT [PK_playa_acarreo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[poliza]    Script Date: 10/11/2018 13:15:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[poliza](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nro_poliza] [nvarchar](50) NULL,
	[aseguradora_id] [int] NOT NULL,
	[vehiculo_id] [int] NOT NULL,
	[vigencia_desde] [date] NULL,
	[vigencia_hasta] [date] NULL,
 CONSTRAINT [PK_poliza] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[provincia]    Script Date: 10/11/2018 13:15:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[provincia](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [nvarchar](50) NULL,
 CONSTRAINT [PK_provincia] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[remolque]    Script Date: 10/11/2018 13:15:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[remolque](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[personal_remolque_id] [int] NOT NULL,
	[playa_acarreo_id] [int] NOT NULL,
	[vehiculo_id] [int] NOT NULL,
	[fecha_hora] [datetime] NULL,
	[ubicacion] [nvarchar](100) NULL,
	[detalle_infraccion] [nvarchar](200) NULL,
 CONSTRAINT [PK_remolque] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[sexo]    Script Date: 10/11/2018 13:15:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sexo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [nvarchar](50) NULL,
 CONSTRAINT [PK_sexo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tipo_vehiculo]    Script Date: 10/11/2018 13:15:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipo_vehiculo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [nvarchar](50) NULL,
 CONSTRAINT [PK_tipo_vehiculo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[uso_cedula]    Script Date: 10/11/2018 13:15:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[uso_cedula](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [nvarchar](50) NULL,
 CONSTRAINT [PK_uso_cedula] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[usuario]    Script Date: 10/11/2018 13:15:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuario](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[persona_id] [int] NOT NULL,
	[perfil_usuario_id] [int] NOT NULL,
	[email] [nvarchar](255) NULL,
	[contraseña] [nvarchar](20) NULL,
 CONSTRAINT [PK_usuario] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[vehiculo]    Script Date: 10/11/2018 13:15:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vehiculo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tipo_id] [int] NOT NULL,
	[marca_id] [int] NOT NULL,
	[modelo] [nvarchar](50) NULL,
	[año] [int] NOT NULL,
	[cilindrada] [nvarchar](50) NULL,
	[motor] [nvarchar](50) NULL,
	[chasis_cuadro] [nvarchar](50) NULL,
 CONSTRAINT [PK_vehiculo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[localidad] ON 

INSERT [dbo].[localidad] ([id], [provincia_id], [descripcion]) VALUES (1, 1, N'castelar')
SET IDENTITY_INSERT [dbo].[localidad] OFF
SET IDENTITY_INSERT [dbo].[nacionalidad] ON 

INSERT [dbo].[nacionalidad] ([id], [descripcion]) VALUES (1, N'argentino')
SET IDENTITY_INSERT [dbo].[nacionalidad] OFF
SET IDENTITY_INSERT [dbo].[perfil_usuario] ON 

INSERT [dbo].[perfil_usuario] ([id], [descripcion]) VALUES (1, N'Admin')
SET IDENTITY_INSERT [dbo].[perfil_usuario] OFF
SET IDENTITY_INSERT [dbo].[persona] ON 

INSERT [dbo].[persona] ([id], [apellido], [nombre], [dni], [sexo_id], [nacionalidad_id], [provincia_id], [localidad_id], [domicilio], [piso], [departamento], [nro_puerta], [fecha_nacimiento], [lugar_nacimiento], [flag_conductor]) VALUES (6, N'fernandez', N'jonathan', 35216504, 1, 1, 1, 1, N'fernandez 2878', 1, N'1', N'1', CAST(N'1990-05-28' AS Date), N'castelar', 1)
SET IDENTITY_INSERT [dbo].[persona] OFF
SET IDENTITY_INSERT [dbo].[provincia] ON 

INSERT [dbo].[provincia] ([id], [descripcion]) VALUES (1, N'bs as')
SET IDENTITY_INSERT [dbo].[provincia] OFF
SET IDENTITY_INSERT [dbo].[sexo] ON 

INSERT [dbo].[sexo] ([id], [descripcion]) VALUES (1, N'masculino')
SET IDENTITY_INSERT [dbo].[sexo] OFF
SET IDENTITY_INSERT [dbo].[usuario] ON 

INSERT [dbo].[usuario] ([id], [persona_id], [perfil_usuario_id], [email], [contraseña]) VALUES (4, 6, 1, N'jonathanerik.fernandez@gmail.com', N'1234')
SET IDENTITY_INSERT [dbo].[usuario] OFF
/****** Object:  Index [IX_localidad]    Script Date: 10/11/2018 13:15:32 ******/
ALTER TABLE [dbo].[localidad] ADD  CONSTRAINT [IX_localidad] UNIQUE NONCLUSTERED 
(
	[provincia_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[agente_transito]  WITH CHECK ADD  CONSTRAINT [FK_agente_transito_usuario] FOREIGN KEY([usuario_id])
REFERENCES [dbo].[usuario] ([id])
GO
ALTER TABLE [dbo].[agente_transito] CHECK CONSTRAINT [FK_agente_transito_usuario]
GO
ALTER TABLE [dbo].[cedula]  WITH CHECK ADD  CONSTRAINT [FK_cedula_estado_cedula] FOREIGN KEY([estado_id])
REFERENCES [dbo].[estado_cedula] ([id])
GO
ALTER TABLE [dbo].[cedula] CHECK CONSTRAINT [FK_cedula_estado_cedula]
GO
ALTER TABLE [dbo].[cedula]  WITH CHECK ADD  CONSTRAINT [FK_cedula_persona] FOREIGN KEY([persona_id])
REFERENCES [dbo].[persona] ([id])
GO
ALTER TABLE [dbo].[cedula] CHECK CONSTRAINT [FK_cedula_persona]
GO
ALTER TABLE [dbo].[cedula]  WITH CHECK ADD  CONSTRAINT [FK_cedula_uso_cedula] FOREIGN KEY([uso_id])
REFERENCES [dbo].[uso_cedula] ([id])
GO
ALTER TABLE [dbo].[cedula] CHECK CONSTRAINT [FK_cedula_uso_cedula]
GO
ALTER TABLE [dbo].[cedula]  WITH CHECK ADD  CONSTRAINT [FK_cedula_vehiculo] FOREIGN KEY([vehiculo_id])
REFERENCES [dbo].[vehiculo] ([id])
GO
ALTER TABLE [dbo].[cedula] CHECK CONSTRAINT [FK_cedula_vehiculo]
GO
ALTER TABLE [dbo].[codigo_infraccion]  WITH CHECK ADD  CONSTRAINT [FK_codigo_infraccion_categoria_infraccion] FOREIGN KEY([categoria_id])
REFERENCES [dbo].[categoria_infraccion] ([id])
GO
ALTER TABLE [dbo].[codigo_infraccion] CHECK CONSTRAINT [FK_codigo_infraccion_categoria_infraccion]
GO
ALTER TABLE [dbo].[denuncia]  WITH CHECK ADD  CONSTRAINT [FK_denuncia_estado_denuncia] FOREIGN KEY([estado_id])
REFERENCES [dbo].[estado_denuncia] ([id])
GO
ALTER TABLE [dbo].[denuncia] CHECK CONSTRAINT [FK_denuncia_estado_denuncia]
GO
ALTER TABLE [dbo].[denuncia]  WITH CHECK ADD  CONSTRAINT [FK_denuncia_infraccion] FOREIGN KEY([infraccion_id])
REFERENCES [dbo].[infraccion] ([id])
GO
ALTER TABLE [dbo].[denuncia] CHECK CONSTRAINT [FK_denuncia_infraccion]
GO
ALTER TABLE [dbo].[denuncia]  WITH CHECK ADD  CONSTRAINT [FK_denuncia_usuario] FOREIGN KEY([usuario_id])
REFERENCES [dbo].[usuario] ([id])
GO
ALTER TABLE [dbo].[denuncia] CHECK CONSTRAINT [FK_denuncia_usuario]
GO
ALTER TABLE [dbo].[infraccion]  WITH CHECK ADD  CONSTRAINT [FK_infraccion_agente_transito] FOREIGN KEY([provincia_id])
REFERENCES [dbo].[localidad] ([provincia_id])
GO
ALTER TABLE [dbo].[infraccion] CHECK CONSTRAINT [FK_infraccion_agente_transito]
GO
ALTER TABLE [dbo].[infraccion]  WITH CHECK ADD  CONSTRAINT [FK_infraccion_codigo_infraccion] FOREIGN KEY([codigo_infraccion_id])
REFERENCES [dbo].[codigo_infraccion] ([id])
GO
ALTER TABLE [dbo].[infraccion] CHECK CONSTRAINT [FK_infraccion_codigo_infraccion]
GO
ALTER TABLE [dbo].[infraccion]  WITH CHECK ADD  CONSTRAINT [FK_infraccion_control] FOREIGN KEY([control_id])
REFERENCES [dbo].[control] ([id])
GO
ALTER TABLE [dbo].[infraccion] CHECK CONSTRAINT [FK_infraccion_control]
GO
ALTER TABLE [dbo].[infraccion]  WITH CHECK ADD  CONSTRAINT [FK_infraccion_licencia] FOREIGN KEY([licencia_id])
REFERENCES [dbo].[licencia] ([id])
GO
ALTER TABLE [dbo].[infraccion] CHECK CONSTRAINT [FK_infraccion_licencia]
GO
ALTER TABLE [dbo].[infraccion]  WITH CHECK ADD  CONSTRAINT [FK_infraccion_localidad] FOREIGN KEY([localidad_id])
REFERENCES [dbo].[localidad] ([id])
GO
ALTER TABLE [dbo].[infraccion] CHECK CONSTRAINT [FK_infraccion_localidad]
GO
ALTER TABLE [dbo].[infraccion]  WITH CHECK ADD  CONSTRAINT [FK_infraccion_provincia] FOREIGN KEY([provincia_id])
REFERENCES [dbo].[localidad] ([provincia_id])
GO
ALTER TABLE [dbo].[infraccion] CHECK CONSTRAINT [FK_infraccion_provincia]
GO
ALTER TABLE [dbo].[infraccion]  WITH CHECK ADD  CONSTRAINT [FK_infraccion_vehiculo] FOREIGN KEY([vehiculo_id])
REFERENCES [dbo].[vehiculo] ([id])
GO
ALTER TABLE [dbo].[infraccion] CHECK CONSTRAINT [FK_infraccion_vehiculo]
GO
ALTER TABLE [dbo].[licencia]  WITH CHECK ADD  CONSTRAINT [FK_licencia_categoria_licencia] FOREIGN KEY([categoria_id])
REFERENCES [dbo].[categoria_licencia] ([id])
GO
ALTER TABLE [dbo].[licencia] CHECK CONSTRAINT [FK_licencia_categoria_licencia]
GO
ALTER TABLE [dbo].[licencia]  WITH CHECK ADD  CONSTRAINT [FK_licencia_municipio] FOREIGN KEY([municipio_id])
REFERENCES [dbo].[municipio] ([id])
GO
ALTER TABLE [dbo].[licencia] CHECK CONSTRAINT [FK_licencia_municipio]
GO
ALTER TABLE [dbo].[licencia]  WITH CHECK ADD  CONSTRAINT [FK_licencia_persona] FOREIGN KEY([persona_id])
REFERENCES [dbo].[persona] ([id])
GO
ALTER TABLE [dbo].[licencia] CHECK CONSTRAINT [FK_licencia_persona]
GO
ALTER TABLE [dbo].[localidad]  WITH CHECK ADD  CONSTRAINT [FK_localidad_provincia] FOREIGN KEY([provincia_id])
REFERENCES [dbo].[provincia] ([id])
GO
ALTER TABLE [dbo].[localidad] CHECK CONSTRAINT [FK_localidad_provincia]
GO
ALTER TABLE [dbo].[persona]  WITH CHECK ADD  CONSTRAINT [FK_persona_localidad] FOREIGN KEY([localidad_id])
REFERENCES [dbo].[localidad] ([id])
GO
ALTER TABLE [dbo].[persona] CHECK CONSTRAINT [FK_persona_localidad]
GO
ALTER TABLE [dbo].[persona]  WITH CHECK ADD  CONSTRAINT [FK_persona_nacionalidad] FOREIGN KEY([nacionalidad_id])
REFERENCES [dbo].[nacionalidad] ([id])
GO
ALTER TABLE [dbo].[persona] CHECK CONSTRAINT [FK_persona_nacionalidad]
GO
ALTER TABLE [dbo].[persona]  WITH CHECK ADD  CONSTRAINT [FK_persona_provincia] FOREIGN KEY([provincia_id])
REFERENCES [dbo].[provincia] ([id])
GO
ALTER TABLE [dbo].[persona] CHECK CONSTRAINT [FK_persona_provincia]
GO
ALTER TABLE [dbo].[persona]  WITH CHECK ADD  CONSTRAINT [FK_persona_sexo] FOREIGN KEY([sexo_id])
REFERENCES [dbo].[sexo] ([id])
GO
ALTER TABLE [dbo].[persona] CHECK CONSTRAINT [FK_persona_sexo]
GO
ALTER TABLE [dbo].[personal_remolque]  WITH CHECK ADD  CONSTRAINT [FK_personal_remolque_usuario] FOREIGN KEY([usuario_id])
REFERENCES [dbo].[usuario] ([id])
GO
ALTER TABLE [dbo].[personal_remolque] CHECK CONSTRAINT [FK_personal_remolque_usuario]
GO
ALTER TABLE [dbo].[poliza]  WITH CHECK ADD  CONSTRAINT [FK_poliza_aseguradora] FOREIGN KEY([aseguradora_id])
REFERENCES [dbo].[aseguradora] ([id])
GO
ALTER TABLE [dbo].[poliza] CHECK CONSTRAINT [FK_poliza_aseguradora]
GO
ALTER TABLE [dbo].[poliza]  WITH CHECK ADD  CONSTRAINT [FK_poliza_vehiculo] FOREIGN KEY([vehiculo_id])
REFERENCES [dbo].[vehiculo] ([id])
GO
ALTER TABLE [dbo].[poliza] CHECK CONSTRAINT [FK_poliza_vehiculo]
GO
ALTER TABLE [dbo].[provincia]  WITH CHECK ADD  CONSTRAINT [FK_provincia_provincia] FOREIGN KEY([id])
REFERENCES [dbo].[provincia] ([id])
GO
ALTER TABLE [dbo].[provincia] CHECK CONSTRAINT [FK_provincia_provincia]
GO
ALTER TABLE [dbo].[remolque]  WITH CHECK ADD  CONSTRAINT [FK_remolque_personal_remolque] FOREIGN KEY([personal_remolque_id])
REFERENCES [dbo].[personal_remolque] ([id])
GO
ALTER TABLE [dbo].[remolque] CHECK CONSTRAINT [FK_remolque_personal_remolque]
GO
ALTER TABLE [dbo].[remolque]  WITH CHECK ADD  CONSTRAINT [FK_remolque_playa_acarreo] FOREIGN KEY([playa_acarreo_id])
REFERENCES [dbo].[playa_acarreo] ([id])
GO
ALTER TABLE [dbo].[remolque] CHECK CONSTRAINT [FK_remolque_playa_acarreo]
GO
ALTER TABLE [dbo].[remolque]  WITH CHECK ADD  CONSTRAINT [FK_remolque_vehiculo] FOREIGN KEY([vehiculo_id])
REFERENCES [dbo].[vehiculo] ([id])
GO
ALTER TABLE [dbo].[remolque] CHECK CONSTRAINT [FK_remolque_vehiculo]
GO
ALTER TABLE [dbo].[usuario]  WITH CHECK ADD  CONSTRAINT [FK_usuario_perfil_usuario] FOREIGN KEY([perfil_usuario_id])
REFERENCES [dbo].[perfil_usuario] ([id])
GO
ALTER TABLE [dbo].[usuario] CHECK CONSTRAINT [FK_usuario_perfil_usuario]
GO
ALTER TABLE [dbo].[usuario]  WITH CHECK ADD  CONSTRAINT [FK_usuario_persona] FOREIGN KEY([persona_id])
REFERENCES [dbo].[persona] ([id])
GO
ALTER TABLE [dbo].[usuario] CHECK CONSTRAINT [FK_usuario_persona]
GO
ALTER TABLE [dbo].[vehiculo]  WITH CHECK ADD  CONSTRAINT [FK_vehiculo_marca_vehiculo] FOREIGN KEY([marca_id])
REFERENCES [dbo].[marca_vehiculo] ([id])
GO
ALTER TABLE [dbo].[vehiculo] CHECK CONSTRAINT [FK_vehiculo_marca_vehiculo]
GO
ALTER TABLE [dbo].[vehiculo]  WITH CHECK ADD  CONSTRAINT [FK_vehiculo_tipo_vehiculo] FOREIGN KEY([tipo_id])
REFERENCES [dbo].[tipo_vehiculo] ([id])
GO
ALTER TABLE [dbo].[vehiculo] CHECK CONSTRAINT [FK_vehiculo_tipo_vehiculo]
GO
USE [master]
GO
ALTER DATABASE [sicove] SET  READ_WRITE 
GO
