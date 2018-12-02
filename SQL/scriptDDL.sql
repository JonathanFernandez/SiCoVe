USE [sicove]
GO
/****** Object:  StoredProcedure [dbo].[SP_LISTAR_PERSONAS_AUTORIZADAS]    Script Date: 2/12/2018 12:25:22 ******/
DROP PROCEDURE [dbo].[SP_LISTAR_PERSONAS_AUTORIZADAS]
GO
/****** Object:  StoredProcedure [dbo].[SP_LISTAR_INFRACCIONES_X_LOCALIDAD]    Script Date: 2/12/2018 12:25:22 ******/
DROP PROCEDURE [dbo].[SP_LISTAR_INFRACCIONES_X_LOCALIDAD]
GO
/****** Object:  StoredProcedure [dbo].[SP_LISTAR_INFRACCIONES_X_CATEGORIA]    Script Date: 2/12/2018 12:25:22 ******/
DROP PROCEDURE [dbo].[SP_LISTAR_INFRACCIONES_X_CATEGORIA]
GO
/****** Object:  StoredProcedure [dbo].[SP_LISTAR_DENUNCIAS_X_LOCALIDAD]    Script Date: 2/12/2018 12:25:22 ******/
DROP PROCEDURE [dbo].[SP_LISTAR_DENUNCIAS_X_LOCALIDAD]
GO
/****** Object:  StoredProcedure [dbo].[SP_LISTAR_DATOS_PERSONA]    Script Date: 2/12/2018 12:25:22 ******/
DROP PROCEDURE [dbo].[SP_LISTAR_DATOS_PERSONA]
GO
/****** Object:  StoredProcedure [dbo].[SP_LISTAR_CONTROLES_X_LOCALIDAD]    Script Date: 2/12/2018 12:25:22 ******/
DROP PROCEDURE [dbo].[SP_LISTAR_CONTROLES_X_LOCALIDAD]
GO
/****** Object:  StoredProcedure [dbo].[SP_LISTAR_ACARREOS_X_LOCALIDAD]    Script Date: 2/12/2018 12:25:22 ******/
DROP PROCEDURE [dbo].[SP_LISTAR_ACARREOS_X_LOCALIDAD]
GO
/****** Object:  StoredProcedure [dbo].[SP_LISTADO_PERSONAL_REMOLQUE]    Script Date: 2/12/2018 12:25:22 ******/
DROP PROCEDURE [dbo].[SP_LISTADO_PERSONAL_REMOLQUE]
GO
/****** Object:  StoredProcedure [dbo].[SP_LISTADO_DENUNCIA]    Script Date: 2/12/2018 12:25:22 ******/
DROP PROCEDURE [dbo].[SP_LISTADO_DENUNCIA]
GO
/****** Object:  StoredProcedure [dbo].[SP_LISTADO_CONTROLES]    Script Date: 2/12/2018 12:25:22 ******/
DROP PROCEDURE [dbo].[SP_LISTADO_CONTROLES]
GO
/****** Object:  StoredProcedure [dbo].[SP_LISTADO_CONDUCTORES]    Script Date: 2/12/2018 12:25:22 ******/
DROP PROCEDURE [dbo].[SP_LISTADO_CONDUCTORES]
GO
/****** Object:  StoredProcedure [dbo].[SP_LISTADO_AGENTE_TRANSITO]    Script Date: 2/12/2018 12:25:22 ******/
DROP PROCEDURE [dbo].[SP_LISTADO_AGENTE_TRANSITO]
GO
/****** Object:  StoredProcedure [dbo].[SP_LISTADO_ACARREO]    Script Date: 2/12/2018 12:25:22 ******/
DROP PROCEDURE [dbo].[SP_LISTADO_ACARREO]
GO
/****** Object:  StoredProcedure [dbo].[SP_GENERAR_EMAIL_DENUNCIA]    Script Date: 2/12/2018 12:25:22 ******/
DROP PROCEDURE [dbo].[SP_GENERAR_EMAIL_DENUNCIA]
GO
/****** Object:  StoredProcedure [dbo].[SP_GENERAR_EMAIL_ACARREO]    Script Date: 2/12/2018 12:25:22 ******/
DROP PROCEDURE [dbo].[SP_GENERAR_EMAIL_ACARREO]
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
ALTER TABLE [dbo].[remolque] DROP CONSTRAINT [FK_remolque_localidad]
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
ALTER TABLE [dbo].[infraccion] DROP CONSTRAINT [FK_infraccion_tipo_vehiculo]
GO
ALTER TABLE [dbo].[infraccion] DROP CONSTRAINT [FK_infraccion_provincia]
GO
ALTER TABLE [dbo].[infraccion] DROP CONSTRAINT [FK_infraccion_persona]
GO
ALTER TABLE [dbo].[infraccion] DROP CONSTRAINT [FK_infraccion_municipio]
GO
ALTER TABLE [dbo].[infraccion] DROP CONSTRAINT [FK_infraccion_marca_vehiculo]
GO
ALTER TABLE [dbo].[infraccion] DROP CONSTRAINT [FK_infraccion_localidad]
GO
ALTER TABLE [dbo].[infraccion] DROP CONSTRAINT [FK_infraccion_licencia]
GO
ALTER TABLE [dbo].[infraccion] DROP CONSTRAINT [FK_infraccion_imp_localidad]
GO
ALTER TABLE [dbo].[infraccion] DROP CONSTRAINT [FK_infraccion_control]
GO
ALTER TABLE [dbo].[infraccion] DROP CONSTRAINT [FK_infraccion_codigo_infraccion]
GO
ALTER TABLE [dbo].[infraccion] DROP CONSTRAINT [FK_infraccion_categoria_licencia]
GO
ALTER TABLE [dbo].[denuncia] DROP CONSTRAINT [FK_denuncia_usuario]
GO
ALTER TABLE [dbo].[denuncia] DROP CONSTRAINT [FK_denuncia_localidad]
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
/****** Object:  Index [IX_localidad]    Script Date: 2/12/2018 12:25:22 ******/
DROP INDEX [IX_localidad] ON [dbo].[localidad]
GO
/****** Object:  Table [dbo].[vehiculo]    Script Date: 2/12/2018 12:25:22 ******/
DROP TABLE [dbo].[vehiculo]
GO
/****** Object:  Table [dbo].[usuario]    Script Date: 2/12/2018 12:25:22 ******/
DROP TABLE [dbo].[usuario]
GO
/****** Object:  Table [dbo].[uso_cedula]    Script Date: 2/12/2018 12:25:22 ******/
DROP TABLE [dbo].[uso_cedula]
GO
/****** Object:  Table [dbo].[tipo_vehiculo]    Script Date: 2/12/2018 12:25:22 ******/
DROP TABLE [dbo].[tipo_vehiculo]
GO
/****** Object:  Table [dbo].[sexo]    Script Date: 2/12/2018 12:25:22 ******/
DROP TABLE [dbo].[sexo]
GO
/****** Object:  Table [dbo].[remolque]    Script Date: 2/12/2018 12:25:22 ******/
DROP TABLE [dbo].[remolque]
GO
/****** Object:  Table [dbo].[provincia]    Script Date: 2/12/2018 12:25:22 ******/
DROP TABLE [dbo].[provincia]
GO
/****** Object:  Table [dbo].[poliza]    Script Date: 2/12/2018 12:25:22 ******/
DROP TABLE [dbo].[poliza]
GO
/****** Object:  Table [dbo].[playa_acarreo]    Script Date: 2/12/2018 12:25:22 ******/
DROP TABLE [dbo].[playa_acarreo]
GO
/****** Object:  Table [dbo].[personal_remolque]    Script Date: 2/12/2018 12:25:22 ******/
DROP TABLE [dbo].[personal_remolque]
GO
/****** Object:  Table [dbo].[persona]    Script Date: 2/12/2018 12:25:22 ******/
DROP TABLE [dbo].[persona]
GO
/****** Object:  Table [dbo].[perfil_usuario]    Script Date: 2/12/2018 12:25:22 ******/
DROP TABLE [dbo].[perfil_usuario]
GO
/****** Object:  Table [dbo].[nacionalidad]    Script Date: 2/12/2018 12:25:22 ******/
DROP TABLE [dbo].[nacionalidad]
GO
/****** Object:  Table [dbo].[municipio]    Script Date: 2/12/2018 12:25:22 ******/
DROP TABLE [dbo].[municipio]
GO
/****** Object:  Table [dbo].[marca_vehiculo]    Script Date: 2/12/2018 12:25:22 ******/
DROP TABLE [dbo].[marca_vehiculo]
GO
/****** Object:  Table [dbo].[localidad]    Script Date: 2/12/2018 12:25:22 ******/
DROP TABLE [dbo].[localidad]
GO
/****** Object:  Table [dbo].[licencia]    Script Date: 2/12/2018 12:25:22 ******/
DROP TABLE [dbo].[licencia]
GO
/****** Object:  Table [dbo].[infraccion]    Script Date: 2/12/2018 12:25:22 ******/
DROP TABLE [dbo].[infraccion]
GO
/****** Object:  Table [dbo].[estado_denuncia]    Script Date: 2/12/2018 12:25:22 ******/
DROP TABLE [dbo].[estado_denuncia]
GO
/****** Object:  Table [dbo].[estado_cedula]    Script Date: 2/12/2018 12:25:22 ******/
DROP TABLE [dbo].[estado_cedula]
GO
/****** Object:  Table [dbo].[denuncia]    Script Date: 2/12/2018 12:25:22 ******/
DROP TABLE [dbo].[denuncia]
GO
/****** Object:  Table [dbo].[control]    Script Date: 2/12/2018 12:25:22 ******/
DROP TABLE [dbo].[control]
GO
/****** Object:  Table [dbo].[codigo_infraccion]    Script Date: 2/12/2018 12:25:22 ******/
DROP TABLE [dbo].[codigo_infraccion]
GO
/****** Object:  Table [dbo].[cedula]    Script Date: 2/12/2018 12:25:22 ******/
DROP TABLE [dbo].[cedula]
GO
/****** Object:  Table [dbo].[categoria_licencia]    Script Date: 2/12/2018 12:25:22 ******/
DROP TABLE [dbo].[categoria_licencia]
GO
/****** Object:  Table [dbo].[categoria_infraccion]    Script Date: 2/12/2018 12:25:22 ******/
DROP TABLE [dbo].[categoria_infraccion]
GO
/****** Object:  Table [dbo].[aseguradora]    Script Date: 2/12/2018 12:25:22 ******/
DROP TABLE [dbo].[aseguradora]
GO
/****** Object:  Table [dbo].[agente_transito]    Script Date: 2/12/2018 12:25:22 ******/
DROP TABLE [dbo].[agente_transito]
GO
/****** Object:  Schema [IIS APPPOOL\DefaultAppPool]    Script Date: 2/12/2018 12:25:22 ******/
DROP SCHEMA [IIS APPPOOL\DefaultAppPool]
GO
/****** Object:  User [IIS APPPOOL\DefaultAppPool]    Script Date: 2/12/2018 12:25:22 ******/
DROP USER [IIS APPPOOL\DefaultAppPool]
GO
USE [master]
GO
/****** Object:  Database [sicove]    Script Date: 2/12/2018 12:25:22 ******/
DROP DATABASE [sicove]
GO
/****** Object:  Database [sicove]    Script Date: 2/12/2018 12:25:22 ******/
CREATE DATABASE [sicove]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'sicove', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\sicove.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'sicove_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\sicove_log.ldf' , SIZE = 1600KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
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
/****** Object:  User [IIS APPPOOL\DefaultAppPool]    Script Date: 2/12/2018 12:25:22 ******/
CREATE USER [IIS APPPOOL\DefaultAppPool] FOR LOGIN [IIS APPPOOL\DefaultAppPool] WITH DEFAULT_SCHEMA=[IIS APPPOOL\DefaultAppPool]
GO
/****** Object:  Schema [IIS APPPOOL\DefaultAppPool]    Script Date: 2/12/2018 12:25:22 ******/
CREATE SCHEMA [IIS APPPOOL\DefaultAppPool]
GO
/****** Object:  Table [dbo].[agente_transito]    Script Date: 2/12/2018 12:25:22 ******/
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
/****** Object:  Table [dbo].[aseguradora]    Script Date: 2/12/2018 12:25:22 ******/
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
/****** Object:  Table [dbo].[categoria_infraccion]    Script Date: 2/12/2018 12:25:22 ******/
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
/****** Object:  Table [dbo].[categoria_licencia]    Script Date: 2/12/2018 12:25:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categoria_licencia](
	[id] [int] NOT NULL,
	[descripcion] [nvarchar](50) NULL,
 CONSTRAINT [PK_categoria_licencia] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cedula]    Script Date: 2/12/2018 12:25:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cedula](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nro_cedula] [nvarchar](10) NOT NULL,
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
/****** Object:  Table [dbo].[codigo_infraccion]    Script Date: 2/12/2018 12:25:22 ******/
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
/****** Object:  Table [dbo].[control]    Script Date: 2/12/2018 12:25:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[control](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[agente_transito_id] [int] NOT NULL,
	[vehiculo_id] [int] NOT NULL,
	[persona_id] [int] NULL,
	[fecha_hora] [datetime] NULL,
	[provincia_id] [int] NOT NULL,
	[localidad_id] [int] NOT NULL,
	[locacion] [nvarchar](200) NULL,
	[observaciones] [nvarchar](300) NULL,
 CONSTRAINT [PK_control] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[denuncia]    Script Date: 2/12/2018 12:25:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[denuncia](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[usuario_id] [int] NOT NULL,
	[estado_id] [int] NOT NULL,
	[infraccion_id] [int] NULL,
	[dominio] [nvarchar](10) NULL,
	[ubicacion] [nvarchar](100) NULL,
	[adjunto] [image] NULL,
	[ruta_adjunto] [nvarchar](max) NULL,
	[fecha_hora] [datetime] NULL,
	[observaciones] [nvarchar](200) NULL,
	[localidad_id] [int] NOT NULL,
 CONSTRAINT [PK_denuncia] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[estado_cedula]    Script Date: 2/12/2018 12:25:22 ******/
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
/****** Object:  Table [dbo].[estado_denuncia]    Script Date: 2/12/2018 12:25:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[estado_denuncia](
	[id] [int] NOT NULL,
	[descripcion] [nvarchar](50) NULL,
 CONSTRAINT [PK_estado_denuncia] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[infraccion]    Script Date: 2/12/2018 12:25:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[infraccion](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[agente_transito_id] [int] NOT NULL,
	[vehiculo_id] [int] NOT NULL,
	[licencia_id] [int] NOT NULL,
	[codigo_infraccion_id] [int] NOT NULL,
	[provincia_id] [int] NOT NULL,
	[localidad_id] [int] NOT NULL,
	[control_id] [int] NULL,
	[nro_acta] [bigint] NULL,
	[fecha_hora] [datetime] NULL,
	[locacion] [nvarchar](200) NULL,
	[observaciones] [nvarchar](300) NULL,
	[documentacion_retenida] [nvarchar](100) NULL,
	[lugar_retencion] [nvarchar](200) NULL,
	[persona_id] [int] NULL,
	[vehiculo_tipo_id] [int] NULL,
	[vehiculo_marca_id] [int] NULL,
	[vehiculo_modelo] [nvarchar](50) NULL,
	[vehiculo_dominio] [nvarchar](10) NULL,
	[imputado_apellido] [nvarchar](50) NULL,
	[imputado_nombre] [nvarchar](50) NULL,
	[imputado_dni] [bigint] NULL,
	[imputado_provincia_id] [int] NULL,
	[imputado_localidad_id] [int] NULL,
	[imputado_domicilio] [nvarchar](80) NULL,
	[imputado_nropuerta] [nvarchar](5) NULL,
	[imputado_piso] [smallint] NULL,
	[imputado_departamento] [nvarchar](5) NULL,
	[imputado_licencia_nro] [nvarchar](10) NULL,
	[imputado_licencia_municipio_id] [int] NULL,
	[imputado_licencia_categoria_id] [int] NULL,
 CONSTRAINT [PK_infraccion] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[licencia]    Script Date: 2/12/2018 12:25:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[licencia](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nro_licencia] [nvarchar](10) NOT NULL,
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
/****** Object:  Table [dbo].[localidad]    Script Date: 2/12/2018 12:25:22 ******/
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
/****** Object:  Table [dbo].[marca_vehiculo]    Script Date: 2/12/2018 12:25:22 ******/
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
/****** Object:  Table [dbo].[municipio]    Script Date: 2/12/2018 12:25:22 ******/
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
/****** Object:  Table [dbo].[nacionalidad]    Script Date: 2/12/2018 12:25:22 ******/
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
/****** Object:  Table [dbo].[perfil_usuario]    Script Date: 2/12/2018 12:25:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[perfil_usuario](
	[id] [int] NOT NULL,
	[descripcion] [nvarchar](50) NULL,
 CONSTRAINT [PK_perfil_usuario] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[persona]    Script Date: 2/12/2018 12:25:22 ******/
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
	[departamento] [nvarchar](5) NULL,
	[nro_puerta] [nvarchar](5) NULL,
	[fecha_nacimiento] [date] NULL,
	[lugar_nacimiento] [nvarchar](100) NULL,
	[flag_conductor] [bit] NOT NULL,
 CONSTRAINT [PK_persona] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[personal_remolque]    Script Date: 2/12/2018 12:25:22 ******/
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
/****** Object:  Table [dbo].[playa_acarreo]    Script Date: 2/12/2018 12:25:22 ******/
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
/****** Object:  Table [dbo].[poliza]    Script Date: 2/12/2018 12:25:22 ******/
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
/****** Object:  Table [dbo].[provincia]    Script Date: 2/12/2018 12:25:22 ******/
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
/****** Object:  Table [dbo].[remolque]    Script Date: 2/12/2018 12:25:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[remolque](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[personal_remolque_id] [int] NOT NULL,
	[playa_acarreo_id] [int] NOT NULL,
	[vehiculo_id] [int] NULL,
	[fecha_hora] [datetime] NULL,
	[ubicacion] [nvarchar](100) NULL,
	[detalle_infraccion] [nvarchar](200) NULL,
	[dominio] [nvarchar](10) NULL,
	[localidad_id] [int] NOT NULL,
 CONSTRAINT [PK_remolque] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sexo]    Script Date: 2/12/2018 12:25:22 ******/
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
/****** Object:  Table [dbo].[tipo_vehiculo]    Script Date: 2/12/2018 12:25:22 ******/
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
/****** Object:  Table [dbo].[uso_cedula]    Script Date: 2/12/2018 12:25:22 ******/
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
/****** Object:  Table [dbo].[usuario]    Script Date: 2/12/2018 12:25:22 ******/
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
/****** Object:  Table [dbo].[vehiculo]    Script Date: 2/12/2018 12:25:22 ******/
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
	[dominio] [nvarchar](10) NULL,
 CONSTRAINT [PK_vehiculo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[agente_transito] ON 

INSERT [dbo].[agente_transito] ([id], [usuario_id], [nro_legajo]) VALUES (1, 23, 123456)
INSERT [dbo].[agente_transito] ([id], [usuario_id], [nro_legajo]) VALUES (2, 24, 23456)
INSERT [dbo].[agente_transito] ([id], [usuario_id], [nro_legajo]) VALUES (3, 25, 34567)
SET IDENTITY_INSERT [dbo].[agente_transito] OFF
SET IDENTITY_INSERT [dbo].[aseguradora] ON 

INSERT [dbo].[aseguradora] ([id], [descripcion]) VALUES (1, N'LA NUEVA')
INSERT [dbo].[aseguradora] ([id], [descripcion]) VALUES (2, N'NACION SEGUROS')
INSERT [dbo].[aseguradora] ([id], [descripcion]) VALUES (3, N'LA CAJA')
INSERT [dbo].[aseguradora] ([id], [descripcion]) VALUES (4, N'MAPFRE')
INSERT [dbo].[aseguradora] ([id], [descripcion]) VALUES (5, N'ATM')
INSERT [dbo].[aseguradora] ([id], [descripcion]) VALUES (6, N'TRIUNFO SEGUROS')
SET IDENTITY_INSERT [dbo].[aseguradora] OFF
SET IDENTITY_INSERT [dbo].[categoria_infraccion] ON 

INSERT [dbo].[categoria_infraccion] ([id], [descripcion]) VALUES (1, N'Alcoholemia y otras')
INSERT [dbo].[categoria_infraccion] ([id], [descripcion]) VALUES (2, N'Barreras FFCC/Peaje')
INSERT [dbo].[categoria_infraccion] ([id], [descripcion]) VALUES (3, N'Carriles')
INSERT [dbo].[categoria_infraccion] ([id], [descripcion]) VALUES (4, N'Celulares')
INSERT [dbo].[categoria_infraccion] ([id], [descripcion]) VALUES (5, N'Conducción peligrosa')
INSERT [dbo].[categoria_infraccion] ([id], [descripcion]) VALUES (6, N'Documentación')
INSERT [dbo].[categoria_infraccion] ([id], [descripcion]) VALUES (7, N'Enseñanza conducción')
INSERT [dbo].[categoria_infraccion] ([id], [descripcion]) VALUES (8, N'Estacionamiento')
INSERT [dbo].[categoria_infraccion] ([id], [descripcion]) VALUES (9, N'Indicaciones del agente')
INSERT [dbo].[categoria_infraccion] ([id], [descripcion]) VALUES (10, N'Licencia')
INSERT [dbo].[categoria_infraccion] ([id], [descripcion]) VALUES (11, N'Luces')
INSERT [dbo].[categoria_infraccion] ([id], [descripcion]) VALUES (12, N'Luz roja - semáforo')
INSERT [dbo].[categoria_infraccion] ([id], [descripcion]) VALUES (13, N'Motos/Ciclomotor/Bicicleta')
INSERT [dbo].[categoria_infraccion] ([id], [descripcion]) VALUES (14, N'Senda peatonal/Filas escolar')
INSERT [dbo].[categoria_infraccion] ([id], [descripcion]) VALUES (15, N'Taxis')
INSERT [dbo].[categoria_infraccion] ([id], [descripcion]) VALUES (16, N'Empresa radiotaxi')
INSERT [dbo].[categoria_infraccion] ([id], [descripcion]) VALUES (17, N'Transporte de pasajeros, escolares y carga')
INSERT [dbo].[categoria_infraccion] ([id], [descripcion]) VALUES (18, N'Transporte sustancias')
SET IDENTITY_INSERT [dbo].[categoria_infraccion] OFF
INSERT [dbo].[categoria_licencia] ([id], [descripcion]) VALUES (1, N'Profesional')
INSERT [dbo].[categoria_licencia] ([id], [descripcion]) VALUES (2, N'Particular')
SET IDENTITY_INSERT [dbo].[cedula] ON 

INSERT [dbo].[cedula] ([id], [nro_cedula], [persona_id], [uso_id], [estado_id], [vehiculo_id], [vencimiento], [flag_autorizado]) VALUES (1, N'8348734   ', 7, 1, 1, 1, CAST(N'2018-11-30' AS Date), 1)
SET IDENTITY_INSERT [dbo].[cedula] OFF
SET IDENTITY_INSERT [dbo].[codigo_infraccion] ON 

INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (1, N'7063', 1, N'Acompañante (moto) supera límite alcohol en sangre')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (2, N'6490', 4, N'Manipular celular/utilizar auriculares/reproductor video')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (3, N'6161', 6, N'No exhibir cédula verde o cédula azul')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (4, N'6740', 14, N'No respetar senda peatonal o prioridad de paso del peatón')
SET IDENTITY_INSERT [dbo].[codigo_infraccion] OFF
SET IDENTITY_INSERT [dbo].[control] ON 

INSERT [dbo].[control] ([id], [agente_transito_id], [vehiculo_id], [persona_id], [fecha_hora], [provincia_id], [localidad_id], [locacion], [observaciones]) VALUES (1, 23, 1, 6, CAST(N'2018-12-01T00:00:00.000' AS DateTime), 1, 1, N'ASD', N'ASD')
INSERT [dbo].[control] ([id], [agente_transito_id], [vehiculo_id], [persona_id], [fecha_hora], [provincia_id], [localidad_id], [locacion], [observaciones]) VALUES (2, 2, 2, 11, CAST(N'2018-12-01T12:30:00.000' AS DateTime), 1, 34, N'XXX', N'XXX')
INSERT [dbo].[control] ([id], [agente_transito_id], [vehiculo_id], [persona_id], [fecha_hora], [provincia_id], [localidad_id], [locacion], [observaciones]) VALUES (3, 3, 3, 12, CAST(N'2018-12-01T12:30:00.000' AS DateTime), 1, 35, N'XXX', N'XXX')
INSERT [dbo].[control] ([id], [agente_transito_id], [vehiculo_id], [persona_id], [fecha_hora], [provincia_id], [localidad_id], [locacion], [observaciones]) VALUES (4, 1, 4, 13, CAST(N'2018-12-01T12:30:00.000' AS DateTime), 1, 36, N'XXX', N'XXX')
INSERT [dbo].[control] ([id], [agente_transito_id], [vehiculo_id], [persona_id], [fecha_hora], [provincia_id], [localidad_id], [locacion], [observaciones]) VALUES (5, 1, 4, 13, CAST(N'2018-12-01T12:30:00.000' AS DateTime), 1, 36, N'XXX', N'XXX')
INSERT [dbo].[control] ([id], [agente_transito_id], [vehiculo_id], [persona_id], [fecha_hora], [provincia_id], [localidad_id], [locacion], [observaciones]) VALUES (6, 1, 4, 13, CAST(N'2018-12-01T12:30:00.000' AS DateTime), 1, 37, N'XXX', N'XXX')
INSERT [dbo].[control] ([id], [agente_transito_id], [vehiculo_id], [persona_id], [fecha_hora], [provincia_id], [localidad_id], [locacion], [observaciones]) VALUES (7, 1, 4, 13, CAST(N'2018-12-01T12:30:00.000' AS DateTime), 1, 36, N'XXX', N'XXX')
INSERT [dbo].[control] ([id], [agente_transito_id], [vehiculo_id], [persona_id], [fecha_hora], [provincia_id], [localidad_id], [locacion], [observaciones]) VALUES (8, 1, 4, 13, CAST(N'2018-12-01T12:30:00.000' AS DateTime), 1, 37, N'XXX', N'XXX')
INSERT [dbo].[control] ([id], [agente_transito_id], [vehiculo_id], [persona_id], [fecha_hora], [provincia_id], [localidad_id], [locacion], [observaciones]) VALUES (9, 1, 4, 13, CAST(N'2018-12-01T12:30:00.000' AS DateTime), 1, 36, N'XXX', N'XXX')
INSERT [dbo].[control] ([id], [agente_transito_id], [vehiculo_id], [persona_id], [fecha_hora], [provincia_id], [localidad_id], [locacion], [observaciones]) VALUES (10, 1, 1, 10, CAST(N'2018-12-01T12:30:00.000' AS DateTime), 1, 1, N'XXX', N'XXX')
INSERT [dbo].[control] ([id], [agente_transito_id], [vehiculo_id], [persona_id], [fecha_hora], [provincia_id], [localidad_id], [locacion], [observaciones]) VALUES (11, 2, 2, 11, CAST(N'2018-12-01T12:30:00.000' AS DateTime), 1, 34, N'XXX', N'XXX')
INSERT [dbo].[control] ([id], [agente_transito_id], [vehiculo_id], [persona_id], [fecha_hora], [provincia_id], [localidad_id], [locacion], [observaciones]) VALUES (12, 3, 3, 12, CAST(N'2018-12-01T12:30:00.000' AS DateTime), 1, 35, N'XXX', N'XXX')
INSERT [dbo].[control] ([id], [agente_transito_id], [vehiculo_id], [persona_id], [fecha_hora], [provincia_id], [localidad_id], [locacion], [observaciones]) VALUES (13, 1, 4, 13, CAST(N'2018-12-01T12:30:00.000' AS DateTime), 1, 36, N'XXX', N'XXX')
INSERT [dbo].[control] ([id], [agente_transito_id], [vehiculo_id], [persona_id], [fecha_hora], [provincia_id], [localidad_id], [locacion], [observaciones]) VALUES (14, 1, 1, 10, CAST(N'2018-12-01T12:30:00.000' AS DateTime), 1, 1, N'XXX', N'XXX')
INSERT [dbo].[control] ([id], [agente_transito_id], [vehiculo_id], [persona_id], [fecha_hora], [provincia_id], [localidad_id], [locacion], [observaciones]) VALUES (15, 2, 2, 11, CAST(N'2018-12-01T12:30:00.000' AS DateTime), 1, 34, N'XXX', N'XXX')
INSERT [dbo].[control] ([id], [agente_transito_id], [vehiculo_id], [persona_id], [fecha_hora], [provincia_id], [localidad_id], [locacion], [observaciones]) VALUES (16, 3, 3, 12, CAST(N'2018-12-01T12:30:00.000' AS DateTime), 1, 35, N'XXX', N'XXX')
INSERT [dbo].[control] ([id], [agente_transito_id], [vehiculo_id], [persona_id], [fecha_hora], [provincia_id], [localidad_id], [locacion], [observaciones]) VALUES (17, 1, 4, 13, CAST(N'2018-12-01T12:30:00.000' AS DateTime), 1, 40, N'XXX', N'XXX')
INSERT [dbo].[control] ([id], [agente_transito_id], [vehiculo_id], [persona_id], [fecha_hora], [provincia_id], [localidad_id], [locacion], [observaciones]) VALUES (18, 1, 1, 10, CAST(N'2018-12-01T12:30:00.000' AS DateTime), 1, 1, N'XXX', N'XXX')
INSERT [dbo].[control] ([id], [agente_transito_id], [vehiculo_id], [persona_id], [fecha_hora], [provincia_id], [localidad_id], [locacion], [observaciones]) VALUES (19, 2, 2, 11, CAST(N'2018-12-01T12:30:00.000' AS DateTime), 1, 34, N'XXX', N'XXX')
INSERT [dbo].[control] ([id], [agente_transito_id], [vehiculo_id], [persona_id], [fecha_hora], [provincia_id], [localidad_id], [locacion], [observaciones]) VALUES (20, 3, 3, 12, CAST(N'2018-12-01T12:30:00.000' AS DateTime), 1, 35, N'XXX', N'XXX')
INSERT [dbo].[control] ([id], [agente_transito_id], [vehiculo_id], [persona_id], [fecha_hora], [provincia_id], [localidad_id], [locacion], [observaciones]) VALUES (21, 1, 4, 13, CAST(N'2018-12-01T12:30:00.000' AS DateTime), 1, 36, N'XXX', N'XXX')
INSERT [dbo].[control] ([id], [agente_transito_id], [vehiculo_id], [persona_id], [fecha_hora], [provincia_id], [localidad_id], [locacion], [observaciones]) VALUES (22, 1, 1, 10, CAST(N'2018-12-01T12:30:00.000' AS DateTime), 1, 1, N'XXX', N'XXX')
INSERT [dbo].[control] ([id], [agente_transito_id], [vehiculo_id], [persona_id], [fecha_hora], [provincia_id], [localidad_id], [locacion], [observaciones]) VALUES (23, 2, 2, 11, CAST(N'2018-12-01T12:30:00.000' AS DateTime), 1, 34, N'XXX', N'XXX')
INSERT [dbo].[control] ([id], [agente_transito_id], [vehiculo_id], [persona_id], [fecha_hora], [provincia_id], [localidad_id], [locacion], [observaciones]) VALUES (24, 3, 3, 12, CAST(N'2018-12-01T12:30:00.000' AS DateTime), 1, 35, N'XXX', N'XXX')
INSERT [dbo].[control] ([id], [agente_transito_id], [vehiculo_id], [persona_id], [fecha_hora], [provincia_id], [localidad_id], [locacion], [observaciones]) VALUES (25, 1, 4, 13, CAST(N'2018-12-01T12:30:00.000' AS DateTime), 1, 39, N'XXX', N'XXX')
INSERT [dbo].[control] ([id], [agente_transito_id], [vehiculo_id], [persona_id], [fecha_hora], [provincia_id], [localidad_id], [locacion], [observaciones]) VALUES (26, 1, 1, 10, CAST(N'2018-12-01T12:30:00.000' AS DateTime), 1, 1, N'XXX', N'XXX')
INSERT [dbo].[control] ([id], [agente_transito_id], [vehiculo_id], [persona_id], [fecha_hora], [provincia_id], [localidad_id], [locacion], [observaciones]) VALUES (27, 2, 2, 11, CAST(N'2018-12-01T12:30:00.000' AS DateTime), 1, 34, N'XXX', N'XXX')
INSERT [dbo].[control] ([id], [agente_transito_id], [vehiculo_id], [persona_id], [fecha_hora], [provincia_id], [localidad_id], [locacion], [observaciones]) VALUES (28, 3, 3, 12, CAST(N'2018-12-01T12:30:00.000' AS DateTime), 1, 35, N'XXX', N'XXX')
INSERT [dbo].[control] ([id], [agente_transito_id], [vehiculo_id], [persona_id], [fecha_hora], [provincia_id], [localidad_id], [locacion], [observaciones]) VALUES (29, 1, 4, 13, CAST(N'2018-12-01T12:30:00.000' AS DateTime), 1, 38, N'XXX', N'XXX')
INSERT [dbo].[control] ([id], [agente_transito_id], [vehiculo_id], [persona_id], [fecha_hora], [provincia_id], [localidad_id], [locacion], [observaciones]) VALUES (30, 1, 1, 10, CAST(N'2018-12-01T12:30:00.000' AS DateTime), 1, 1, N'XXX', N'XXX')
INSERT [dbo].[control] ([id], [agente_transito_id], [vehiculo_id], [persona_id], [fecha_hora], [provincia_id], [localidad_id], [locacion], [observaciones]) VALUES (31, 2, 2, 11, CAST(N'2018-12-01T12:30:00.000' AS DateTime), 1, 34, N'XXX', N'XXX')
INSERT [dbo].[control] ([id], [agente_transito_id], [vehiculo_id], [persona_id], [fecha_hora], [provincia_id], [localidad_id], [locacion], [observaciones]) VALUES (32, 3, 3, 12, CAST(N'2018-12-01T12:30:00.000' AS DateTime), 1, 35, N'XXX', N'XXX')
INSERT [dbo].[control] ([id], [agente_transito_id], [vehiculo_id], [persona_id], [fecha_hora], [provincia_id], [localidad_id], [locacion], [observaciones]) VALUES (33, 1, 4, 13, CAST(N'2018-12-01T12:30:00.000' AS DateTime), 1, 36, N'XXX', N'XXX')
SET IDENTITY_INSERT [dbo].[control] OFF
SET IDENTITY_INSERT [dbo].[denuncia] ON 

INSERT [dbo].[denuncia] ([id], [usuario_id], [estado_id], [infraccion_id], [dominio], [ubicacion], [adjunto], [ruta_adjunto], [fecha_hora], [observaciones], [localidad_id]) VALUES (1, 4, 1, 8, N'a02onjy', NULL, NULL, N'C:\Users\fernajo003\Documents\GitHub\SiCoVe\SiCoVe\Site\FotosDenuncias\eeee.jpeg', CAST(N'2018-11-28T00:00:00.000' AS DateTime), N'ddsfadasfasdfasdfasdfasdfasd f
fasdf
as
df
asd
fa
sdfasdfasdfasdfasdfasdfa', 37)
INSERT [dbo].[denuncia] ([id], [usuario_id], [estado_id], [infraccion_id], [dominio], [ubicacion], [adjunto], [ruta_adjunto], [fecha_hora], [observaciones], [localidad_id]) VALUES (2, 4, 1, NULL, N'PAT854', NULL, NULL, N'C:\Users\fernajo003\Documents\GitHub\SiCoVe\SiCoVe\Site\FotosDenuncias\20181006_173237.jpg', CAST(N'2018-11-28T00:00:00.000' AS DateTime), N'El auto de David si segue estacionando asi, 
Silvia lo va a cagar a piedrazos como al micro de boca', 40)
INSERT [dbo].[denuncia] ([id], [usuario_id], [estado_id], [infraccion_id], [dominio], [ubicacion], [adjunto], [ruta_adjunto], [fecha_hora], [observaciones], [localidad_id]) VALUES (3, 4, 1, NULL, N'PAT854', NULL, NULL, N'C:\Users\fernajo003\Documents\GitHub\SiCoVe\SiCoVe\Site\FotosDenuncias\20181006_173237.jpg', CAST(N'2018-11-28T00:00:00.000' AS DateTime), N'El auto de David si segue estacionando asi, 
Silvia lo va a cagar a piedrazos como al micro de boca', 40)
INSERT [dbo].[denuncia] ([id], [usuario_id], [estado_id], [infraccion_id], [dominio], [ubicacion], [adjunto], [ruta_adjunto], [fecha_hora], [observaciones], [localidad_id]) VALUES (4, 4, 1, NULL, N'PAT854', NULL, NULL, N'C:\Users\fernajo003\Documents\GitHub\SiCoVe\SiCoVe\Site\FotosDenuncias\20181006_173237.jpg', CAST(N'2018-11-28T00:00:00.000' AS DateTime), N'El auto de David si segue estacionando asi, 
Silvia lo va a cagar a piedrazos como al micro de boca', 40)
INSERT [dbo].[denuncia] ([id], [usuario_id], [estado_id], [infraccion_id], [dominio], [ubicacion], [adjunto], [ruta_adjunto], [fecha_hora], [observaciones], [localidad_id]) VALUES (5, 4, 1, NULL, N'PAT854', NULL, NULL, N'C:\Users\fernajo003\Documents\GitHub\SiCoVe\SiCoVe\Site\FotosDenuncias\20181006_173237.jpg', CAST(N'2018-11-28T00:00:00.000' AS DateTime), N'  El auto de David si segue estacionando asi, 
Silvia lo va a cagar a piedrazos como al micro de boca', 40)
INSERT [dbo].[denuncia] ([id], [usuario_id], [estado_id], [infraccion_id], [dominio], [ubicacion], [adjunto], [ruta_adjunto], [fecha_hora], [observaciones], [localidad_id]) VALUES (6, 4, 1, NULL, N'PAT854', NULL, NULL, NULL, CAST(N'2018-11-28T00:00:00.000' AS DateTime), N'  El auto de David si segue estacionando asi, 
Silvia lo va a cagar a piedrazos como al micro de boca', 40)
INSERT [dbo].[denuncia] ([id], [usuario_id], [estado_id], [infraccion_id], [dominio], [ubicacion], [adjunto], [ruta_adjunto], [fecha_hora], [observaciones], [localidad_id]) VALUES (7, 4, 1, NULL, N'PAT854', NULL, NULL, N'C:\Users\fernajo003\Documents\GitHub\SiCoVe\SiCoVe\Site\FotosDenuncias\20181006_173237.jpg', CAST(N'2018-11-28T00:00:00.000' AS DateTime), N'  El auto de David si segue estacionando asi, 
Silvia lo va a cagar a piedrazos como al micro de boca', 40)
INSERT [dbo].[denuncia] ([id], [usuario_id], [estado_id], [infraccion_id], [dominio], [ubicacion], [adjunto], [ruta_adjunto], [fecha_hora], [observaciones], [localidad_id]) VALUES (8, 4, 1, NULL, N'PAT854', NULL, NULL, N'C:\Users\fernajo003\Documents\GitHub\SiCoVe\SiCoVe\Site\FotosDenuncias\20181006_173237.jpg', CAST(N'2018-11-28T00:00:00.000' AS DateTime), N'  El auto de David si segue estacionando asi, 
Silvia lo va a cagar a piedrazos como al micro de boca', 40)
INSERT [dbo].[denuncia] ([id], [usuario_id], [estado_id], [infraccion_id], [dominio], [ubicacion], [adjunto], [ruta_adjunto], [fecha_hora], [observaciones], [localidad_id]) VALUES (9, 4, 1, NULL, N'PAT854', NULL, NULL, N'C:\Users\fernajo003\Documents\GitHub\SiCoVe\SiCoVe\Site\FotosDenuncias\ff26f929-39bb-45c4-9ea8-c35ebbfd5b12.jpg', CAST(N'2018-12-26T00:00:00.000' AS DateTime), N'ty', 1)
SET IDENTITY_INSERT [dbo].[denuncia] OFF
SET IDENTITY_INSERT [dbo].[estado_cedula] ON 

INSERT [dbo].[estado_cedula] ([id], [descripcion]) VALUES (1, N'ORIGINAL')
INSERT [dbo].[estado_cedula] ([id], [descripcion]) VALUES (2, N'DUPLICADO')
SET IDENTITY_INSERT [dbo].[estado_cedula] OFF
INSERT [dbo].[estado_denuncia] ([id], [descripcion]) VALUES (1, N'Pendiente de revisión')
INSERT [dbo].[estado_denuncia] ([id], [descripcion]) VALUES (2, N'Confirmada')
INSERT [dbo].[estado_denuncia] ([id], [descripcion]) VALUES (3, N'Anulada')
SET IDENTITY_INSERT [dbo].[infraccion] ON 

INSERT [dbo].[infraccion] ([id], [agente_transito_id], [vehiculo_id], [licencia_id], [codigo_infraccion_id], [provincia_id], [localidad_id], [control_id], [nro_acta], [fecha_hora], [locacion], [observaciones], [documentacion_retenida], [lugar_retencion], [persona_id], [vehiculo_tipo_id], [vehiculo_marca_id], [vehiculo_modelo], [vehiculo_dominio], [imputado_apellido], [imputado_nombre], [imputado_dni], [imputado_provincia_id], [imputado_localidad_id], [imputado_domicilio], [imputado_nropuerta], [imputado_piso], [imputado_departamento], [imputado_licencia_nro], [imputado_licencia_municipio_id], [imputado_licencia_categoria_id]) VALUES (8, 1, 1, 1, 1, 1, 1, 1, 2, CAST(N'2018-12-13T00:00:00.000' AS DateTime), N'ASD', N'ASD', N'ASD', N'ASD', 6, 1, 1, N'1', N'1', N'ASD', N'ASD', 1, 1, 1, N'ASD', N'1', 1, N'1', N'1', 1, 1)
SET IDENTITY_INSERT [dbo].[infraccion] OFF
SET IDENTITY_INSERT [dbo].[licencia] ON 

INSERT [dbo].[licencia] ([id], [nro_licencia], [categoria_id], [persona_id], [municipio_id], [clases], [otorgamiento], [vencimiento], [observaciones]) VALUES (1, N'23353242  ', 1, 7, 1, N'a1-b2', CAST(N'2018-10-07' AS Date), CAST(N'2018-11-10' AS Date), N'jhfdañlsjdfa')
SET IDENTITY_INSERT [dbo].[licencia] OFF
SET IDENTITY_INSERT [dbo].[localidad] ON 

INSERT [dbo].[localidad] ([id], [provincia_id], [descripcion]) VALUES (1, 1, N'CASTELAR')
INSERT [dbo].[localidad] ([id], [provincia_id], [descripcion]) VALUES (34, 1, N'MORON')
INSERT [dbo].[localidad] ([id], [provincia_id], [descripcion]) VALUES (35, 1, N'HAEDO')
INSERT [dbo].[localidad] ([id], [provincia_id], [descripcion]) VALUES (37, 1, N'ITUZAINGO')
INSERT [dbo].[localidad] ([id], [provincia_id], [descripcion]) VALUES (38, 1, N'MORENO')
INSERT [dbo].[localidad] ([id], [provincia_id], [descripcion]) VALUES (40, 1, N'LA MATANZA')
SET IDENTITY_INSERT [dbo].[localidad] OFF
SET IDENTITY_INSERT [dbo].[marca_vehiculo] ON 

INSERT [dbo].[marca_vehiculo] ([id], [descripcion]) VALUES (1, N'Chevrolet')
INSERT [dbo].[marca_vehiculo] ([id], [descripcion]) VALUES (2, N'Ford')
INSERT [dbo].[marca_vehiculo] ([id], [descripcion]) VALUES (3, N'Renault')
INSERT [dbo].[marca_vehiculo] ([id], [descripcion]) VALUES (4, N'Peugeot')
INSERT [dbo].[marca_vehiculo] ([id], [descripcion]) VALUES (5, N'Honda')
INSERT [dbo].[marca_vehiculo] ([id], [descripcion]) VALUES (6, N'Toyota')
INSERT [dbo].[marca_vehiculo] ([id], [descripcion]) VALUES (7, N'Fiat')
SET IDENTITY_INSERT [dbo].[marca_vehiculo] OFF
SET IDENTITY_INSERT [dbo].[municipio] ON 

INSERT [dbo].[municipio] ([id], [descripcion]) VALUES (1, N'MORON')
INSERT [dbo].[municipio] ([id], [descripcion]) VALUES (2, N'ITUZAINGO')
INSERT [dbo].[municipio] ([id], [descripcion]) VALUES (3, N'MERLO')
INSERT [dbo].[municipio] ([id], [descripcion]) VALUES (4, N'MORENO')
INSERT [dbo].[municipio] ([id], [descripcion]) VALUES (5, N'LA MATANZA')
INSERT [dbo].[municipio] ([id], [descripcion]) VALUES (6, N'3 DE FEBRERO')
SET IDENTITY_INSERT [dbo].[municipio] OFF
SET IDENTITY_INSERT [dbo].[nacionalidad] ON 

INSERT [dbo].[nacionalidad] ([id], [descripcion]) VALUES (1, N'argentino')
SET IDENTITY_INSERT [dbo].[nacionalidad] OFF
INSERT [dbo].[perfil_usuario] ([id], [descripcion]) VALUES (1, N'Admin')
INSERT [dbo].[perfil_usuario] ([id], [descripcion]) VALUES (2, N'Usuario')
INSERT [dbo].[perfil_usuario] ([id], [descripcion]) VALUES (3, N'Autoridad transito')
INSERT [dbo].[perfil_usuario] ([id], [descripcion]) VALUES (4, N'Personal remolque')
INSERT [dbo].[perfil_usuario] ([id], [descripcion]) VALUES (5, N'Demunciante')
SET IDENTITY_INSERT [dbo].[persona] ON 

INSERT [dbo].[persona] ([id], [apellido], [nombre], [dni], [sexo_id], [nacionalidad_id], [provincia_id], [localidad_id], [domicilio], [piso], [departamento], [nro_puerta], [fecha_nacimiento], [lugar_nacimiento], [flag_conductor]) VALUES (6, N'fernandez', N'jonathan', 35216504, 1, 1, 1, 1, N'fernandez 2878', 1, N'1', N'1', CAST(N'1990-05-28' AS Date), N'castelar', 1)
INSERT [dbo].[persona] ([id], [apellido], [nombre], [dni], [sexo_id], [nacionalidad_id], [provincia_id], [localidad_id], [domicilio], [piso], [departamento], [nro_puerta], [fecha_nacimiento], [lugar_nacimiento], [flag_conductor]) VALUES (7, N'fernandez', N'jonathan ', 3322255, 1, 1, 1, 1, N'fernandez 2878', 1, N'1', N'1', CAST(N'1990-05-28' AS Date), N'castelar', 1)
INSERT [dbo].[persona] ([id], [apellido], [nombre], [dni], [sexo_id], [nacionalidad_id], [provincia_id], [localidad_id], [domicilio], [piso], [departamento], [nro_puerta], [fecha_nacimiento], [lugar_nacimiento], [flag_conductor]) VALUES (8, N'fernandez remolque', N'jonathan remolque', 35226504, 1, 1, 1, 1, N'dsfakljf', 1, N'1', N'1', CAST(N'2018-11-28' AS Date), N'capital', 0)
INSERT [dbo].[persona] ([id], [apellido], [nombre], [dni], [sexo_id], [nacionalidad_id], [provincia_id], [localidad_id], [domicilio], [piso], [departamento], [nro_puerta], [fecha_nacimiento], [lugar_nacimiento], [flag_conductor]) VALUES (9, N'remolque', N'remeol', 11222333, 1, 1, 1, 1, N'fasdfjkj 2', 2, N'faksj', N'2', CAST(N'2018-11-12' AS Date), N'fsdjfkajs 33', 0)
INSERT [dbo].[persona] ([id], [apellido], [nombre], [dni], [sexo_id], [nacionalidad_id], [provincia_id], [localidad_id], [domicilio], [piso], [departamento], [nro_puerta], [fecha_nacimiento], [lugar_nacimiento], [flag_conductor]) VALUES (10, N'dfjh', N'hjkhas', 98393, 1, 1, 1, 1, N'ajsdfja ', 12, N'12', N'12', CAST(N'2018-11-07' AS Date), N'adsfa', 0)
INSERT [dbo].[persona] ([id], [apellido], [nombre], [dni], [sexo_id], [nacionalidad_id], [provincia_id], [localidad_id], [domicilio], [piso], [departamento], [nro_puerta], [fecha_nacimiento], [lugar_nacimiento], [flag_conductor]) VALUES (11, N'3423', N'kjsdflkA', 3434533, 1, 1, 1, 1, N'KFJAKLDFJ', 32, N'324', N'2312', CAST(N'2018-11-19' AS Date), N'fsdfasdfa', 0)
INSERT [dbo].[persona] ([id], [apellido], [nombre], [dni], [sexo_id], [nacionalidad_id], [provincia_id], [localidad_id], [domicilio], [piso], [departamento], [nro_puerta], [fecha_nacimiento], [lugar_nacimiento], [flag_conductor]) VALUES (12, N'sdfam', N'ñfkds', 32412, 1, 1, 1, 1, N'dfn.msd', 1, N'1', N'1', CAST(N'1990-03-22' AS Date), N'scas', 0)
INSERT [dbo].[persona] ([id], [apellido], [nombre], [dni], [sexo_id], [nacionalidad_id], [provincia_id], [localidad_id], [domicilio], [piso], [departamento], [nro_puerta], [fecha_nacimiento], [lugar_nacimiento], [flag_conductor]) VALUES (13, N'ajsdlka', N'kjfak', 7373838, 1, 1, 1, 1, N'qeqweqj', 1, N'12', N'121', CAST(N'2018-11-05' AS Date), N'hjdLKJHD', 0)
INSERT [dbo].[persona] ([id], [apellido], [nombre], [dni], [sexo_id], [nacionalidad_id], [provincia_id], [localidad_id], [domicilio], [piso], [departamento], [nro_puerta], [fecha_nacimiento], [lugar_nacimiento], [flag_conductor]) VALUES (14, N'hjhfasdhj', N'hdfalkj', 6326767, 1, 1, 1, 1, N'jhaklj', 11, N'1', N'1', CAST(N'2018-11-19' AS Date), N'uhxchjzh1', 0)
INSERT [dbo].[persona] ([id], [apellido], [nombre], [dni], [sexo_id], [nacionalidad_id], [provincia_id], [localidad_id], [domicilio], [piso], [departamento], [nro_puerta], [fecha_nacimiento], [lugar_nacimiento], [flag_conductor]) VALUES (15, N'jhakjfdh', N'sajksdhfa', 12319, 1, 1, 1, 1, N'skjfhkjs', 1, N'1', N'1', CAST(N'2018-11-03' AS Date), N'sdfah', 0)
INSERT [dbo].[persona] ([id], [apellido], [nombre], [dni], [sexo_id], [nacionalidad_id], [provincia_id], [localidad_id], [domicilio], [piso], [departamento], [nro_puerta], [fecha_nacimiento], [lugar_nacimiento], [flag_conductor]) VALUES (16, N'askdn', N'jlsndmfa', 9839, 1, 1, 1, 1, N'jasdmfn', 1, N'1', N'1', CAST(N'2018-11-14' AS Date), N'sdhfkja', 0)
INSERT [dbo].[persona] ([id], [apellido], [nombre], [dni], [sexo_id], [nacionalidad_id], [provincia_id], [localidad_id], [domicilio], [piso], [departamento], [nro_puerta], [fecha_nacimiento], [lugar_nacimiento], [flag_conductor]) VALUES (17, N'kjsfdjjs', N'ljdsfjlasdf', 84389894, 1, 1, 1, 1, N'jdfjajl', 1, N'1', N'11', CAST(N'2018-11-09' AS Date), N'adslfajl', 0)
INSERT [dbo].[persona] ([id], [apellido], [nombre], [dni], [sexo_id], [nacionalidad_id], [provincia_id], [localidad_id], [domicilio], [piso], [departamento], [nro_puerta], [fecha_nacimiento], [lugar_nacimiento], [flag_conductor]) VALUES (18, N'kjsfdjjs', N'ljdsfjlasdf', 84389894, 1, 1, 1, 1, N'jdfjajl', 1, N'1', N'11', CAST(N'2018-11-09' AS Date), N'adslfajl', 0)
INSERT [dbo].[persona] ([id], [apellido], [nombre], [dni], [sexo_id], [nacionalidad_id], [provincia_id], [localidad_id], [domicilio], [piso], [departamento], [nro_puerta], [fecha_nacimiento], [lugar_nacimiento], [flag_conductor]) VALUES (19, N'kjsfdjjs', N'ljdsfjlasdf', 84389894, 1, 1, 1, 1, N'jdfjajl', 1, N'1', N'11', CAST(N'2018-11-09' AS Date), N'adslfajl', 0)
INSERT [dbo].[persona] ([id], [apellido], [nombre], [dni], [sexo_id], [nacionalidad_id], [provincia_id], [localidad_id], [domicilio], [piso], [departamento], [nro_puerta], [fecha_nacimiento], [lugar_nacimiento], [flag_conductor]) VALUES (20, N'kdkja', N'kjsdfsjha', 43327, 1, 1, 1, 1, N'iii', 1, N'1', N'1', CAST(N'2018-11-15' AS Date), N'sdfa', 0)
INSERT [dbo].[persona] ([id], [apellido], [nombre], [dni], [sexo_id], [nacionalidad_id], [provincia_id], [localidad_id], [domicilio], [piso], [departamento], [nro_puerta], [fecha_nacimiento], [lugar_nacimiento], [flag_conductor]) VALUES (21, N'jjjjdj', N'jdsjskj', 7773, 1, 1, 1, 1, N'kjsdkdjf', 1, N'1', N'1', CAST(N'2018-11-22' AS Date), N'asd', 0)
INSERT [dbo].[persona] ([id], [apellido], [nombre], [dni], [sexo_id], [nacionalidad_id], [provincia_id], [localidad_id], [domicilio], [piso], [departamento], [nro_puerta], [fecha_nacimiento], [lugar_nacimiento], [flag_conductor]) VALUES (22, N'dsjkalñkjañk', N'ajdfñlkaj', 74765476, 1, 1, 1, 1, N'fasdfjkj 2', 1, N'1', N'1', CAST(N'2018-11-26' AS Date), N'jkdsfjsd', 0)
INSERT [dbo].[persona] ([id], [apellido], [nombre], [dni], [sexo_id], [nacionalidad_id], [provincia_id], [localidad_id], [domicilio], [piso], [departamento], [nro_puerta], [fecha_nacimiento], [lugar_nacimiento], [flag_conductor]) VALUES (23, N'dsjkalñkjañk', N'ajdfñlkaj', 74765476, 1, 1, 1, 1, N'fasdfjkj 2', 1, N'1', N'1', CAST(N'2018-11-26' AS Date), N'jkdsfjsd', 0)
INSERT [dbo].[persona] ([id], [apellido], [nombre], [dni], [sexo_id], [nacionalidad_id], [provincia_id], [localidad_id], [domicilio], [piso], [departamento], [nro_puerta], [fecha_nacimiento], [lugar_nacimiento], [flag_conductor]) VALUES (24, N'Barredoras', N'Don', 55991919, 1, 1, 1, 1, N'zxczxczv 343', 1, N'1', N'1', CAST(N'1994-05-12' AS Date), N'Haedo', 0)
INSERT [dbo].[persona] ([id], [apellido], [nombre], [dni], [sexo_id], [nacionalidad_id], [provincia_id], [localidad_id], [domicilio], [piso], [departamento], [nro_puerta], [fecha_nacimiento], [lugar_nacimiento], [flag_conductor]) VALUES (26, N'Simpson', N'Homero', 38818011, 1, 1, 1, 37, N'Martinez Casado 505', NULL, NULL, NULL, CAST(N'1988-10-10' AS Date), N'La Matanza', 0)
INSERT [dbo].[persona] ([id], [apellido], [nombre], [dni], [sexo_id], [nacionalidad_id], [provincia_id], [localidad_id], [domicilio], [piso], [departamento], [nro_puerta], [fecha_nacimiento], [lugar_nacimiento], [flag_conductor]) VALUES (27, N'Argento', N'Dario', 40188299, 1, 1, 1, 38, N'Tacuarí 1039', NULL, NULL, NULL, CAST(N'1995-04-11' AS Date), N'Moreno', 0)
SET IDENTITY_INSERT [dbo].[persona] OFF
SET IDENTITY_INSERT [dbo].[personal_remolque] ON 

INSERT [dbo].[personal_remolque] ([id], [usuario_id], [nro_legajo]) VALUES (1, 6, 8660)
INSERT [dbo].[personal_remolque] ([id], [usuario_id], [nro_legajo]) VALUES (2, 7, 10004)
INSERT [dbo].[personal_remolque] ([id], [usuario_id], [nro_legajo]) VALUES (3, 8, 20409)
INSERT [dbo].[personal_remolque] ([id], [usuario_id], [nro_legajo]) VALUES (4, 9, 33)
INSERT [dbo].[personal_remolque] ([id], [usuario_id], [nro_legajo]) VALUES (5, 10, 32)
INSERT [dbo].[personal_remolque] ([id], [usuario_id], [nro_legajo]) VALUES (6, 11, 3882)
INSERT [dbo].[personal_remolque] ([id], [usuario_id], [nro_legajo]) VALUES (7, 12, 828)
INSERT [dbo].[personal_remolque] ([id], [usuario_id], [nro_legajo]) VALUES (8, 13, 44)
INSERT [dbo].[personal_remolque] ([id], [usuario_id], [nro_legajo]) VALUES (9, 14, 667)
INSERT [dbo].[personal_remolque] ([id], [usuario_id], [nro_legajo]) VALUES (10, 15, 68)
INSERT [dbo].[personal_remolque] ([id], [usuario_id], [nro_legajo]) VALUES (11, 16, 68)
INSERT [dbo].[personal_remolque] ([id], [usuario_id], [nro_legajo]) VALUES (12, 17, 68)
INSERT [dbo].[personal_remolque] ([id], [usuario_id], [nro_legajo]) VALUES (13, 18, 488)
INSERT [dbo].[personal_remolque] ([id], [usuario_id], [nro_legajo]) VALUES (14, 19, 22)
INSERT [dbo].[personal_remolque] ([id], [usuario_id], [nro_legajo]) VALUES (15, 20, 779)
INSERT [dbo].[personal_remolque] ([id], [usuario_id], [nro_legajo]) VALUES (16, 21, 779)
INSERT [dbo].[personal_remolque] ([id], [usuario_id], [nro_legajo]) VALUES (17, 4, 999)
SET IDENTITY_INSERT [dbo].[personal_remolque] OFF
SET IDENTITY_INSERT [dbo].[playa_acarreo] ON 

INSERT [dbo].[playa_acarreo] ([id], [descripcion]) VALUES (1, N'Playa municipal de Morón')
INSERT [dbo].[playa_acarreo] ([id], [descripcion]) VALUES (2, N'Playa municipal de Moreno')
INSERT [dbo].[playa_acarreo] ([id], [descripcion]) VALUES (3, N'Playa dependencia policial Ituzaingó')
INSERT [dbo].[playa_acarreo] ([id], [descripcion]) VALUES (4, N'Playón municipal de General Rodríguez')
SET IDENTITY_INSERT [dbo].[playa_acarreo] OFF
SET IDENTITY_INSERT [dbo].[poliza] ON 

INSERT [dbo].[poliza] ([id], [nro_poliza], [aseguradora_id], [vehiculo_id], [vigencia_desde], [vigencia_hasta]) VALUES (1, N'38532452', 3, 1, CAST(N'2018-11-04' AS Date), CAST(N'2018-11-30' AS Date))
INSERT [dbo].[poliza] ([id], [nro_poliza], [aseguradora_id], [vehiculo_id], [vigencia_desde], [vigencia_hasta]) VALUES (2, N'266179', 2, 2, CAST(N'2017-12-31' AS Date), CAST(N'2018-12-31' AS Date))
INSERT [dbo].[poliza] ([id], [nro_poliza], [aseguradora_id], [vehiculo_id], [vigencia_desde], [vigencia_hasta]) VALUES (4, N'255111', 1, 4, CAST(N'2018-06-30' AS Date), CAST(N'2019-06-30' AS Date))
SET IDENTITY_INSERT [dbo].[poliza] OFF
SET IDENTITY_INSERT [dbo].[provincia] ON 

INSERT [dbo].[provincia] ([id], [descripcion]) VALUES (1, N'bs as')
SET IDENTITY_INSERT [dbo].[provincia] OFF
SET IDENTITY_INSERT [dbo].[remolque] ON 

INSERT [dbo].[remolque] ([id], [personal_remolque_id], [playa_acarreo_id], [vehiculo_id], [fecha_hora], [ubicacion], [detalle_infraccion], [dominio], [localidad_id]) VALUES (8, 3, 1, 1, CAST(N'2018-12-01T00:00:00.000' AS DateTime), N'asd', N'asd', N'asd', 1)
SET IDENTITY_INSERT [dbo].[remolque] OFF
SET IDENTITY_INSERT [dbo].[sexo] ON 

INSERT [dbo].[sexo] ([id], [descripcion]) VALUES (1, N'masculino')
INSERT [dbo].[sexo] ([id], [descripcion]) VALUES (2, N'femenino')
SET IDENTITY_INSERT [dbo].[sexo] OFF
SET IDENTITY_INSERT [dbo].[tipo_vehiculo] ON 

INSERT [dbo].[tipo_vehiculo] ([id], [descripcion]) VALUES (1, N'AUTO')
INSERT [dbo].[tipo_vehiculo] ([id], [descripcion]) VALUES (2, N'MOTO')
INSERT [dbo].[tipo_vehiculo] ([id], [descripcion]) VALUES (3, N'CAMIONETA')
SET IDENTITY_INSERT [dbo].[tipo_vehiculo] OFF
SET IDENTITY_INSERT [dbo].[uso_cedula] ON 

INSERT [dbo].[uso_cedula] ([id], [descripcion]) VALUES (1, N'PRIVADA')
INSERT [dbo].[uso_cedula] ([id], [descripcion]) VALUES (2, N'PUBLICO')
INSERT [dbo].[uso_cedula] ([id], [descripcion]) VALUES (3, N'OFICIAL')
SET IDENTITY_INSERT [dbo].[uso_cedula] OFF
SET IDENTITY_INSERT [dbo].[usuario] ON 

INSERT [dbo].[usuario] ([id], [persona_id], [perfil_usuario_id], [email], [contraseña]) VALUES (4, 6, 1, N'jonathanerik.fernandez@gmail.com', N'1234')
INSERT [dbo].[usuario] ([id], [persona_id], [perfil_usuario_id], [email], [contraseña]) VALUES (5, 7, 2, N'jonathanerik.fernandez@gmail.com', N'1234')
INSERT [dbo].[usuario] ([id], [persona_id], [perfil_usuario_id], [email], [contraseña]) VALUES (6, 8, 4, N'jonathanerik.fernandez@gmail.com', N'1234')
INSERT [dbo].[usuario] ([id], [persona_id], [perfil_usuario_id], [email], [contraseña]) VALUES (7, 9, 4, N'1004@gmail.com', N'1234')
INSERT [dbo].[usuario] ([id], [persona_id], [perfil_usuario_id], [email], [contraseña]) VALUES (8, 10, 4, N'20409@gmail.com', N'98')
INSERT [dbo].[usuario] ([id], [persona_id], [perfil_usuario_id], [email], [contraseña]) VALUES (9, 11, 4, N'33@gmail.com', N'33')
INSERT [dbo].[usuario] ([id], [persona_id], [perfil_usuario_id], [email], [contraseña]) VALUES (10, 12, 4, N'0203@gmail.com', N'123')
INSERT [dbo].[usuario] ([id], [persona_id], [perfil_usuario_id], [email], [contraseña]) VALUES (11, 13, 4, N'330@gmail.com', N'12')
INSERT [dbo].[usuario] ([id], [persona_id], [perfil_usuario_id], [email], [contraseña]) VALUES (12, 14, 4, N'82@gmail.com', N'1')
INSERT [dbo].[usuario] ([id], [persona_id], [perfil_usuario_id], [email], [contraseña]) VALUES (13, 15, 4, N'44@gmail.com', N'13')
INSERT [dbo].[usuario] ([id], [persona_id], [perfil_usuario_id], [email], [contraseña]) VALUES (14, 16, 4, N'76@gmail.com', N'12')
INSERT [dbo].[usuario] ([id], [persona_id], [perfil_usuario_id], [email], [contraseña]) VALUES (15, 17, 4, N'tr@gmail.com', N'jj')
INSERT [dbo].[usuario] ([id], [persona_id], [perfil_usuario_id], [email], [contraseña]) VALUES (16, 18, 4, N'tr@gmail.com', N'jj')
INSERT [dbo].[usuario] ([id], [persona_id], [perfil_usuario_id], [email], [contraseña]) VALUES (17, 19, 4, N'tr@gmail.com', N'jj')
INSERT [dbo].[usuario] ([id], [persona_id], [perfil_usuario_id], [email], [contraseña]) VALUES (18, 20, 4, N'mdskj@gmail.com', N'hjdsfhj')
INSERT [dbo].[usuario] ([id], [persona_id], [perfil_usuario_id], [email], [contraseña]) VALUES (19, 21, 4, N'ww@gmail.com', N'14')
INSERT [dbo].[usuario] ([id], [persona_id], [perfil_usuario_id], [email], [contraseña]) VALUES (20, 22, 4, N'779@gmail.com', N'90')
INSERT [dbo].[usuario] ([id], [persona_id], [perfil_usuario_id], [email], [contraseña]) VALUES (21, 23, 4, N'779@gmail.com', N'90')
INSERT [dbo].[usuario] ([id], [persona_id], [perfil_usuario_id], [email], [contraseña]) VALUES (23, 24, 3, N'hola@gmail.com', N'qwerty')
INSERT [dbo].[usuario] ([id], [persona_id], [perfil_usuario_id], [email], [contraseña]) VALUES (24, 26, 3, N'chau@gmail.com', N'qwerty')
INSERT [dbo].[usuario] ([id], [persona_id], [perfil_usuario_id], [email], [contraseña]) VALUES (25, 27, 3, N'taluego@gmail.com', N'qwerty')
SET IDENTITY_INSERT [dbo].[usuario] OFF
SET IDENTITY_INSERT [dbo].[vehiculo] ON 

INSERT [dbo].[vehiculo] ([id], [tipo_id], [marca_id], [modelo], [año], [cilindrada], [motor], [chasis_cuadro], [dominio]) VALUES (1, 1, 1, N'chevy', 1970, N'4.1', N'fjas323480', N'u48238', N'PAT854')
INSERT [dbo].[vehiculo] ([id], [tipo_id], [marca_id], [modelo], [año], [cilindrada], [motor], [chasis_cuadro], [dominio]) VALUES (2, 1, 5, N'Civic', 2003, N'1.8', N'sqiowi29819', N'yu9102', N'PAT854')
INSERT [dbo].[vehiculo] ([id], [tipo_id], [marca_id], [modelo], [año], [cilindrada], [motor], [chasis_cuadro], [dominio]) VALUES (4, 1, 2, N'Fiesta', 2004, N'1.6', N'auqo214019', N'p29312', N'PAT854')
INSERT [dbo].[vehiculo] ([id], [tipo_id], [marca_id], [modelo], [año], [cilindrada], [motor], [chasis_cuadro], [dominio]) VALUES (5, 1, 1, N'zanell', 2010, N'250', N'dfasdfasd', N'dsfwerf', N'A020NJY')
SET IDENTITY_INSERT [dbo].[vehiculo] OFF
/****** Object:  Index [IX_localidad]    Script Date: 2/12/2018 12:25:23 ******/
CREATE NONCLUSTERED INDEX [IX_localidad] ON [dbo].[localidad]
(
	[provincia_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
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
ALTER TABLE [dbo].[denuncia]  WITH CHECK ADD  CONSTRAINT [FK_denuncia_localidad] FOREIGN KEY([localidad_id])
REFERENCES [dbo].[localidad] ([id])
GO
ALTER TABLE [dbo].[denuncia] CHECK CONSTRAINT [FK_denuncia_localidad]
GO
ALTER TABLE [dbo].[denuncia]  WITH CHECK ADD  CONSTRAINT [FK_denuncia_usuario] FOREIGN KEY([usuario_id])
REFERENCES [dbo].[usuario] ([id])
GO
ALTER TABLE [dbo].[denuncia] CHECK CONSTRAINT [FK_denuncia_usuario]
GO
ALTER TABLE [dbo].[infraccion]  WITH CHECK ADD  CONSTRAINT [FK_infraccion_categoria_licencia] FOREIGN KEY([imputado_licencia_categoria_id])
REFERENCES [dbo].[categoria_licencia] ([id])
GO
ALTER TABLE [dbo].[infraccion] CHECK CONSTRAINT [FK_infraccion_categoria_licencia]
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
ALTER TABLE [dbo].[infraccion]  WITH CHECK ADD  CONSTRAINT [FK_infraccion_imp_localidad] FOREIGN KEY([imputado_localidad_id])
REFERENCES [dbo].[localidad] ([id])
GO
ALTER TABLE [dbo].[infraccion] CHECK CONSTRAINT [FK_infraccion_imp_localidad]
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
ALTER TABLE [dbo].[infraccion]  WITH CHECK ADD  CONSTRAINT [FK_infraccion_marca_vehiculo] FOREIGN KEY([vehiculo_marca_id])
REFERENCES [dbo].[marca_vehiculo] ([id])
GO
ALTER TABLE [dbo].[infraccion] CHECK CONSTRAINT [FK_infraccion_marca_vehiculo]
GO
ALTER TABLE [dbo].[infraccion]  WITH CHECK ADD  CONSTRAINT [FK_infraccion_municipio] FOREIGN KEY([imputado_licencia_municipio_id])
REFERENCES [dbo].[municipio] ([id])
GO
ALTER TABLE [dbo].[infraccion] CHECK CONSTRAINT [FK_infraccion_municipio]
GO
ALTER TABLE [dbo].[infraccion]  WITH CHECK ADD  CONSTRAINT [FK_infraccion_persona] FOREIGN KEY([persona_id])
REFERENCES [dbo].[persona] ([id])
GO
ALTER TABLE [dbo].[infraccion] CHECK CONSTRAINT [FK_infraccion_persona]
GO
ALTER TABLE [dbo].[infraccion]  WITH CHECK ADD  CONSTRAINT [FK_infraccion_provincia] FOREIGN KEY([imputado_provincia_id])
REFERENCES [dbo].[provincia] ([id])
GO
ALTER TABLE [dbo].[infraccion] CHECK CONSTRAINT [FK_infraccion_provincia]
GO
ALTER TABLE [dbo].[infraccion]  WITH CHECK ADD  CONSTRAINT [FK_infraccion_tipo_vehiculo] FOREIGN KEY([vehiculo_tipo_id])
REFERENCES [dbo].[tipo_vehiculo] ([id])
GO
ALTER TABLE [dbo].[infraccion] CHECK CONSTRAINT [FK_infraccion_tipo_vehiculo]
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
ALTER TABLE [dbo].[remolque]  WITH CHECK ADD  CONSTRAINT [FK_remolque_localidad] FOREIGN KEY([localidad_id])
REFERENCES [dbo].[localidad] ([id])
GO
ALTER TABLE [dbo].[remolque] CHECK CONSTRAINT [FK_remolque_localidad]
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
/****** Object:  StoredProcedure [dbo].[SP_GENERAR_EMAIL_ACARREO]    Script Date: 2/12/2018 12:25:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






-- =============================================
-- author:		<author,,name>
-- create date: <create date,,>
-- description:	<description,,>
-- =============================================
CREATE   procedure [dbo].[SP_GENERAR_EMAIL_ACARREO]
	-- add the parameters for the stored procedure here
	@dominio	 nvarchar(10),
	@remolque_id int
as
begin
	-- set nocount on added to prevent extra result sets from
	-- interfering with select statements.
	set nocount on;

    -- insert statements for procedure here
	select u.email,
	'Información de acarreo realizado al vehículo ' + mv.descripcion + ' ' + v.modelo + ' de dominio ' + v.dominio AS email_asunto,
	'Estimada/o,' + CHAR(13) + CHAR(10) + CHAR(13) + CHAR(10) + 'Nos comunicamos con usted para brindarle información sobre el acarreo de su vehículo ' + mv.descripcion + ' ' + v.modelo + ' de dominio ' + v.dominio + '.' + CHAR(13) + CHAR(10) + 'El mismo se realizó en la siguiente fecha y hora: ' + CONVERT(VARCHAR, r.fecha_hora, 103) + ' en la siguiente locación: ' + l.descripcion + ', debido a la siguiente infracción: ' + r.detalle_infraccion + '. Podrá apresentarse en la playa de acarreo ' + pa.descripcion + ' para realizar el retiro, previo pago de la multa correspondiente.' + CHAR(13) + CHAR(10) + CHAR(13) + CHAR(10) + 'Saludos cordiales.' AS email_cuerpo
      from dbo.vehiculo v with(nolock)
	  inner join dbo.marca_vehiculo mv with(nolock) on v.marca_id = mv.id
	  inner join dbo.cedula c          with(nolock) on v.id = c.vehiculo_id
	  inner join dbo.persona p         with(nolock) on c.persona_id = p.id
	  inner join dbo.usuario u         with(nolock) on p.id = u.persona_id
	  inner join dbo.remolque r        with(nolock) on v.id = r.vehiculo_id and r.id = @remolque_id
	  inner join dbo.playa_acarreo pa  with(nolock) on r.playa_acarreo_id = pa.id
	  inner join dbo.localidad l       with(nolock) on r.localidad_id = l.id
 where v.dominio = @dominio;
end





GO
/****** Object:  StoredProcedure [dbo].[SP_GENERAR_EMAIL_DENUNCIA]    Script Date: 2/12/2018 12:25:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





-- =============================================
-- author:		<author,,name>
-- create date: <create date,,>
-- description:	<description,,>
-- =============================================
CREATE   procedure [dbo].[SP_GENERAR_EMAIL_DENUNCIA]
	-- add the parameters for the stored procedure here
	@denuncia	int
as
begin
	-- set nocount on added to prevent extra result sets from
	-- interfering with select statements.
	set nocount on;

    -- insert statements for procedure here
	select u.email,
	'Denuncia al vehículo de dominio ' + d.dominio + ' ingresada satisfactoriamente al sistema' AS email_asunto,
	'Estimada/o ' + p.nombre + ',' + CHAR(13) + CHAR(10) + CHAR(13) + CHAR(10) + 'Le informamos que la denuncia efectuada en el día y horario: ' + CONVERT(VARCHAR, d.fecha_hora, 103) + CHAR(13) + CHAR(10) + 'La misma se encuentra pendiente de revisión.' + CHAR(13) + CHAR(10) + CHAR(13) + CHAR(10) + 'Detalle : ' + d.observaciones + CHAR(13) + CHAR(10) + CHAR(13) + CHAR(10) + 'Saludos cordiales.' AS email_cuerpo,
	d.ruta_adjunto AS ruta_adjunto
      from dbo.denuncia d with(nolock)
	  inner join dbo.usuario u			with(nolock) on d.usuario_id = u.id
	  inner join dbo.persona p			with(nolock) on u.persona_id = p.id
	  inner join dbo.estado_denuncia ed	with(nolock) on d.estado_id = ed.id
	  inner join dbo.localidad l		with(nolock) on d.localidad_id = l.id
 where d.id = @denuncia;
end





GO
/****** Object:  StoredProcedure [dbo].[SP_LISTADO_ACARREO]    Script Date: 2/12/2018 12:25:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_LISTADO_ACARREO]
AS
BEGIN
	
	SELECT 

      PR.[nro_legajo] AS REMOLCADOR,
      P.[descripcion] AS PLAYA,      
      R.[fecha_hora],
      R.[ubicacion],
      R.[detalle_infraccion],
      R.[dominio],
      L.[descripcion] AS LOCALIDAD
	
   
  FROM [SICOVE].[DBO].[remolque] R WITH(NOLOCK)
	INNER JOIN 	[SICOVE].[DBO].[personal_remolque] PR WITH(NOLOCK) ON
	R.personal_remolque_id = PR.id
	INNER JOIN [SICOVE].[DBO].[playa_acarreo] P WITH(NOLOCK) ON
	R.playa_acarreo_id = P.id
	INNER JOIN [SICOVE].[DBO].[vehiculo] V WITH(NOLOCK) ON
	R.vehiculo_id = V.id
	INNER JOIN [SICOVE].[DBO].[localidad] L WITH(NOLOCK) ON
	R.localidad_id = L.id
	

END


GO
/****** Object:  StoredProcedure [dbo].[SP_LISTADO_AGENTE_TRANSITO]    Script Date: 2/12/2018 12:25:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- AUTHOR:		<AUTHOR,,NAME>
-- CREATE DATE: <CREATE DATE,,>
-- DESCRIPTION:	<DESCRIPTION,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_LISTADO_AGENTE_TRANSITO]
	@NRO_LEGAJO INT = NULL,
	@APELLIDO NVARCHAR(50) = NULL,
	@NOMBRE NVARCHAR(50) = NULL
AS
BEGIN
	
	SELECT 
		PER.[DNI]
		,PER.[APELLIDO]
		,PER.[NOMBRE] 
		,SEX.[DESCRIPCION] AS SEXO
		,PER.[FECHA_NACIMIENTO]
        ,NAC.DESCRIPCION AS NACIONALIDAD
		,PER.[DOMICILIO]
		,PER.[ID]
		,AU.NRO_LEGAJO
   
  FROM [SICOVE].[DBO].[PERSONA] PER WITH(NOLOCK)
  INNER JOIN [SICOVE].[DBO].[USUARIO] USU WITH(NOLOCK) ON
	USU.PERSONA_ID = PER.ID
   INNER JOIN [SICOVE].[DBO].[agente_transito] AU WITH(NOLOCK) ON 
	USU.ID = AU.USUARIO_ID
	INNER JOIN  [SICOVE].[DBO].[SEXO] SEX WITH(NOLOCK) ON 
	SEX.ID = PER.SEXO_ID
  INNER JOIN [SICOVE].[DBO].[NACIONALIDAD] NAC WITH(NOLOCK) ON
	NAC.ID = PER.NACIONALIDAD_ID	

  WHERE
		(@NRO_LEGAJO IS NULL OR AU.NRO_LEGAJO = @NRO_LEGAJO ) 
		OR 
		(@APELLIDO IS NULL OR PER.APELLIDO = @APELLIDO ) 
		OR
		(@NOMBRE IS NULL OR PER.NOMBRE = @NOMBRE)

END





GO
/****** Object:  StoredProcedure [dbo].[SP_LISTADO_CONDUCTORES]    Script Date: 2/12/2018 12:25:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_LISTADO_CONDUCTORES]
	@DNI INT = NULL,
	@APELLIDO NVARCHAR(50) = NULL,
	@NOMBRE NVARCHAR(50) = NULL
AS
BEGIN
	
	SELECT 
		 PER.[DNI]
		,PER.[APELLIDO]
		,PER.[NOMBRE] 
		,SEX.[DESCRIPCION] AS SEXO
		,PER.[FECHA_NACIMIENTO]
        ,NAC.DESCRIPCION AS NACIONALIDAD
		,PER.[DOMICILIO]
		,PER.[ID]

   
  FROM [SICOVE].[DBO].[PERSONA] PER WITH(NOLOCK)
  INNER JOIN [SICOVE].[DBO].[USUARIO] USU WITH(NOLOCK) ON
	USU.PERSONA_ID = PER.ID
	INNER JOIN  [SICOVE].[DBO].[SEXO] SEX WITH(NOLOCK) ON 
	SEX.ID = PER.SEXO_ID
  INNER JOIN [SICOVE].[DBO].[NACIONALIDAD] NAC WITH(NOLOCK) ON
	NAC.ID = PER.NACIONALIDAD_ID	

  WHERE (PER.FLAG_CONDUCTOR = 1)
		AND
		(@DNI IS NULL OR PER.dni = @DNI ) 
		OR 
		(@APELLIDO IS NULL OR PER.APELLIDO = @APELLIDO ) 
		OR
		(@NOMBRE IS NULL OR PER.NOMBRE = @NOMBRE)


END


GO
/****** Object:  StoredProcedure [dbo].[SP_LISTADO_CONTROLES]    Script Date: 2/12/2018 12:25:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_LISTADO_CONTROLES]
--	@AGENTE_TRANSITO INT = NULL,
--  @FECHA_HORA DATE = NULL,
--	@LOCALIDAD_ID INT = NULL
AS
BEGIN
	
	SELECT 
		C.[AGENTE_TRANSITO_ID],
		C.[FECHA_HORA],
		C.[LOCACION],
		C.[OBSERVACIONES],
		PER.[APELLIDO] AS APELLIDO,
		PER.[NOMBRE] AS NOMBRE,
		L.[DESCRIPCION] AS LOCALIDAD,
		P.[DESCRIPCION] AS PROVINCIA,
		M.[DESCRIPCION] AS VEHICULO,
		V.[DOMINIO] AS DOMINIO
		
   
  FROM [SICOVE].[DBO].[control] C WITH(NOLOCK)
	INNER JOIN 	[SICOVE].[DBO].[PERSONA] PER WITH(NOLOCK) ON
	C.PERSONA_ID = PER.ID
	INNER JOIN [SICOVE].[DBO].[USUARIO] USU WITH(NOLOCK) ON
	USU.PERSONA_ID = PER.ID
    INNER JOIN [SICOVE].[DBO].[AGENTE_TRANSITO] AU WITH(NOLOCK) ON 
	C.AGENTE_TRANSITO_ID = AU.USUARIO_ID
	INNER JOIN [SICOVE].[DBO].[PROVINCIA] P WITH(NOLOCK) ON
	PER.PROVINCIA_ID = P.ID
	INNER JOIN [SICOVE].[DBO].[VEHICULO] V WITH(NOLOCK) ON
	C.VEHICULO_ID = V.ID
	INNER JOIN [SICOVE].[DBO].[MARCA_VEHICULO] M WITH (NOLOCK) ON
	V.MARCA_ID = M.ID
	INNER JOIN [SICOVE].[DBO].[LOCALIDAD] L WITH(NOLOCK) ON
	C.LOCALIDAD_ID = L.ID


--  WHERE
--		(@AGENTE_TRANSITO IS NULL OR C.AGENTE_TRANSITO_ID = @AGENTE_TRANSITO ) 
--		OR 
--		(@FECHA_HORA IS NULL OR C.FECHA_HORA= @FECHA_HORA ) 
--		OR
--		(@LOCALIDAD_ID IS NULL OR C.LOCALIDAD_ID = @LOCALIDAD_ID)

END


GO
/****** Object:  StoredProcedure [dbo].[SP_LISTADO_DENUNCIA]    Script Date: 2/12/2018 12:25:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_LISTADO_DENUNCIA]
AS
BEGIN
	
	SELECT 
	   D.id, 
	   U.[persona_id] AS USUARIO,
	   p.nombre + ' ' + p.apellido as 'Nombre',
	   p.dni, 
	   ED.[descripcion] AS ESTADO,
       ISNULL(I.[observaciones],'') AS INFRACCION,
	   D.[dominio],
       --D.[ubicacion],
       D.[fecha_hora],
       D.[observaciones],
       L.[descripcion] AS LOCALIDAD,
	   'CONFIRMAR' as 'CONFIRMAR',
	   'ANULAR' as 'ANULAR' 
   
  FROM [SICOVE].[DBO].[DENUNCIA] D WITH(NOLOCK)
	LEFT JOIN 	[SICOVE].[DBO].[INFRACCION] I WITH(NOLOCK) ON
	D.infraccion_id = I.id
	INNER JOIN [SICOVE].[DBO].[LOCALIDAD] L WITH(NOLOCK) ON
	D.localidad_id = L.id
	INNER JOIN [SICOVE].[DBO].[ESTADO_DENUNCIA] ED WITH(NOLOCK) ON
	D.estado_id = ED.id	
	INNER JOIN [SICOVE].[DBO].[usuario] U WITH(NOLOCK) ON
	D.usuario_id = U.id
	inner join [SICOVE].[DBO].[persona] P WITH(NOLOCK) ON
		u.persona_id = p.id
 order by d.id desc
END
GO
/****** Object:  StoredProcedure [dbo].[SP_LISTADO_PERSONAL_REMOLQUE]    Script Date: 2/12/2018 12:25:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- AUTHOR:		<AUTHOR,,NAME>
-- CREATE DATE: <CREATE DATE,,>
-- DESCRIPTION:	<DESCRIPTION,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_LISTADO_PERSONAL_REMOLQUE]
	@NRO_LEGAJO INT = NULL,
	@APELLIDO NVARCHAR(50) = NULL,
	@NOMBRE NVARCHAR(50) = NULL
AS
BEGIN
	
	SELECT 
		PER.[DNI]
		,PER.[APELLIDO]
		,PER.[NOMBRE] 
		,SEX.[DESCRIPCION] AS SEXO
		,PER.[FECHA_NACIMIENTO]
        ,NAC.DESCRIPCION AS NACIONALIDAD
		,PER.[DOMICILIO]
		,PER.[ID]
		,RE.NRO_LEGAJO
   
  FROM [SICOVE].[DBO].[PERSONA] PER WITH(NOLOCK)
  INNER JOIN [SICOVE].[DBO].[USUARIO] USU WITH(NOLOCK) ON
	USU.PERSONA_ID = PER.ID
   INNER JOIN [SICOVE].[DBO].[PERSONAL_REMOLQUE] RE WITH(NOLOCK) ON 
	USU.ID = RE.USUARIO_ID
	INNER JOIN  [SICOVE].[DBO].[SEXO] SEX WITH(NOLOCK) ON 
	SEX.ID = PER.SEXO_ID
  INNER JOIN [SICOVE].[DBO].[NACIONALIDAD] NAC WITH(NOLOCK) ON
	NAC.ID = PER.NACIONALIDAD_ID 

  WHERE
		(@NRO_LEGAJO IS NULL OR RE.NRO_LEGAJO = @NRO_LEGAJO ) 
		OR 
		(@APELLIDO IS NULL OR PER.APELLIDO = @APELLIDO ) 
		OR
		(@NOMBRE IS NULL OR PER.NOMBRE = @NOMBRE)

END






GO
/****** Object:  StoredProcedure [dbo].[SP_LISTAR_ACARREOS_X_LOCALIDAD]    Script Date: 2/12/2018 12:25:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_LISTAR_ACARREOS_X_LOCALIDAD]
as
begin
	set nocount on;

	select count(*) as CANTIDAD, l.descripcion as LOCALIDAD
	from remolque r join
		 localidad l on r.localidad_id = l.id
	group by l.descripcion;
end
GO
/****** Object:  StoredProcedure [dbo].[SP_LISTAR_CONTROLES_X_LOCALIDAD]    Script Date: 2/12/2018 12:25:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_LISTAR_CONTROLES_X_LOCALIDAD]
as
begin
	set nocount on;

	select count(*) as CANTIDAD, l.descripcion as LOCALIDAD
	from control c join
		 localidad l on c.localidad_id = l.id
	group by l.descripcion;
end

GO
/****** Object:  StoredProcedure [dbo].[SP_LISTAR_DATOS_PERSONA]    Script Date: 2/12/2018 12:25:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- author:		<author,,name>
-- create date: <create date,,>
-- description:	<description,,>
-- =============================================
CREATE procedure [dbo].[SP_LISTAR_DATOS_PERSONA]
	-- add the parameters for the stored procedure here
	@persona int
as
begin
	-- set nocount on added to prevent extra result sets from
	-- interfering with select statements.
	set nocount on;

    -- insert statements for procedure here
	select pe.id AS persona_id,
	       pe.apellido,
	       pe.nombre,
		   s.id AS sexo_id,
	       s.descripcion AS sexo_desc,
		   n.id AS nacionalidad_id,
	       n.descripcion AS nacionalidad_desc,
	       CONVERT(VARCHAR, pe.fecha_nacimiento, 103) as fecha_nacimiento,
	       pe.dni,
		   pe.domicilio,
	       pe.lugar_nacimiento,
		   l.nro_licencia,
		   CONVERT(VARCHAR, l.otorgamiento, 103) as otorgamiento,
		   CONVERT(VARCHAR, l.vencimiento, 103) as vencimiento,
		   cl.id AS licencia_categoria_id,
		   cl.descripcion AS licencia_categoria_desc,
		   l.clases,
		   l.observaciones,
		   c.nro_cedula,
		   v.dominio,
		   ec.id AS cedula_estado_id,
		   ec.descripcion AS cedula_estado_desc,
		   mv.id AS vehiculo_marca_id,
		   mv.descripcion AS vehiculo_marca_desc,
		   v.modelo,
		   tv.id AS vehiculo_tipo_id,
		   tv.descripcion AS vehiculo_tipo_desc,
		   uc.id AS cedula_uso_id,
		   uc.descripcion AS cedula_uso_desc,
		   v.chasis_cuadro,
		   v.motor,
		   CONVERT(VARCHAR, c.vencimiento, 103) AS cedula_vencimiento,
		   v.cilindrada,
		   v.año,
		   c.flag_autorizado,
		   a.id AS aseguradora_id,
		   a.descripcion AS aseguradora_desc,
		   po.nro_poliza,
		   CONVERT(VARCHAR, po.vigencia_desde, 103) as vigencia_desde,
		   CONVERT(VARCHAR, po.vigencia_hasta, 103)as vigencia_hasta
      from dbo.persona pe with(nolock)
		   inner join dbo.sexo s with(nolock) on pe.sexo_id = s.id
		   inner join dbo.nacionalidad n with(nolock) on pe.nacionalidad_id = n.id
		   inner join dbo.licencia l with(nolock) on pe.id = l.persona_id
		   inner join dbo.categoria_licencia cl with(nolock) on l.categoria_id = cl.id
           inner join dbo.cedula c with(nolock) on pe.id = c.persona_id
           inner join dbo.vehiculo v with(nolock) on c.vehiculo_id = v.id
		   inner join dbo.estado_cedula ec with(nolock) on c.estado_id = ec.id
		   inner join dbo.marca_vehiculo mv with(nolock) on v.marca_id = mv.id
		   inner join dbo.tipo_vehiculo tv with(nolock) on v.tipo_id = tv.id
		   inner join dbo.uso_cedula uc with(nolock) on c.uso_id = uc.id
		   inner join dbo.poliza po with(nolock) on v.id = po.vehiculo_id
		   inner join dbo.aseguradora a with(nolock) on po.aseguradora_id = a.id
 where pe.id = @persona;
end





GO
/****** Object:  StoredProcedure [dbo].[SP_LISTAR_DENUNCIAS_X_LOCALIDAD]    Script Date: 2/12/2018 12:25:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_LISTAR_DENUNCIAS_X_LOCALIDAD]
as
begin
	set nocount on;

	select count(*) as CANTIDAD, l.descripcion as LOCALIDAD
	from denuncia d join
		 localidad l on d.localidad_id = l.id
	group by l.descripcion;
end
GO
/****** Object:  StoredProcedure [dbo].[SP_LISTAR_INFRACCIONES_X_CATEGORIA]    Script Date: 2/12/2018 12:25:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_LISTAR_INFRACCIONES_X_CATEGORIA]
as
begin
	set nocount on;

	select count(*) as CANTIDAD, ci.descripcion as LOCALIDAD
	from infraccion i join
		 categoria_infraccion ci on i.codigo_infraccion_id = ci.id
	group by ci.descripcion;
end
GO
/****** Object:  StoredProcedure [dbo].[SP_LISTAR_INFRACCIONES_X_LOCALIDAD]    Script Date: 2/12/2018 12:25:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_LISTAR_INFRACCIONES_X_LOCALIDAD]
as
begin
	set nocount on;

	select count(*) as CANTIDAD, l.descripcion as LOCALIDAD
	from infraccion i join
		 localidad l on i.localidad_id = l.id
	group by l.descripcion;
end
GO
/****** Object:  StoredProcedure [dbo].[SP_LISTAR_PERSONAS_AUTORIZADAS]    Script Date: 2/12/2018 12:25:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- author:		<author,,name>
-- create date: <create date,,>
-- description:	<description,,>
-- =============================================
CREATE procedure [dbo].[SP_LISTAR_PERSONAS_AUTORIZADAS]
	-- add the parameters for the stored procedure here
	@dominio nvarchar(10)
as
begin
	-- set nocount on added to prevent extra result sets from
	-- interfering with select statements.
	set nocount on;

    -- insert statements for procedure here
	select p.id, p.apellido, p.nombre 
      from dbo.persona p with(nolock)
           inner join dbo.cedula c with(nolock)  on p.id = c.persona_id
           inner join dbo.vehiculo v with(nolock) on c.vehiculo_id = v.id
 where v.dominio = @dominio;
end





GO
USE [master]
GO
ALTER DATABASE [sicove] SET  READ_WRITE 
GO
