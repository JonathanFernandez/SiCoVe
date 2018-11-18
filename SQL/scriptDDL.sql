USE [sicove]
GO
/****** Object:  StoredProcedure [dbo].[SP_LISTAR_PERSONAS_AUTORIZADAS]    Script Date: 18/11/2018 19:13:05 ******/
DROP PROCEDURE [dbo].[SP_LISTAR_PERSONAS_AUTORIZADAS]
GO
/****** Object:  StoredProcedure [dbo].[SP_LISTAR_DATOS_PERSONA]    Script Date: 18/11/2018 19:13:05 ******/
DROP PROCEDURE [dbo].[SP_LISTAR_DATOS_PERSONA]
GO
/****** Object:  StoredProcedure [dbo].[SP_LISTADO_PERSONAL_REMOLQUE]    Script Date: 18/11/2018 19:13:05 ******/
DROP PROCEDURE [dbo].[SP_LISTADO_PERSONAL_REMOLQUE]
GO
/****** Object:  StoredProcedure [dbo].[SP_LISTADO_AGENTE_TRANSITO]    Script Date: 18/11/2018 19:13:05 ******/
DROP PROCEDURE [dbo].[SP_LISTADO_AGENTE_TRANSITO]
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
/****** Object:  Index [IX_localidad]    Script Date: 18/11/2018 19:13:05 ******/
DROP INDEX [IX_localidad] ON [dbo].[localidad]
GO
/****** Object:  Table [dbo].[vehiculo]    Script Date: 18/11/2018 19:13:05 ******/
DROP TABLE [dbo].[vehiculo]
GO
/****** Object:  Table [dbo].[usuario]    Script Date: 18/11/2018 19:13:05 ******/
DROP TABLE [dbo].[usuario]
GO
/****** Object:  Table [dbo].[uso_cedula]    Script Date: 18/11/2018 19:13:05 ******/
DROP TABLE [dbo].[uso_cedula]
GO
/****** Object:  Table [dbo].[tipo_vehiculo]    Script Date: 18/11/2018 19:13:05 ******/
DROP TABLE [dbo].[tipo_vehiculo]
GO
/****** Object:  Table [dbo].[sexo]    Script Date: 18/11/2018 19:13:05 ******/
DROP TABLE [dbo].[sexo]
GO
/****** Object:  Table [dbo].[remolque]    Script Date: 18/11/2018 19:13:05 ******/
DROP TABLE [dbo].[remolque]
GO
/****** Object:  Table [dbo].[provincia]    Script Date: 18/11/2018 19:13:05 ******/
DROP TABLE [dbo].[provincia]
GO
/****** Object:  Table [dbo].[poliza]    Script Date: 18/11/2018 19:13:05 ******/
DROP TABLE [dbo].[poliza]
GO
/****** Object:  Table [dbo].[playa_acarreo]    Script Date: 18/11/2018 19:13:05 ******/
DROP TABLE [dbo].[playa_acarreo]
GO
/****** Object:  Table [dbo].[personal_remolque]    Script Date: 18/11/2018 19:13:05 ******/
DROP TABLE [dbo].[personal_remolque]
GO
/****** Object:  Table [dbo].[persona]    Script Date: 18/11/2018 19:13:05 ******/
DROP TABLE [dbo].[persona]
GO
/****** Object:  Table [dbo].[perfil_usuario]    Script Date: 18/11/2018 19:13:05 ******/
DROP TABLE [dbo].[perfil_usuario]
GO
/****** Object:  Table [dbo].[nacionalidad]    Script Date: 18/11/2018 19:13:05 ******/
DROP TABLE [dbo].[nacionalidad]
GO
/****** Object:  Table [dbo].[municipio]    Script Date: 18/11/2018 19:13:05 ******/
DROP TABLE [dbo].[municipio]
GO
/****** Object:  Table [dbo].[marca_vehiculo]    Script Date: 18/11/2018 19:13:05 ******/
DROP TABLE [dbo].[marca_vehiculo]
GO
/****** Object:  Table [dbo].[localidad]    Script Date: 18/11/2018 19:13:05 ******/
DROP TABLE [dbo].[localidad]
GO
/****** Object:  Table [dbo].[licencia]    Script Date: 18/11/2018 19:13:05 ******/
DROP TABLE [dbo].[licencia]
GO
/****** Object:  Table [dbo].[infraccion]    Script Date: 18/11/2018 19:13:05 ******/
DROP TABLE [dbo].[infraccion]
GO
/****** Object:  Table [dbo].[estado_denuncia]    Script Date: 18/11/2018 19:13:05 ******/
DROP TABLE [dbo].[estado_denuncia]
GO
/****** Object:  Table [dbo].[estado_cedula]    Script Date: 18/11/2018 19:13:05 ******/
DROP TABLE [dbo].[estado_cedula]
GO
/****** Object:  Table [dbo].[denuncia]    Script Date: 18/11/2018 19:13:05 ******/
DROP TABLE [dbo].[denuncia]
GO
/****** Object:  Table [dbo].[control]    Script Date: 18/11/2018 19:13:05 ******/
DROP TABLE [dbo].[control]
GO
/****** Object:  Table [dbo].[codigo_infraccion]    Script Date: 18/11/2018 19:13:05 ******/
DROP TABLE [dbo].[codigo_infraccion]
GO
/****** Object:  Table [dbo].[cedula]    Script Date: 18/11/2018 19:13:05 ******/
DROP TABLE [dbo].[cedula]
GO
/****** Object:  Table [dbo].[categoria_licencia]    Script Date: 18/11/2018 19:13:05 ******/
DROP TABLE [dbo].[categoria_licencia]
GO
/****** Object:  Table [dbo].[categoria_infraccion]    Script Date: 18/11/2018 19:13:05 ******/
DROP TABLE [dbo].[categoria_infraccion]
GO
/****** Object:  Table [dbo].[aseguradora]    Script Date: 18/11/2018 19:13:05 ******/
DROP TABLE [dbo].[aseguradora]
GO
/****** Object:  Table [dbo].[agente_transito]    Script Date: 18/11/2018 19:13:05 ******/
DROP TABLE [dbo].[agente_transito]
GO
/****** Object:  User [WebDatabaseUser]    Script Date: 18/11/2018 19:13:05 ******/
DROP USER [WebDatabaseUser]
GO
USE [master]
GO
/****** Object:  Database [sicove]    Script Date: 18/11/2018 19:13:05 ******/
DROP DATABASE [sicove]
GO
/****** Object:  Database [sicove]    Script Date: 18/11/2018 19:13:05 ******/
CREATE DATABASE [sicove]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'sicove', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\sicove.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'sicove_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\sicove_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
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
/****** Object:  User [WebDatabaseUser]    Script Date: 18/11/2018 19:13:05 ******/
CREATE USER [WebDatabaseUser] FOR LOGIN [IIS APPPOOL\DefaultAppPool] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [WebDatabaseUser]
GO
/****** Object:  Table [dbo].[agente_transito]    Script Date: 18/11/2018 19:13:05 ******/
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
/****** Object:  Table [dbo].[aseguradora]    Script Date: 18/11/2018 19:13:05 ******/
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
/****** Object:  Table [dbo].[categoria_infraccion]    Script Date: 18/11/2018 19:13:05 ******/
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
/****** Object:  Table [dbo].[categoria_licencia]    Script Date: 18/11/2018 19:13:05 ******/
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
/****** Object:  Table [dbo].[cedula]    Script Date: 18/11/2018 19:13:05 ******/
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
/****** Object:  Table [dbo].[codigo_infraccion]    Script Date: 18/11/2018 19:13:05 ******/
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
/****** Object:  Table [dbo].[control]    Script Date: 18/11/2018 19:13:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[control](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[agente_transito_id] [int] NOT NULL,
	[vehiculo_id] [int] NOT NULL,
	[persona_id] [int] NULL,
	[fecha_hora] [date] NULL,
	[provincia_id] [int] NOT NULL,
	[localidad_id] [int] NOT NULL,
	[locacion] [nvarchar](200) NULL,
	[observaciones] [nvarchar](300) NULL,
	[dominio] [nvarchar](10) NULL,
	[dni] [bigint] NULL,
 CONSTRAINT [PK_control] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[denuncia]    Script Date: 18/11/2018 19:13:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[denuncia](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[usuario_id] [int] NOT NULL,
	[estado_id] [int] NOT NULL,
	[infraccion_id] [int] NOT NULL,
	[dominio] [nvarchar](10) NULL,
	[ubicacion] [nvarchar](100) NULL,
	[adjunto] [image] NULL,
	[fecha_hora] [date] NULL,
	[observaciones] [nvarchar](200) NULL,
 CONSTRAINT [PK_denuncia] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[estado_cedula]    Script Date: 18/11/2018 19:13:05 ******/
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
/****** Object:  Table [dbo].[estado_denuncia]    Script Date: 18/11/2018 19:13:05 ******/
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
/****** Object:  Table [dbo].[infraccion]    Script Date: 18/11/2018 19:13:05 ******/
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
	[fecha_hora] [date] NULL,
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
/****** Object:  Table [dbo].[licencia]    Script Date: 18/11/2018 19:13:05 ******/
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
/****** Object:  Table [dbo].[localidad]    Script Date: 18/11/2018 19:13:05 ******/
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
/****** Object:  Table [dbo].[marca_vehiculo]    Script Date: 18/11/2018 19:13:05 ******/
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
/****** Object:  Table [dbo].[municipio]    Script Date: 18/11/2018 19:13:05 ******/
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
/****** Object:  Table [dbo].[nacionalidad]    Script Date: 18/11/2018 19:13:05 ******/
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
/****** Object:  Table [dbo].[perfil_usuario]    Script Date: 18/11/2018 19:13:05 ******/
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
/****** Object:  Table [dbo].[persona]    Script Date: 18/11/2018 19:13:05 ******/
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
/****** Object:  Table [dbo].[personal_remolque]    Script Date: 18/11/2018 19:13:05 ******/
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
/****** Object:  Table [dbo].[playa_acarreo]    Script Date: 18/11/2018 19:13:05 ******/
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
/****** Object:  Table [dbo].[poliza]    Script Date: 18/11/2018 19:13:05 ******/
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
/****** Object:  Table [dbo].[provincia]    Script Date: 18/11/2018 19:13:05 ******/
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
/****** Object:  Table [dbo].[remolque]    Script Date: 18/11/2018 19:13:05 ******/
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
 CONSTRAINT [PK_remolque] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sexo]    Script Date: 18/11/2018 19:13:05 ******/
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
/****** Object:  Table [dbo].[tipo_vehiculo]    Script Date: 18/11/2018 19:13:05 ******/
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
/****** Object:  Table [dbo].[uso_cedula]    Script Date: 18/11/2018 19:13:05 ******/
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
/****** Object:  Table [dbo].[usuario]    Script Date: 18/11/2018 19:13:05 ******/
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
/****** Object:  Table [dbo].[vehiculo]    Script Date: 18/11/2018 19:13:05 ******/
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
/****** Object:  Index [IX_localidad]    Script Date: 18/11/2018 19:13:05 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_LISTADO_AGENTE_TRANSITO]    Script Date: 18/11/2018 19:13:05 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_LISTADO_PERSONAL_REMOLQUE]    Script Date: 18/11/2018 19:13:05 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_LISTAR_DATOS_PERSONA]    Script Date: 18/11/2018 19:13:05 ******/
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
	select pe.id,
	       pe.apellido,
	       pe.nombre,
	       s.descripcion AS sexo,
	       n.descripcion AS nacionalidad,
	       pe.fecha_nacimiento,
	       pe.dni,
		   pe.domicilio,
	       pe.lugar_nacimiento,
		   l.nro_licencia,
		   l.otorgamiento,
		   l.vencimiento,
		   cl.descripcion AS licencia_categoria,
		   l.clases,
		   l.observaciones,
		   c.nro_cedula,
		   v.dominio,
		   ec.descripcion AS cedula_estado,
		   mv.descripcion AS vehiculo_marca,
		   v.modelo,
		   tv.descripcion AS vehiculo_tipo,
		   uc.descripcion AS cedula_uso,
		   v.chasis_cuadro,
		   v.motor,
		   c.vencimiento AS cedula_vencimiento,
		   v.cilindrada,
		   c.flag_autorizado,
		   a.descripcion AS aseguradora,
		   po.nro_poliza,
		   po.vigencia_desde,
		   po.vigencia_hasta
      from dbo.persona pe with(nolock)
		   inner join dbo.sexo s with(nolock) on pe.sexo_id = s.id
		   inner join dbo.nacionalidad n with(nolock) on pe.nacionalidad_id = n.id
		   inner join dbo.licencia l on pe.id = l.persona_id
		   inner join dbo.categoria_licencia cl on l.categoria_id = cl.id
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
/****** Object:  StoredProcedure [dbo].[SP_LISTAR_PERSONAS_AUTORIZADAS]    Script Date: 18/11/2018 19:13:05 ******/
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
	@dominio nchar(10)
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
