
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, and Azure
-- --------------------------------------------------
-- Date Created: 04/26/2017 11:41:42
-- Generated from EDMX file: C:\SIG_NET\SIGDATA\SIGDATASDO.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [sigdatasdo];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_MT_COMPANIA_UNIDAD]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[GE_MT_COMPANIA_UNIDAD] DROP CONSTRAINT [FK_MT_COMPANIA_UNIDAD];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[GE_AUTORIAZACIONES_CODIGOS]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GE_AUTORIAZACIONES_CODIGOS];
GO
IF OBJECT_ID(N'[dbo].[GE_BLENDING]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GE_BLENDING];
GO
IF OBJECT_ID(N'[dbo].[GE_BLENDING_DETALLE]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GE_BLENDING_DETALLE];
GO
IF OBJECT_ID(N'[dbo].[GE_BLENDING_RESULTADO]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GE_BLENDING_RESULTADO];
GO
IF OBJECT_ID(N'[dbo].[GE_BLENDING_SALDOS]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GE_BLENDING_SALDOS];
GO
IF OBJECT_ID(N'[dbo].[GE_CONFIGURACION_MAIL]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GE_CONFIGURACION_MAIL];
GO
IF OBJECT_ID(N'[dbo].[GE_CONTRATA_EQUIPOS]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GE_CONTRATA_EQUIPOS];
GO
IF OBJECT_ID(N'[dbo].[GE_DOCUMENTO_MAIL]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GE_DOCUMENTO_MAIL];
GO
IF OBJECT_ID(N'[dbo].[GE_DW_COLUMNAS]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GE_DW_COLUMNAS];
GO
IF OBJECT_ID(N'[dbo].[GE_INF_GEOLOGICA]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GE_INF_GEOLOGICA];
GO
IF OBJECT_ID(N'[dbo].[GE_LABORES_SUBTERRANEA]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GE_LABORES_SUBTERRANEA];
GO
IF OBJECT_ID(N'[dbo].[GE_METODO_CASTIGO_LEY]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GE_METODO_CASTIGO_LEY];
GO
IF OBJECT_ID(N'[dbo].[GE_METODO_CASTIGO_LEY_DET]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GE_METODO_CASTIGO_LEY_DET];
GO
IF OBJECT_ID(N'[dbo].[GE_MODELO_ACTIVIDAD]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GE_MODELO_ACTIVIDAD];
GO
IF OBJECT_ID(N'[dbo].[GE_MODELO_PROCESO]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GE_MODELO_PROCESO];
GO
IF OBJECT_ID(N'[dbo].[GE_MODELO_SUBPROCESO]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GE_MODELO_SUBPROCESO];
GO
IF OBJECT_ID(N'[dbo].[GE_MOVIMIENTOS_MINERAL]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GE_MOVIMIENTOS_MINERAL];
GO
IF OBJECT_ID(N'[dbo].[GE_MT_COMPANIA]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GE_MT_COMPANIA];
GO
IF OBJECT_ID(N'[dbo].[GE_MT_COMPANIA_UNIDAD]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GE_MT_COMPANIA_UNIDAD];
GO
IF OBJECT_ID(N'[dbo].[GE_MT_LITOLOGIA]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GE_MT_LITOLOGIA];
GO
IF OBJECT_ID(N'[dbo].[GE_MT_MINERALIZACION]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GE_MT_MINERALIZACION];
GO
IF OBJECT_ID(N'[dbo].[GE_MT_TIPO_MUESTREO]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GE_MT_TIPO_MUESTREO];
GO
IF OBJECT_ID(N'[dbo].[GE_MT_TRANSACCIONES]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GE_MT_TRANSACCIONES];
GO
IF OBJECT_ID(N'[dbo].[GE_ORDEN_TRABAJO_LAB]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GE_ORDEN_TRABAJO_LAB];
GO
IF OBJECT_ID(N'[dbo].[GE_ORDEN_TRABAJO_LAB_DET]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GE_ORDEN_TRABAJO_LAB_DET];
GO
IF OBJECT_ID(N'[dbo].[GE_PARAMETROS]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GE_PARAMETROS];
GO
IF OBJECT_ID(N'[dbo].[GE_PERFORACION_CAB]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GE_PERFORACION_CAB];
GO
IF OBJECT_ID(N'[dbo].[GE_PERIODOS]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GE_PERIODOS];
GO
IF OBJECT_ID(N'[dbo].[GE_POLIGONO_CAB]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GE_POLIGONO_CAB];
GO
IF OBJECT_ID(N'[dbo].[GE_PROGRAMA_MUESTREO]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GE_PROGRAMA_MUESTREO];
GO
IF OBJECT_ID(N'[dbo].[GE_PROGRAMA_MUESTREO_PERSONAL]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GE_PROGRAMA_MUESTREO_PERSONAL];
GO
IF OBJECT_ID(N'[dbo].[GE_PROYECTO_PRF]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GE_PROYECTO_PRF];
GO
IF OBJECT_ID(N'[dbo].[GE_RECURSOS_AREA]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GE_RECURSOS_AREA];
GO
IF OBJECT_ID(N'[dbo].[GE_RECURSOS_AREA_MOVIMIENTOS]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GE_RECURSOS_AREA_MOVIMIENTOS];
GO
IF OBJECT_ID(N'[dbo].[GE_RECURSOS_AREA_PERIODO]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GE_RECURSOS_AREA_PERIODO];
GO
IF OBJECT_ID(N'[dbo].[GE_RECURSOS_CATEGORIA_CAMBIO]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GE_RECURSOS_CATEGORIA_CAMBIO];
GO
IF OBJECT_ID(N'[dbo].[GE_RECURSOS_CLASIFICACION]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GE_RECURSOS_CLASIFICACION];
GO
IF OBJECT_ID(N'[dbo].[GE_RECURSOS_LEVANTAMIENTO_TOPO]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GE_RECURSOS_LEVANTAMIENTO_TOPO];
GO
IF OBJECT_ID(N'[dbo].[GE_RECURSOS_PILAS]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GE_RECURSOS_PILAS];
GO
IF OBJECT_ID(N'[dbo].[GE_RECURSOS_TRANSACCIONES]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GE_RECURSOS_TRANSACCIONES];
GO
IF OBJECT_ID(N'[dbo].[GE_REGISTRO_POLIGONO]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GE_REGISTRO_POLIGONO];
GO
IF OBJECT_ID(N'[dbo].[GE_REP_BALANZA]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GE_REP_BALANZA];
GO
IF OBJECT_ID(N'[dbo].[GE_REPORTE_LABORATORIO]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GE_REPORTE_LABORATORIO];
GO
IF OBJECT_ID(N'[dbo].[GE_REPORTE_MUESTREO]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GE_REPORTE_MUESTREO];
GO
IF OBJECT_ID(N'[dbo].[GE_REPORTE_MUESTREO_DETALLE]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GE_REPORTE_MUESTREO_DETALLE];
GO
IF OBJECT_ID(N'[dbo].[GE_REPORTE_MUESTREO_LABORATO]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GE_REPORTE_MUESTREO_LABORATO];
GO
IF OBJECT_ID(N'[dbo].[GE_REPORTE_MUESTREO_UBICA]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GE_REPORTE_MUESTREO_UBICA];
GO
IF OBJECT_ID(N'[dbo].[ge_reporte_prf]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ge_reporte_prf];
GO
IF OBJECT_ID(N'[dbo].[GE_REPORTE_PRF_DETALLE]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GE_REPORTE_PRF_DETALLE];
GO
IF OBJECT_ID(N'[dbo].[ge_reporte_prf_detalle_alt]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ge_reporte_prf_detalle_alt];
GO
IF OBJECT_ID(N'[dbo].[ge_reporte_prf_detalle_est]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ge_reporte_prf_detalle_est];
GO
IF OBJECT_ID(N'[dbo].[ge_reporte_prf_detalle_lit]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ge_reporte_prf_detalle_lit];
GO
IF OBJECT_ID(N'[dbo].[ge_reporte_prf_detalle_min]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ge_reporte_prf_detalle_min];
GO
IF OBJECT_ID(N'[dbo].[ge_reporte_prf_detalle_mineco]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ge_reporte_prf_detalle_mineco];
GO
IF OBJECT_ID(N'[dbo].[GE_REPORTE_PRF_DETALLE_MUESTRA]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GE_REPORTE_PRF_DETALLE_MUESTRA];
GO
IF OBJECT_ID(N'[dbo].[GE_REPORTE_TOPOGRAFICO]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GE_REPORTE_TOPOGRAFICO];
GO
IF OBJECT_ID(N'[dbo].[GE_SEGURIDAD_USUARIOS]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GE_SEGURIDAD_USUARIOS];
GO
IF OBJECT_ID(N'[dbo].[GE_TIPO_LABOR]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GE_TIPO_LABOR];
GO
IF OBJECT_ID(N'[dbo].[GE_TMP_TRANSPORTE]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GE_TMP_TRANSPORTE];
GO
IF OBJECT_ID(N'[dbo].[GE_VALGRA_PRO]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GE_VALGRA_PRO];
GO
IF OBJECT_ID(N'[dbo].[GE_VALPRO]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GE_VALPRO];
GO
IF OBJECT_ID(N'[dbo].[MIN_MLABOR]', 'U') IS NOT NULL
    DROP TABLE [dbo].[MIN_MLABOR];
GO
IF OBJECT_ID(N'[dbo].[MIN_TMINA]', 'U') IS NOT NULL
    DROP TABLE [dbo].[MIN_TMINA];
GO
IF OBJECT_ID(N'[dbo].[MIN_TNIVEL]', 'U') IS NOT NULL
    DROP TABLE [dbo].[MIN_TNIVEL];
GO
IF OBJECT_ID(N'[dbo].[MIN_TVETA]', 'U') IS NOT NULL
    DROP TABLE [dbo].[MIN_TVETA];
GO
IF OBJECT_ID(N'[dbo].[MIN_TZONA]', 'U') IS NOT NULL
    DROP TABLE [dbo].[MIN_TZONA];
GO
IF OBJECT_ID(N'[dbo].[MIN_USUARIOS_CONTRATAS]', 'U') IS NOT NULL
    DROP TABLE [dbo].[MIN_USUARIOS_CONTRATAS];
GO
IF OBJECT_ID(N'[dbo].[sysdiagrams]', 'U') IS NOT NULL
    DROP TABLE [dbo].[sysdiagrams];
GO
IF OBJECT_ID(N'[sigdatasdoModelStoreContainer].[TBLMENUSU]', 'U') IS NOT NULL
    DROP TABLE [sigdatasdoModelStoreContainer].[TBLMENUSU];
GO
IF OBJECT_ID(N'[dbo].[TBLMENUSUA]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TBLMENUSUA];
GO
IF OBJECT_ID(N'[dbo].[TBLUSUARIOS]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TBLUSUARIOS];
GO
IF OBJECT_ID(N'[sigdatasdoModelStoreContainer].[tmpqaqc2]', 'U') IS NOT NULL
    DROP TABLE [sigdatasdoModelStoreContainer].[tmpqaqc2];
GO
IF OBJECT_ID(N'[sigdatasdoModelStoreContainer].[ge_v_labores]', 'U') IS NOT NULL
    DROP TABLE [sigdatasdoModelStoreContainer].[ge_v_labores];
GO
IF OBJECT_ID(N'[sigdatasdoModelStoreContainer].[GE_V_LABORES_SUBTERRANEA]', 'U') IS NOT NULL
    DROP TABLE [sigdatasdoModelStoreContainer].[GE_V_LABORES_SUBTERRANEA];
GO
IF OBJECT_ID(N'[sigdatasdoModelStoreContainer].[GE_V_LABORES_SUBTERRANEA_DETALLE]', 'U') IS NOT NULL
    DROP TABLE [sigdatasdoModelStoreContainer].[GE_V_LABORES_SUBTERRANEA_DETALLE];
GO
IF OBJECT_ID(N'[sigdatasdoModelStoreContainer].[ge_v_menu]', 'U') IS NOT NULL
    DROP TABLE [sigdatasdoModelStoreContainer].[ge_v_menu];
GO
IF OBJECT_ID(N'[sigdatasdoModelStoreContainer].[ge_v_menu_user]', 'U') IS NOT NULL
    DROP TABLE [sigdatasdoModelStoreContainer].[ge_v_menu_user];
GO
IF OBJECT_ID(N'[sigdatasdoModelStoreContainer].[GE_V_TIPOCANAL]', 'U') IS NOT NULL
    DROP TABLE [sigdatasdoModelStoreContainer].[GE_V_TIPOCANAL];
GO
IF OBJECT_ID(N'[sigdatasdoModelStoreContainer].[GE_V_TIPOMUESTREO]', 'U') IS NOT NULL
    DROP TABLE [sigdatasdoModelStoreContainer].[GE_V_TIPOMUESTREO];
GO
IF OBJECT_ID(N'[sigdatasdoModelStoreContainer].[GE_V_TIPOMUESTREOEN]', 'U') IS NOT NULL
    DROP TABLE [sigdatasdoModelStoreContainer].[GE_V_TIPOMUESTREOEN];
GO
IF OBJECT_ID(N'[sigdatasdoModelStoreContainer].[GE_V_TIPOQAQC]', 'U') IS NOT NULL
    DROP TABLE [sigdatasdoModelStoreContainer].[GE_V_TIPOQAQC];
GO
IF OBJECT_ID(N'[sigdatasdoModelStoreContainer].[GE_V_TIPUBICACION]', 'U') IS NOT NULL
    DROP TABLE [sigdatasdoModelStoreContainer].[GE_V_TIPUBICACION];
GO
IF OBJECT_ID(N'[sigdatasdoModelStoreContainer].[sig_v_grapro]', 'U') IS NOT NULL
    DROP TABLE [sigdatasdoModelStoreContainer].[sig_v_grapro];
GO
IF OBJECT_ID(N'[sigdatasdoModelStoreContainer].[vmuestrasqaqcl1]', 'U') IS NOT NULL
    DROP TABLE [sigdatasdoModelStoreContainer].[vmuestrasqaqcl1];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'GE_AUTORIAZACIONES_CODIGOS'
CREATE TABLE [dbo].[GE_AUTORIAZACIONES_CODIGOS] (
    [COMPANIA] varchar(2)  NOT NULL,
    [UNIDAD] varchar(10)  NOT NULL,
    [CODIGO] varchar(11)  NOT NULL,
    [TIPO] varchar(2)  NULL,
    [PROCESO] varchar(10)  NULL,
    [SUBPROCESO] varchar(10)  NULL,
    [ACTIVIDAD] varchar(10)  NULL,
    [USUARIOMODIFICO] varchar(30)  NULL,
    [FECHAMODIFICO] datetime  NULL,
    [VENCE] datetime  NULL,
    [USUARIOUTILIZO] varchar(30)  NULL,
    [FECHAUTILIZO] datetime  NULL
);
GO

-- Creating table 'GE_BLENDING'
CREATE TABLE [dbo].[GE_BLENDING] (
    [COMPANIA] varchar(2)  NOT NULL,
    [UNIDAD] varchar(10)  NOT NULL,
    [PERIODO] varchar(10)  NOT NULL,
    [BLENDING] float  NOT NULL,
    [FECHA] datetime  NULL,
    [TURNO] varchar(1)  NULL,
    [ORE_CONTROL] varchar(30)  NULL,
    [SUPERVISOR] varchar(30)  NULL,
    [TMH_PROGRAMADO] decimal(38,2)  NULL,
    [LEY_PROGRAMADA] decimal(38,2)  NULL,
    [CREADOPOR] varchar(30)  NULL,
    [CREADOEL] datetime  NULL,
    [ESTADO] varchar(2)  NULL,
    [TMH_TOLVA] decimal(18,2)  NULL,
    [TMH_SALDO] decimal(18,2)  NULL,
    [PRIORIDAD] varchar(40)  NULL
);
GO

-- Creating table 'GE_BLENDING_DETALLE'
CREATE TABLE [dbo].[GE_BLENDING_DETALLE] (
    [COMPANIA] varchar(2)  NOT NULL,
    [UNIDAD] varchar(10)  NOT NULL,
    [PERIODO] varchar(10)  NOT NULL,
    [BLENDING] float  NOT NULL,
    [SECTOR] varchar(6)  NOT NULL,
    [AREA] varchar(6)  NOT NULL,
    [POLIGONO] varchar(50)  NOT NULL,
    [CARGA] float  NOT NULL,
    [CARGA_DETALLE] varchar(50)  NULL,
    [CARGA_TIPO] varchar(2)  NULL,
    [TMH_PROGRAMADO] float  NULL,
    [LEY_PROGRAMADO] float  NULL
);
GO

-- Creating table 'GE_BLENDING_RESULTADO'
CREATE TABLE [dbo].[GE_BLENDING_RESULTADO] (
    [COMPANIA] varchar(2)  NOT NULL,
    [UNIDAD] varchar(10)  NOT NULL,
    [PERIODO] varchar(10)  NOT NULL,
    [FECHA_PROCESO] datetime  NOT NULL,
    [REPORTE] varchar(10)  NULL,
    [SUPERVISOR] varchar(30)  NULL,
    [TMH_PROCESADO] decimal(38,2)  NULL,
    [LEY_CABEZA] decimal(38,2)  NULL,
    [FINOS] decimal(38,2)  NULL,
    [CREADOPOR] varchar(30)  NULL,
    [CREADOEL] datetime  NULL
);
GO

-- Creating table 'GE_BLENDING_SALDOS'
CREATE TABLE [dbo].[GE_BLENDING_SALDOS] (
    [COMPANIA] varchar(2)  NOT NULL,
    [UNIDAD] varchar(10)  NOT NULL,
    [PERIODO] varchar(10)  NOT NULL,
    [BLENDING] float  NOT NULL,
    [TMH_SALDO] decimal(38,2)  NULL,
    [LEY_SALDO] decimal(38,2)  NULL,
    [CREADOPOR] varchar(30)  NULL,
    [CREADOEL] datetime  NULL,
    [SECTOR] varchar(6)  NULL,
    [AREA] varchar(6)  NULL,
    [POLIGONO] varchar(50)  NULL,
    [ORDEN] float  NOT NULL,
    [ESTADO] varchar(2)  NULL
);
GO

-- Creating table 'GE_CONFIGURACION_MAIL'
CREATE TABLE [dbo].[GE_CONFIGURACION_MAIL] (
    [ID] bigint IDENTITY(1,1) NOT NULL,
    [DESTINATARIO] varchar(max)  NULL,
    [USUARIO] varchar(500)  NULL,
    [CLAVE] nchar(10)  NULL
);
GO

-- Creating table 'GE_CONTRATA_EQUIPOS'
CREATE TABLE [dbo].[GE_CONTRATA_EQUIPOS] (
    [CONTRATA] varchar(30)  NOT NULL,
    [CODIGO] varchar(50)  NOT NULL,
    [MODELO] varchar(50)  NULL,
    [DESCRIPCION] varchar(100)  NULL,
    [SERIE_EQUIPO] varchar(30)  NULL,
    [COMPANIA] varchar(2)  NOT NULL,
    [UNIDAD] varchar(10)  NOT NULL
);
GO

-- Creating table 'GE_DOCUMENTO_MAIL'
CREATE TABLE [dbo].[GE_DOCUMENTO_MAIL] (
    [COMPANIA] varchar(2)  NOT NULL,
    [UNIDAD] varchar(10)  NOT NULL,
    [TIPO_DOC] varchar(2)  NOT NULL,
    [NUMERO] varchar(20)  NOT NULL,
    [FECHA] datetime  NULL,
    [USUARIO] varchar(20)  NULL,
    [NRO_ENVIOS] float  NULL
);
GO

-- Creating table 'GE_DW_COLUMNAS'
CREATE TABLE [dbo].[GE_DW_COLUMNAS] (
    [USUARIO] varchar(30)  NOT NULL,
    [FECHA] datetime  NOT NULL,
    [VENTANA] varchar(50)  NOT NULL,
    [DATAWINDOW] varchar(50)  NOT NULL,
    [COLUMNA] varchar(50)  NOT NULL,
    [ACTIVA] varchar(1)  NULL
);
GO

-- Creating table 'GE_INF_GEOLOGICA'
CREATE TABLE [dbo].[GE_INF_GEOLOGICA] (
    [COD] varchar(5)  NOT NULL,
    [DESCRIPCION] varchar(300)  NULL,
    [ABREVIATURA] varchar(50)  NULL,
    [TIPO] varchar(200)  NULL
);
GO

-- Creating table 'GE_LABORES_SUBTERRANEA'
CREATE TABLE [dbo].[GE_LABORES_SUBTERRANEA] (
    [ID] bigint IDENTITY(1,1) NOT NULL,
    [PROYECTO] varchar(500)  NULL,
    [TLABOR] varchar(50)  NULL,
    [CODIFICACION] varchar(200)  NULL,
    [DESCRIPCION] varchar(500)  NULL,
    [USRCRE] varchar(500)  NULL,
    [FECCRE] datetime  NULL,
    [USRMOD] varchar(500)  NULL,
    [FECMOD] datetime  NULL,
    [NIVEL] decimal(18,2)  NULL
);
GO

-- Creating table 'GE_METODO_CASTIGO_LEY'
CREATE TABLE [dbo].[GE_METODO_CASTIGO_LEY] (
    [COMPANIA] varchar(2)  NOT NULL,
    [UNIDAD] varchar(10)  NOT NULL,
    [METODO] float  NOT NULL,
    [DESCRIPCION] varchar(50)  NULL,
    [SALTO_ERRATICO] decimal(20,2)  NULL,
    [DETALLE_METODO] varchar(255)  NULL,
    [TIPO] varchar(2)  NOT NULL,
    [NUMERO_DESVIACIONES] float  NULL
);
GO

-- Creating table 'GE_METODO_CASTIGO_LEY_DET'
CREATE TABLE [dbo].[GE_METODO_CASTIGO_LEY_DET] (
    [COMPANIA] varchar(2)  NOT NULL,
    [UNIDAD] varchar(10)  NOT NULL,
    [METODO] float  NOT NULL,
    [RANGO] float  NOT NULL,
    [VALOR_DE_INI] decimal(10,2)  NULL,
    [VALOR_DE_FIN] decimal(10,2)  NULL,
    [NRO_DE] float  NULL
);
GO

-- Creating table 'GE_MODELO_ACTIVIDAD'
CREATE TABLE [dbo].[GE_MODELO_ACTIVIDAD] (
    [COMPANIA] varchar(2)  NOT NULL,
    [UNIDAD] varchar(10)  NOT NULL,
    [PROCESO] varchar(10)  NOT NULL,
    [SUBPROCESO] varchar(10)  NOT NULL,
    [ACTIVIDAD] varchar(10)  NOT NULL,
    [DESCRIPCION] varchar(255)  NULL,
    [W_OBJ] varchar(255)  NULL
);
GO

-- Creating table 'GE_MODELO_PROCESO'
CREATE TABLE [dbo].[GE_MODELO_PROCESO] (
    [COMPANIA] varchar(2)  NOT NULL,
    [UNIDAD] varchar(10)  NOT NULL,
    [PROCESO] varchar(10)  NOT NULL,
    [DESCRIPCION] varchar(255)  NULL
);
GO

-- Creating table 'GE_MODELO_SUBPROCESO'
CREATE TABLE [dbo].[GE_MODELO_SUBPROCESO] (
    [COMPANIA] varchar(2)  NOT NULL,
    [UNIDAD] varchar(10)  NOT NULL,
    [PROCESO] varchar(10)  NOT NULL,
    [SUBPROCESO] varchar(10)  NOT NULL,
    [DESCRIPCION] varchar(255)  NULL
);
GO

-- Creating table 'GE_MOVIMIENTOS_MINERAL'
CREATE TABLE [dbo].[GE_MOVIMIENTOS_MINERAL] (
    [COMPANIA] varchar(2)  NOT NULL,
    [UNIDAD] varchar(10)  NOT NULL,
    [PERIODO] varchar(4)  NOT NULL,
    [MOVIMIENTO] float  NOT NULL,
    [FECHA] datetime  NULL,
    [LABOR_ORIGEN] varchar(12)  NULL,
    [LABOR_DESTINO] varchar(12)  NULL,
    [TONELAJE] decimal(20,2)  NULL,
    [LEY] decimal(20,2)  NULL,
    [SITUACION_MINERAL] varchar(2)  NULL,
    [TRANSACCION] varchar(2)  NULL,
    [FECHA_CUBICACION] datetime  NULL,
    [MODIFICADOEL] datetime  NULL,
    [MODIFICADOPOR] varchar(30)  NULL
);
GO

-- Creating table 'GE_MT_COMPANIA'
CREATE TABLE [dbo].[GE_MT_COMPANIA] (
    [COMPANIA] varchar(2)  NOT NULL,
    [DESCRIPCION] varchar(40)  NULL
);
GO

-- Creating table 'GE_MT_COMPANIA_UNIDAD'
CREATE TABLE [dbo].[GE_MT_COMPANIA_UNIDAD] (
    [COMPANIA] varchar(2)  NOT NULL,
    [UNIDAD] varchar(10)  NOT NULL,
    [DESCRIPCION] varchar(50)  NULL
);
GO

-- Creating table 'GE_MT_LITOLOGIA'
CREATE TABLE [dbo].[GE_MT_LITOLOGIA] (
    [LITOLOGIA] float  NOT NULL,
    [DESCRIPCION] varchar(50)  NULL,
    [LIT_ABR] varchar(5)  NULL
);
GO

-- Creating table 'GE_MT_MINERALIZACION'
CREATE TABLE [dbo].[GE_MT_MINERALIZACION] (
    [MINERALIZACION] float  NOT NULL,
    [DESCRIPCION] varchar(50)  NULL,
    [MIN_ABR] varchar(5)  NULL
);
GO

-- Creating table 'GE_MT_TIPO_MUESTREO'
CREATE TABLE [dbo].[GE_MT_TIPO_MUESTREO] (
    [NOMBRE] varchar(50)  NULL,
    [DESCRIPCION] varchar(100)  NULL,
    [PREFIJO_MUESTRA] varchar(2)  NULL,
    [ESTADO] varchar(2)  NULL,
    [TIPO] varchar(2)  NOT NULL
);
GO

-- Creating table 'GE_MT_TRANSACCIONES'
CREATE TABLE [dbo].[GE_MT_TRANSACCIONES] (
    [TRANSACCION] varchar(2)  NOT NULL,
    [DESCRIPCION] varchar(50)  NULL,
    [TIPO] varchar(1)  NULL
);
GO

-- Creating table 'GE_ORDEN_TRABAJO_LAB'
CREATE TABLE [dbo].[GE_ORDEN_TRABAJO_LAB] (
    [COMPANIA] varchar(2)  NOT NULL,
    [UNIDAD] varchar(10)  NOT NULL,
    [ORDEN] varchar(10)  NOT NULL,
    [FECHA_ORDEN] datetime  NULL,
    [FECHA_LABORATORIO] datetime  NULL,
    [RESPOBSABLE_ENTREGA] varchar(30)  NULL,
    [OBSERVACION] varchar(50)  NULL,
    [MODIFICADOPOR] varchar(30)  NULL,
    [MODIFICADOEL] datetime  NULL
);
GO

-- Creating table 'GE_ORDEN_TRABAJO_LAB_DET'
CREATE TABLE [dbo].[GE_ORDEN_TRABAJO_LAB_DET] (
    [COMPANIA] varchar(2)  NOT NULL,
    [UNIDAD] varchar(10)  NOT NULL,
    [ORDEN] varchar(10)  NOT NULL,
    [MUESTRA] varchar(12)  NOT NULL,
    [OBSERVACION] varchar(255)  NULL
);
GO

-- Creating table 'GE_PARAMETROS'
CREATE TABLE [dbo].[GE_PARAMETROS] (
    [PARAMETRO] varchar(30)  NOT NULL,
    [DESCRIPCION] varchar(255)  NULL,
    [DETALLE] varchar(255)  NULL,
    [COMPANIA] varchar(2)  NULL,
    [UNIDAD] varchar(10)  NULL
);
GO

-- Creating table 'GE_PERFORACION_CAB'
CREATE TABLE [dbo].[GE_PERFORACION_CAB] (
    [ID] bigint IDENTITY(1,1) NOT NULL,
    [NOMBRE] varchar(50)  NULL,
    [CORREL] varchar(50)  NULL,
    [ESTADO] varchar(50)  NULL,
    [TIPO] varchar(50)  NULL
);
GO

-- Creating table 'GE_PERIODOS'
CREATE TABLE [dbo].[GE_PERIODOS] (
    [COMPANIA] varchar(2)  NOT NULL,
    [UNIDAD] varchar(10)  NOT NULL,
    [PERIODO] decimal(4,0)  NOT NULL,
    [MES] decimal(2,0)  NOT NULL,
    [DESDE] datetime  NULL,
    [HASTA] datetime  NULL
);
GO

-- Creating table 'GE_POLIGONO_CAB'
CREATE TABLE [dbo].[GE_POLIGONO_CAB] (
    [COMPANIA] varchar(2)  NOT NULL,
    [UNIDAD] varchar(10)  NOT NULL,
    [POLIGONO] varchar(50)  NOT NULL,
    [REFERENCIA] varchar(20)  NULL,
    [NRO_MUESTRAS] float  NULL,
    [MEDIA_LAB] decimal(38,3)  NULL,
    [MEDIA_GEO] decimal(38,3)  NULL,
    [DESVIACION_ESTANDAR] decimal(38,3)  NULL,
    [ALTO_ERRATICO] decimal(38,3)  NULL,
    [ALTOS_ERRATICOS] float  NULL,
    [LABOR] varchar(20)  NULL,
    [METODO] float  NULL,
    [FECHACREA] datetime  NULL,
    [USUARIOCREA] varchar(30)  NULL,
    [ESTADO] varchar(2)  NULL,
    [AREA] decimal(38,2)  NULL,
    [DENSIDAD] decimal(38,2)  NULL,
    [POTENCIA] decimal(38,2)  NULL,
    [TONELAJE] decimal(38,2)  NULL,
    [TONELAJE_PESADO] decimal(38,2)  NULL,
    [FECHACR] datetime  NULL,
    [USUARIOCR] varchar(30)  NULL
);
GO

-- Creating table 'GE_PROGRAMA_MUESTREO'
CREATE TABLE [dbo].[GE_PROGRAMA_MUESTREO] (
    [ID] bigint IDENTITY(1,1) NOT NULL,
    [COMPANIA] varchar(2)  NOT NULL,
    [UNIDAD] varchar(10)  NOT NULL,
    [PROGRAMA] varchar(15)  NOT NULL,
    [OBSERVACION] varchar(50)  NULL,
    [FECHA] datetime  NULL,
    [MODIFICADOPOR] varchar(30)  NULL,
    [MODIFICADOEL] datetime  NULL,
    [TURNO] varchar(1)  NOT NULL,
    [MUESTRAS_OBJETIVO] float  NULL,
    [MUESTRAS_REAL] float  NULL,
    [ESTADO] varchar(2)  NULL,
    [TIPO] varchar(2)  NULL,
    [PROYECTO_CODIGO] varchar(10)  NULL,
    [PROYECTO_DESCRIPCION] varchar(255)  NULL
);
GO

-- Creating table 'GE_PROGRAMA_MUESTREO_PERSONAL'
CREATE TABLE [dbo].[GE_PROGRAMA_MUESTREO_PERSONAL] (
    [COMPANIA] varchar(2)  NOT NULL,
    [UNIDAD] varchar(10)  NOT NULL,
    [PROGRAMA] varchar(15)  NOT NULL,
    [LABOR] varchar(12)  NOT NULL,
    [PERSONAL] varchar(30)  NOT NULL
);
GO

-- Creating table 'GE_PROYECTO_PRF'
CREATE TABLE [dbo].[GE_PROYECTO_PRF] (
    [ID] bigint IDENTITY(1,1) NOT NULL,
    [PROYECTO] varchar(50)  NOT NULL,
    [OBJETIVO] varchar(400)  NULL,
    [FECHA] datetime  NULL,
    [RESUMEN] varchar(500)  NULL,
    [FECHACREA] datetime  NULL,
    [USUARCREA] varchar(200)  NULL,
    [CORDENADAE] decimal(20,3)  NULL,
    [CORDENADAN] decimal(20,3)  NULL,
    [COTA] decimal(20,3)  NULL,
    [AZIMUT] decimal(20,3)  NULL,
    [INCLINACION] decimal(20,3)  NULL,
    [ARCHIVO] varchar(2000)  NULL
);
GO

-- Creating table 'GE_RECURSOS_AREA'
CREATE TABLE [dbo].[GE_RECURSOS_AREA] (
    [COMPANIA] varchar(2)  NOT NULL,
    [UNIDAD] varchar(10)  NOT NULL,
    [SECTOR] varchar(6)  NOT NULL,
    [AREA] varchar(6)  NOT NULL,
    [TIPO_AREA] varchar(3)  NULL,
    [SECTOR_PADRE] varchar(6)  NULL,
    [AREA_PADRE] varchar(7)  NULL,
    [TIPO_LEY] varchar(2)  NULL,
    [TIPO_MEDICION] varchar(2)  NULL,
    [DESTINO_BLENDING] varchar(1)  NULL,
    [PERIODO] varchar(10)  NOT NULL,
    [MODIFICADOEL] datetime  NULL,
    [MODIFICADOPOR] varchar(30)  NULL,
    [TIPO_BALANCE] varchar(2)  NULL,
    [CATEGORIA] varchar(2)  NULL,
    [DENSIDAD] decimal(38,2)  NULL,
    [TITULAR] varchar(2)  NULL
);
GO

-- Creating table 'GE_RECURSOS_AREA_MOVIMIENTOS'
CREATE TABLE [dbo].[GE_RECURSOS_AREA_MOVIMIENTOS] (
    [COMPANIA] varchar(2)  NOT NULL,
    [UNIDAD] varchar(10)  NOT NULL,
    [SECTOR] varchar(6)  NOT NULL,
    [AREA] varchar(6)  NOT NULL,
    [PERIODO] varchar(8)  NOT NULL,
    [FECHA_MOV] datetime  NULL,
    [TRANSACCION] varchar(3)  NULL,
    [TONELAJE] decimal(38,2)  NULL,
    [SECTOR_ORIGEN] varchar(6)  NULL,
    [AREA_ORIGEN] varchar(6)  NULL,
    [LEY] decimal(38,2)  NULL,
    [MOVIMIENTO] float  NOT NULL,
    [MEDICION_TOPOGRAFIA_ID] float  NULL,
    [MEDICION_MODELO_ID] float  NULL,
    [MEDICION_PESAJE_ID] varchar(10)  NULL,
    [POLIGONO] varchar(50)  NULL,
    [LABOR] varchar(20)  NULL,
    [BLENDING] float  NULL,
    [MIGRACION] varchar(30)  NULL
);
GO

-- Creating table 'GE_RECURSOS_AREA_PERIODO'
CREATE TABLE [dbo].[GE_RECURSOS_AREA_PERIODO] (
    [COMPANIA] varchar(2)  NOT NULL,
    [UNIDAD] varchar(10)  NOT NULL,
    [SECTOR] varchar(6)  NOT NULL,
    [AREA] varchar(6)  NOT NULL,
    [PERIODO] varchar(10)  NOT NULL,
    [FECHA] datetime  NULL,
    [RECURSO_MEDIDIO] decimal(38,2)  NULL,
    [RECURSO_INDICADO] decimal(38,2)  NULL,
    [RECURSO_INFERIDO] decimal(38,2)  NULL,
    [CORTE] nvarchar(6)  NOT NULL,
    [LEY_MEDIDO] decimal(38,2)  NULL,
    [LEY_INDICADO] decimal(38,2)  NULL,
    [LEY_INFERIDO] decimal(38,2)  NULL,
    [CATOFF] decimal(38,2)  NULL
);
GO

-- Creating table 'GE_RECURSOS_CATEGORIA_CAMBIO'
CREATE TABLE [dbo].[GE_RECURSOS_CATEGORIA_CAMBIO] (
    [COMPANIA] varchar(2)  NOT NULL,
    [UNIDAD] varchar(10)  NOT NULL,
    [SECTOR] varchar(6)  NOT NULL,
    [AREA] varchar(6)  NOT NULL,
    [PERIODO] varchar(10)  NOT NULL,
    [CORTE] varchar(2)  NOT NULL,
    [MOVIMIENTO] float  NOT NULL,
    [TRANSACCION] varchar(3)  NULL,
    [FECHA] datetime  NULL,
    [TMH] decimal(38,2)  NULL,
    [LEY] decimal(38,2)  NULL,
    [CREADOPOR] varchar(20)  NULL,
    [CREADOEL] datetime  NULL,
    [SUSTENTO] varchar(255)  NULL,
    [DETALLE_CAMBIO] varchar(2500)  NULL
);
GO

-- Creating table 'GE_RECURSOS_CLASIFICACION'
CREATE TABLE [dbo].[GE_RECURSOS_CLASIFICACION] (
    [CATEGORIA] varchar(2)  NOT NULL,
    [DESCRIPCION] varchar(50)  NULL
);
GO

-- Creating table 'GE_RECURSOS_LEVANTAMIENTO_TOPO'
CREATE TABLE [dbo].[GE_RECURSOS_LEVANTAMIENTO_TOPO] (
    [COMPANIA] varchar(2)  NOT NULL,
    [UNIDAD] varchar(10)  NOT NULL,
    [MEDICION] float  NOT NULL,
    [PERIODO] varchar(4)  NULL,
    [FECHA] datetime  NULL,
    [SECTOR] varchar(6)  NULL,
    [AREA] varchar(7)  NULL,
    [LEY] decimal(38,2)  NULL,
    [METROS_CUBICOS] decimal(38,2)  NULL,
    [DENSIDAD] decimal(38,2)  NULL,
    [CONTRATA] varchar(30)  NULL,
    [TOPOGRAFO] varchar(30)  NULL,
    [OBSERVACION] varchar(500)  NULL,
    [PESO_TMH] decimal(38,2)  NULL,
    [GENERA_MOVIMIENTO] varchar(1)  NULL
);
GO

-- Creating table 'GE_RECURSOS_PILAS'
CREATE TABLE [dbo].[GE_RECURSOS_PILAS] (
    [COMPANIA] varchar(2)  NOT NULL,
    [UNIDAD] varchar(10)  NOT NULL,
    [PILA] varchar(20)  NOT NULL,
    [SECTOR] varchar(6)  NULL,
    [AREA] varchar(6)  NULL,
    [POLIGONO] varchar(30)  NULL,
    [LEY] decimal(38,2)  NULL,
    [TONELAJE_SALDO] decimal(38,2)  NULL,
    [ESTADO] varchar(2)  NULL,
    [CUADRICULA] varchar(10)  NULL
);
GO

-- Creating table 'GE_RECURSOS_TRANSACCIONES'
CREATE TABLE [dbo].[GE_RECURSOS_TRANSACCIONES] (
    [COMPANIA] varchar(2)  NOT NULL,
    [UNIDAD] varchar(10)  NOT NULL,
    [TRANSACCION] varchar(3)  NOT NULL,
    [DESCRIPCION] varchar(100)  NULL,
    [SUSTENTO] varchar(1500)  NULL,
    [SECTOR_DESTINO] varchar(6)  NULL,
    [AREA_DESTINO] varchar(7)  NULL,
    [TIPO_OPERACION] varchar(1)  NULL,
    [TIPO_AREA] varchar(3)  NULL
);
GO

-- Creating table 'GE_REGISTRO_POLIGONO'
CREATE TABLE [dbo].[GE_REGISTRO_POLIGONO] (
    [COMPANIA] varchar(2)  NOT NULL,
    [UNIDAD] varchar(10)  NOT NULL,
    [POLIGONO] varchar(50)  NOT NULL,
    [COMENTARIO] varchar(50)  NULL,
    [LABOR] varchar(20)  NULL,
    [METODO] float  NULL,
    [NUMERO_MUESTRAS] float  NULL,
    [MEDIA_PONDERADA_LAB] decimal(38,3)  NULL,
    [MEDIA_PONDERADA_GEO] decimal(38,3)  NULL,
    [DESVIACION_ESTANDAR] decimal(38,3)  NULL,
    [SALTO_ERRATICO_MAYOR_A] decimal(38,3)  NULL,
    [NUMERO_SALTOS_ERRATICOS] decimal(38,3)  NULL,
    [USUARIOMODIFICO] varchar(20)  NULL,
    [FECHAMODIFICO] datetime  NULL
);
GO

-- Creating table 'GE_REP_BALANZA'
CREATE TABLE [dbo].[GE_REP_BALANZA] (
    [CANO_ID] varchar(4)  NOT NULL,
    [CMES_ID] varchar(2)  NOT NULL,
    [CBALANZA_ITEM] varchar(6)  NOT NULL,
    [DBALANZA_FECHA] datetime  NULL,
    [CACTIVOS_FIJOS_ID] varchar(10)  NULL,
    [CACTIVOS_FIJOS_DESC] varchar(80)  NULL,
    [CCARGA_ID] varchar(6)  NULL,
    [VCARGA_DESCRIPCION] varchar(100)  NULL,
    [CTURNO_ID] varchar(6)  NULL,
    [VTURNO_NOMBRE] varchar(100)  NULL,
    [CMINA_ID] varchar(6)  NULL,
    [VMINA_DESCRIPCION] varchar(100)  NULL,
    [CVETA_ID] varchar(6)  NULL,
    [VVETA_DESCRIPCION] varchar(100)  NULL,
    [DFECHA_INICIAL] datetime  NULL,
    [NTONELAJE_INICIAL] decimal(12,2)  NULL,
    [DFECHA_FINAL] datetime  NULL,
    [NTONELAJE_FINAL] decimal(12,2)  NULL,
    [NPESO_NETO] decimal(12,2)  NULL,
    [CTOLVA_ID] varchar(6)  NULL,
    [VTOLVA_DESCRIPCION] varchar(100)  NULL,
    [COPERADOR_ID] varchar(10)  NULL,
    [CCHOFER] varchar(50)  NULL,
    [CUSUARIOMODIFICA_ID] varchar(20)  NULL,
    [POLIGONO] varchar(50)  NULL,
    [LABOR_ORIGEN] varchar(20)  NULL,
    [LABOR_DESTINO] varchar(20)  NULL,
    [TIPO_MINERAL] varchar(2)  NULL,
    [APILAR_EN] varchar(30)  NULL,
    [UBICACION_PILA] varchar(1)  NULL
);
GO

-- Creating table 'GE_REPORTE_LABORATORIO'
CREATE TABLE [dbo].[GE_REPORTE_LABORATORIO] (
    [COMPANIA] varchar(2)  NOT NULL,
    [UNIDAD] varchar(10)  NOT NULL,
    [PROGRAMA] varchar(15)  NOT NULL,
    [REPORTE] float  NOT NULL,
    [CONTRATA] varchar(30)  NULL,
    [REPORTA] varchar(30)  NULL,
    [SUPERVISOR] varchar(30)  NULL,
    [FECHA_REPORTE] datetime  NULL,
    [OBSERVACIONES] varchar(255)  NULL,
    [ORDEN_TRABAJO] varchar(10)  NULL,
    [FECHA_RECEPCION_OT] datetime  NULL
);
GO

-- Creating table 'GE_REPORTE_MUESTREO'
CREATE TABLE [dbo].[GE_REPORTE_MUESTREO] (
    [ID] bigint IDENTITY(1,1) NOT NULL,
    [COMPANIA] varchar(2)  NOT NULL,
    [UNIDAD] varchar(10)  NOT NULL,
    [PROGRAMA] varchar(15)  NOT NULL,
    [REPORTE] varchar(20)  NOT NULL,
    [REPORTA] varchar(30)  NULL,
    [SUPERVISOR] varchar(30)  NULL,
    [FECHA_REPORTE] datetime  NULL,
    [LABOR] varchar(12)  NULL,
    [OBSERVACION] varchar(255)  NULL,
    [ORDEN_LABORATORIO] varchar(10)  NULL,
    [FECHA_ENTREGA] datetime  NULL,
    [RESPONSABLE_ENTREGA] varchar(50)  NULL,
    [MUESTRAS_ENTREGADAS] decimal(10,0)  NULL,
    [USRCRE] varchar(50)  NULL,
    [FECCRE] datetime  NULL,
    [USRMOD] varchar(50)  NULL,
    [FECMOD] datetime  NULL
);
GO

-- Creating table 'GE_REPORTE_MUESTREO_DETALLE'
CREATE TABLE [dbo].[GE_REPORTE_MUESTREO_DETALLE] (
    [ID] bigint IDENTITY(1,1) NOT NULL,
    [COMPANIA] varchar(2)  NOT NULL,
    [UNIDAD] varchar(10)  NOT NULL,
    [PROGRAMA] varchar(15)  NOT NULL,
    [REPORTE] varchar(20)  NOT NULL,
    [MUESTRA] varchar(12)  NOT NULL,
    [LONGITUD] decimal(12,2)  NULL,
    [SISTEMA_MUESTREO] varchar(2)  NULL,
    [RESPONSABLE] varchar(30)  NULL,
    [OBSERVACION] varchar(255)  NULL,
    [TIPO_MUESTREO] varchar(2)  NULL,
    [AZIMUT] decimal(12,2)  NULL,
    [INCLINACION] decimal(10,2)  NULL,
    [QAQC] varchar(2)  NULL,
    [TOPOGRAFIA_X] decimal(38,3)  NULL,
    [TOPOGRAFIA_Y] decimal(38,3)  NULL,
    [TOPOGRAFIA_Z] decimal(38,3)  NULL,
    [REPORTE_TOPOGRAFIA] float  NULL,
    [REPORTE_LABORATORIO] float  NULL,
    [LABORATORIO_LOCAL_LEY] decimal(38,3)  NULL,
    [LABORATORIO_LOCAL_HUMEDAD] decimal(38,3)  NULL,
    [LABORATORIO_EXT01_LEY] decimal(38,3)  NULL,
    [LABORATORIO_EXT01_HUMEDAD] decimal(38,3)  NULL,
    [LABORATORIO_EXT02_LEY] decimal(38,3)  NULL,
    [LABORATORIO_EXT02_HUMEDAD] decimal(38,3)  NULL,
    [LITOLOGIA] varchar(100)  NULL,
    [MINERALIZACION] varchar(100)  NULL,
    [POLIGONO] varchar(50)  NULL,
    [ORDEN_LABORATORIO] varchar(10)  NULL,
    [FECHA_ENTREGA] datetime  NULL,
    [RESPONSABLE_ENTREGA] varchar(30)  NULL,
    [AYUDANTE] varchar(30)  NULL,
    [PROYECTO] varchar(30)  NULL,
    [MUESTRA_QAQC] varchar(12)  NULL,
    [LABORATORIO_APROBACION_FEC] datetime  NULL,
    [LABORATORIO_APROBACION_USU] varchar(30)  NULL,
    [LEY_GEOLOGIA] decimal(38,3)  NULL,
    [PILA] float  NULL,
    [POLIGONO_REFERENCIA] varchar(20)  NULL,
    [LABORATORIO_LEY_ESTADO] varchar(2)  NULL,
    [LABORATORIO_LEY_OBS] varchar(100)  NULL,
    [TITULAR] varchar(2)  NULL,
    [LABOR] varchar(20)  NULL,
    [SONDAJE] varchar(20)  NULL,
    [METRAJE_FROM] decimal(38,2)  NULL,
    [METRAJE_TO] decimal(38,2)  NULL,
    [TIPO_CANAL] varchar(2)  NULL,
    [MUESTREO_EN] varchar(2)  NULL,
    [MANTO] varchar(50)  NULL,
    [CALICATA] varchar(15)  NULL,
    [CC_ANCHO] decimal(38,2)  NULL,
    [CC_LARGO] decimal(38,2)  NULL,
    [ZMUESTRA] varchar(40)  NULL,
    [LOGUEO] varchar(400)  NULL,
    [REFERENCIAM] varchar(500)  NULL,
    [GEMMUESTRA] varchar(12)  NULL,
    [RECMUESTRA] varchar(12)  NULL,
    [DUPMUESTRA] varchar(12)  NULL,
    [LEYGEMMUESTRA] decimal(38,3)  NULL,
    [LEYRECMUESTRA] decimal(38,3)  NULL,
    [LEYDUPMUESTRA] decimal(38,3)  NULL,
    [PRIORIDAD] varchar(15)  NULL,
    [CLITOLOGIA] varchar(50)  NULL,
    [CDLITOLOGIA] varchar(50)  NULL,
    [CALTERACION] varchar(50)  NULL,
    [CDALTERACION] varchar(50)  NULL,
    [CESTRUCTURAS] varchar(50)  NULL,
    [CDESTRUCTURAS] varchar(50)  NULL,
    [CMINERALIZACION] varchar(50)  NULL,
    [CDMINERALIZACION] varchar(50)  NULL,
    [PULMUESTRA] varchar(12)  NULL,
    [USRCRE] varchar(50)  NULL,
    [FECCRE] datetime  NULL,
    [USRMOD] varchar(50)  NULL,
    [FECMOD] datetime  NULL
);
GO

-- Creating table 'GE_REPORTE_MUESTREO_LABORATO'
CREATE TABLE [dbo].[GE_REPORTE_MUESTREO_LABORATO] (
    [COMPANIA] varchar(3)  NOT NULL,
    [UNIDAD] varchar(10)  NOT NULL,
    [PROGRAMA] varchar(2)  NOT NULL,
    [REPORTE] float  NOT NULL,
    [MUESTRA] varchar(12)  NOT NULL,
    [LEY] decimal(12,2)  NULL,
    [OBSERVACION] varchar(255)  NULL,
    [PERSONAL_LABORATORIO] varchar(30)  NULL
);
GO

-- Creating table 'GE_REPORTE_MUESTREO_UBICA'
CREATE TABLE [dbo].[GE_REPORTE_MUESTREO_UBICA] (
    [ID] bigint IDENTITY(1,1) NOT NULL,
    [COMPANIA] varchar(12)  NULL,
    [UNIDAD] varchar(10)  NULL,
    [PROGRAMA] varchar(15)  NULL,
    [LABOR] varchar(12)  NULL,
    [NUMERO_MUESTREROS] decimal(10,0)  NULL,
    [PROGRAMADO] varchar(2)  NULL,
    [GEOLOGO_RES] varchar(50)  NULL
);
GO

-- Creating table 'ge_reporte_prf'
CREATE TABLE [dbo].[ge_reporte_prf] (
    [ID] bigint IDENTITY(1,1) NOT NULL,
    [proyecto] varchar(100)  NULL,
    [reporta] varchar(50)  NULL,
    [supervisor] varchar(50)  NULL,
    [labor] varchar(50)  NULL,
    [fecha] datetime  NULL,
    [coordenadae] decimal(30,3)  NULL,
    [coordenadan] decimal(30,3)  NULL,
    [cota] decimal(30,3)  NULL,
    [azimut] decimal(10,2)  NULL,
    [inclinacion] decimal(10,2)  NULL,
    [archivopdf] varchar(400)  NULL,
    [estado] varchar(50)  NULL,
    [creadopor] varchar(50)  NULL,
    [fechacrea] datetime  NULL,
    [modifipor] varchar(50)  NULL,
    [fechamod] datetime  NULL,
    [longtotal] decimal(10,3)  NULL,
    [maquina] varchar(150)  NULL,
    [sondaje] varchar(100)  NULL,
    [tipest] varchar(50)  NULL,
    [fechai] datetime  NULL,
    [fechaf] datetime  NULL,
    [referencia] varchar(30)  NULL,
    [aformato] varchar(3000)  NULL,
    [aplanta] varchar(3000)  NULL,
    [objetivo] varchar(3000)  NULL,
    [aseccion] varchar(3000)  NULL
);
GO

-- Creating table 'GE_REPORTE_PRF_DETALLE'
CREATE TABLE [dbo].[GE_REPORTE_PRF_DETALLE] (
    [COMPANIA] varchar(2)  NOT NULL,
    [UNIDAD] varchar(6)  NOT NULL,
    [SONDAJE] varchar(30)  NOT NULL,
    [METRAJE_FROM] decimal(10,3)  NOT NULL,
    [METRAJE_TO] decimal(10,3)  NOT NULL,
    [INTERVALO] decimal(10,3)  NULL,
    [LOGUEO] varchar(2000)  NULL,
    [LITOLOGIA] varchar(200)  NULL,
    [ALTERACION] varchar(200)  NULL,
    [ESTRUCTURAS] varchar(200)  NULL,
    [MINERALIZACION] varchar(200)  NULL,
    [PROYECTO] varchar(100)  NULL,
    [ILITOLOGIA] varchar(20)  NULL,
    [IALTERACION] varchar(20)  NULL,
    [IESTRUCTURAS] varchar(20)  NULL,
    [IMINERALIZACION] varchar(20)  NULL,
    [CORR] decimal(10,0)  NULL,
    [RECUP] decimal(10,3)  NULL,
    [PRECUP] decimal(10,3)  NULL,
    [RQD] decimal(10,3)  NULL,
    [PRQD] decimal(10,3)  NULL
);
GO

-- Creating table 'ge_reporte_prf_detalle_alt'
CREATE TABLE [dbo].[ge_reporte_prf_detalle_alt] (
    [id] bigint IDENTITY(1,1) NOT NULL,
    [compania] varchar(2)  NULL,
    [unidad] varchar(6)  NULL,
    [sondaje] varchar(30)  NULL,
    [metraje_from] decimal(10,3)  NULL,
    [metraje_to] decimal(10,3)  NULL,
    [intervalo] decimal(10,3)  NULL,
    [alteracion] varchar(500)  NULL,
    [detalle] varchar(2000)  NULL,
    [usrcre] varchar(300)  NULL,
    [feccre] datetime  NULL,
    [usrmod] varchar(300)  NULL,
    [fecmod] datetime  NULL,
    [proyecto] varchar(300)  NULL
);
GO

-- Creating table 'ge_reporte_prf_detalle_est'
CREATE TABLE [dbo].[ge_reporte_prf_detalle_est] (
    [id] bigint IDENTITY(1,1) NOT NULL,
    [compania] varchar(2)  NULL,
    [unidad] varchar(6)  NULL,
    [sondaje] varchar(30)  NULL,
    [metraje_from] decimal(10,3)  NULL,
    [metraje_to] decimal(10,3)  NULL,
    [intervalo] decimal(10,3)  NULL,
    [estructura] varchar(500)  NULL,
    [detalle] varchar(2000)  NULL,
    [usrcre] varchar(300)  NULL,
    [feccre] datetime  NULL,
    [usrmod] varchar(300)  NULL,
    [fecmod] datetime  NULL,
    [proyecto] varchar(300)  NULL
);
GO

-- Creating table 'ge_reporte_prf_detalle_lit'
CREATE TABLE [dbo].[ge_reporte_prf_detalle_lit] (
    [id] bigint IDENTITY(1,1) NOT NULL,
    [compania] varchar(2)  NULL,
    [unidad] varchar(6)  NULL,
    [sondaje] varchar(30)  NULL,
    [metraje_from] decimal(10,3)  NULL,
    [metraje_to] decimal(10,3)  NULL,
    [intervalo] decimal(10,3)  NULL,
    [litologia] varchar(500)  NULL,
    [detalle] varchar(2000)  NULL,
    [usrcre] varchar(300)  NULL,
    [feccre] datetime  NULL,
    [usrmod] varchar(300)  NULL,
    [fecmod] datetime  NULL,
    [proyecto] varchar(300)  NULL
);
GO

-- Creating table 'ge_reporte_prf_detalle_min'
CREATE TABLE [dbo].[ge_reporte_prf_detalle_min] (
    [id] bigint IDENTITY(1,1) NOT NULL,
    [compania] varchar(2)  NULL,
    [unidad] varchar(6)  NULL,
    [sondaje] varchar(30)  NULL,
    [metraje_from] decimal(10,3)  NULL,
    [metraje_to] decimal(10,3)  NULL,
    [intervalo] decimal(10,3)  NULL,
    [mineralizacion] varchar(500)  NULL,
    [detalle] varchar(2000)  NULL,
    [usrcre] varchar(300)  NULL,
    [feccre] datetime  NULL,
    [usrmod] varchar(300)  NULL,
    [fecmod] datetime  NULL,
    [proyecto] varchar(300)  NULL
);
GO

-- Creating table 'ge_reporte_prf_detalle_mineco'
CREATE TABLE [dbo].[ge_reporte_prf_detalle_mineco] (
    [id] bigint IDENTITY(1,1) NOT NULL,
    [compania] varchar(2)  NULL,
    [unidad] varchar(6)  NULL,
    [sondaje] varchar(30)  NULL,
    [metraje_from] decimal(10,3)  NULL,
    [metraje_to] decimal(10,3)  NULL,
    [intervalo] decimal(10,3)  NULL,
    [mineconomico] varchar(500)  NULL,
    [detalle] varchar(2000)  NULL,
    [usrcre] varchar(300)  NULL,
    [feccre] datetime  NULL,
    [usrmod] varchar(300)  NULL,
    [fecmod] datetime  NULL,
    [proyecto] varchar(300)  NULL
);
GO

-- Creating table 'GE_REPORTE_PRF_DETALLE_MUESTRA'
CREATE TABLE [dbo].[GE_REPORTE_PRF_DETALLE_MUESTRA] (
    [COMPANIA] varchar(2)  NOT NULL,
    [UNIDAD] varchar(6)  NOT NULL,
    [SONDAJE] varchar(30)  NOT NULL,
    [MUESTRA] varchar(50)  NULL,
    [DESDE] decimal(10,3)  NULL,
    [HASTA] decimal(10,3)  NULL,
    [LEY] decimal(10,3)  NULL,
    [LITOLOGIA] varchar(20)  NULL,
    [ALTERACION] varchar(20)  NULL,
    [ESTRUCTURAS] varchar(20)  NULL,
    [MINERALIZACION] varchar(20)  NULL,
    [PROYECTO] varchar(100)  NULL,
    [ILITOLOGIA] varchar(20)  NULL,
    [IALTERACION] varchar(20)  NULL,
    [IESTRUCTURAS] varchar(20)  NULL,
    [IMINERALZACION] varchar(20)  NULL
);
GO

-- Creating table 'GE_REPORTE_TOPOGRAFICO'
CREATE TABLE [dbo].[GE_REPORTE_TOPOGRAFICO] (
    [COMPANIA] varchar(2)  NOT NULL,
    [UNIDAD] varchar(10)  NOT NULL,
    [PROGRAMA] varchar(15)  NOT NULL,
    [REPORTE] float  NOT NULL,
    [CONTRATA] varchar(30)  NULL,
    [REPORTA] varchar(30)  NULL,
    [SUPERVISOR] varchar(30)  NULL,
    [FECHA_REPORTE] datetime  NULL,
    [OBSERVACIONES] varchar(255)  NULL,
    [USUARIOMODIFICA] varchar(30)  NULL,
    [FECHAMODIFICA] datetime  NULL,
    [CODIGO_AUTORIZACION] varchar(11)  NULL
);
GO

-- Creating table 'GE_SEGURIDAD_USUARIOS'
CREATE TABLE [dbo].[GE_SEGURIDAD_USUARIOS] (
    [COMPANIA] varchar(2)  NOT NULL,
    [UNIDAD] varchar(10)  NOT NULL,
    [USUARIO] varchar(35)  NOT NULL,
    [PROCESO] varchar(10)  NOT NULL,
    [SUBPROCESO] varchar(10)  NOT NULL,
    [ACTIVIDAD] varchar(10)  NOT NULL
);
GO

-- Creating table 'GE_TIPO_LABOR'
CREATE TABLE [dbo].[GE_TIPO_LABOR] (
    [ID] bigint IDENTITY(1,1) NOT NULL,
    [ABREVIATURA] varchar(50)  NULL,
    [NOMBRE] varchar(200)  NULL
);
GO

-- Creating table 'GE_TMP_TRANSPORTE'
CREATE TABLE [dbo].[GE_TMP_TRANSPORTE] (
    [CANO_ID] varchar(4)  NOT NULL,
    [CMES_ID] varchar(2)  NOT NULL,
    [CBALANZA_ITEM] varchar(6)  NOT NULL,
    [DBALANZA_FECHA] datetime  NULL,
    [CACTIVOS_FIJOS_ID] varchar(10)  NULL,
    [CACTIVOS_FIJOS_DESC] varchar(80)  NULL,
    [CCARGA_ID] varchar(6)  NULL,
    [VCARGA_DESCRIPCION] varchar(100)  NULL,
    [CTURNO_ID] varchar(6)  NULL,
    [VTURNO_NOMBRE] varchar(100)  NULL,
    [CMINA_ID] varchar(6)  NULL,
    [VMINA_DESCRIPCION] varchar(100)  NULL,
    [CVETA_ID] varchar(6)  NULL,
    [VVETA_DESCRIPCION] varchar(100)  NULL,
    [DFECHA_INICIAL] datetime  NULL,
    [NTONELAJE_INICIAL] decimal(12,2)  NULL,
    [DFECHA_FINAL] datetime  NULL,
    [NTONELAJE_FINAL] decimal(12,2)  NULL,
    [NPESO_NETO] decimal(12,2)  NULL,
    [CTOLVA_ID] varchar(6)  NULL,
    [VTOLVA_DESCRIPCION] varchar(100)  NULL,
    [COPERADOR_ID] varchar(10)  NULL,
    [CCHOFER] varchar(50)  NULL,
    [CUSUARIOMODIFICA_ID] varchar(20)  NULL,
    [POLIGONO] varchar(50)  NULL,
    [LABOR_ORIGEN] varchar(20)  NULL,
    [LABOR_DESTINO] varchar(20)  NULL,
    [TIPO_MINERAL] varchar(2)  NULL,
    [APILAR_EN] varchar(30)  NULL,
    [UBICACION_PILA] varchar(1)  NULL
);
GO

-- Creating table 'GE_VALGRA_PRO'
CREATE TABLE [dbo].[GE_VALGRA_PRO] (
    [ID] decimal(6,0)  NOT NULL,
    [FECHA] datetime  NULL,
    [PROTMH] decimal(10,2)  NULL,
    [PROAUG] decimal(10,2)  NULL,
    [PROKGA] decimal(10,2)  NULL,
    [PRMTMH] decimal(10,2)  NULL,
    [PRMAUG] decimal(10,2)  NULL,
    [BLETMH] decimal(10,2)  NULL,
    [BLEAUG] decimal(10,2)  NULL,
    [PRPTMH] decimal(10,2)  NULL,
    [PRPAUG] decimal(10,2)  NULL,
    [PRPKAU] decimal(10,2)  NULL,
    [FPGTMH] decimal(10,2)  NULL,
    [FPGAUG] decimal(10,2)  NULL
);
GO

-- Creating table 'GE_VALPRO'
CREATE TABLE [dbo].[GE_VALPRO] (
    [ID] decimal(20,0)  NOT NULL,
    [FECHA] datetime  NULL,
    [TMH_PROG] decimal(18,2)  NULL,
    [LCA_PROG] decimal(18,2)  NULL,
    [TMH_PROC] decimal(18,2)  NULL,
    [LCA_CALC] decimal(18,2)  NULL,
    [FPROG] decimal(18,2)  NULL,
    [FPROD] decimal(18,2)  NULL,
    [LEY_ANALIZADA] decimal(18,2)  NULL
);
GO

-- Creating table 'MIN_MLABOR'
CREATE TABLE [dbo].[MIN_MLABOR] (
    [VLABOR_ID] varchar(12)  NOT NULL,
    [CUNIDAD_ID] varchar(10)  NULL,
    [CZONA_ID] varchar(6)  NULL,
    [CMINA_ID] varchar(6)  NULL,
    [CNIVEL_ID] varchar(6)  NULL,
    [CVETA_ID] varchar(6)  NULL,
    [NLABOR_COORDENADAX] decimal(20,8)  NULL,
    [NLABOR_COORDENADAY] decimal(20,8)  NULL,
    [NLABOR_COORDENADAZ] decimal(20,8)  NULL,
    [CFASE_ID] varchar(6)  NULL,
    [CPROVEEDOR_ID] varchar(8)  NULL,
    [CDIMENSION_ID] varchar(6)  NULL,
    [DLABOR_FECHAAPERTURA] datetime  NULL,
    [CTIPOROCA_ID] varchar(6)  NULL,
    [CCR_ID] varchar(5)  NULL,
    [CTIPOLABOR_ID] varchar(6)  NULL,
    [VLABOR_COMENTARIO] varchar(100)  NULL,
    [CPISO_ID] varchar(6)  NULL,
    [CESTADO_ID] varchar(6)  NULL,
    [CSISTEMALABOR_ID] varchar(6)  NULL,
    [CMETODOLABOR_ID] varchar(6)  NULL,
    [CUSUARIOINGRESO_ID] varchar(20)  NULL,
    [DFECHAINGRESO] datetime  NULL,
    [VPCINGRESO] varchar(20)  NULL,
    [CUSUARIOMODIFICA_ID] varchar(20)  NULL,
    [DFECHAMODIFICA] datetime  NULL,
    [VPCMODIFICA] varchar(20)  NULL,
    [NLABOR_ALTURA] decimal(10,2)  NULL,
    [NLABOR_ANCHO] decimal(10,2)  NULL,
    [CTIPO_ID] varchar(1)  NULL,
    [CESPECIAL_ID] varchar(5)  NULL,
    [BLABOR_PRIORIDAD] varchar(1)  NULL,
    [BLABOR_REHABILITACION] varchar(1)  NULL,
    [COBRAS_ID] varchar(6)  NULL,
    [CESTATUS_ID] varchar(1)  NULL
);
GO

-- Creating table 'MIN_TMINA'
CREATE TABLE [dbo].[MIN_TMINA] (
    [CMINA_ID] varchar(6)  NOT NULL,
    [CSISTEMA_ANTIGUO] varchar(20)  NULL,
    [VMINA_DESCRIPCION] varchar(100)  NULL,
    [DFECHAINGRESO] datetime  NULL,
    [CESTADO_ID] varchar(6)  NULL,
    [CUSUARIOINGRESO_ID] varchar(20)  NULL,
    [VPCINGRESO] varchar(20)  NULL,
    [CUSUARIOMODIFICA_ID] varchar(20)  NULL,
    [DFECHAMODIFICA] datetime  NULL,
    [VPCMODIFICA] varchar(20)  NULL,
    [CESTATUS_ID] varchar(1)  NULL,
    [CZONA_ID] varchar(6)  NULL,
    [NFACTOR_HUMEDAD] decimal(8,4)  NULL,
    [BCLASIFICACION_PEC] varchar(1)  NULL,
    [NPORCENTAJE_PEC] decimal(6,2)  NULL,
    [CCODIGO_PROVEEDOR] varchar(10)  NULL,
    [CGRUPO_ID] varchar(3)  NULL
);
GO

-- Creating table 'MIN_TNIVEL'
CREATE TABLE [dbo].[MIN_TNIVEL] (
    [CNIVEL_ID] varchar(6)  NOT NULL,
    [CSISTEMA_ANTIGUO] varchar(20)  NULL,
    [NNIVEL_DESCRIPCION] varchar(20)  NULL,
    [CESTADO_ID] varchar(6)  NULL,
    [CESTATUS_ID] varchar(1)  NULL,
    [CUSUARIOINGRESO_ID] varchar(20)  NULL,
    [DFECHAINGRESO] datetime  NULL,
    [VPCINGRESO] varchar(20)  NULL,
    [CUSUARIOMODIFICA_ID] varchar(20)  NULL,
    [DFECHAMODIFICA] datetime  NULL,
    [VPCMODIFICA] varchar(20)  NULL
);
GO

-- Creating table 'MIN_TVETA'
CREATE TABLE [dbo].[MIN_TVETA] (
    [CVETA_ID] varchar(6)  NOT NULL,
    [CSISTEMA_ANTIGUO] varchar(20)  NULL,
    [CESTRUCTURA_ID] varchar(6)  NULL,
    [VVETA_DESCRIPCION] varchar(100)  NULL,
    [CESTADO_ID] varchar(6)  NULL,
    [CUSUARIOINGRESO_ID] varchar(20)  NULL,
    [DFECHAINGRESO] datetime  NULL,
    [VPCINGRESO] varchar(20)  NULL,
    [CUSUARIOMODIFICA_ID] varchar(20)  NULL,
    [DFECHAMODIFICA] datetime  NULL,
    [VPCMODIFICA] varchar(20)  NULL,
    [CESTATUS_ID] varchar(1)  NULL,
    [NVETA_DENSIDAD] decimal(10,2)  NULL,
    [CMINA_ID] varchar(6)  NULL,
    [CZONA_ID] varchar(6)  NULL,
    [CUNIDAD_ID] varchar(6)  NULL,
    [CVETA_NUEVA] varchar(6)  NULL,
    [CVETA_SIGTH] varchar(10)  NULL,
    [NVETA_DISTANCIAKM] decimal(10,2)  NULL
);
GO

-- Creating table 'MIN_TZONA'
CREATE TABLE [dbo].[MIN_TZONA] (
    [CZONA_ID] varchar(6)  NOT NULL,
    [CSISTEMA_ANTIGUO] varchar(20)  NULL,
    [VZONA_DESCRIPCION] varchar(100)  NULL,
    [CESTADO_ID] varchar(6)  NULL,
    [CESTATUS_ID] varchar(1)  NULL,
    [CUSUARIOINGRESO_ID] varchar(20)  NULL,
    [DFECHAINGRESO] datetime  NULL,
    [VPCINGRESO] varchar(20)  NULL,
    [CUSUARIOMODIFICA_ID] varchar(20)  NULL,
    [DFECHAMODIFICA] datetime  NULL,
    [VPCMODIFICA] varchar(20)  NULL,
    [NZONA_ORDEN] decimal(10,2)  NULL,
    [CSARH_AREA] varchar(6)  NULL
);
GO

-- Creating table 'MIN_USUARIOS_CONTRATAS'
CREATE TABLE [dbo].[MIN_USUARIOS_CONTRATAS] (
    [USUARIO_CODIGO] varchar(10)  NOT NULL,
    [USUARIO_NOMBRE] varchar(100)  NULL,
    [USUARIO_SISTEMA] varchar(20)  NULL,
    [COMPANIA_CODIGO] varchar(10)  NULL,
    [COMPANIA_NOMBRE] varchar(100)  NULL,
    [TIPO_CIA] varchar(10)  NULL,
    [TIPO_CIA_DES] varchar(20)  NULL,
    [AREA] varchar(10)  NULL,
    [AREA_NOMBRE] varchar(100)  NULL,
    [TIPO_USUARIO] varchar(1)  NULL
);
GO

-- Creating table 'sysdiagrams'
CREATE TABLE [dbo].[sysdiagrams] (
    [name] nvarchar(128)  NOT NULL,
    [principal_id] int  NOT NULL,
    [diagram_id] int IDENTITY(1,1) NOT NULL,
    [version] int  NULL,
    [definition] varbinary(max)  NULL
);
GO

-- Creating table 'TBLMENUSU'
CREATE TABLE [dbo].[TBLMENUSU] (
    [IDMENUSU] int  NOT NULL,
    [IDUNICO] int  NULL,
    [DESCRIPCION] nvarchar(150)  NULL,
    [IDROL] nvarchar(50)  NULL
);
GO

-- Creating table 'TBLMENUSUA'
CREATE TABLE [dbo].[TBLMENUSUA] (
    [IDMENUSU] int  NOT NULL,
    [IDUNICO] int  NULL,
    [DESCRIPCION] nvarchar(150)  NULL,
    [IDROL] nvarchar(50)  NULL
);
GO

-- Creating table 'TBLUSUARIOS'
CREATE TABLE [dbo].[TBLUSUARIOS] (
    [IDUSU] smallint  NOT NULL,
    [USUARIO] varchar(50)  NULL,
    [CLAVE] varchar(50)  NULL,
    [NOMBRE] nvarchar(150)  NULL,
    [ESTADO] char(2)  NULL,
    [USRCRE] varchar(20)  NULL,
    [FECCRE] datetime  NULL,
    [USRMOD] varchar(20)  NULL,
    [FECMOD] datetime  NULL,
    [IDROL] smallint  NULL
);
GO

-- Creating table 'tmpqaqc2'
CREATE TABLE [dbo].[tmpqaqc2] (
    [l451] int  NOT NULL,
    [l452] decimal(10,2)  NOT NULL
);
GO

-- Creating table 'ge_v_labores'
CREATE TABLE [dbo].[ge_v_labores] (
    [VLABOR_ID] varchar(12)  NOT NULL,
    [mlabor] varchar(226)  NOT NULL
);
GO

-- Creating table 'GE_V_LABORES_SUBTERRANEA'
CREATE TABLE [dbo].[GE_V_LABORES_SUBTERRANEA] (
    [ID] bigint IDENTITY(1,1) NOT NULL,
    [NOMBRE] varchar(789)  NULL,
    [PROYECTO] varchar(500)  NULL,
    [NIVEL] decimal(18,2)  NULL,
    [TLABOR] varchar(50)  NULL,
    [CODIFICACION] varchar(200)  NULL,
    [DESCRIPCION] varchar(500)  NULL
);
GO

-- Creating table 'GE_V_LABORES_SUBTERRANEA_DETALLE'
CREATE TABLE [dbo].[GE_V_LABORES_SUBTERRANEA_DETALLE] (
    [ID] bigint IDENTITY(1,1) NOT NULL,
    [NOMBRE] varchar(789)  NULL,
    [PROYECTO] varchar(500)  NULL,
    [NIVEL] decimal(18,2)  NULL,
    [TLABOR] varchar(50)  NULL,
    [CODIFICACION] varchar(200)  NULL,
    [DESCRIPCION] varchar(500)  NULL
);
GO

-- Creating table 'ge_v_menu'
CREATE TABLE [dbo].[ge_v_menu] (
    [MENU] nvarchar(150)  NOT NULL,
    [DESCRIPCION] nvarchar(150)  NULL
);
GO

-- Creating table 'ge_v_menu_user'
CREATE TABLE [dbo].[ge_v_menu_user] (
    [MENU] nvarchar(150)  NOT NULL,
    [DESCRIPCION] nvarchar(150)  NULL,
    [usuario] varchar(50)  NULL,
    [clave] varchar(50)  NULL
);
GO

-- Creating table 'GE_V_TIPOCANAL'
CREATE TABLE [dbo].[GE_V_TIPOCANAL] (
    [CODIGO] varchar(2)  NOT NULL,
    [NOMBRE] varchar(13)  NOT NULL
);
GO

-- Creating table 'GE_V_TIPOMUESTREO'
CREATE TABLE [dbo].[GE_V_TIPOMUESTREO] (
    [CODIGO] varchar(2)  NOT NULL,
    [NOMBRE] varchar(11)  NOT NULL
);
GO

-- Creating table 'GE_V_TIPOMUESTREOEN'
CREATE TABLE [dbo].[GE_V_TIPOMUESTREOEN] (
    [CODIGO] varchar(2)  NOT NULL,
    [NOMBRE] varchar(11)  NOT NULL
);
GO

-- Creating table 'GE_V_TIPOQAQC'
CREATE TABLE [dbo].[GE_V_TIPOQAQC] (
    [CODIGO] varchar(2)  NOT NULL,
    [NOMBRE] varchar(14)  NOT NULL
);
GO

-- Creating table 'GE_V_TIPUBICACION'
CREATE TABLE [dbo].[GE_V_TIPUBICACION] (
    [CODIGO] varchar(2)  NOT NULL,
    [NOMBRE] varchar(9)  NOT NULL
);
GO

-- Creating table 'sig_v_grapro'
CREATE TABLE [dbo].[sig_v_grapro] (
    [aset] varchar(1)  NOT NULL,
    [fecha] char(15)  NULL,
    [val] decimal(10,2)  NULL
);
GO

-- Creating table 'vmuestrasqaqcl1'
CREATE TABLE [dbo].[vmuestrasqaqcl1] (
    [reporte] varchar(20)  NOT NULL,
    [fecha_reporte] datetime  NULL,
    [muestra_original] varchar(12)  NULL,
    [ley_original] decimal(38,3)  NULL,
    [muestra_duplicada] varchar(12)  NOT NULL,
    [ley_duplicada] decimal(38,3)  NULL,
    [dif] decimal(38,3)  NULL,
    [porerror] decimal(38,6)  NULL,
    [revisar] varchar(14)  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [COMPANIA], [UNIDAD], [CODIGO] in table 'GE_AUTORIAZACIONES_CODIGOS'
ALTER TABLE [dbo].[GE_AUTORIAZACIONES_CODIGOS]
ADD CONSTRAINT [PK_GE_AUTORIAZACIONES_CODIGOS]
    PRIMARY KEY CLUSTERED ([COMPANIA], [UNIDAD], [CODIGO] ASC);
GO

-- Creating primary key on [COMPANIA], [UNIDAD], [PERIODO], [BLENDING] in table 'GE_BLENDING'
ALTER TABLE [dbo].[GE_BLENDING]
ADD CONSTRAINT [PK_GE_BLENDING]
    PRIMARY KEY CLUSTERED ([COMPANIA], [UNIDAD], [PERIODO], [BLENDING] ASC);
GO

-- Creating primary key on [COMPANIA], [UNIDAD], [PERIODO], [BLENDING], [SECTOR], [AREA], [POLIGONO], [CARGA] in table 'GE_BLENDING_DETALLE'
ALTER TABLE [dbo].[GE_BLENDING_DETALLE]
ADD CONSTRAINT [PK_GE_BLENDING_DETALLE]
    PRIMARY KEY CLUSTERED ([COMPANIA], [UNIDAD], [PERIODO], [BLENDING], [SECTOR], [AREA], [POLIGONO], [CARGA] ASC);
GO

-- Creating primary key on [COMPANIA], [UNIDAD], [PERIODO], [FECHA_PROCESO] in table 'GE_BLENDING_RESULTADO'
ALTER TABLE [dbo].[GE_BLENDING_RESULTADO]
ADD CONSTRAINT [PK_GE_BLENDING_RESULTADO]
    PRIMARY KEY CLUSTERED ([COMPANIA], [UNIDAD], [PERIODO], [FECHA_PROCESO] ASC);
GO

-- Creating primary key on [COMPANIA], [UNIDAD], [PERIODO], [BLENDING], [ORDEN] in table 'GE_BLENDING_SALDOS'
ALTER TABLE [dbo].[GE_BLENDING_SALDOS]
ADD CONSTRAINT [PK_GE_BLENDING_SALDOS]
    PRIMARY KEY CLUSTERED ([COMPANIA], [UNIDAD], [PERIODO], [BLENDING], [ORDEN] ASC);
GO

-- Creating primary key on [ID] in table 'GE_CONFIGURACION_MAIL'
ALTER TABLE [dbo].[GE_CONFIGURACION_MAIL]
ADD CONSTRAINT [PK_GE_CONFIGURACION_MAIL]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [CONTRATA], [CODIGO], [COMPANIA], [UNIDAD] in table 'GE_CONTRATA_EQUIPOS'
ALTER TABLE [dbo].[GE_CONTRATA_EQUIPOS]
ADD CONSTRAINT [PK_GE_CONTRATA_EQUIPOS]
    PRIMARY KEY CLUSTERED ([CONTRATA], [CODIGO], [COMPANIA], [UNIDAD] ASC);
GO

-- Creating primary key on [COMPANIA], [UNIDAD], [TIPO_DOC], [NUMERO] in table 'GE_DOCUMENTO_MAIL'
ALTER TABLE [dbo].[GE_DOCUMENTO_MAIL]
ADD CONSTRAINT [PK_GE_DOCUMENTO_MAIL]
    PRIMARY KEY CLUSTERED ([COMPANIA], [UNIDAD], [TIPO_DOC], [NUMERO] ASC);
GO

-- Creating primary key on [USUARIO], [FECHA], [VENTANA], [DATAWINDOW], [COLUMNA] in table 'GE_DW_COLUMNAS'
ALTER TABLE [dbo].[GE_DW_COLUMNAS]
ADD CONSTRAINT [PK_GE_DW_COLUMNAS]
    PRIMARY KEY CLUSTERED ([USUARIO], [FECHA], [VENTANA], [DATAWINDOW], [COLUMNA] ASC);
GO

-- Creating primary key on [COD] in table 'GE_INF_GEOLOGICA'
ALTER TABLE [dbo].[GE_INF_GEOLOGICA]
ADD CONSTRAINT [PK_GE_INF_GEOLOGICA]
    PRIMARY KEY CLUSTERED ([COD] ASC);
GO

-- Creating primary key on [ID] in table 'GE_LABORES_SUBTERRANEA'
ALTER TABLE [dbo].[GE_LABORES_SUBTERRANEA]
ADD CONSTRAINT [PK_GE_LABORES_SUBTERRANEA]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [COMPANIA], [UNIDAD], [METODO] in table 'GE_METODO_CASTIGO_LEY'
ALTER TABLE [dbo].[GE_METODO_CASTIGO_LEY]
ADD CONSTRAINT [PK_GE_METODO_CASTIGO_LEY]
    PRIMARY KEY CLUSTERED ([COMPANIA], [UNIDAD], [METODO] ASC);
GO

-- Creating primary key on [COMPANIA], [UNIDAD], [METODO], [RANGO] in table 'GE_METODO_CASTIGO_LEY_DET'
ALTER TABLE [dbo].[GE_METODO_CASTIGO_LEY_DET]
ADD CONSTRAINT [PK_GE_METODO_CASTIGO_LEY_DET]
    PRIMARY KEY CLUSTERED ([COMPANIA], [UNIDAD], [METODO], [RANGO] ASC);
GO

-- Creating primary key on [COMPANIA], [UNIDAD], [PROCESO], [SUBPROCESO], [ACTIVIDAD] in table 'GE_MODELO_ACTIVIDAD'
ALTER TABLE [dbo].[GE_MODELO_ACTIVIDAD]
ADD CONSTRAINT [PK_GE_MODELO_ACTIVIDAD]
    PRIMARY KEY CLUSTERED ([COMPANIA], [UNIDAD], [PROCESO], [SUBPROCESO], [ACTIVIDAD] ASC);
GO

-- Creating primary key on [COMPANIA], [UNIDAD], [PROCESO] in table 'GE_MODELO_PROCESO'
ALTER TABLE [dbo].[GE_MODELO_PROCESO]
ADD CONSTRAINT [PK_GE_MODELO_PROCESO]
    PRIMARY KEY CLUSTERED ([COMPANIA], [UNIDAD], [PROCESO] ASC);
GO

-- Creating primary key on [COMPANIA], [UNIDAD], [PROCESO], [SUBPROCESO] in table 'GE_MODELO_SUBPROCESO'
ALTER TABLE [dbo].[GE_MODELO_SUBPROCESO]
ADD CONSTRAINT [PK_GE_MODELO_SUBPROCESO]
    PRIMARY KEY CLUSTERED ([COMPANIA], [UNIDAD], [PROCESO], [SUBPROCESO] ASC);
GO

-- Creating primary key on [COMPANIA], [UNIDAD], [PERIODO], [MOVIMIENTO] in table 'GE_MOVIMIENTOS_MINERAL'
ALTER TABLE [dbo].[GE_MOVIMIENTOS_MINERAL]
ADD CONSTRAINT [PK_GE_MOVIMIENTOS_MINERAL]
    PRIMARY KEY CLUSTERED ([COMPANIA], [UNIDAD], [PERIODO], [MOVIMIENTO] ASC);
GO

-- Creating primary key on [COMPANIA] in table 'GE_MT_COMPANIA'
ALTER TABLE [dbo].[GE_MT_COMPANIA]
ADD CONSTRAINT [PK_GE_MT_COMPANIA]
    PRIMARY KEY CLUSTERED ([COMPANIA] ASC);
GO

-- Creating primary key on [COMPANIA], [UNIDAD] in table 'GE_MT_COMPANIA_UNIDAD'
ALTER TABLE [dbo].[GE_MT_COMPANIA_UNIDAD]
ADD CONSTRAINT [PK_GE_MT_COMPANIA_UNIDAD]
    PRIMARY KEY CLUSTERED ([COMPANIA], [UNIDAD] ASC);
GO

-- Creating primary key on [LITOLOGIA] in table 'GE_MT_LITOLOGIA'
ALTER TABLE [dbo].[GE_MT_LITOLOGIA]
ADD CONSTRAINT [PK_GE_MT_LITOLOGIA]
    PRIMARY KEY CLUSTERED ([LITOLOGIA] ASC);
GO

-- Creating primary key on [MINERALIZACION] in table 'GE_MT_MINERALIZACION'
ALTER TABLE [dbo].[GE_MT_MINERALIZACION]
ADD CONSTRAINT [PK_GE_MT_MINERALIZACION]
    PRIMARY KEY CLUSTERED ([MINERALIZACION] ASC);
GO

-- Creating primary key on [TIPO] in table 'GE_MT_TIPO_MUESTREO'
ALTER TABLE [dbo].[GE_MT_TIPO_MUESTREO]
ADD CONSTRAINT [PK_GE_MT_TIPO_MUESTREO]
    PRIMARY KEY CLUSTERED ([TIPO] ASC);
GO

-- Creating primary key on [TRANSACCION] in table 'GE_MT_TRANSACCIONES'
ALTER TABLE [dbo].[GE_MT_TRANSACCIONES]
ADD CONSTRAINT [PK_GE_MT_TRANSACCIONES]
    PRIMARY KEY CLUSTERED ([TRANSACCION] ASC);
GO

-- Creating primary key on [COMPANIA], [UNIDAD], [ORDEN] in table 'GE_ORDEN_TRABAJO_LAB'
ALTER TABLE [dbo].[GE_ORDEN_TRABAJO_LAB]
ADD CONSTRAINT [PK_GE_ORDEN_TRABAJO_LAB]
    PRIMARY KEY CLUSTERED ([COMPANIA], [UNIDAD], [ORDEN] ASC);
GO

-- Creating primary key on [COMPANIA], [UNIDAD], [ORDEN], [MUESTRA] in table 'GE_ORDEN_TRABAJO_LAB_DET'
ALTER TABLE [dbo].[GE_ORDEN_TRABAJO_LAB_DET]
ADD CONSTRAINT [PK_GE_ORDEN_TRABAJO_LAB_DET]
    PRIMARY KEY CLUSTERED ([COMPANIA], [UNIDAD], [ORDEN], [MUESTRA] ASC);
GO

-- Creating primary key on [PARAMETRO] in table 'GE_PARAMETROS'
ALTER TABLE [dbo].[GE_PARAMETROS]
ADD CONSTRAINT [PK_GE_PARAMETROS]
    PRIMARY KEY CLUSTERED ([PARAMETRO] ASC);
GO

-- Creating primary key on [ID] in table 'GE_PERFORACION_CAB'
ALTER TABLE [dbo].[GE_PERFORACION_CAB]
ADD CONSTRAINT [PK_GE_PERFORACION_CAB]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [COMPANIA], [UNIDAD], [PERIODO], [MES] in table 'GE_PERIODOS'
ALTER TABLE [dbo].[GE_PERIODOS]
ADD CONSTRAINT [PK_GE_PERIODOS]
    PRIMARY KEY CLUSTERED ([COMPANIA], [UNIDAD], [PERIODO], [MES] ASC);
GO

-- Creating primary key on [COMPANIA], [UNIDAD], [POLIGONO] in table 'GE_POLIGONO_CAB'
ALTER TABLE [dbo].[GE_POLIGONO_CAB]
ADD CONSTRAINT [PK_GE_POLIGONO_CAB]
    PRIMARY KEY CLUSTERED ([COMPANIA], [UNIDAD], [POLIGONO] ASC);
GO

-- Creating primary key on [ID] in table 'GE_PROGRAMA_MUESTREO'
ALTER TABLE [dbo].[GE_PROGRAMA_MUESTREO]
ADD CONSTRAINT [PK_GE_PROGRAMA_MUESTREO]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [COMPANIA], [UNIDAD], [PROGRAMA], [LABOR], [PERSONAL] in table 'GE_PROGRAMA_MUESTREO_PERSONAL'
ALTER TABLE [dbo].[GE_PROGRAMA_MUESTREO_PERSONAL]
ADD CONSTRAINT [PK_GE_PROGRAMA_MUESTREO_PERSONAL]
    PRIMARY KEY CLUSTERED ([COMPANIA], [UNIDAD], [PROGRAMA], [LABOR], [PERSONAL] ASC);
GO

-- Creating primary key on [ID] in table 'GE_PROYECTO_PRF'
ALTER TABLE [dbo].[GE_PROYECTO_PRF]
ADD CONSTRAINT [PK_GE_PROYECTO_PRF]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [COMPANIA], [UNIDAD], [SECTOR], [AREA], [PERIODO] in table 'GE_RECURSOS_AREA'
ALTER TABLE [dbo].[GE_RECURSOS_AREA]
ADD CONSTRAINT [PK_GE_RECURSOS_AREA]
    PRIMARY KEY CLUSTERED ([COMPANIA], [UNIDAD], [SECTOR], [AREA], [PERIODO] ASC);
GO

-- Creating primary key on [COMPANIA], [UNIDAD], [SECTOR], [AREA], [PERIODO], [MOVIMIENTO] in table 'GE_RECURSOS_AREA_MOVIMIENTOS'
ALTER TABLE [dbo].[GE_RECURSOS_AREA_MOVIMIENTOS]
ADD CONSTRAINT [PK_GE_RECURSOS_AREA_MOVIMIENTOS]
    PRIMARY KEY CLUSTERED ([COMPANIA], [UNIDAD], [SECTOR], [AREA], [PERIODO], [MOVIMIENTO] ASC);
GO

-- Creating primary key on [COMPANIA], [UNIDAD], [SECTOR], [AREA], [PERIODO], [CORTE] in table 'GE_RECURSOS_AREA_PERIODO'
ALTER TABLE [dbo].[GE_RECURSOS_AREA_PERIODO]
ADD CONSTRAINT [PK_GE_RECURSOS_AREA_PERIODO]
    PRIMARY KEY CLUSTERED ([COMPANIA], [UNIDAD], [SECTOR], [AREA], [PERIODO], [CORTE] ASC);
GO

-- Creating primary key on [COMPANIA], [UNIDAD], [SECTOR], [AREA], [PERIODO], [CORTE], [MOVIMIENTO] in table 'GE_RECURSOS_CATEGORIA_CAMBIO'
ALTER TABLE [dbo].[GE_RECURSOS_CATEGORIA_CAMBIO]
ADD CONSTRAINT [PK_GE_RECURSOS_CATEGORIA_CAMBIO]
    PRIMARY KEY CLUSTERED ([COMPANIA], [UNIDAD], [SECTOR], [AREA], [PERIODO], [CORTE], [MOVIMIENTO] ASC);
GO

-- Creating primary key on [CATEGORIA] in table 'GE_RECURSOS_CLASIFICACION'
ALTER TABLE [dbo].[GE_RECURSOS_CLASIFICACION]
ADD CONSTRAINT [PK_GE_RECURSOS_CLASIFICACION]
    PRIMARY KEY CLUSTERED ([CATEGORIA] ASC);
GO

-- Creating primary key on [COMPANIA], [UNIDAD], [MEDICION] in table 'GE_RECURSOS_LEVANTAMIENTO_TOPO'
ALTER TABLE [dbo].[GE_RECURSOS_LEVANTAMIENTO_TOPO]
ADD CONSTRAINT [PK_GE_RECURSOS_LEVANTAMIENTO_TOPO]
    PRIMARY KEY CLUSTERED ([COMPANIA], [UNIDAD], [MEDICION] ASC);
GO

-- Creating primary key on [COMPANIA], [UNIDAD], [PILA] in table 'GE_RECURSOS_PILAS'
ALTER TABLE [dbo].[GE_RECURSOS_PILAS]
ADD CONSTRAINT [PK_GE_RECURSOS_PILAS]
    PRIMARY KEY CLUSTERED ([COMPANIA], [UNIDAD], [PILA] ASC);
GO

-- Creating primary key on [COMPANIA], [UNIDAD], [TRANSACCION] in table 'GE_RECURSOS_TRANSACCIONES'
ALTER TABLE [dbo].[GE_RECURSOS_TRANSACCIONES]
ADD CONSTRAINT [PK_GE_RECURSOS_TRANSACCIONES]
    PRIMARY KEY CLUSTERED ([COMPANIA], [UNIDAD], [TRANSACCION] ASC);
GO

-- Creating primary key on [COMPANIA], [UNIDAD], [POLIGONO] in table 'GE_REGISTRO_POLIGONO'
ALTER TABLE [dbo].[GE_REGISTRO_POLIGONO]
ADD CONSTRAINT [PK_GE_REGISTRO_POLIGONO]
    PRIMARY KEY CLUSTERED ([COMPANIA], [UNIDAD], [POLIGONO] ASC);
GO

-- Creating primary key on [CANO_ID], [CMES_ID], [CBALANZA_ITEM] in table 'GE_REP_BALANZA'
ALTER TABLE [dbo].[GE_REP_BALANZA]
ADD CONSTRAINT [PK_GE_REP_BALANZA]
    PRIMARY KEY CLUSTERED ([CANO_ID], [CMES_ID], [CBALANZA_ITEM] ASC);
GO

-- Creating primary key on [COMPANIA], [UNIDAD], [PROGRAMA], [REPORTE] in table 'GE_REPORTE_LABORATORIO'
ALTER TABLE [dbo].[GE_REPORTE_LABORATORIO]
ADD CONSTRAINT [PK_GE_REPORTE_LABORATORIO]
    PRIMARY KEY CLUSTERED ([COMPANIA], [UNIDAD], [PROGRAMA], [REPORTE] ASC);
GO

-- Creating primary key on [ID] in table 'GE_REPORTE_MUESTREO'
ALTER TABLE [dbo].[GE_REPORTE_MUESTREO]
ADD CONSTRAINT [PK_GE_REPORTE_MUESTREO]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'GE_REPORTE_MUESTREO_DETALLE'
ALTER TABLE [dbo].[GE_REPORTE_MUESTREO_DETALLE]
ADD CONSTRAINT [PK_GE_REPORTE_MUESTREO_DETALLE]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [COMPANIA], [UNIDAD], [PROGRAMA], [REPORTE], [MUESTRA] in table 'GE_REPORTE_MUESTREO_LABORATO'
ALTER TABLE [dbo].[GE_REPORTE_MUESTREO_LABORATO]
ADD CONSTRAINT [PK_GE_REPORTE_MUESTREO_LABORATO]
    PRIMARY KEY CLUSTERED ([COMPANIA], [UNIDAD], [PROGRAMA], [REPORTE], [MUESTRA] ASC);
GO

-- Creating primary key on [ID] in table 'GE_REPORTE_MUESTREO_UBICA'
ALTER TABLE [dbo].[GE_REPORTE_MUESTREO_UBICA]
ADD CONSTRAINT [PK_GE_REPORTE_MUESTREO_UBICA]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'ge_reporte_prf'
ALTER TABLE [dbo].[ge_reporte_prf]
ADD CONSTRAINT [PK_ge_reporte_prf]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [COMPANIA], [UNIDAD], [SONDAJE], [METRAJE_FROM], [METRAJE_TO] in table 'GE_REPORTE_PRF_DETALLE'
ALTER TABLE [dbo].[GE_REPORTE_PRF_DETALLE]
ADD CONSTRAINT [PK_GE_REPORTE_PRF_DETALLE]
    PRIMARY KEY CLUSTERED ([COMPANIA], [UNIDAD], [SONDAJE], [METRAJE_FROM], [METRAJE_TO] ASC);
GO

-- Creating primary key on [id] in table 'ge_reporte_prf_detalle_alt'
ALTER TABLE [dbo].[ge_reporte_prf_detalle_alt]
ADD CONSTRAINT [PK_ge_reporte_prf_detalle_alt]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'ge_reporte_prf_detalle_est'
ALTER TABLE [dbo].[ge_reporte_prf_detalle_est]
ADD CONSTRAINT [PK_ge_reporte_prf_detalle_est]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'ge_reporte_prf_detalle_lit'
ALTER TABLE [dbo].[ge_reporte_prf_detalle_lit]
ADD CONSTRAINT [PK_ge_reporte_prf_detalle_lit]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'ge_reporte_prf_detalle_min'
ALTER TABLE [dbo].[ge_reporte_prf_detalle_min]
ADD CONSTRAINT [PK_ge_reporte_prf_detalle_min]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'ge_reporte_prf_detalle_mineco'
ALTER TABLE [dbo].[ge_reporte_prf_detalle_mineco]
ADD CONSTRAINT [PK_ge_reporte_prf_detalle_mineco]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [COMPANIA], [UNIDAD], [SONDAJE] in table 'GE_REPORTE_PRF_DETALLE_MUESTRA'
ALTER TABLE [dbo].[GE_REPORTE_PRF_DETALLE_MUESTRA]
ADD CONSTRAINT [PK_GE_REPORTE_PRF_DETALLE_MUESTRA]
    PRIMARY KEY CLUSTERED ([COMPANIA], [UNIDAD], [SONDAJE] ASC);
GO

-- Creating primary key on [COMPANIA], [UNIDAD], [PROGRAMA], [REPORTE] in table 'GE_REPORTE_TOPOGRAFICO'
ALTER TABLE [dbo].[GE_REPORTE_TOPOGRAFICO]
ADD CONSTRAINT [PK_GE_REPORTE_TOPOGRAFICO]
    PRIMARY KEY CLUSTERED ([COMPANIA], [UNIDAD], [PROGRAMA], [REPORTE] ASC);
GO

-- Creating primary key on [COMPANIA], [UNIDAD], [USUARIO], [PROCESO], [SUBPROCESO], [ACTIVIDAD] in table 'GE_SEGURIDAD_USUARIOS'
ALTER TABLE [dbo].[GE_SEGURIDAD_USUARIOS]
ADD CONSTRAINT [PK_GE_SEGURIDAD_USUARIOS]
    PRIMARY KEY CLUSTERED ([COMPANIA], [UNIDAD], [USUARIO], [PROCESO], [SUBPROCESO], [ACTIVIDAD] ASC);
GO

-- Creating primary key on [ID] in table 'GE_TIPO_LABOR'
ALTER TABLE [dbo].[GE_TIPO_LABOR]
ADD CONSTRAINT [PK_GE_TIPO_LABOR]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [CANO_ID], [CMES_ID], [CBALANZA_ITEM] in table 'GE_TMP_TRANSPORTE'
ALTER TABLE [dbo].[GE_TMP_TRANSPORTE]
ADD CONSTRAINT [PK_GE_TMP_TRANSPORTE]
    PRIMARY KEY CLUSTERED ([CANO_ID], [CMES_ID], [CBALANZA_ITEM] ASC);
GO

-- Creating primary key on [ID] in table 'GE_VALGRA_PRO'
ALTER TABLE [dbo].[GE_VALGRA_PRO]
ADD CONSTRAINT [PK_GE_VALGRA_PRO]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'GE_VALPRO'
ALTER TABLE [dbo].[GE_VALPRO]
ADD CONSTRAINT [PK_GE_VALPRO]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [VLABOR_ID] in table 'MIN_MLABOR'
ALTER TABLE [dbo].[MIN_MLABOR]
ADD CONSTRAINT [PK_MIN_MLABOR]
    PRIMARY KEY CLUSTERED ([VLABOR_ID] ASC);
GO

-- Creating primary key on [CMINA_ID] in table 'MIN_TMINA'
ALTER TABLE [dbo].[MIN_TMINA]
ADD CONSTRAINT [PK_MIN_TMINA]
    PRIMARY KEY CLUSTERED ([CMINA_ID] ASC);
GO

-- Creating primary key on [CNIVEL_ID] in table 'MIN_TNIVEL'
ALTER TABLE [dbo].[MIN_TNIVEL]
ADD CONSTRAINT [PK_MIN_TNIVEL]
    PRIMARY KEY CLUSTERED ([CNIVEL_ID] ASC);
GO

-- Creating primary key on [CVETA_ID] in table 'MIN_TVETA'
ALTER TABLE [dbo].[MIN_TVETA]
ADD CONSTRAINT [PK_MIN_TVETA]
    PRIMARY KEY CLUSTERED ([CVETA_ID] ASC);
GO

-- Creating primary key on [CZONA_ID] in table 'MIN_TZONA'
ALTER TABLE [dbo].[MIN_TZONA]
ADD CONSTRAINT [PK_MIN_TZONA]
    PRIMARY KEY CLUSTERED ([CZONA_ID] ASC);
GO

-- Creating primary key on [USUARIO_CODIGO] in table 'MIN_USUARIOS_CONTRATAS'
ALTER TABLE [dbo].[MIN_USUARIOS_CONTRATAS]
ADD CONSTRAINT [PK_MIN_USUARIOS_CONTRATAS]
    PRIMARY KEY CLUSTERED ([USUARIO_CODIGO] ASC);
GO

-- Creating primary key on [diagram_id] in table 'sysdiagrams'
ALTER TABLE [dbo].[sysdiagrams]
ADD CONSTRAINT [PK_sysdiagrams]
    PRIMARY KEY CLUSTERED ([diagram_id] ASC);
GO

-- Creating primary key on [IDMENUSU] in table 'TBLMENUSU'
ALTER TABLE [dbo].[TBLMENUSU]
ADD CONSTRAINT [PK_TBLMENUSU]
    PRIMARY KEY CLUSTERED ([IDMENUSU] ASC);
GO

-- Creating primary key on [IDMENUSU] in table 'TBLMENUSUA'
ALTER TABLE [dbo].[TBLMENUSUA]
ADD CONSTRAINT [PK_TBLMENUSUA]
    PRIMARY KEY CLUSTERED ([IDMENUSU] ASC);
GO

-- Creating primary key on [IDUSU] in table 'TBLUSUARIOS'
ALTER TABLE [dbo].[TBLUSUARIOS]
ADD CONSTRAINT [PK_TBLUSUARIOS]
    PRIMARY KEY CLUSTERED ([IDUSU] ASC);
GO

-- Creating primary key on [l451], [l452] in table 'tmpqaqc2'
ALTER TABLE [dbo].[tmpqaqc2]
ADD CONSTRAINT [PK_tmpqaqc2]
    PRIMARY KEY CLUSTERED ([l451], [l452] ASC);
GO

-- Creating primary key on [VLABOR_ID], [mlabor] in table 'ge_v_labores'
ALTER TABLE [dbo].[ge_v_labores]
ADD CONSTRAINT [PK_ge_v_labores]
    PRIMARY KEY CLUSTERED ([VLABOR_ID], [mlabor] ASC);
GO

-- Creating primary key on [ID] in table 'GE_V_LABORES_SUBTERRANEA'
ALTER TABLE [dbo].[GE_V_LABORES_SUBTERRANEA]
ADD CONSTRAINT [PK_GE_V_LABORES_SUBTERRANEA]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'GE_V_LABORES_SUBTERRANEA_DETALLE'
ALTER TABLE [dbo].[GE_V_LABORES_SUBTERRANEA_DETALLE]
ADD CONSTRAINT [PK_GE_V_LABORES_SUBTERRANEA_DETALLE]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [MENU] in table 'ge_v_menu'
ALTER TABLE [dbo].[ge_v_menu]
ADD CONSTRAINT [PK_ge_v_menu]
    PRIMARY KEY CLUSTERED ([MENU] ASC);
GO

-- Creating primary key on [MENU] in table 'ge_v_menu_user'
ALTER TABLE [dbo].[ge_v_menu_user]
ADD CONSTRAINT [PK_ge_v_menu_user]
    PRIMARY KEY CLUSTERED ([MENU] ASC);
GO

-- Creating primary key on [CODIGO], [NOMBRE] in table 'GE_V_TIPOCANAL'
ALTER TABLE [dbo].[GE_V_TIPOCANAL]
ADD CONSTRAINT [PK_GE_V_TIPOCANAL]
    PRIMARY KEY CLUSTERED ([CODIGO], [NOMBRE] ASC);
GO

-- Creating primary key on [CODIGO], [NOMBRE] in table 'GE_V_TIPOMUESTREO'
ALTER TABLE [dbo].[GE_V_TIPOMUESTREO]
ADD CONSTRAINT [PK_GE_V_TIPOMUESTREO]
    PRIMARY KEY CLUSTERED ([CODIGO], [NOMBRE] ASC);
GO

-- Creating primary key on [CODIGO], [NOMBRE] in table 'GE_V_TIPOMUESTREOEN'
ALTER TABLE [dbo].[GE_V_TIPOMUESTREOEN]
ADD CONSTRAINT [PK_GE_V_TIPOMUESTREOEN]
    PRIMARY KEY CLUSTERED ([CODIGO], [NOMBRE] ASC);
GO

-- Creating primary key on [CODIGO], [NOMBRE] in table 'GE_V_TIPOQAQC'
ALTER TABLE [dbo].[GE_V_TIPOQAQC]
ADD CONSTRAINT [PK_GE_V_TIPOQAQC]
    PRIMARY KEY CLUSTERED ([CODIGO], [NOMBRE] ASC);
GO

-- Creating primary key on [CODIGO], [NOMBRE] in table 'GE_V_TIPUBICACION'
ALTER TABLE [dbo].[GE_V_TIPUBICACION]
ADD CONSTRAINT [PK_GE_V_TIPUBICACION]
    PRIMARY KEY CLUSTERED ([CODIGO], [NOMBRE] ASC);
GO

-- Creating primary key on [aset] in table 'sig_v_grapro'
ALTER TABLE [dbo].[sig_v_grapro]
ADD CONSTRAINT [PK_sig_v_grapro]
    PRIMARY KEY CLUSTERED ([aset] ASC);
GO

-- Creating primary key on [reporte], [muestra_duplicada] in table 'vmuestrasqaqcl1'
ALTER TABLE [dbo].[vmuestrasqaqcl1]
ADD CONSTRAINT [PK_vmuestrasqaqcl1]
    PRIMARY KEY CLUSTERED ([reporte], [muestra_duplicada] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [COMPANIA] in table 'GE_MT_COMPANIA_UNIDAD'
ALTER TABLE [dbo].[GE_MT_COMPANIA_UNIDAD]
ADD CONSTRAINT [FK_MT_COMPANIA_UNIDAD]
    FOREIGN KEY ([COMPANIA])
    REFERENCES [dbo].[GE_MT_COMPANIA]
        ([COMPANIA])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------