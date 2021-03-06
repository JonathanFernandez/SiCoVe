USE [sicove]
GO
/****** Object:  StoredProcedure [dbo].[SP_LISTAR_PERSONAS_AUTORIZADAS]    Script Date: 5/12/2018 15:45:58 ******/
DROP PROCEDURE [dbo].[SP_LISTAR_PERSONAS_AUTORIZADAS]
GO
/****** Object:  StoredProcedure [dbo].[SP_LISTAR_INFRACCIONES_X_LOCALIDAD]    Script Date: 5/12/2018 15:45:58 ******/
DROP PROCEDURE [dbo].[SP_LISTAR_INFRACCIONES_X_LOCALIDAD]
GO
/****** Object:  StoredProcedure [dbo].[SP_LISTAR_INFRACCIONES_X_CATEGORIA]    Script Date: 5/12/2018 15:45:58 ******/
DROP PROCEDURE [dbo].[SP_LISTAR_INFRACCIONES_X_CATEGORIA]
GO
/****** Object:  StoredProcedure [dbo].[SP_LISTAR_DENUNCIAS_X_LOCALIDAD]    Script Date: 5/12/2018 15:45:58 ******/
DROP PROCEDURE [dbo].[SP_LISTAR_DENUNCIAS_X_LOCALIDAD]
GO
/****** Object:  StoredProcedure [dbo].[SP_LISTAR_DATOS_PERSONA]    Script Date: 5/12/2018 15:45:58 ******/
DROP PROCEDURE [dbo].[SP_LISTAR_DATOS_PERSONA]
GO
/****** Object:  StoredProcedure [dbo].[SP_LISTAR_CONTROLES_X_LOCALIDAD]    Script Date: 5/12/2018 15:45:58 ******/
DROP PROCEDURE [dbo].[SP_LISTAR_CONTROLES_X_LOCALIDAD]
GO
/****** Object:  StoredProcedure [dbo].[SP_LISTAR_CONTROLES_X_AGENTE]    Script Date: 5/12/2018 15:45:58 ******/
DROP PROCEDURE [dbo].[SP_LISTAR_CONTROLES_X_AGENTE]
GO
/****** Object:  StoredProcedure [dbo].[SP_LISTAR_ACARREOS_X_PLAYA]    Script Date: 5/12/2018 15:45:58 ******/
DROP PROCEDURE [dbo].[SP_LISTAR_ACARREOS_X_PLAYA]
GO
/****** Object:  StoredProcedure [dbo].[SP_LISTAR_ACARREOS_X_LOCALIDAD]    Script Date: 5/12/2018 15:45:58 ******/
DROP PROCEDURE [dbo].[SP_LISTAR_ACARREOS_X_LOCALIDAD]
GO
/****** Object:  StoredProcedure [dbo].[SP_LISTADO_PERSONAL_REMOLQUE]    Script Date: 5/12/2018 15:45:58 ******/
DROP PROCEDURE [dbo].[SP_LISTADO_PERSONAL_REMOLQUE]
GO
/****** Object:  StoredProcedure [dbo].[SP_LISTADO_MIS_DENUNCIA]    Script Date: 5/12/2018 15:45:58 ******/
DROP PROCEDURE [dbo].[SP_LISTADO_MIS_DENUNCIA]
GO
/****** Object:  StoredProcedure [dbo].[SP_LISTADO_DENUNCIA]    Script Date: 5/12/2018 15:45:58 ******/
DROP PROCEDURE [dbo].[SP_LISTADO_DENUNCIA]
GO
/****** Object:  StoredProcedure [dbo].[SP_LISTADO_CONTROLES]    Script Date: 5/12/2018 15:45:58 ******/
DROP PROCEDURE [dbo].[SP_LISTADO_CONTROLES]
GO
/****** Object:  StoredProcedure [dbo].[SP_LISTADO_CONDUCTORES]    Script Date: 5/12/2018 15:45:58 ******/
DROP PROCEDURE [dbo].[SP_LISTADO_CONDUCTORES]
GO
/****** Object:  StoredProcedure [dbo].[SP_LISTADO_AGENTE_TRANSITO]    Script Date: 5/12/2018 15:45:58 ******/
DROP PROCEDURE [dbo].[SP_LISTADO_AGENTE_TRANSITO]
GO
/****** Object:  StoredProcedure [dbo].[SP_LISTADO_ACARREO_X_REMOLCADOR]    Script Date: 5/12/2018 15:45:58 ******/
DROP PROCEDURE [dbo].[SP_LISTADO_ACARREO_X_REMOLCADOR]
GO
/****** Object:  StoredProcedure [dbo].[SP_LISTADO_ACARREO]    Script Date: 5/12/2018 15:45:58 ******/
DROP PROCEDURE [dbo].[SP_LISTADO_ACARREO]
GO
/****** Object:  StoredProcedure [dbo].[SP_GENERAR_EMAIL_DENUNCIA]    Script Date: 5/12/2018 15:45:58 ******/
DROP PROCEDURE [dbo].[SP_GENERAR_EMAIL_DENUNCIA]
GO
/****** Object:  StoredProcedure [dbo].[SP_GENERAR_EMAIL_ACARREO]    Script Date: 5/12/2018 15:45:58 ******/
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
ALTER TABLE [dbo].[provincia] DROP CONSTRAINT [FK_provincia_provincia]
GO
ALTER TABLE [dbo].[poliza] DROP CONSTRAINT [FK_poliza_vehiculo]
GO
ALTER TABLE [dbo].[poliza] DROP CONSTRAINT [FK_poliza_aseguradora]
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
/****** Object:  Index [IX_localidad]    Script Date: 5/12/2018 15:45:58 ******/
DROP INDEX [IX_localidad] ON [dbo].[localidad]
GO
/****** Object:  Table [dbo].[vehiculo]    Script Date: 5/12/2018 15:45:58 ******/
DROP TABLE [dbo].[vehiculo]
GO
/****** Object:  Table [dbo].[usuario]    Script Date: 5/12/2018 15:45:58 ******/
DROP TABLE [dbo].[usuario]
GO
/****** Object:  Table [dbo].[uso_cedula]    Script Date: 5/12/2018 15:45:58 ******/
DROP TABLE [dbo].[uso_cedula]
GO
/****** Object:  Table [dbo].[tipo_vehiculo]    Script Date: 5/12/2018 15:45:58 ******/
DROP TABLE [dbo].[tipo_vehiculo]
GO
/****** Object:  Table [dbo].[sexo]    Script Date: 5/12/2018 15:45:58 ******/
DROP TABLE [dbo].[sexo]
GO
/****** Object:  Table [dbo].[remolque]    Script Date: 5/12/2018 15:45:58 ******/
DROP TABLE [dbo].[remolque]
GO
/****** Object:  Table [dbo].[provincia]    Script Date: 5/12/2018 15:45:58 ******/
DROP TABLE [dbo].[provincia]
GO
/****** Object:  Table [dbo].[poliza]    Script Date: 5/12/2018 15:45:58 ******/
DROP TABLE [dbo].[poliza]
GO
/****** Object:  Table [dbo].[playa_acarreo]    Script Date: 5/12/2018 15:45:58 ******/
DROP TABLE [dbo].[playa_acarreo]
GO
/****** Object:  Table [dbo].[personal_remolque]    Script Date: 5/12/2018 15:45:58 ******/
DROP TABLE [dbo].[personal_remolque]
GO
/****** Object:  Table [dbo].[persona]    Script Date: 5/12/2018 15:45:58 ******/
DROP TABLE [dbo].[persona]
GO
/****** Object:  Table [dbo].[perfil_usuario]    Script Date: 5/12/2018 15:45:58 ******/
DROP TABLE [dbo].[perfil_usuario]
GO
/****** Object:  Table [dbo].[nacionalidad]    Script Date: 5/12/2018 15:45:58 ******/
DROP TABLE [dbo].[nacionalidad]
GO
/****** Object:  Table [dbo].[municipio]    Script Date: 5/12/2018 15:45:58 ******/
DROP TABLE [dbo].[municipio]
GO
/****** Object:  Table [dbo].[marca_vehiculo]    Script Date: 5/12/2018 15:45:58 ******/
DROP TABLE [dbo].[marca_vehiculo]
GO
/****** Object:  Table [dbo].[localidad]    Script Date: 5/12/2018 15:45:58 ******/
DROP TABLE [dbo].[localidad]
GO
/****** Object:  Table [dbo].[licencia]    Script Date: 5/12/2018 15:45:58 ******/
DROP TABLE [dbo].[licencia]
GO
/****** Object:  Table [dbo].[infraccion]    Script Date: 5/12/2018 15:45:58 ******/
DROP TABLE [dbo].[infraccion]
GO
/****** Object:  Table [dbo].[estado_denuncia]    Script Date: 5/12/2018 15:45:58 ******/
DROP TABLE [dbo].[estado_denuncia]
GO
/****** Object:  Table [dbo].[estado_cedula]    Script Date: 5/12/2018 15:45:58 ******/
DROP TABLE [dbo].[estado_cedula]
GO
/****** Object:  Table [dbo].[denuncia]    Script Date: 5/12/2018 15:45:58 ******/
DROP TABLE [dbo].[denuncia]
GO
/****** Object:  Table [dbo].[control]    Script Date: 5/12/2018 15:45:58 ******/
DROP TABLE [dbo].[control]
GO
/****** Object:  Table [dbo].[codigo_infraccion]    Script Date: 5/12/2018 15:45:58 ******/
DROP TABLE [dbo].[codigo_infraccion]
GO
/****** Object:  Table [dbo].[cedula]    Script Date: 5/12/2018 15:45:58 ******/
DROP TABLE [dbo].[cedula]
GO
/****** Object:  Table [dbo].[categoria_licencia]    Script Date: 5/12/2018 15:45:58 ******/
DROP TABLE [dbo].[categoria_licencia]
GO
/****** Object:  Table [dbo].[categoria_infraccion]    Script Date: 5/12/2018 15:45:58 ******/
DROP TABLE [dbo].[categoria_infraccion]
GO
/****** Object:  Table [dbo].[aseguradora]    Script Date: 5/12/2018 15:45:58 ******/
DROP TABLE [dbo].[aseguradora]
GO
/****** Object:  Table [dbo].[agente_transito]    Script Date: 5/12/2018 15:45:58 ******/
DROP TABLE [dbo].[agente_transito]
GO
/****** Object:  Schema [IIS APPPOOL\DefaultAppPool]    Script Date: 5/12/2018 15:45:58 ******/
DROP SCHEMA [IIS APPPOOL\DefaultAppPool]
GO
/****** Object:  User [IIS APPPOOL\DefaultAppPool]    Script Date: 5/12/2018 15:45:58 ******/
DROP USER [IIS APPPOOL\DefaultAppPool]
GO
USE [master]
GO
/****** Object:  Database [sicove]    Script Date: 5/12/2018 15:45:58 ******/
DROP DATABASE [sicove]
GO
/****** Object:  Database [sicove]    Script Date: 5/12/2018 15:45:58 ******/
CREATE DATABASE [sicove]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'sicove', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\sicove.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'sicove_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\sicove_log.ldf' , SIZE = 1600KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
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
/****** Object:  User [IIS APPPOOL\DefaultAppPool]    Script Date: 5/12/2018 15:45:58 ******/
CREATE USER [IIS APPPOOL\DefaultAppPool] FOR LOGIN [IIS APPPOOL\DefaultAppPool] WITH DEFAULT_SCHEMA=[IIS APPPOOL\DefaultAppPool]
GO
/****** Object:  Schema [IIS APPPOOL\DefaultAppPool]    Script Date: 5/12/2018 15:45:58 ******/
CREATE SCHEMA [IIS APPPOOL\DefaultAppPool]
GO
/****** Object:  Table [dbo].[agente_transito]    Script Date: 5/12/2018 15:45:58 ******/
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
/****** Object:  Table [dbo].[aseguradora]    Script Date: 5/12/2018 15:45:58 ******/
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
/****** Object:  Table [dbo].[categoria_infraccion]    Script Date: 5/12/2018 15:45:58 ******/
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
/****** Object:  Table [dbo].[categoria_licencia]    Script Date: 5/12/2018 15:45:58 ******/
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
/****** Object:  Table [dbo].[cedula]    Script Date: 5/12/2018 15:45:58 ******/
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
	[nom_titular] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_cedula] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[codigo_infraccion]    Script Date: 5/12/2018 15:45:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[codigo_infraccion](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codigo_infraccion] [nvarchar](4) NULL,
	[categoria_id] [int] NOT NULL,
	[descripcion] [nvarchar](300) NULL,
 CONSTRAINT [PK_codigo_infraccion] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[control]    Script Date: 5/12/2018 15:45:58 ******/
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
/****** Object:  Table [dbo].[denuncia]    Script Date: 5/12/2018 15:45:58 ******/
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
/****** Object:  Table [dbo].[estado_cedula]    Script Date: 5/12/2018 15:45:58 ******/
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
/****** Object:  Table [dbo].[estado_denuncia]    Script Date: 5/12/2018 15:45:58 ******/
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
/****** Object:  Table [dbo].[infraccion]    Script Date: 5/12/2018 15:45:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[infraccion](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[agente_transito_id] [int] NULL,
	[vehiculo_id] [int] NULL,
	[licencia_id] [int] NULL,
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
/****** Object:  Table [dbo].[licencia]    Script Date: 5/12/2018 15:45:58 ******/
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
/****** Object:  Table [dbo].[localidad]    Script Date: 5/12/2018 15:45:58 ******/
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
/****** Object:  Table [dbo].[marca_vehiculo]    Script Date: 5/12/2018 15:45:58 ******/
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
/****** Object:  Table [dbo].[municipio]    Script Date: 5/12/2018 15:45:58 ******/
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
/****** Object:  Table [dbo].[nacionalidad]    Script Date: 5/12/2018 15:45:58 ******/
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
/****** Object:  Table [dbo].[perfil_usuario]    Script Date: 5/12/2018 15:45:58 ******/
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
/****** Object:  Table [dbo].[persona]    Script Date: 5/12/2018 15:45:58 ******/
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
/****** Object:  Table [dbo].[personal_remolque]    Script Date: 5/12/2018 15:45:58 ******/
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
/****** Object:  Table [dbo].[playa_acarreo]    Script Date: 5/12/2018 15:45:58 ******/
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
/****** Object:  Table [dbo].[poliza]    Script Date: 5/12/2018 15:45:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[poliza](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nro_poliza] [nvarchar](50) NULL,
	[aseguradora_id] [int] NOT NULL,
	[nom_asegurado] [nvarchar](100) NOT NULL,
	[vehiculo_id] [int] NOT NULL,
	[vigencia_desde] [date] NULL,
	[vigencia_hasta] [date] NULL,
 CONSTRAINT [PK_poliza] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[provincia]    Script Date: 5/12/2018 15:45:58 ******/
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
/****** Object:  Table [dbo].[remolque]    Script Date: 5/12/2018 15:45:58 ******/
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
/****** Object:  Table [dbo].[sexo]    Script Date: 5/12/2018 15:45:58 ******/
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
/****** Object:  Table [dbo].[tipo_vehiculo]    Script Date: 5/12/2018 15:45:58 ******/
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
/****** Object:  Table [dbo].[uso_cedula]    Script Date: 5/12/2018 15:45:58 ******/
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
/****** Object:  Table [dbo].[usuario]    Script Date: 5/12/2018 15:45:58 ******/
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
/****** Object:  Table [dbo].[vehiculo]    Script Date: 5/12/2018 15:45:58 ******/
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

INSERT [dbo].[agente_transito] ([id], [usuario_id], [nro_legajo]) VALUES (1, 3, 12358957)
INSERT [dbo].[agente_transito] ([id], [usuario_id], [nro_legajo]) VALUES (2, 8, 58967416)
INSERT [dbo].[agente_transito] ([id], [usuario_id], [nro_legajo]) VALUES (3, 9, 98751354)
INSERT [dbo].[agente_transito] ([id], [usuario_id], [nro_legajo]) VALUES (4, 10, 89201925)
INSERT [dbo].[agente_transito] ([id], [usuario_id], [nro_legajo]) VALUES (5, 11, 90108734)
SET IDENTITY_INSERT [dbo].[agente_transito] OFF
SET IDENTITY_INSERT [dbo].[aseguradora] ON 

INSERT [dbo].[aseguradora] ([id], [descripcion]) VALUES (1, N'ATM')
INSERT [dbo].[aseguradora] ([id], [descripcion]) VALUES (2, N'La Caja')
INSERT [dbo].[aseguradora] ([id], [descripcion]) VALUES (3, N'La Nueva')
INSERT [dbo].[aseguradora] ([id], [descripcion]) VALUES (4, N'MAPFRE')
INSERT [dbo].[aseguradora] ([id], [descripcion]) VALUES (5, N'Nación Seguros')
INSERT [dbo].[aseguradora] ([id], [descripcion]) VALUES (6, N'Triunfo Seguros')
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
INSERT [dbo].[categoria_infraccion] ([id], [descripcion]) VALUES (14, N'Residuos')
INSERT [dbo].[categoria_infraccion] ([id], [descripcion]) VALUES (15, N'Senda peatonal/Filas escolar')
INSERT [dbo].[categoria_infraccion] ([id], [descripcion]) VALUES (16, N'Taxis')
INSERT [dbo].[categoria_infraccion] ([id], [descripcion]) VALUES (17, N'Empresa radiotaxi')
INSERT [dbo].[categoria_infraccion] ([id], [descripcion]) VALUES (18, N'Transporte de pasajeros, escolares y carga')
INSERT [dbo].[categoria_infraccion] ([id], [descripcion]) VALUES (19, N'Transporte sustancias')
SET IDENTITY_INSERT [dbo].[categoria_infraccion] OFF
INSERT [dbo].[categoria_licencia] ([id], [descripcion]) VALUES (1, N'Profesional')
INSERT [dbo].[categoria_licencia] ([id], [descripcion]) VALUES (2, N'Particular')
SET IDENTITY_INSERT [dbo].[cedula] ON 

INSERT [dbo].[cedula] ([id], [nro_cedula], [persona_id], [uso_id], [estado_id], [vehiculo_id], [vencimiento], [flag_autorizado], [nom_titular]) VALUES (2, N'32689701', 2, 1, 1, 1, CAST(N'2019-09-09' AS Date), 0, N'Ríos, Fabian')
INSERT [dbo].[cedula] ([id], [nro_cedula], [persona_id], [uso_id], [estado_id], [vehiculo_id], [vencimiento], [flag_autorizado], [nom_titular]) VALUES (3, N'39969701', 5, 1, 1, 2, CAST(N'2019-04-09' AS Date), 0, N'Klodi, Silvia')
INSERT [dbo].[cedula] ([id], [nro_cedula], [persona_id], [uso_id], [estado_id], [vehiculo_id], [vencimiento], [flag_autorizado], [nom_titular]) VALUES (4, N'32684541', 7, 1, 1, 3, CAST(N'2019-09-09' AS Date), 0, N'Santa Cruz, David')
INSERT [dbo].[cedula] ([id], [nro_cedula], [persona_id], [uso_id], [estado_id], [vehiculo_id], [vencimiento], [flag_autorizado], [nom_titular]) VALUES (5, N'32609304', 8, 1, 1, 6, CAST(N'2019-06-19' AS Date), 0, N'Zambrano, Emiliano')
SET IDENTITY_INSERT [dbo].[cedula] OFF
SET IDENTITY_INSERT [dbo].[codigo_infraccion] ON 

INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (1, N'7063', 1, N'7063 - Acompañante de moto supera límite de alcohol en sangre')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (2, N'7062', 1, N'7062 - Negarse al control de alcoholemia/estupefacientes/otra sustancia (Conductor de vehìculo/moto o acompañante)')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (3, N'6187', 1, N'6187 - Negarse al control de alcoholemia/estupefacientes/otra sustancia (Taxi/tte. Escolar pasajeros/remises - en servicio)')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (4, N'8910', 2, N'8910 - Cruzar barrera FFCC baja (Particulares)')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (5, N'8911', 2, N'8911 - Cruzar barrera FFCC baja (Tte. Escolar/pasajeros/carga)')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (6, N'6660', 2, N'6660 - Evadir pago de estación de peaje en autopista')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (7, N'6762', 3, N'6762 - Circular en moto por ciclovía/a contramano en contracarril')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (8, N'6560', 3, N'6560 - Circular en sentido contrario (en vías doble circulación)')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (9, N'6760', 3, N'6760 - Circular por arteria peatonal/zona carril (prohibido, exclusivo o preferencial), o excede límite (dimensión/peso/potencia) permitida para la vía transitada')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (10, N'6761', 3, N'6761 - Circular por carril del STR utilizado por el Metrobus')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (11, N'6167', 3, N'6167 - Obstruir vía carril exclusivo/Preferencial/Metrobus/Premetro')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (12, N'6680', 3, N'6680 - Obstruir vía transversal/Ciclovía/Vereda/Rampa para discapacitados/Estacionamiento reservado')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (13, N'6490', 4, N'6490 - Manipular celular/Utilizar auriculares/reproductor de video')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (14, N'6492', 4, N'6492 - Redactar o enviar mensajes de texto')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (15, N'6540', 5, N'6540 - Circular vehículo a contramano')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (16, N'6640', 5, N'6640 - Circular marcha atrás en forma indebida y sin justificación')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (17, N'6500', 5, N'6500 - Girar en "U" o hacia transversal en forma antirreglamentaria')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (18, N'6820', 5, N'6820 - No respetar prioridad de paso en bocacalle/cartel "PARE"')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (19, N'6580', 5, N'6580 - No respetar carriles/No advertir maniobras/Conducta temeraria, maliciosa o imprudente')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (20, N'6191', 6, N'6191 - No contar con seguro obligatorio vigente')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (21, N'6161', 6, N'6161 - No exhibir cédula verde o cédula azul')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (22, N'6190', 6, N'6190 - No portar cobertura, póliza o tarjeta seguro vigente')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (23, N'7064', 6, N'7064 - Utilizar cartel/credencial/patente/documentación acreditada franquicia de tránsito/estacionamiento inexistente/antirreglamentaria, o no aplicable a persona que lo utiliza/exhibe')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (24, N'6960', 7, N'6960 - Enseñar a conducir vehículo en lugar no habilitado (Academia)')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (25, N'5950', 7, N'5950 - Enseñar a conducir vehículo en lugar no habilitado (Particular)')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (26, N'5920', 8, N'5920 - Estacionamiento tarifado/medido vencido')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (27, N'6910', 8, N'6910 - Estacionar lugar reservado (servicios de emergencia/parada de transporte de pasajeros/vehículo de persona discapacitada/rampa discapacitados/entrada de vehículo/ciclovía/carril exclusivo/corredor Metrobus/zona Micro-Macrocentro)')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (28, N'6935', 8, N'6935 - Estacionamiento en arteria peatonal, sobre acera o parte de ella')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (29, N'6930', 8, N'6930 - Estacionamiento en lugar prohibido o en forma antirreglamentaria')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (30, N'6890', 8, N'6890 - Carga/descarga fuera de hora, o en lugar prohibido (Responsable vehículo)')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (31, N'6185', 8, N'6185 - Carga/descarga fuera de hora, o en lugar prohibido (Responsable/propietario comercio)')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (32, N'7045', 8, N'7045 - Vehículo limita/obstruye estacionamiento y/o circulación o colocación transitoria de un elemento/dispositivo')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (33, N'6980', 9, N'6980 - No respetar indicaciones de agente que dirige el tránsito')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (34, N'6130', 10, N'6130 - Conducir sin anteojos/lentes de contacto indicado en licencia')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (35, N'6105', 10, N'6105 - Falta de licencia y/o documentación habilitante de chofer y/o esté inhabilitado para conducir (Transporte público)')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (36, N'6122', 10, N'6122 - Licencia/documentación habilitante vencida (Transporte público)')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (37, N'6120', 10, N'6120 - Licencia vencida o caduca')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (38, N'6100', 10, N'6100 - No portar licencia')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (39, N'6140', 10, N'6140 - No portar licencia que habilita conducir categoría del vehículo')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (40, N'6682', 10, N'6682 - No poseer licencia')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (41, N'6110', 10, N'6110 - Permitir conducir sin licencia/documentación habilitante de chofer/inhabilitado para conducir (Transporte público)')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (42, N'6121', 10, N'6121 - Permitir conducir con licencia o documentación vencida (Empresa transporte, titular, mandataria o responsable)')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (43, N'6150', 10, N'6150 - Permitir conducir vehículo sin licencia que habilita categoría del vehículo (titular o empresa)')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (44, N'7065', 11, N'7065 - Circular sin luces encendidas en arteria obligatoria/Utilizar luces altas cuando no está permitido')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (45, N'7066', 11, N'7066 - Utilizar luces no reglamentarias o que induzcan a error')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (46, N'7050', 12, N'7050 - Violar luz roja')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (47, N'6185', 12, N'6185 - Violar luz roja (Taxi/Transporte escolar o de pasajeros/Remise)')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (48, N'7021', 13, N'7021 - Circular en bicicleta asido a otro vehículo o apareado detrás/No usar casco/Falta espejo, luces/Transportar persona en diseño vehículo no apto/No respetar señalización vial')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (49, N'7010', 13, N'7010 - Circular sin antiparras (Moto/motoneta/ciclomotor sin parabrisas)')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (50, N'7001', 13, N'7001 - Circular en moto asido a otro vehículo o apareado detrás/No usar casco/Transportar persona en diseño vehículo no apto/Transportar menores de 16 años')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (51, N'6350', 14, N'6350 - Usar en forma indebida la bocina')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (52, N'6310', 14, N'6310 - Verter combustible/agua servida/arrojar objeto o residuo hacia el exterior del vehículo')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (53, N'6720', 15, N'6720 - Interrumpir filas escolares')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (54, N'6740', 15, N'6740 - No respetar senda peatonal o prioridad de paso del peatón')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (55, N'8919', 16, N'8919 - Asignar viaje de radiotaxi sin autorización')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (56, N'8920', 16, N'8920 - Asignar viaje de radiotaxi sin licencia de taxi (persona)')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (57, N'8921', 16, N'8921 - Asignar viaje de radiotaxi sin licencia de taxi (titular/chofer/responsable)')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (58, N'8915', 16, N'8915 - Asignar viaje por vía telefónica, mail, otros y no por central radiotaxi')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (59, N'6933', 16, N'6933 - Cobrar distinta cantidad de fichas o adicional a discapacitado (Empresa/responsable/chofer)')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (60, N'6876', 16, N'6876 - Cobrar por sobre/debajo valor tarifa que fija GCBA')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (61, N'8938', 16, N'8938 - Emplear equipo de comunicación no homologado (Titular/responsable)')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (62, N'8935', 16, N'8935 - Exhibir cartel de radiotaxi sin alta empresa (Empleado/responsable/chofer)')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (63, N'8934', 16, N'8934 - Exhibir cartel de radiotaxi sin equipo de radio (Empleado/responsable/chofer)')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (64, N'6872', 16, N'6872 - Incumplir obligacion sec. comu./Autorización anual vencida/No cumplir requisitos sobre norma vigente')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (65, N'6182', 16, N'6182 - Negarse a detener mecanismo/dispositivo electrónico: Publicidad interior')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (66, N'6181', 16, N'6181 - Negarse sin justificación a transportar pasajero que solicita servicio')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (67, N'6183', 16, N'6183 - No portar ficha de identificación de titular de licencia/chofer o cartel con valor de tarifa')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (68, N'7552', 16, N'7552 - Poseer dispositivo mecánico/electrónico que incrementa tarifa')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (69, N'6571', 16, N'6571 - Prestar servicio sin habilitación/Con identificación de taxi sin poseer licencia/Realizar actividad clandestina (Titular/responsable/mandatario)')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (70, N'8940', 16, N'8940 - Prestar servicio con autorización radioeléctrica anual vencida por más de 30 días (Titular/responsable)')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (71, N'8936', 16, N'8936 - Prestar servicio con baja de empresa y con señal radiotaxi (Titular/responsable)')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (72, N'8937', 16, N'8937 - Prestar servicio de radiotaxi sin estar abonado a empresa habilitada (Titular/responsable/chofer)')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (73, N'8939', 16, N'8939 - Prestar servicio de radiotaxi sin verificar/registrar en autoridad la instalación/funcionamiento de equipo de radio')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (74, N'6874', 16, N'6874 - Radiotaxi con IRA vencido y/o está de baja y no elimina señales que lo identificaban')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (75, N'6873', 16, N'6873 - Radiotaxi no abonado a estación central o difiere de estación central a la abonada')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (76, N'6875', 16, N'6875 - Realizar promoción/cobrar tarifa no autorizada (Titular/empresa/mandatario)')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (77, N'8928', 17, N'8928 - Empresa RT o trabajador que no cumple registración s/ley laboral')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (78, N'8932', 17, N'8932 - Empresa RT tiene abonados sin tener equipo de radio')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (79, N'8924', 17, N'8924 - Empresa RT incumple autorización funcionamiento')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (80, N'8917', 17, N'8917 - Empresa RT con habilitación vencida (entre 181 y 360 días)')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (81, N'8916', 17, N'8916 - Empresa RT con habilitación vencida (entre 30 y 180 días)')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (82, N'8918', 17, N'8918 - Empresa RT con habilitación vencida (más de 360 días)')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (83, N'8929', 17, N'8929 - Empresa RT no comunica cambio de localización de estación central')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (84, N'8925', 17, N'8925 - Empresa RT no comunica detalle de abonados')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (85, N'8927', 17, N'8927 - Empresa RT no cumplimenta previsión sobre código T y T')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (86, N'8930', 17, N'8930 - Empresa RT no opera las 24 horas sobre código T y T')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (87, N'8931', 17, N'8931 - Empresa RT opera con más de una estación central')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (88, N'8922', 17, N'8922 - Empresa RT presta servicio a radiotaxi que no cumple norma legal')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (89, N'8926', 17, N'8926 - Empresa RT presta servicio con menor cantidad de abonados sobre código T y T')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (90, N'8923', 17, N'8923 - Empresa RT realiza promoción no autorizada')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (91, N'8914', 17, N'8914 - Empresa RT sin habilitación')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (92, N'6169', 18, N'6169 - Dañar/alterar/retirar dispositivo de alcoholemia (Conductor vehículo de tte. escolares)')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (93, N'6168', 18, N'6168 - Dañar/alterar/retirar dispositivo de alcoholemia (Titular o responsable vehículo de transporte escolares)')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (94, N'6184', 18, N'6184 - Exceder peso máximo establecido por eje (Transporte de carga)')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (95, N'6870', 18, N'6870 - No cumplir norma regula requisito vehículo habilitado para prestar servicio o en infracción a habilitación concedida')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (96, N'7030', 18, N'7030 - No cumplir norma regula servicio (Transporte privado de pasajeros o alquiler de autos sin conductor)')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (97, N'6840', 18, N'6840 - NO cumplir norma uso radio/reproducir sonido o publicidad interior o exterior/trato al pasajero/prohibido fumar (Tte. pasajeros)')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (98, N'6850', 18, N'6850 - No cumplir horario de servicio/vestimenta (Tte. pasajeros)')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (99, N'6877', 18, N'6877 - No poseer habilitación para prestar servicio (Responsable, vehículo tte. de carga o pasajeros)')
GO
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (100, N'6820', 18, N'6820 - No respetar parada de ascenso o descenso/no arrimar a acera/circular con puerta abierta')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (101, N'6830', 18, N'6830 - Permitir ocupar lugar no destinado a viajar en ellos')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (102, N'6880', 18, N'6880 - Transporta carga sin persmiso sobre peso/dimensión, tener permiso y violar límite autorización/carga descubierta o no asegurada (Tte. de carga)')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (103, N'6881', 18, N'6881 - Transporta carga sin persmiso sobre peso/dimensión, tener permiso y violar límite autorización/carga descubierta o no asegurada (Tte. de explosivos/objetos inflamables, volátiles o insalubres/animales)')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (104, N'6180', 19, N'6180 - No exhibir documentación para transporte de sustancias peligrosas (Tte. de carga)')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (105, N'6166', 19, N'6166 - Transportar sustancias alimenticias sin habilitación')
INSERT [dbo].[codigo_infraccion] ([id], [codigo_infraccion], [categoria_id], [descripcion]) VALUES (106, N'6670', 19, N'6670 - Transportar sustancias peligrosas infringiendo norma regulatoria de actividad')
SET IDENTITY_INSERT [dbo].[codigo_infraccion] OFF
SET IDENTITY_INSERT [dbo].[control] ON 

INSERT [dbo].[control] ([id], [agente_transito_id], [vehiculo_id], [persona_id], [fecha_hora], [provincia_id], [localidad_id], [locacion], [observaciones]) VALUES (2, 1, 1, 2, CAST(N'2018-11-29 09:00:00.000' AS DateTime), 1, 6, N'Moreno', NULL)
INSERT [dbo].[control] ([id], [agente_transito_id], [vehiculo_id], [persona_id], [fecha_hora], [provincia_id], [localidad_id], [locacion], [observaciones]) VALUES (3, 1, 2, 5, CAST(N'2018-12-04 00:00:00.000' AS DateTime), 1, 4, N'Luján', NULL)
INSERT [dbo].[control] ([id], [agente_transito_id], [vehiculo_id], [persona_id], [fecha_hora], [provincia_id], [localidad_id], [locacion], [observaciones]) VALUES (4, 1, 1, 2, CAST(N'2018-11-29 09:00:00.000' AS DateTime), 1, 6, N'Moreno', NULL)
INSERT [dbo].[control] ([id], [agente_transito_id], [vehiculo_id], [persona_id], [fecha_hora], [provincia_id], [localidad_id], [locacion], [observaciones]) VALUES (5, 3, 2, 11, CAST(N'2018-12-04 00:00:00.000' AS DateTime), 1, 4, N'Haedo', NULL)
INSERT [dbo].[control] ([id], [agente_transito_id], [vehiculo_id], [persona_id], [fecha_hora], [provincia_id], [localidad_id], [locacion], [observaciones]) VALUES (6, 2, 1, 12, CAST(N'2018-11-29 09:00:00.000' AS DateTime), 1, 6, N'Moreno', NULL)
INSERT [dbo].[control] ([id], [agente_transito_id], [vehiculo_id], [persona_id], [fecha_hora], [provincia_id], [localidad_id], [locacion], [observaciones]) VALUES (7, 4, 2, 13, CAST(N'2018-12-04 00:00:00.000' AS DateTime), 1, 4, N'Castelar', NULL)
INSERT [dbo].[control] ([id], [agente_transito_id], [vehiculo_id], [persona_id], [fecha_hora], [provincia_id], [localidad_id], [locacion], [observaciones]) VALUES (8, 1, 1, 14, CAST(N'2018-11-29 09:00:00.000' AS DateTime), 1, 6, N'Moreno', NULL)
INSERT [dbo].[control] ([id], [agente_transito_id], [vehiculo_id], [persona_id], [fecha_hora], [provincia_id], [localidad_id], [locacion], [observaciones]) VALUES (9, 3, 2, 6, CAST(N'2018-12-04 00:00:00.000' AS DateTime), 1, 4, N'Haedo', NULL)
INSERT [dbo].[control] ([id], [agente_transito_id], [vehiculo_id], [persona_id], [fecha_hora], [provincia_id], [localidad_id], [locacion], [observaciones]) VALUES (10, 2, 1, 2, CAST(N'2018-11-29 09:00:00.000' AS DateTime), 1, 6, N'Moreno', NULL)
INSERT [dbo].[control] ([id], [agente_transito_id], [vehiculo_id], [persona_id], [fecha_hora], [provincia_id], [localidad_id], [locacion], [observaciones]) VALUES (11, 3, 2, 5, CAST(N'2018-12-04 00:00:00.000' AS DateTime), 1, 4, N'Luján', NULL)
INSERT [dbo].[control] ([id], [agente_transito_id], [vehiculo_id], [persona_id], [fecha_hora], [provincia_id], [localidad_id], [locacion], [observaciones]) VALUES (12, 1, 1, 8, CAST(N'2018-11-29 09:00:00.000' AS DateTime), 1, 6, N'Moreno', NULL)
INSERT [dbo].[control] ([id], [agente_transito_id], [vehiculo_id], [persona_id], [fecha_hora], [provincia_id], [localidad_id], [locacion], [observaciones]) VALUES (13, 3, 2, 5, CAST(N'2018-12-05 00:00:00.000' AS DateTime), 1, 4, N'Haedo', NULL)
INSERT [dbo].[control] ([id], [agente_transito_id], [vehiculo_id], [persona_id], [fecha_hora], [provincia_id], [localidad_id], [locacion], [observaciones]) VALUES (14, 2, 1, 4, CAST(N'2018-11-29 09:00:00.000' AS DateTime), 1, 6, N'Moreno', NULL)
INSERT [dbo].[control] ([id], [agente_transito_id], [vehiculo_id], [persona_id], [fecha_hora], [provincia_id], [localidad_id], [locacion], [observaciones]) VALUES (15, 1, 2, 5, CAST(N'2018-12-04 00:00:00.000' AS DateTime), 1, 4, N'Luján', NULL)
INSERT [dbo].[control] ([id], [agente_transito_id], [vehiculo_id], [persona_id], [fecha_hora], [provincia_id], [localidad_id], [locacion], [observaciones]) VALUES (16, 1, 1, 10, CAST(N'2018-12-04 09:00:00.000' AS DateTime), 1, 6, N'Moreno', NULL)
INSERT [dbo].[control] ([id], [agente_transito_id], [vehiculo_id], [persona_id], [fecha_hora], [provincia_id], [localidad_id], [locacion], [observaciones]) VALUES (17, 3, 2, 5, CAST(N'2018-12-04 00:00:00.000' AS DateTime), 1, 4, N'Haedo', NULL)
INSERT [dbo].[control] ([id], [agente_transito_id], [vehiculo_id], [persona_id], [fecha_hora], [provincia_id], [localidad_id], [locacion], [observaciones]) VALUES (18, 1, 2, 5, CAST(N'2018-12-05 15:28:00.000' AS DateTime), 1, 1, N'Calle 1', N'Ninguna')
SET IDENTITY_INSERT [dbo].[control] OFF
SET IDENTITY_INSERT [dbo].[denuncia] ON 

INSERT [dbo].[denuncia] ([id], [usuario_id], [estado_id], [infraccion_id], [dominio], [ubicacion], [adjunto], [ruta_adjunto], [fecha_hora], [observaciones], [localidad_id]) VALUES (3, 5, 1, 1, N'PAT854', N'Haedo', NULL, NULL, CAST(N'2018-12-05 11:07:11.000' AS DateTime), N'Estacionamiento en doble fila', 4)
INSERT [dbo].[denuncia] ([id], [usuario_id], [estado_id], [infraccion_id], [dominio], [ubicacion], [adjunto], [ruta_adjunto], [fecha_hora], [observaciones], [localidad_id]) VALUES (4, 6, 1, NULL, N'MLJ854', N'Castelar', NULL, NULL, CAST(N'2018-11-30 00:00:00.000' AS DateTime), N'Estacionamiento en doble fila', 6)
INSERT [dbo].[denuncia] ([id], [usuario_id], [estado_id], [infraccion_id], [dominio], [ubicacion], [adjunto], [ruta_adjunto], [fecha_hora], [observaciones], [localidad_id]) VALUES (5, 7, 1, 1, N'PAT854', N'La Matanza', NULL, NULL, CAST(N'2018-12-03 11:07:11.000' AS DateTime), N'Obstrucción de estacionamiento', 3)
INSERT [dbo].[denuncia] ([id], [usuario_id], [estado_id], [infraccion_id], [dominio], [ubicacion], [adjunto], [ruta_adjunto], [fecha_hora], [observaciones], [localidad_id]) VALUES (6, 8, 2, NULL, N'A020NJY', N'Ramos Mejía', NULL, NULL, CAST(N'2018-12-06 00:00:00.000' AS DateTime), N'Estacionamiento en doble fila', 7)
INSERT [dbo].[denuncia] ([id], [usuario_id], [estado_id], [infraccion_id], [dominio], [ubicacion], [adjunto], [ruta_adjunto], [fecha_hora], [observaciones], [localidad_id]) VALUES (7, 9, 1, 1, N'BTO854', N'Haedo', NULL, NULL, CAST(N'2018-12-05 11:07:11.000' AS DateTime), N'Estacionamiento en doble fila', 4)
INSERT [dbo].[denuncia] ([id], [usuario_id], [estado_id], [infraccion_id], [dominio], [ubicacion], [adjunto], [ruta_adjunto], [fecha_hora], [observaciones], [localidad_id]) VALUES (8, 10, 3, NULL, N'MLJ854', N'Avellaneda', NULL, NULL, CAST(N'2018-11-30 00:00:00.000' AS DateTime), N'Estacionamiento en doble fila', 9)
INSERT [dbo].[denuncia] ([id], [usuario_id], [estado_id], [infraccion_id], [dominio], [ubicacion], [adjunto], [ruta_adjunto], [fecha_hora], [observaciones], [localidad_id]) VALUES (9, 11, 1, 1, N'PAT854', N'La Matanza', NULL, NULL, CAST(N'2018-12-03 11:07:11.000' AS DateTime), N'Obstrucción de estacionamiento', 10)
INSERT [dbo].[denuncia] ([id], [usuario_id], [estado_id], [infraccion_id], [dominio], [ubicacion], [adjunto], [ruta_adjunto], [fecha_hora], [observaciones], [localidad_id]) VALUES (10, 5, 2, NULL, N'BTO854', N'Lanús', NULL, NULL, CAST(N'2018-12-01 00:00:00.000' AS DateTime), N'Estacionamiento en doble fila', 11)
INSERT [dbo].[denuncia] ([id], [usuario_id], [estado_id], [infraccion_id], [dominio], [ubicacion], [adjunto], [ruta_adjunto], [fecha_hora], [observaciones], [localidad_id]) VALUES (11, 6, 1, 1, N'PAT854', N'Haedo', NULL, NULL, CAST(N'2018-12-05 11:07:11.000' AS DateTime), N'Estacionamiento en doble fila', 4)
INSERT [dbo].[denuncia] ([id], [usuario_id], [estado_id], [infraccion_id], [dominio], [ubicacion], [adjunto], [ruta_adjunto], [fecha_hora], [observaciones], [localidad_id]) VALUES (12, 7, 1, NULL, N'MLJ854', N'Castelar', NULL, NULL, CAST(N'2018-11-30 00:00:00.000' AS DateTime), N'Estacionamiento en doble fila', 6)
INSERT [dbo].[denuncia] ([id], [usuario_id], [estado_id], [infraccion_id], [dominio], [ubicacion], [adjunto], [ruta_adjunto], [fecha_hora], [observaciones], [localidad_id]) VALUES (13, 8, 1, 1, N'A020NJY', N'La Matanza', NULL, NULL, CAST(N'2018-11-28 11:07:11.000' AS DateTime), N'Obstrucción de estacionamiento', 4)
INSERT [dbo].[denuncia] ([id], [usuario_id], [estado_id], [infraccion_id], [dominio], [ubicacion], [adjunto], [ruta_adjunto], [fecha_hora], [observaciones], [localidad_id]) VALUES (14, 9, 2, NULL, N'A020NJY', N'Ramos Mejía', NULL, NULL, CAST(N'2018-12-06 00:00:00.000' AS DateTime), N'Estacionamiento en doble fila', 7)
INSERT [dbo].[denuncia] ([id], [usuario_id], [estado_id], [infraccion_id], [dominio], [ubicacion], [adjunto], [ruta_adjunto], [fecha_hora], [observaciones], [localidad_id]) VALUES (15, 10, 1, 1, N'BTO854', N'Haedo', NULL, NULL, CAST(N'2018-11-29 11:07:11.000' AS DateTime), N'Estacionamiento en doble fila', 4)
INSERT [dbo].[denuncia] ([id], [usuario_id], [estado_id], [infraccion_id], [dominio], [ubicacion], [adjunto], [ruta_adjunto], [fecha_hora], [observaciones], [localidad_id]) VALUES (16, 11, 2, NULL, N'MLJ854', N'Avellaneda', NULL, NULL, CAST(N'2018-11-30 00:00:00.000' AS DateTime), N'Estacionamiento en doble fila', 9)
INSERT [dbo].[denuncia] ([id], [usuario_id], [estado_id], [infraccion_id], [dominio], [ubicacion], [adjunto], [ruta_adjunto], [fecha_hora], [observaciones], [localidad_id]) VALUES (17, 5, 1, 1, N'A020NJY', N'La Matanza', NULL, NULL, CAST(N'2018-12-03 11:07:11.000' AS DateTime), N'Obstrucción de estacionamiento', 6)
INSERT [dbo].[denuncia] ([id], [usuario_id], [estado_id], [infraccion_id], [dominio], [ubicacion], [adjunto], [ruta_adjunto], [fecha_hora], [observaciones], [localidad_id]) VALUES (18, 6, 2, NULL, N'BTO854', N'Lanús', NULL, NULL, CAST(N'2018-11-29 00:00:00.000' AS DateTime), N'Estacionamiento en doble fila', 11)
INSERT [dbo].[denuncia] ([id], [usuario_id], [estado_id], [infraccion_id], [dominio], [ubicacion], [adjunto], [ruta_adjunto], [fecha_hora], [observaciones], [localidad_id]) VALUES (19, 7, 1, 1, N'PAT854', N'Haedo', NULL, NULL, CAST(N'2018-12-05 11:07:11.000' AS DateTime), N'Estacionamiento en doble fila', 4)
INSERT [dbo].[denuncia] ([id], [usuario_id], [estado_id], [infraccion_id], [dominio], [ubicacion], [adjunto], [ruta_adjunto], [fecha_hora], [observaciones], [localidad_id]) VALUES (20, 8, 1, NULL, N'MLJ854', N'Castelar', NULL, NULL, CAST(N'2018-11-30 00:00:00.000' AS DateTime), N'Estacionamiento en doble fila', 6)
INSERT [dbo].[denuncia] ([id], [usuario_id], [estado_id], [infraccion_id], [dominio], [ubicacion], [adjunto], [ruta_adjunto], [fecha_hora], [observaciones], [localidad_id]) VALUES (21, 9, 1, 1, N'PAT854', N'La Matanza', NULL, NULL, CAST(N'2018-12-03 11:07:11.000' AS DateTime), N'Obstrucción de estacionamiento', 3)
INSERT [dbo].[denuncia] ([id], [usuario_id], [estado_id], [infraccion_id], [dominio], [ubicacion], [adjunto], [ruta_adjunto], [fecha_hora], [observaciones], [localidad_id]) VALUES (22, 10, 2, NULL, N'A020NJY', N'Ramos Mejía', NULL, NULL, CAST(N'2018-12-06 00:00:00.000' AS DateTime), N'Estacionamiento en doble fila', 7)
INSERT [dbo].[denuncia] ([id], [usuario_id], [estado_id], [infraccion_id], [dominio], [ubicacion], [adjunto], [ruta_adjunto], [fecha_hora], [observaciones], [localidad_id]) VALUES (23, 11, 1, 1, N'BTO854', N'Haedo', NULL, NULL, CAST(N'2018-12-05 11:07:11.000' AS DateTime), N'Estacionamiento en doble fila', 4)
INSERT [dbo].[denuncia] ([id], [usuario_id], [estado_id], [infraccion_id], [dominio], [ubicacion], [adjunto], [ruta_adjunto], [fecha_hora], [observaciones], [localidad_id]) VALUES (24, 5, 3, NULL, N'MLJ854', N'Avellaneda', NULL, NULL, CAST(N'2018-11-30 00:00:00.000' AS DateTime), N'Estacionamiento en doble fila', 9)
INSERT [dbo].[denuncia] ([id], [usuario_id], [estado_id], [infraccion_id], [dominio], [ubicacion], [adjunto], [ruta_adjunto], [fecha_hora], [observaciones], [localidad_id]) VALUES (25, 6, 1, 1, N'PAT854', N'La Matanza', NULL, NULL, CAST(N'2018-12-03 11:07:11.000' AS DateTime), N'Obstrucción de estacionamiento', 10)
INSERT [dbo].[denuncia] ([id], [usuario_id], [estado_id], [infraccion_id], [dominio], [ubicacion], [adjunto], [ruta_adjunto], [fecha_hora], [observaciones], [localidad_id]) VALUES (26, 7, 2, NULL, N'BTO854', N'Lanús', NULL, NULL, CAST(N'2018-12-01 00:00:00.000' AS DateTime), N'Estacionamiento en doble fila', 11)
INSERT [dbo].[denuncia] ([id], [usuario_id], [estado_id], [infraccion_id], [dominio], [ubicacion], [adjunto], [ruta_adjunto], [fecha_hora], [observaciones], [localidad_id]) VALUES (27, 8, 1, 1, N'PAT854', N'Haedo', NULL, NULL, CAST(N'2018-12-05 11:07:11.000' AS DateTime), N'Estacionamiento en doble fila', 4)
INSERT [dbo].[denuncia] ([id], [usuario_id], [estado_id], [infraccion_id], [dominio], [ubicacion], [adjunto], [ruta_adjunto], [fecha_hora], [observaciones], [localidad_id]) VALUES (28, 9, 1, NULL, N'MLJ854', N'Luján', NULL, NULL, CAST(N'2018-11-30 00:00:00.000' AS DateTime), N'Estacionamiento en doble fila', 11)
INSERT [dbo].[denuncia] ([id], [usuario_id], [estado_id], [infraccion_id], [dominio], [ubicacion], [adjunto], [ruta_adjunto], [fecha_hora], [observaciones], [localidad_id]) VALUES (29, 10, 1, 1, N'A020NJY', N'La Matanza', NULL, NULL, CAST(N'2018-11-28 11:07:11.000' AS DateTime), N'Obstrucción de estacionamiento', 4)
INSERT [dbo].[denuncia] ([id], [usuario_id], [estado_id], [infraccion_id], [dominio], [ubicacion], [adjunto], [ruta_adjunto], [fecha_hora], [observaciones], [localidad_id]) VALUES (30, 11, 2, NULL, N'A020NJY', N'Ramos Mejía', NULL, NULL, CAST(N'2018-12-06 00:00:00.000' AS DateTime), N'Estacionamiento en doble fila', 7)
INSERT [dbo].[denuncia] ([id], [usuario_id], [estado_id], [infraccion_id], [dominio], [ubicacion], [adjunto], [ruta_adjunto], [fecha_hora], [observaciones], [localidad_id]) VALUES (31, 5, 1, 1, N'BTO856', N'Haedo', NULL, NULL, CAST(N'2018-11-29 11:07:11.000' AS DateTime), N'Estacionamiento en doble fila', 4)
INSERT [dbo].[denuncia] ([id], [usuario_id], [estado_id], [infraccion_id], [dominio], [ubicacion], [adjunto], [ruta_adjunto], [fecha_hora], [observaciones], [localidad_id]) VALUES (32, 6, 1, NULL, N'MLJ854', N'Avellaneda', NULL, NULL, CAST(N'2018-11-30 00:00:00.000' AS DateTime), N'Estacionamiento en doble fila', 9)
INSERT [dbo].[denuncia] ([id], [usuario_id], [estado_id], [infraccion_id], [dominio], [ubicacion], [adjunto], [ruta_adjunto], [fecha_hora], [observaciones], [localidad_id]) VALUES (33, 7, 1, 1, N'A020NJY', N'La Matanza', NULL, NULL, CAST(N'2018-12-03 11:07:11.000' AS DateTime), N'Obstrucción de estacionamiento', 6)
INSERT [dbo].[denuncia] ([id], [usuario_id], [estado_id], [infraccion_id], [dominio], [ubicacion], [adjunto], [ruta_adjunto], [fecha_hora], [observaciones], [localidad_id]) VALUES (34, 8, 2, NULL, N'BTO851', N'Moreno', NULL, NULL, CAST(N'2018-11-29 00:00:00.000' AS DateTime), N'Estacionamiento en doble fila', 11)
SET IDENTITY_INSERT [dbo].[denuncia] OFF
SET IDENTITY_INSERT [dbo].[estado_cedula] ON 

INSERT [dbo].[estado_cedula] ([id], [descripcion]) VALUES (1, N'Original')
INSERT [dbo].[estado_cedula] ([id], [descripcion]) VALUES (2, N'Duplicado')
SET IDENTITY_INSERT [dbo].[estado_cedula] OFF
INSERT [dbo].[estado_denuncia] ([id], [descripcion]) VALUES (1, N'Pendiente de revisión')
INSERT [dbo].[estado_denuncia] ([id], [descripcion]) VALUES (2, N'Confirmada')
INSERT [dbo].[estado_denuncia] ([id], [descripcion]) VALUES (3, N'Anulada')
SET IDENTITY_INSERT [dbo].[infraccion] ON 

INSERT [dbo].[infraccion] ([id], [agente_transito_id], [vehiculo_id], [licencia_id], [codigo_infraccion_id], [provincia_id], [localidad_id], [control_id], [nro_acta], [fecha_hora], [locacion], [observaciones], [documentacion_retenida], [lugar_retencion], [persona_id], [vehiculo_tipo_id], [vehiculo_marca_id], [vehiculo_modelo], [vehiculo_dominio], [imputado_apellido], [imputado_nombre], [imputado_dni], [imputado_provincia_id], [imputado_localidad_id], [imputado_domicilio], [imputado_nropuerta], [imputado_piso], [imputado_departamento], [imputado_licencia_nro], [imputado_licencia_municipio_id], [imputado_licencia_categoria_id]) VALUES (1, 1, 5, 2, 4, 1, 1, 2, 89172, CAST(N'2018-12-05 13:07:11.000' AS DateTime), N'Calle Zapalla 1450', N'Pasar barrera estando baja', N'Ninguna', N'Comisaría 5ta', 2, NULL, NULL, NULL, N'A020NJY', N'Ponce', N'Jorge', 36075354, 1, 9, N'Martinez Casado 505', N'', NULL, N'', N'5957078', 9, 2)
INSERT [dbo].[infraccion] ([id], [agente_transito_id], [vehiculo_id], [licencia_id], [codigo_infraccion_id], [provincia_id], [localidad_id], [control_id], [nro_acta], [fecha_hora], [locacion], [observaciones], [documentacion_retenida], [lugar_retencion], [persona_id], [vehiculo_tipo_id], [vehiculo_marca_id], [vehiculo_modelo], [vehiculo_dominio], [imputado_apellido], [imputado_nombre], [imputado_dni], [imputado_provincia_id], [imputado_localidad_id], [imputado_domicilio], [imputado_nropuerta], [imputado_piso], [imputado_departamento], [imputado_licencia_nro], [imputado_licencia_municipio_id], [imputado_licencia_categoria_id]) VALUES (5, 2, 1, 3, 60, 1, 6, 3, 99106, CAST(N'2018-12-01 00:00:00.000' AS DateTime), N'Zufriategui 978', NULL, NULL, NULL, 7, NULL, NULL, NULL, NULL, N'Santa Cruz', N'David', 35676102, 1, 7, N'Fagundez 3561', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[infraccion] ([id], [agente_transito_id], [vehiculo_id], [licencia_id], [codigo_infraccion_id], [provincia_id], [localidad_id], [control_id], [nro_acta], [fecha_hora], [locacion], [observaciones], [documentacion_retenida], [lugar_retencion], [persona_id], [vehiculo_tipo_id], [vehiculo_marca_id], [vehiculo_modelo], [vehiculo_dominio], [imputado_apellido], [imputado_nombre], [imputado_dni], [imputado_provincia_id], [imputado_localidad_id], [imputado_domicilio], [imputado_nropuerta], [imputado_piso], [imputado_departamento], [imputado_licencia_nro], [imputado_licencia_municipio_id], [imputado_licencia_categoria_id]) VALUES (6, 1, 5, 5, 4, 1, 2, 2, 84562, CAST(N'2018-12-02 13:07:11.000' AS DateTime), N'Calle Zapalla 1450', N'Pasar barrera estando baja', N'Ninguna', N'Comisaría 5ta', 5, NULL, NULL, NULL, N'A020NJY', N'Ponce', N'Jorge', 36075354, 1, 9, N'Martinez Casado 505', N'', NULL, N'', N'5957078', 9, 2)
INSERT [dbo].[infraccion] ([id], [agente_transito_id], [vehiculo_id], [licencia_id], [codigo_infraccion_id], [provincia_id], [localidad_id], [control_id], [nro_acta], [fecha_hora], [locacion], [observaciones], [documentacion_retenida], [lugar_retencion], [persona_id], [vehiculo_tipo_id], [vehiculo_marca_id], [vehiculo_modelo], [vehiculo_dominio], [imputado_apellido], [imputado_nombre], [imputado_dni], [imputado_provincia_id], [imputado_localidad_id], [imputado_domicilio], [imputado_nropuerta], [imputado_piso], [imputado_departamento], [imputado_licencia_nro], [imputado_licencia_municipio_id], [imputado_licencia_categoria_id]) VALUES (7, 2, 1, 3, 60, 1, 6, 6, 11234, CAST(N'2018-12-01 00:00:00.000' AS DateTime), N'Zufriategui 978', NULL, NULL, NULL, 8, NULL, NULL, NULL, NULL, N'Santa Cruz', N'David', 35676102, 1, 7, N'Fagundez 3561', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[infraccion] ([id], [agente_transito_id], [vehiculo_id], [licencia_id], [codigo_infraccion_id], [provincia_id], [localidad_id], [control_id], [nro_acta], [fecha_hora], [locacion], [observaciones], [documentacion_retenida], [lugar_retencion], [persona_id], [vehiculo_tipo_id], [vehiculo_marca_id], [vehiculo_modelo], [vehiculo_dominio], [imputado_apellido], [imputado_nombre], [imputado_dni], [imputado_provincia_id], [imputado_localidad_id], [imputado_domicilio], [imputado_nropuerta], [imputado_piso], [imputado_departamento], [imputado_licencia_nro], [imputado_licencia_municipio_id], [imputado_licencia_categoria_id]) VALUES (8, 1, 5, 2, 30, 1, 1, 2, 24512, CAST(N'2018-12-03 13:07:11.000' AS DateTime), N'Calle Zapalla 1450', N'Pasar barrera estando baja', N'Ninguna', N'Comisaría 5ta', 2, NULL, NULL, NULL, N'A020NJY', N'Ponce', N'Jorge', 36075354, 1, 9, N'Martinez Casado 505', N'', NULL, N'', N'5957078', 9, 2)
INSERT [dbo].[infraccion] ([id], [agente_transito_id], [vehiculo_id], [licencia_id], [codigo_infraccion_id], [provincia_id], [localidad_id], [control_id], [nro_acta], [fecha_hora], [locacion], [observaciones], [documentacion_retenida], [lugar_retencion], [persona_id], [vehiculo_tipo_id], [vehiculo_marca_id], [vehiculo_modelo], [vehiculo_dominio], [imputado_apellido], [imputado_nombre], [imputado_dni], [imputado_provincia_id], [imputado_localidad_id], [imputado_domicilio], [imputado_nropuerta], [imputado_piso], [imputado_departamento], [imputado_licencia_nro], [imputado_licencia_municipio_id], [imputado_licencia_categoria_id]) VALUES (9, 2, 1, 2, 71, 1, 6, 7, 56123, CAST(N'2018-12-01 00:00:00.000' AS DateTime), N'Zufriategui 978', NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL, N'Santa Cruz', N'David', 35676102, 1, 7, N'Fagundez 3561', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[infraccion] ([id], [agente_transito_id], [vehiculo_id], [licencia_id], [codigo_infraccion_id], [provincia_id], [localidad_id], [control_id], [nro_acta], [fecha_hora], [locacion], [observaciones], [documentacion_retenida], [lugar_retencion], [persona_id], [vehiculo_tipo_id], [vehiculo_marca_id], [vehiculo_modelo], [vehiculo_dominio], [imputado_apellido], [imputado_nombre], [imputado_dni], [imputado_provincia_id], [imputado_localidad_id], [imputado_domicilio], [imputado_nropuerta], [imputado_piso], [imputado_departamento], [imputado_licencia_nro], [imputado_licencia_municipio_id], [imputado_licencia_categoria_id]) VALUES (10, 4, 5, 4, 4, 1, 2, 2, 86235, CAST(N'2018-12-05 13:07:11.000' AS DateTime), N'Calle Zapalla 1450', N'Pasar barrera estando baja', N'Ninguna', N'Comisaría 5ta', 7, NULL, NULL, NULL, N'A020NJY', N'Ponce', N'Jorge', 36075354, 1, 9, N'Martinez Casado 505', N'', NULL, N'', N'5957078', 9, 2)
INSERT [dbo].[infraccion] ([id], [agente_transito_id], [vehiculo_id], [licencia_id], [codigo_infraccion_id], [provincia_id], [localidad_id], [control_id], [nro_acta], [fecha_hora], [locacion], [observaciones], [documentacion_retenida], [lugar_retencion], [persona_id], [vehiculo_tipo_id], [vehiculo_marca_id], [vehiculo_modelo], [vehiculo_dominio], [imputado_apellido], [imputado_nombre], [imputado_dni], [imputado_provincia_id], [imputado_localidad_id], [imputado_domicilio], [imputado_nropuerta], [imputado_piso], [imputado_departamento], [imputado_licencia_nro], [imputado_licencia_municipio_id], [imputado_licencia_categoria_id]) VALUES (11, 5, 1, 5, 14, 1, 6, 3, 45784, CAST(N'2018-12-04 00:00:00.000' AS DateTime), N'Zufriategui 978', NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, N'Santa Cruz', N'David', 35676102, 1, 7, N'Fagundez 3561', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[infraccion] ([id], [agente_transito_id], [vehiculo_id], [licencia_id], [codigo_infraccion_id], [provincia_id], [localidad_id], [control_id], [nro_acta], [fecha_hora], [locacion], [observaciones], [documentacion_retenida], [lugar_retencion], [persona_id], [vehiculo_tipo_id], [vehiculo_marca_id], [vehiculo_modelo], [vehiculo_dominio], [imputado_apellido], [imputado_nombre], [imputado_dni], [imputado_provincia_id], [imputado_localidad_id], [imputado_domicilio], [imputado_nropuerta], [imputado_piso], [imputado_departamento], [imputado_licencia_nro], [imputado_licencia_municipio_id], [imputado_licencia_categoria_id]) VALUES (12, 3, 5, 2, 35, 1, 3, 4, 89172, CAST(N'2018-12-05 13:07:11.000' AS DateTime), N'Calle Zapalla 1450', N'Pasar barrera estando baja', N'Ninguna', N'Comisaría 5ta', 8, NULL, NULL, NULL, N'A020NJY', N'Ponce', N'Jorge', 36075354, 1, 9, N'Martinez Casado 505', N'', NULL, N'', N'5957078', 9, 2)
INSERT [dbo].[infraccion] ([id], [agente_transito_id], [vehiculo_id], [licencia_id], [codigo_infraccion_id], [provincia_id], [localidad_id], [control_id], [nro_acta], [fecha_hora], [locacion], [observaciones], [documentacion_retenida], [lugar_retencion], [persona_id], [vehiculo_tipo_id], [vehiculo_marca_id], [vehiculo_modelo], [vehiculo_dominio], [imputado_apellido], [imputado_nombre], [imputado_dni], [imputado_provincia_id], [imputado_localidad_id], [imputado_domicilio], [imputado_nropuerta], [imputado_piso], [imputado_departamento], [imputado_licencia_nro], [imputado_licencia_municipio_id], [imputado_licencia_categoria_id]) VALUES (13, 1, 1, 4, 29, 1, 5, 8, 99122, CAST(N'2018-12-03 00:00:00.000' AS DateTime), N'Zufriategui 978', NULL, NULL, NULL, 7, NULL, NULL, NULL, NULL, N'Santa Cruz', N'David', 35676102, 1, 7, N'Fagundez 3561', NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[infraccion] OFF
SET IDENTITY_INSERT [dbo].[licencia] ON 

INSERT [dbo].[licencia] ([id], [nro_licencia], [categoria_id], [persona_id], [municipio_id], [clases], [otorgamiento], [vencimiento], [observaciones]) VALUES (2, N'81729182', 1, 2, 7, N'A1 B1', CAST(N'2017-01-01' AS Date), CAST(N'2019-01-01' AS Date), NULL)
INSERT [dbo].[licencia] ([id], [nro_licencia], [categoria_id], [persona_id], [municipio_id], [clases], [otorgamiento], [vencimiento], [observaciones]) VALUES (3, N'81760182', 1, 5, 4, N'A1 A2', CAST(N'2017-08-01' AS Date), CAST(N'2019-08-01' AS Date), N'Utiliza anteojos')
INSERT [dbo].[licencia] ([id], [nro_licencia], [categoria_id], [persona_id], [municipio_id], [clases], [otorgamiento], [vencimiento], [observaciones]) VALUES (4, N'81729772', 1, 7, 5, N'A1 B1', CAST(N'2017-12-01' AS Date), CAST(N'2019-12-01' AS Date), NULL)
INSERT [dbo].[licencia] ([id], [nro_licencia], [categoria_id], [persona_id], [municipio_id], [clases], [otorgamiento], [vencimiento], [observaciones]) VALUES (5, N'81730382', 1, 8, 8, N'B1 B2', CAST(N'2017-08-01' AS Date), CAST(N'2019-08-01' AS Date), NULL)
SET IDENTITY_INSERT [dbo].[licencia] OFF
SET IDENTITY_INSERT [dbo].[localidad] ON 

INSERT [dbo].[localidad] ([id], [provincia_id], [descripcion]) VALUES (1, 1, N'Almirante Brown')
INSERT [dbo].[localidad] ([id], [provincia_id], [descripcion]) VALUES (2, 1, N'Avellaneda')
INSERT [dbo].[localidad] ([id], [provincia_id], [descripcion]) VALUES (3, 1, N'Berazategui')
INSERT [dbo].[localidad] ([id], [provincia_id], [descripcion]) VALUES (4, 1, N'Esteban Echeverría')
INSERT [dbo].[localidad] ([id], [provincia_id], [descripcion]) VALUES (5, 1, N'Ezeiza')
INSERT [dbo].[localidad] ([id], [provincia_id], [descripcion]) VALUES (6, 1, N'Florencio Varela')
INSERT [dbo].[localidad] ([id], [provincia_id], [descripcion]) VALUES (7, 1, N'General San Martín')
INSERT [dbo].[localidad] ([id], [provincia_id], [descripcion]) VALUES (8, 1, N'Hurlingham')
INSERT [dbo].[localidad] ([id], [provincia_id], [descripcion]) VALUES (9, 1, N'Ituzaingó')
INSERT [dbo].[localidad] ([id], [provincia_id], [descripcion]) VALUES (10, 1, N'José C. Paz')
INSERT [dbo].[localidad] ([id], [provincia_id], [descripcion]) VALUES (11, 1, N'La Matanza')
INSERT [dbo].[localidad] ([id], [provincia_id], [descripcion]) VALUES (12, 1, N'Lanús')
INSERT [dbo].[localidad] ([id], [provincia_id], [descripcion]) VALUES (13, 1, N'Lomas de Zamora')
INSERT [dbo].[localidad] ([id], [provincia_id], [descripcion]) VALUES (14, 1, N'Malvinas Argentinas')
INSERT [dbo].[localidad] ([id], [provincia_id], [descripcion]) VALUES (15, 1, N'Merlo')
INSERT [dbo].[localidad] ([id], [provincia_id], [descripcion]) VALUES (16, 1, N'Moreno')
INSERT [dbo].[localidad] ([id], [provincia_id], [descripcion]) VALUES (17, 1, N'Morón')
INSERT [dbo].[localidad] ([id], [provincia_id], [descripcion]) VALUES (18, 1, N'Quilmes')
INSERT [dbo].[localidad] ([id], [provincia_id], [descripcion]) VALUES (19, 1, N'San Fernando')
INSERT [dbo].[localidad] ([id], [provincia_id], [descripcion]) VALUES (20, 1, N'San Isidro')
INSERT [dbo].[localidad] ([id], [provincia_id], [descripcion]) VALUES (21, 1, N'San Miguel')
INSERT [dbo].[localidad] ([id], [provincia_id], [descripcion]) VALUES (22, 1, N'Tigre')
INSERT [dbo].[localidad] ([id], [provincia_id], [descripcion]) VALUES (23, 1, N'Tres de Febrero')
INSERT [dbo].[localidad] ([id], [provincia_id], [descripcion]) VALUES (24, 1, N'Vicente López')
SET IDENTITY_INSERT [dbo].[localidad] OFF
SET IDENTITY_INSERT [dbo].[marca_vehiculo] ON 

INSERT [dbo].[marca_vehiculo] ([id], [descripcion]) VALUES (1, N'Alfa Romeo')
INSERT [dbo].[marca_vehiculo] ([id], [descripcion]) VALUES (2, N'Audi')
INSERT [dbo].[marca_vehiculo] ([id], [descripcion]) VALUES (3, N'BMW')
INSERT [dbo].[marca_vehiculo] ([id], [descripcion]) VALUES (4, N'Chevrolet')
INSERT [dbo].[marca_vehiculo] ([id], [descripcion]) VALUES (5, N'Citroen')
INSERT [dbo].[marca_vehiculo] ([id], [descripcion]) VALUES (6, N'Fiat')
INSERT [dbo].[marca_vehiculo] ([id], [descripcion]) VALUES (7, N'Ford')
INSERT [dbo].[marca_vehiculo] ([id], [descripcion]) VALUES (8, N'Honda')
INSERT [dbo].[marca_vehiculo] ([id], [descripcion]) VALUES (9, N'Mercedes-Benz')
INSERT [dbo].[marca_vehiculo] ([id], [descripcion]) VALUES (10, N'Mitsubishi')
INSERT [dbo].[marca_vehiculo] ([id], [descripcion]) VALUES (11, N'Nissan')
INSERT [dbo].[marca_vehiculo] ([id], [descripcion]) VALUES (12, N'Peugeot')
INSERT [dbo].[marca_vehiculo] ([id], [descripcion]) VALUES (13, N'Renault')
INSERT [dbo].[marca_vehiculo] ([id], [descripcion]) VALUES (14, N'Seat')
INSERT [dbo].[marca_vehiculo] ([id], [descripcion]) VALUES (15, N'Suzuki')
INSERT [dbo].[marca_vehiculo] ([id], [descripcion]) VALUES (16, N'Toyota')
INSERT [dbo].[marca_vehiculo] ([id], [descripcion]) VALUES (17, N'Volkswagen')
INSERT [dbo].[marca_vehiculo] ([id], [descripcion]) VALUES (18, N'Volvo')
INSERT [dbo].[marca_vehiculo] ([id], [descripcion]) VALUES (19, N'Zanella')
SET IDENTITY_INSERT [dbo].[marca_vehiculo] OFF
SET IDENTITY_INSERT [dbo].[municipio] ON 

INSERT [dbo].[municipio] ([id], [descripcion]) VALUES (1, N'Almirante Brown')
INSERT [dbo].[municipio] ([id], [descripcion]) VALUES (2, N'Avellaneda')
INSERT [dbo].[municipio] ([id], [descripcion]) VALUES (3, N'Berazategui')
INSERT [dbo].[municipio] ([id], [descripcion]) VALUES (4, N'Esteban Echeverría')
INSERT [dbo].[municipio] ([id], [descripcion]) VALUES (5, N'Ezeiza')
INSERT [dbo].[municipio] ([id], [descripcion]) VALUES (6, N'Florencio Varela')
INSERT [dbo].[municipio] ([id], [descripcion]) VALUES (7, N'General San Martín')
INSERT [dbo].[municipio] ([id], [descripcion]) VALUES (8, N'Hurlingham')
INSERT [dbo].[municipio] ([id], [descripcion]) VALUES (9, N'Ituzaingó')
INSERT [dbo].[municipio] ([id], [descripcion]) VALUES (10, N'José C. Paz')
INSERT [dbo].[municipio] ([id], [descripcion]) VALUES (11, N'La Matanza')
INSERT [dbo].[municipio] ([id], [descripcion]) VALUES (12, N'Lanús')
INSERT [dbo].[municipio] ([id], [descripcion]) VALUES (13, N'Lomas de Zamora')
INSERT [dbo].[municipio] ([id], [descripcion]) VALUES (14, N'Malvinas Argentinas')
INSERT [dbo].[municipio] ([id], [descripcion]) VALUES (15, N'Merlo')
INSERT [dbo].[municipio] ([id], [descripcion]) VALUES (16, N'Moreno')
INSERT [dbo].[municipio] ([id], [descripcion]) VALUES (17, N'Morón')
INSERT [dbo].[municipio] ([id], [descripcion]) VALUES (18, N'Quilmes')
INSERT [dbo].[municipio] ([id], [descripcion]) VALUES (19, N'San Fernando')
INSERT [dbo].[municipio] ([id], [descripcion]) VALUES (20, N'San Isidro')
INSERT [dbo].[municipio] ([id], [descripcion]) VALUES (21, N'San Miguel')
INSERT [dbo].[municipio] ([id], [descripcion]) VALUES (22, N'Tigre')
INSERT [dbo].[municipio] ([id], [descripcion]) VALUES (23, N'Tres de Febrero')
INSERT [dbo].[municipio] ([id], [descripcion]) VALUES (24, N'Vicente López')
SET IDENTITY_INSERT [dbo].[municipio] OFF
SET IDENTITY_INSERT [dbo].[nacionalidad] ON 

INSERT [dbo].[nacionalidad] ([id], [descripcion]) VALUES (1, N'Argentino')
SET IDENTITY_INSERT [dbo].[nacionalidad] OFF
INSERT [dbo].[perfil_usuario] ([id], [descripcion]) VALUES (1, N'Admin')
INSERT [dbo].[perfil_usuario] ([id], [descripcion]) VALUES (2, N'Usuario')
INSERT [dbo].[perfil_usuario] ([id], [descripcion]) VALUES (3, N'Autoridad transito')
INSERT [dbo].[perfil_usuario] ([id], [descripcion]) VALUES (4, N'Personal remolque')
SET IDENTITY_INSERT [dbo].[persona] ON 

INSERT [dbo].[persona] ([id], [apellido], [nombre], [dni], [sexo_id], [nacionalidad_id], [provincia_id], [localidad_id], [domicilio], [piso], [departamento], [nro_puerta], [fecha_nacimiento], [lugar_nacimiento], [flag_conductor]) VALUES (1, N'Fernández', N'Jonathan', 35216504, 1, 1, 1, 1, N'Fernandez 2878', 1, N'1', N'1', CAST(N'1990-05-28' AS Date), N'Castelar', 1)
INSERT [dbo].[persona] ([id], [apellido], [nombre], [dni], [sexo_id], [nacionalidad_id], [provincia_id], [localidad_id], [domicilio], [piso], [departamento], [nro_puerta], [fecha_nacimiento], [lugar_nacimiento], [flag_conductor]) VALUES (2, N'Ríos', N'Fabián', 31674281, 1, 1, 1, 1, N'fernandez 2878', 1, N'1', N'1', CAST(N'1990-05-28' AS Date), N'Castelar', 1)
INSERT [dbo].[persona] ([id], [apellido], [nombre], [dni], [sexo_id], [nacionalidad_id], [provincia_id], [localidad_id], [domicilio], [piso], [departamento], [nro_puerta], [fecha_nacimiento], [lugar_nacimiento], [flag_conductor]) VALUES (3, N'Sobrile', N'Juan', 36075355, 1, 1, 1, 1, N'Castel Rodrigo 3455', 1, N'1', N'1', CAST(N'2018-11-28' AS Date), N'Castelar', 1)
INSERT [dbo].[persona] ([id], [apellido], [nombre], [dni], [sexo_id], [nacionalidad_id], [provincia_id], [localidad_id], [domicilio], [piso], [departamento], [nro_puerta], [fecha_nacimiento], [lugar_nacimiento], [flag_conductor]) VALUES (4, N'Naval', N'Ezequiel', 38176615, 1, 1, 1, 1, N'Mansilla 2563', NULL, NULL, NULL, CAST(N'2018-11-12' AS Date), N'Morón', 1)
INSERT [dbo].[persona] ([id], [apellido], [nombre], [dni], [sexo_id], [nacionalidad_id], [provincia_id], [localidad_id], [domicilio], [piso], [departamento], [nro_puerta], [fecha_nacimiento], [lugar_nacimiento], [flag_conductor]) VALUES (5, N'Klodi', N'Silvia', 27434709, 2, 1, 1, 1, N'Cerrito 678', NULL, N'', N'', CAST(N'2018-11-12' AS Date), N'Morón', 1)
INSERT [dbo].[persona] ([id], [apellido], [nombre], [dni], [sexo_id], [nacionalidad_id], [provincia_id], [localidad_id], [domicilio], [piso], [departamento], [nro_puerta], [fecha_nacimiento], [lugar_nacimiento], [flag_conductor]) VALUES (6, N'Ancutza', N'Cristian', 38199717, 1, 1, 1, 3, N'Av. Martín Fierro 1878', 1, N'1', N'1', CAST(N'1993-09-28' AS Date), N'Haedo', 1)
INSERT [dbo].[persona] ([id], [apellido], [nombre], [dni], [sexo_id], [nacionalidad_id], [provincia_id], [localidad_id], [domicilio], [piso], [departamento], [nro_puerta], [fecha_nacimiento], [lugar_nacimiento], [flag_conductor]) VALUES (7, N'Santa Cruz', N'David', 33781098, 1, 1, 1, 4, N'Av. Gutierrez 288', 1, N'1', N'1', CAST(N'1994-05-20' AS Date), N'Vicente Lopez', 1)
INSERT [dbo].[persona] ([id], [apellido], [nombre], [dni], [sexo_id], [nacionalidad_id], [provincia_id], [localidad_id], [domicilio], [piso], [departamento], [nro_puerta], [fecha_nacimiento], [lugar_nacimiento], [flag_conductor]) VALUES (8, N'Zambrano', N'Emiliano', 35903052, 1, 1, 1, 5, N'Facundo 2341', 1, N'1', N'1', CAST(N'1991-02-11' AS Date), N'Lanús', 1)
INSERT [dbo].[persona] ([id], [apellido], [nombre], [dni], [sexo_id], [nacionalidad_id], [provincia_id], [localidad_id], [domicilio], [piso], [departamento], [nro_puerta], [fecha_nacimiento], [lugar_nacimiento], [flag_conductor]) VALUES (9, N'Gutiérrez', N'Carlos', 38909717, 1, 1, 1, 3, N'Av. Ratti 978', 1, N'1', N'1', CAST(N'1989-04-28' AS Date), N'San Fernando', 1)
INSERT [dbo].[persona] ([id], [apellido], [nombre], [dni], [sexo_id], [nacionalidad_id], [provincia_id], [localidad_id], [domicilio], [piso], [departamento], [nro_puerta], [fecha_nacimiento], [lugar_nacimiento], [flag_conductor]) VALUES (10, N'Meneguzzo', N'Patricio', 30058699, 1, 1, 1, 2, N'Zorrilla 43', 2, N'4', N'B', CAST(N'1991-04-27' AS Date), N'Ituzaingó', 1)
INSERT [dbo].[persona] ([id], [apellido], [nombre], [dni], [sexo_id], [nacionalidad_id], [provincia_id], [localidad_id], [domicilio], [piso], [departamento], [nro_puerta], [fecha_nacimiento], [lugar_nacimiento], [flag_conductor]) VALUES (11, N'Martínez', N'Gustavo', 35216504, 1, 1, 1, 1, N'Fernandez 2878', 1, N'1', N'1', CAST(N'1990-05-28' AS Date), N'Castelar', 1)
INSERT [dbo].[persona] ([id], [apellido], [nombre], [dni], [sexo_id], [nacionalidad_id], [provincia_id], [localidad_id], [domicilio], [piso], [departamento], [nro_puerta], [fecha_nacimiento], [lugar_nacimiento], [flag_conductor]) VALUES (12, N'Gómez', N'Maximiliano', 31674281, 1, 1, 1, 10, N'Av. Gdor. Udaondo 2878', 1, N'1', N'1', CAST(N'1990-05-28' AS Date), N'Avellaneda', 1)
INSERT [dbo].[persona] ([id], [apellido], [nombre], [dni], [sexo_id], [nacionalidad_id], [provincia_id], [localidad_id], [domicilio], [piso], [departamento], [nro_puerta], [fecha_nacimiento], [lugar_nacimiento], [flag_conductor]) VALUES (13, N'Pérez', N'Damián', 36075355, 1, 1, 1, 6, N'Castel Rodrigo 3455', 1, N'1', N'1', CAST(N'2018-11-28' AS Date), N'Castelar', 1)
INSERT [dbo].[persona] ([id], [apellido], [nombre], [dni], [sexo_id], [nacionalidad_id], [provincia_id], [localidad_id], [domicilio], [piso], [departamento], [nro_puerta], [fecha_nacimiento], [lugar_nacimiento], [flag_conductor]) VALUES (14, N'Chavez', N'Nicolás', 38176611, 1, 1, 1, 11, N'Mansilla 2563', NULL, NULL, NULL, CAST(N'2018-11-12' AS Date), N'Morón', 1)
INSERT [dbo].[persona] ([id], [apellido], [nombre], [dni], [sexo_id], [nacionalidad_id], [provincia_id], [localidad_id], [domicilio], [piso], [departamento], [nro_puerta], [fecha_nacimiento], [lugar_nacimiento], [flag_conductor]) VALUES (15, N'Olalla', N'Ezequiel', 27438709, 2, 1, 1, 1, N'Cerrito 678', NULL, NULL, NULL, CAST(N'2018-11-12' AS Date), N'La Matanza', 1)
INSERT [dbo].[persona] ([id], [apellido], [nombre], [dni], [sexo_id], [nacionalidad_id], [provincia_id], [localidad_id], [domicilio], [piso], [departamento], [nro_puerta], [fecha_nacimiento], [lugar_nacimiento], [flag_conductor]) VALUES (16, N'Villafañe', N'Nicolás', 38109717, 1, 1, 1, 13, N'Brandsen 1878', 1, N'1', N'1', CAST(N'1993-09-28' AS Date), N'Haedo', 1)
INSERT [dbo].[persona] ([id], [apellido], [nombre], [dni], [sexo_id], [nacionalidad_id], [provincia_id], [localidad_id], [domicilio], [piso], [departamento], [nro_puerta], [fecha_nacimiento], [lugar_nacimiento], [flag_conductor]) VALUES (17, N'Vega', N'Evelyn', 33782498, 2, 1, 1, 14, N'Av. Gutierrez 288', 1, N'1', N'1', CAST(N'1994-05-20' AS Date), N'Vicente Lopez', 1)
INSERT [dbo].[persona] ([id], [apellido], [nombre], [dni], [sexo_id], [nacionalidad_id], [provincia_id], [localidad_id], [domicilio], [piso], [departamento], [nro_puerta], [fecha_nacimiento], [lugar_nacimiento], [flag_conductor]) VALUES (18, N'Mir', N'Anabela', 32403052, 2, 1, 1, 9, N'Facundo 2341', 1, N'1', N'1', CAST(N'1991-02-11' AS Date), N'Lanús', 1)
INSERT [dbo].[persona] ([id], [apellido], [nombre], [dni], [sexo_id], [nacionalidad_id], [provincia_id], [localidad_id], [domicilio], [piso], [departamento], [nro_puerta], [fecha_nacimiento], [lugar_nacimiento], [flag_conductor]) VALUES (19, N'Rossi', N'Anabela', 31858696, 2, 1, 1, 15, N'Zorrilla de San Martín 43', 2, N'4', N'B', CAST(N'1991-04-27' AS Date), N'Ituzaingó', 1)
SET IDENTITY_INSERT [dbo].[persona] OFF
SET IDENTITY_INSERT [dbo].[personal_remolque] ON 

INSERT [dbo].[personal_remolque] ([id], [usuario_id], [nro_legajo]) VALUES (1, 4, 86601289)
SET IDENTITY_INSERT [dbo].[personal_remolque] OFF
SET IDENTITY_INSERT [dbo].[playa_acarreo] ON 

INSERT [dbo].[playa_acarreo] ([id], [descripcion]) VALUES (1, N'Playa municipal de Morón')
INSERT [dbo].[playa_acarreo] ([id], [descripcion]) VALUES (2, N'Playa municipal de Moreno')
INSERT [dbo].[playa_acarreo] ([id], [descripcion]) VALUES (3, N'Playa dependencia policial Ituzaingó')
INSERT [dbo].[playa_acarreo] ([id], [descripcion]) VALUES (4, N'Playón municipal de General Rodríguez')
SET IDENTITY_INSERT [dbo].[playa_acarreo] OFF
SET IDENTITY_INSERT [dbo].[poliza] ON 

INSERT [dbo].[poliza] ([id], [nro_poliza], [aseguradora_id], [nom_asegurado], [vehiculo_id], [vigencia_desde], [vigencia_hasta]) VALUES (1, N'673234', 1, N'Ríos, Fabián', 1, CAST(N'2017-12-01' AS Date), CAST(N'2018-11-30' AS Date))
INSERT [dbo].[poliza] ([id], [nro_poliza], [aseguradora_id], [nom_asegurado], [vehiculo_id], [vigencia_desde], [vigencia_hasta]) VALUES (2, N'673607', 3, N'Klodi, Silvia', 2, CAST(N'2017-12-01' AS Date), CAST(N'2018-11-30' AS Date))
INSERT [dbo].[poliza] ([id], [nro_poliza], [aseguradora_id], [nom_asegurado], [vehiculo_id], [vigencia_desde], [vigencia_hasta]) VALUES (3, N'673708', 4, N'Santa Cruz, David', 6, CAST(N'2017-12-01' AS Date), CAST(N'2018-11-30' AS Date))
INSERT [dbo].[poliza] ([id], [nro_poliza], [aseguradora_id], [nom_asegurado], [vehiculo_id], [vigencia_desde], [vigencia_hasta]) VALUES (4, N'593607', 5, N'Zambrano, Emiliano', 7, CAST(N'2017-12-01' AS Date), CAST(N'2018-11-30' AS Date))
SET IDENTITY_INSERT [dbo].[poliza] OFF
SET IDENTITY_INSERT [dbo].[provincia] ON 

INSERT [dbo].[provincia] ([id], [descripcion]) VALUES (1, N'Buenos Aires')
SET IDENTITY_INSERT [dbo].[provincia] OFF
SET IDENTITY_INSERT [dbo].[remolque] ON 

INSERT [dbo].[remolque] ([id], [personal_remolque_id], [playa_acarreo_id], [vehiculo_id], [fecha_hora], [ubicacion], [detalle_infraccion], [dominio], [localidad_id]) VALUES (8, 1, 1, 1, CAST(N'2018-12-01 00:00:00.000' AS DateTime), N'Ituzaingó', N'Obstrucción de rampa', N'PAT854', 1)
INSERT [dbo].[remolque] ([id], [personal_remolque_id], [playa_acarreo_id], [vehiculo_id], [fecha_hora], [ubicacion], [detalle_infraccion], [dominio], [localidad_id]) VALUES (9, 1, 1, 2, CAST(N'2018-12-04 23:56:41.477' AS DateTime), N'Morón', N'Obstrucción de ochava', N'A020NJY', 5)
INSERT [dbo].[remolque] ([id], [personal_remolque_id], [playa_acarreo_id], [vehiculo_id], [fecha_hora], [ubicacion], [detalle_infraccion], [dominio], [localidad_id]) VALUES (10, 1, 3, 2, CAST(N'2018-12-14 23:56:47.817' AS DateTime), N'Castelar', N'Estacionamiento a 45 grados en lugar indebido', N'A020NJY', 6)
INSERT [dbo].[remolque] ([id], [personal_remolque_id], [playa_acarreo_id], [vehiculo_id], [fecha_hora], [ubicacion], [detalle_infraccion], [dominio], [localidad_id]) VALUES (11, 1, 4, 2, CAST(N'2018-12-01 23:56:50.177' AS DateTime), N'Merlo', N'Estacionamiento en cordón amarillo', N'A020NJY', 7)
INSERT [dbo].[remolque] ([id], [personal_remolque_id], [playa_acarreo_id], [vehiculo_id], [fecha_hora], [ubicacion], [detalle_infraccion], [dominio], [localidad_id]) VALUES (12, 1, 3, 1, CAST(N'2018-12-01 00:00:32.690' AS DateTime), N'Moreno', N'Obstrucción de dársena de transporte', N'PAT854', 12)
INSERT [dbo].[remolque] ([id], [personal_remolque_id], [playa_acarreo_id], [vehiculo_id], [fecha_hora], [ubicacion], [detalle_infraccion], [dominio], [localidad_id]) VALUES (13, 1, 4, 1, CAST(N'2018-11-30 00:00:48.450' AS DateTime), N'General Rodríguez', N'Obstrucción de rampa', N'MLJ854', 13)
INSERT [dbo].[remolque] ([id], [personal_remolque_id], [playa_acarreo_id], [vehiculo_id], [fecha_hora], [ubicacion], [detalle_infraccion], [dominio], [localidad_id]) VALUES (18, 1, 2, 6, CAST(N'2018-12-02 00:00:00.000' AS DateTime), N'Luján', N'Estacionamiento en cordón amarillo', NULL, 10)
INSERT [dbo].[remolque] ([id], [personal_remolque_id], [playa_acarreo_id], [vehiculo_id], [fecha_hora], [ubicacion], [detalle_infraccion], [dominio], [localidad_id]) VALUES (19, 1, 1, 1, CAST(N'2018-12-01 00:00:00.000' AS DateTime), N'Haedo', N'Obstrucción de rampa', N'PAT854', 2)
INSERT [dbo].[remolque] ([id], [personal_remolque_id], [playa_acarreo_id], [vehiculo_id], [fecha_hora], [ubicacion], [detalle_infraccion], [dominio], [localidad_id]) VALUES (20, 1, 1, 2, CAST(N'2018-12-04 23:56:41.477' AS DateTime), N'Morón', N'Obstrucción de ochava', N'A020NJY', 7)
INSERT [dbo].[remolque] ([id], [personal_remolque_id], [playa_acarreo_id], [vehiculo_id], [fecha_hora], [ubicacion], [detalle_infraccion], [dominio], [localidad_id]) VALUES (21, 1, 3, 2, CAST(N'2018-12-07 23:56:47.817' AS DateTime), N'Castelar', N'Estacionamiento a 45 grados en lugar indebido', N'A020NJY', 13)
INSERT [dbo].[remolque] ([id], [personal_remolque_id], [playa_acarreo_id], [vehiculo_id], [fecha_hora], [ubicacion], [detalle_infraccion], [dominio], [localidad_id]) VALUES (22, 1, 4, 2, CAST(N'2018-12-04 23:56:50.177' AS DateTime), N'Merlo', N'Estacionamiento en cordón amarillo', N'A020NJY', 7)
INSERT [dbo].[remolque] ([id], [personal_remolque_id], [playa_acarreo_id], [vehiculo_id], [fecha_hora], [ubicacion], [detalle_infraccion], [dominio], [localidad_id]) VALUES (23, 1, 3, 1, CAST(N'2018-12-05 00:00:32.690' AS DateTime), N'Moreno', N'Obstrucción de dársena de transporte', N'PAT854', 7)
INSERT [dbo].[remolque] ([id], [personal_remolque_id], [playa_acarreo_id], [vehiculo_id], [fecha_hora], [ubicacion], [detalle_infraccion], [dominio], [localidad_id]) VALUES (24, 1, 4, 1, CAST(N'2018-12-05 00:00:48.450' AS DateTime), N'General Rodríguez', N'Obstrucción de rampa', N'MLJ854', 13)
INSERT [dbo].[remolque] ([id], [personal_remolque_id], [playa_acarreo_id], [vehiculo_id], [fecha_hora], [ubicacion], [detalle_infraccion], [dominio], [localidad_id]) VALUES (25, 1, 2, 6, CAST(N'2018-12-11 23:56:47.817' AS DateTime), N'Luján', N'Estacionamiento en cordón amarillo', NULL, 13)
INSERT [dbo].[remolque] ([id], [personal_remolque_id], [playa_acarreo_id], [vehiculo_id], [fecha_hora], [ubicacion], [detalle_infraccion], [dominio], [localidad_id]) VALUES (26, 1, 1, 1, CAST(N'2018-12-05 15:36:12.160' AS DateTime), NULL, N'Mal estacionado', N'PAT854', 3)
SET IDENTITY_INSERT [dbo].[remolque] OFF
SET IDENTITY_INSERT [dbo].[sexo] ON 

INSERT [dbo].[sexo] ([id], [descripcion]) VALUES (1, N'Masculino')
INSERT [dbo].[sexo] ([id], [descripcion]) VALUES (2, N'Femenino')
SET IDENTITY_INSERT [dbo].[sexo] OFF
SET IDENTITY_INSERT [dbo].[tipo_vehiculo] ON 

INSERT [dbo].[tipo_vehiculo] ([id], [descripcion]) VALUES (1, N'Automóvil')
INSERT [dbo].[tipo_vehiculo] ([id], [descripcion]) VALUES (2, N'Moto')
INSERT [dbo].[tipo_vehiculo] ([id], [descripcion]) VALUES (3, N'Camioneta')
SET IDENTITY_INSERT [dbo].[tipo_vehiculo] OFF
SET IDENTITY_INSERT [dbo].[uso_cedula] ON 

INSERT [dbo].[uso_cedula] ([id], [descripcion]) VALUES (1, N'Privado')
INSERT [dbo].[uso_cedula] ([id], [descripcion]) VALUES (2, N'Público')
INSERT [dbo].[uso_cedula] ([id], [descripcion]) VALUES (3, N'Oficial')
SET IDENTITY_INSERT [dbo].[uso_cedula] OFF
SET IDENTITY_INSERT [dbo].[usuario] ON 

INSERT [dbo].[usuario] ([id], [persona_id], [perfil_usuario_id], [email], [contraseña]) VALUES (1, 1, 1, N'jonathanerik.fernandez@gmail.com', N'1234')
INSERT [dbo].[usuario] ([id], [persona_id], [perfil_usuario_id], [email], [contraseña]) VALUES (3, 3, 3, N'juan_sobrile@hotmail.com', N'1234')
INSERT [dbo].[usuario] ([id], [persona_id], [perfil_usuario_id], [email], [contraseña]) VALUES (4, 4, 4, N'ezequiel.naval@gmail.com', N'1234')
INSERT [dbo].[usuario] ([id], [persona_id], [perfil_usuario_id], [email], [contraseña]) VALUES (5, 5, 2, N'silviaklodi@gmail.com', N'1234')
INSERT [dbo].[usuario] ([id], [persona_id], [perfil_usuario_id], [email], [contraseña]) VALUES (6, 8, 2, N'emiliano.zambrano@hotmail.com', N'1234')
INSERT [dbo].[usuario] ([id], [persona_id], [perfil_usuario_id], [email], [contraseña]) VALUES (7, 7, 2, N'david.st.cruz@gmail.com', N'1234')
INSERT [dbo].[usuario] ([id], [persona_id], [perfil_usuario_id], [email], [contraseña]) VALUES (8, 6, 3, N'cristianancutza@gmail.com', N'1234')
INSERT [dbo].[usuario] ([id], [persona_id], [perfil_usuario_id], [email], [contraseña]) VALUES (9, 9, 3, N'oficial.uno@gmail.com', N'1234')
INSERT [dbo].[usuario] ([id], [persona_id], [perfil_usuario_id], [email], [contraseña]) VALUES (10, 10, 3, N'oficial.dos@gmail.com', N'1234')
INSERT [dbo].[usuario] ([id], [persona_id], [perfil_usuario_id], [email], [contraseña]) VALUES (11, 11, 3, N'oficial.tres@gmail.com', N'1234')
INSERT [dbo].[usuario] ([id], [persona_id], [perfil_usuario_id], [email], [contraseña]) VALUES (13, 2, 2, N'frios1306@gmail.com', N'1234')
SET IDENTITY_INSERT [dbo].[usuario] OFF
SET IDENTITY_INSERT [dbo].[vehiculo] ON 

INSERT [dbo].[vehiculo] ([id], [tipo_id], [marca_id], [modelo], [año], [cilindrada], [motor], [chasis_cuadro], [dominio]) VALUES (1, 1, 17, N'Gol', 1970, N'1.4', N'4532109548', N'u48238', N'PAT854')
INSERT [dbo].[vehiculo] ([id], [tipo_id], [marca_id], [modelo], [año], [cilindrada], [motor], [chasis_cuadro], [dominio]) VALUES (2, 2, 19, N'Patagonian Eagle', 2003, N'250', N'4455823407', N'yu9102', N'A020NJY')
INSERT [dbo].[vehiculo] ([id], [tipo_id], [marca_id], [modelo], [año], [cilindrada], [motor], [chasis_cuadro], [dominio]) VALUES (3, 1, 17, N'Polo', 1970, N'1.4', N'4478923412', N'u48238', N'BGO854')
INSERT [dbo].[vehiculo] ([id], [tipo_id], [marca_id], [modelo], [año], [cilindrada], [motor], [chasis_cuadro], [dominio]) VALUES (4, 1, 2, N'Fiesta', 2004, N'1.6', N'7861423484', N'p29312', N'YUT854')
INSERT [dbo].[vehiculo] ([id], [tipo_id], [marca_id], [modelo], [año], [cilindrada], [motor], [chasis_cuadro], [dominio]) VALUES (5, 1, 3, N'M5', 2010, N'2.4', N'9563321123', N'dsfwerf', N'AJY784')
INSERT [dbo].[vehiculo] ([id], [tipo_id], [marca_id], [modelo], [año], [cilindrada], [motor], [chasis_cuadro], [dominio]) VALUES (6, 1, 8, N'Fit', 2008, N'1.8', N'9410232145', N'yu9102', N'ROK854')
INSERT [dbo].[vehiculo] ([id], [tipo_id], [marca_id], [modelo], [año], [cilindrada], [motor], [chasis_cuadro], [dominio]) VALUES (7, 1, 7, N'Fiesta', 2004, N'1.6', N'8452160212', N'p29312', N'MLJ854')
INSERT [dbo].[vehiculo] ([id], [tipo_id], [marca_id], [modelo], [año], [cilindrada], [motor], [chasis_cuadro], [dominio]) VALUES (8, 1, 12, N'206', 2011, N'2.0', N'9876325148', N'dsfwerf', N'UYH381')
INSERT [dbo].[vehiculo] ([id], [tipo_id], [marca_id], [modelo], [año], [cilindrada], [motor], [chasis_cuadro], [dominio]) VALUES (9, 1, 7, N'Focus', 1998, N'1.4', N'4532109548', N'u48238', N'PAL854')
INSERT [dbo].[vehiculo] ([id], [tipo_id], [marca_id], [modelo], [año], [cilindrada], [motor], [chasis_cuadro], [dominio]) VALUES (10, 1, 7, N'Escort', 2003, N'2.0', N'4455623407', N'yu9102', N'PAO854')
INSERT [dbo].[vehiculo] ([id], [tipo_id], [marca_id], [modelo], [año], [cilindrada], [motor], [chasis_cuadro], [dominio]) VALUES (11, 1, 7, N'Ecosport', 1970, N'1.4', N'4478923412', N'u48238', N'BTO854')
INSERT [dbo].[vehiculo] ([id], [tipo_id], [marca_id], [modelo], [año], [cilindrada], [motor], [chasis_cuadro], [dominio]) VALUES (12, 1, 2, N'A4', 2004, N'1.9', N'7874123484', N'p29312', N'YWT854')
INSERT [dbo].[vehiculo] ([id], [tipo_id], [marca_id], [modelo], [año], [cilindrada], [motor], [chasis_cuadro], [dominio]) VALUES (13, 1, 3, N'Z3', 2010, N'2.4', N'9563321123', N'dsfwerf', N'AJR784')
INSERT [dbo].[vehiculo] ([id], [tipo_id], [marca_id], [modelo], [año], [cilindrada], [motor], [chasis_cuadro], [dominio]) VALUES (14, 1, 8, N'Fit', 2008, N'1.8', N'9410232189', N'yu9102', N'SIK854')
INSERT [dbo].[vehiculo] ([id], [tipo_id], [marca_id], [modelo], [año], [cilindrada], [motor], [chasis_cuadro], [dominio]) VALUES (15, 1, 7, N'Falcon', 2004, N'1.6', N'8452198678', N'p29312', N'MLV854')
INSERT [dbo].[vehiculo] ([id], [tipo_id], [marca_id], [modelo], [año], [cilindrada], [motor], [chasis_cuadro], [dominio]) VALUES (16, 1, 7, N'Fiesta Max', 2011, N'2.0', N'9870125148', N'dsfwerf', N'UGH386')
SET IDENTITY_INSERT [dbo].[vehiculo] OFF
/****** Object:  Index [IX_localidad]    Script Date: 5/12/2018 15:45:58 ******/
CREATE NONCLUSTERED INDEX [IX_localidad] ON [dbo].[localidad]
(
	[provincia_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
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
/****** Object:  StoredProcedure [dbo].[SP_GENERAR_EMAIL_ACARREO]    Script Date: 5/12/2018 15:45:58 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_GENERAR_EMAIL_DENUNCIA]    Script Date: 5/12/2018 15:45:58 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_LISTADO_ACARREO]    Script Date: 5/12/2018 15:45:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_LISTADO_ACARREO]

	@LOCALIDAD INT = NULL,
	@REMOLCADOR_ID INT
	--@DOMINIO VARCHAR = NULL
AS
BEGIN
	
	SELECT 

      --PR.[nro_legajo] AS REMOLCADOR,
      P.[descripcion] AS PLAYA,      
      R.[fecha_hora],
      --R.[ubicacion],
      R.[detalle_infraccion],
      R.[dominio],
      L.[descripcion] AS LOCALIDAD
	
   
  FROM [SICOVE].[DBO].[remolque] R WITH(NOLOCK)
	INNER JOIN 	[SICOVE].[DBO].[personal_remolque] PR WITH(NOLOCK) ON
	R.personal_remolque_id = PR.id
	INNER JOIN [SICOVE].[DBO].[playa_acarreo] P WITH(NOLOCK) ON
	R.playa_acarreo_id = P.id
	LEFT JOIN [SICOVE].[DBO].[vehiculo] V WITH(NOLOCK) ON
	R.vehiculo_id = V.id
	INNER JOIN [SICOVE].[DBO].[localidad] L WITH(NOLOCK) ON
	R.localidad_id = L.id

	
   WHERE

		(@LOCALIDAD IS NULL OR L.id= @LOCALIDAD) and
		(@REMOLCADOR_ID = R.personal_remolque_id)
	

END


GO
/****** Object:  StoredProcedure [dbo].[SP_LISTADO_ACARREO_X_REMOLCADOR]    Script Date: 5/12/2018 15:45:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
						
CREATE PROCEDURE [dbo].[SP_LISTADO_ACARREO_X_REMOLCADOR]

	@USUARIO INT = NULL
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

	
   WHERE
		(@USUARIO IS NULL OR PR.id = @USUARIO) 

END



GO
/****** Object:  StoredProcedure [dbo].[SP_LISTADO_AGENTE_TRANSITO]    Script Date: 5/12/2018 15:45:58 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_LISTADO_CONDUCTORES]    Script Date: 5/12/2018 15:45:58 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_LISTADO_CONTROLES]    Script Date: 5/12/2018 15:45:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_LISTADO_CONTROLES]
	@LOCALIDAD INT = NULL,
	@AGENTE_ID INT
	--@DOMINIO VARCHAR = NULL
AS
BEGIN
	
	SELECT 
		--C.[AGENTE_TRANSITO_ID],
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
	C.AGENTE_TRANSITO_ID = AU.id
	INNER JOIN [SICOVE].[DBO].[PROVINCIA] P WITH(NOLOCK) ON
	PER.PROVINCIA_ID = P.ID
	INNER JOIN [SICOVE].[DBO].[VEHICULO] V WITH(NOLOCK) ON
	C.VEHICULO_ID = V.ID
	INNER JOIN [SICOVE].[DBO].[MARCA_VEHICULO] M WITH (NOLOCK) ON
	V.MARCA_ID = M.ID
	INNER JOIN [SICOVE].[DBO].[LOCALIDAD] L WITH(NOLOCK) ON
	C.LOCALIDAD_ID = L.ID



   WHERE
		--(@DOMINIO IS NULL OR V.dominio = @DOMINIO ) 
		--OR
		(L.id = @LOCALIDAD) AND
		(c.agente_transito_id =  @AGENTE_ID)

END



GO
/****** Object:  StoredProcedure [dbo].[SP_LISTADO_DENUNCIA]    Script Date: 5/12/2018 15:45:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_LISTADO_DENUNCIA]
 @localidad_id int
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
	where l.id = @localidad_id
 order by d.id desc
END




GO
/****** Object:  StoredProcedure [dbo].[SP_LISTADO_MIS_DENUNCIA]    Script Date: 5/12/2018 15:45:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_LISTADO_MIS_DENUNCIA]
 @id_usuario int
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
       L.[descripcion] AS LOCALIDAD
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
	where 
		u.id = @id_usuario
 order by d.id desc
END




GO
/****** Object:  StoredProcedure [dbo].[SP_LISTADO_PERSONAL_REMOLQUE]    Script Date: 5/12/2018 15:45:58 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_LISTAR_ACARREOS_X_LOCALIDAD]    Script Date: 5/12/2018 15:45:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[SP_LISTAR_ACARREOS_X_LOCALIDAD]
	@fecha_desde date,
	@fecha_hasta date
as
begin
	set nocount on;

	if (nullif(@fecha_desde, '') IS NULL OR nullif(@fecha_hasta, '') IS NULL)
		begin
			select count(r.id) as cantidad, l.descripcion as localidad
			  from dbo.remolque r
				   inner join dbo.localidad l with(nolock) on r.localidad_id = l.id
			 group by l.descripcion;
		end
	else
		begin
			select count(r.id) as cantidad, l.descripcion as localidad
			  from dbo.remolque r
				   inner join dbo.localidad l with(nolock) on r.localidad_id = l.id
			 where r.fecha_hora between @fecha_desde and @fecha_hasta
			 group by l.descripcion;
		end
end




GO
/****** Object:  StoredProcedure [dbo].[SP_LISTAR_ACARREOS_X_PLAYA]    Script Date: 5/12/2018 15:45:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE procedure [dbo].[SP_LISTAR_ACARREOS_X_PLAYA]
	@fecha_desde date,
	@fecha_hasta date
as
begin
	set nocount on;

	if (nullif(@fecha_desde, '') IS NULL OR nullif(@fecha_hasta, '') IS NULL)
		begin
			select count(r.id) as cantidad, pa.descripcion as playa_acarreo
			  from dbo.remolque r
				   inner join dbo.playa_acarreo pa with(nolock) on r.playa_acarreo_id = pa.id
			 group by pa.descripcion;
		end
	else
		begin
			select count(r.id) as cantidad, pa.descripcion as playa_acarreo
			  from dbo.remolque r
				   inner join dbo.playa_acarreo pa with(nolock) on r.playa_acarreo_id = pa.id
			 where r.fecha_hora between @fecha_desde and @fecha_hasta
			 group by pa.descripcion;
		end
end




GO
/****** Object:  StoredProcedure [dbo].[SP_LISTAR_CONTROLES_X_AGENTE]    Script Date: 5/12/2018 15:45:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- author:		<author,,name>
-- create date: <create date,,>
-- description:	<description,,>
-- =============================================
CREATE    procedure [dbo].[SP_LISTAR_CONTROLES_X_AGENTE]
	-- add the parameters for the stored procedure here
	@fecha_desde date,
	@fecha_hasta date
as
begin
	-- set nocount on added to prevent extra result sets from
	-- interfering with select statements.
	set nocount on;

    -- insert statements for procedure here
	if (nullif(@fecha_desde, '') IS NULL OR nullif(@fecha_hasta, '') IS NULL)
		begin
			select count(c.id) as cantidad, upper(p.apellido) + ' ' + p.nombre as nombre_agente
			  from dbo.control c
				   inner join dbo.agente_transito at with(nolock) on c.agente_transito_id = at.id
				   inner join dbo.usuario u		     with(nolock) on at.usuario_id = u.id
				   inner join dbo.persona p		     with(nolock) on u.persona_id = p.id
		  group by upper(p.apellido) + ' ' + p.nombre;
		end
	else
  		begin
			select count(c.id) as cantidad, upper(p.apellido) + ' ' + p.nombre as nombre_agente
			  from dbo.control c
				   inner join dbo.agente_transito at with(nolock) on c.agente_transito_id = at.id
				   inner join dbo.usuario u		     with(nolock) on at.usuario_id = u.id
				   inner join dbo.persona p		     with(nolock) on u.persona_id = p.id
		     where c.fecha_hora between @fecha_desde and @fecha_hasta
		  group by upper(p.apellido) + ' ' + p.nombre;
		end
end




GO
/****** Object:  StoredProcedure [dbo].[SP_LISTAR_CONTROLES_X_LOCALIDAD]    Script Date: 5/12/2018 15:45:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE procedure [dbo].[SP_LISTAR_CONTROLES_X_LOCALIDAD]
	@fecha_desde date,
	@fecha_hasta date
as
begin
	set nocount on;
	if (nullif(@fecha_desde, '') IS NULL OR nullif(@fecha_hasta, '') IS NULL)
		begin
			select count(c.id) as cantidad, l.descripcion as localidad
				from dbo.control c
					inner join dbo.localidad l on c.localidad_id = l.id
				group by l.descripcion;
		end
	else
		begin
			select count(c.id) as cantidad, l.descripcion as localidad
			 from dbo.control c
				  inner join dbo.localidad l on c.localidad_id = l.id
			where c.fecha_hora between @fecha_desde and @fecha_hasta
		 group by l.descripcion;
		end
end





GO
/****** Object:  StoredProcedure [dbo].[SP_LISTAR_DATOS_PERSONA]    Script Date: 5/12/2018 15:45:58 ******/
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
		   CONVERT(VARCHAR, po.vigencia_hasta, 103)as vigencia_hasta,
		   c.nom_titular,
		   po.nom_asegurado
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
/****** Object:  StoredProcedure [dbo].[SP_LISTAR_DENUNCIAS_X_LOCALIDAD]    Script Date: 5/12/2018 15:45:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE procedure [dbo].[SP_LISTAR_DENUNCIAS_X_LOCALIDAD]
	@fecha_desde date,
	@fecha_hasta date
as
begin
	set nocount on;

	if (nullif(@fecha_desde, '') IS NULL OR nullif(@fecha_hasta, '') IS NULL)
		begin
			select count(d.id) as cantidad, l.descripcion as localidad
			  from dbo.denuncia d
				   inner join dbo.localidad l with(nolock) on d.localidad_id = l.id
			 group by l.descripcion;
		end
	else
		begin
			select count(d.id) as cantidad, l.descripcion as localidad
			  from dbo.denuncia d
				   inner join dbo.localidad l with(nolock) on d.localidad_id = l.id
			 where d.fecha_hora between @fecha_desde and @fecha_hasta
			 group by l.descripcion;
		end
end




GO
/****** Object:  StoredProcedure [dbo].[SP_LISTAR_INFRACCIONES_X_CATEGORIA]    Script Date: 5/12/2018 15:45:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE procedure [dbo].[SP_LISTAR_INFRACCIONES_X_CATEGORIA]
	@fecha_desde date,
	@fecha_hasta date
as
begin
	set nocount on;

	if (nullif(@fecha_desde, '') IS NULL OR nullif(@fecha_hasta, '') IS NULL)
		begin
			select count(i.id) as cantidad, ci.descripcion as categoria_infraccion
			  from dbo.infraccion i
				   inner join dbo.categoria_infraccion ci with(nolock) on i.codigo_infraccion_id = ci.id
		  group by ci.descripcion;
		end
	else
		begin
			select count(i.id) as cantidad, ci.descripcion as categoria_infraccion
			  from dbo.infraccion i
				   inner join dbo.categoria_infraccion ci with(nolock) on i.codigo_infraccion_id = ci.id
			 where i.fecha_hora between @fecha_desde and @fecha_hasta
	      group by ci.descripcion;
		end
end




GO
/****** Object:  StoredProcedure [dbo].[SP_LISTAR_INFRACCIONES_X_LOCALIDAD]    Script Date: 5/12/2018 15:45:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE procedure [dbo].[SP_LISTAR_INFRACCIONES_X_LOCALIDAD]
	@fecha_desde date,
	@fecha_hasta date
as
begin
	set nocount on;

	if (nullif(@fecha_desde, '') IS NULL OR nullif(@fecha_hasta, '') IS NULL)
		begin
			select count(i.id) as cantidad, l.descripcion as localidad
			  from dbo.infraccion i
				   inner join dbo.localidad l with(nolock) on i.localidad_id = l.id
		  group by l.descripcion;
		end
	else
		begin
			select count(i.id) as cantidad, l.descripcion as localidad
			  from dbo.infraccion i
				   inner join dbo.localidad l with(nolock) on i.localidad_id = l.id
			 where i.fecha_hora between @fecha_desde and @fecha_hasta
		  group by l.descripcion;
		end
end




GO
/****** Object:  StoredProcedure [dbo].[SP_LISTAR_PERSONAS_AUTORIZADAS]    Script Date: 5/12/2018 15:45:58 ******/
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
