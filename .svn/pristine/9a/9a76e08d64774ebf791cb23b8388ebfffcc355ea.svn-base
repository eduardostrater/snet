Imports System.Reflection

Public Class clsmuestreo

    Dim estado As Integer


    Function cadena_conexion() As String
        Dim cnx As New clscadcon
        Return cnx.cadena_conexion
    End Function

    Function consultamuestra(sreporte As String) As DataTable

        'Extraer info caf
        Dim Context As New SIGDATASDOEntities(cadena_conexion())

        Dim query1 = From z In Context.GE_REPORTE_MUESTREO_DETALLE
                     Where z.REPORTE = sreporte
                     Select z.COMPANIA, z.UNIDAD, z.PROGRAMA, z.REPORTE, z.MUESTRA,
       z.LONGITUD, z.SISTEMA_MUESTREO, z.RESPONSABLE, z.OBSERVACION, z.TIPO_MUESTREO, z.AZIMUT, z.INCLINACION, z.QAQC,
 z.LITOLOGIA, z.MINERALIZACION, z.ORDEN_LABORATORIO, z.FECHA_ENTREGA, z.RESPONSABLE_ENTREGA, z.AYUDANTE, z.PROYECTO, z.MUESTRA_QAQC,
 z.PILA, z.SONDAJE, z.METRAJE_FROM, z.METRAJE_TO, z.TIPO_CANAL, z.MUESTREO_EN, z.MANTO, z.CALICATA, z.CC_ANCHO, z.CC_LARGO, z.LOGUEO, z.ZMUESTRA, z.REFERENCIAM, z.PRIORIDAD

        Return ToDataTable(query1)

    End Function


    Function consultamuestracab(sreporte As String) As DataTable

        'Extraer info caf
        Dim Context As New SIGDATASDOEntities(cadena_conexion())

        Dim query1 = From z In Context.GE_REPORTE_MUESTREO
                     Where z.REPORTE = sreporte
                     Select z.COMPANIA, z.UNIDAD, z.PROGRAMA, z.REPORTE,
                    z.REPORTA, z.SUPERVISOR, z.FECHA_REPORTE, z.LABOR, z.OBSERVACION,
                    z.ORDEN_LABORATORIO, z.FECHA_ENTREGA, z.RESPONSABLE_ENTREGA, z.MUESTRAS_ENTREGADAS

        Return ToDataTable(query1)

    End Function


    Function consultaadmmuestras(ByVal fechai As Date, ByVal fechaf As Date, ByVal smuestra As String) As DataTable

        'Extraer info caf
        Dim Context As New SIGDATASDOEntities(cadena_conexion())

        Dim query1 = From x In Context.GE_REPORTE_MUESTREO
                     Join z In Context.GE_REPORTE_MUESTREO_DETALLE
        On x.COMPANIA Equals z.COMPANIA And x.UNIDAD Equals z.UNIDAD And x.PROGRAMA Equals z.PROGRAMA And x.REPORTE Equals z.REPORTE
        Join d In Context.GE_PROGRAMA_MUESTREO
        On x.PROGRAMA Equals d.PROGRAMA
        Where (CDate(x.FECHA_REPORTE) >= CDate(fechai) And CDate(x.FECHA_REPORTE) <= CDate(fechaf) And d.TIPO.Contains("PR"))
        Select z.COMPANIA, z.UNIDAD, z.PROGRAMA, z.REPORTE, z.MUESTRA,
        z.LONGITUD, z.SISTEMA_MUESTREO, z.RESPONSABLE, z.OBSERVACION, z.TIPO_MUESTREO, z.AZIMUT, z.INCLINACION, z.QAQC,
  z.LITOLOGIA, z.MINERALIZACION, z.ORDEN_LABORATORIO, z.FECHA_ENTREGA, z.RESPONSABLE_ENTREGA, z.AYUDANTE, z.PROYECTO, z.MUESTRA_QAQC,
  z.PILA, z.SONDAJE, z.METRAJE_FROM, z.METRAJE_TO, z.TIPO_CANAL, z.MUESTREO_EN, z.MANTO, z.CALICATA, z.CC_ANCHO, z.CC_LARGO, z.LOGUEO, z.ZMUESTRA, z.REFERENCIAM, z.PRIORIDAD, x.FECHA_REPORTE, z.LABORATORIO_LOCAL_LEY, z.TOPOGRAFIA_X, z.TOPOGRAFIA_Y, z.TOPOGRAFIA_Z,
 x.SUPERVISOR, d.TURNO, x.LABOR

        'And z.MUESTRA.Contains(smuestra)

        Return ToDataTable(query1)

    End Function

    Function consulta_programa_muestreo(sprograma As String) As DataTable

        'Extraer info caf
        Dim Context As New SIGDATASDOEntities(cadena_conexion())

        Dim query1 = From z In Context.GE_PROGRAMA_MUESTREO
                     Where z.PROGRAMA = sprograma
                     Select z.COMPANIA, z.UNIDAD, z.PROGRAMA, z.OBSERVACION, z.FECHA, z.MODIFICADOPOR, z.MODIFICADOEL,
        z.TURNO, z.MUESTRAS_OBJETIVO, z.MUESTRAS_REAL, z.ESTADO, z.TIPO, z.PROYECTO_CODIGO, z.PROYECTO_DESCRIPCION


        Return ToDataTable(query1)

    End Function

    Function consultaprograma(stipo As String) As DataTable

        'Extraer info caf
        Dim Context As New SIGDATASDOEntities(cadena_conexion())

        Dim query1 = From z In Context.GE_PROGRAMA_MUESTREO
                Where (z.TIPO = stipo)
                     Select z.PROGRAMA, z.FECHA, z.TURNO
                    Order By FECHA Descending

        Return ToDataTable(query1)

    End Function

    Function consulta_nromuestras(sprograma As String) As DataTable

        'Extraer info caf
        Dim Context As New SIGDATASDOEntities(cadena_conexion())

        Dim query1 = From z In Context.GE_REPORTE_MUESTREO_UBICA
                Where (z.PROGRAMA = sprograma)
                     Select z.NUMERO_MUESTREROS

        Return ToDataTable(query1)

    End Function

    Function usuarios_contrata() As DataTable
        'Extraer info caf
        Dim Context As New SIGDATASDOEntities(cadena_conexion())

        Dim query1 = From z In Context.MIN_USUARIOS_CONTRATAS
                     Select z.USUARIO_CODIGO, z.USUARIO_NOMBRE, z.COMPANIA_NOMBRE

        Return ToDataTable(query1)

    End Function

    Function programas(sfecha As String) As DataTable
        'Extraer info caf
        Dim Context As New SIGDATASDOEntities(cadena_conexion())

        Dim query1 = From z In Context.GE_REPORTE_MUESTREO
                     Join p In Context.GE_PROGRAMA_MUESTREO
                      On z.COMPANIA Equals p.COMPANIA And
                           z.UNIDAD Equals p.UNIDAD And
                           z.PROGRAMA Equals p.PROGRAMA
                       Join w In Context.ge_v_labores
                      On z.LABOR Equals w.VLABOR_ID
                Where (z.FECHA_REPORTE >= sfecha & " 00:00" And z.FECHA_REPORTE <= sfecha & " 23:59") And p.TIPO = "EX"
                             Select z.FECHA_REPORTE, z.PROGRAMA, w.mlabor, z.REPORTE

        Return ToDataTable(query1)

    End Function

    Function slabores(SPROGRAMA As String) As DataTable

        Dim Context As New SIGDATASDOEntities(cadena_conexion())

        Dim query1 = From z In Context.GE_REPORTE_MUESTREO_UBICA
                     Join x In Context.GE_V_LABORES_SUBTERRANEA_DETALLE
                     On z.LABOR Equals x.ID
                     Where (z.PROGRAMA = SPROGRAMA)
                     Select x.ID, z.PROGRAMA, x.NOMBRE, x.PROYECTO, x.NIVEL, x.TLABOR, x.CODIFICACION, z.NUMERO_MUESTREROS

        Return ToDataTable(query1)

    End Function

    Function infgeologica(ByVal informacion As String) As DataTable

        Dim Context As New SIGDATASDOEntities(cadena_conexion())

        Dim query1 = From z In Context.GE_INF_GEOLOGICA
                     Where (z.TIPO = informacion)
                     Select z.COD, z.DESCRIPCION, z.ABREVIATURA, z.TIPO

        Return ToDataTable(query1)

    End Function

    Function stipo_muestreo() As DataTable
        'Extraer info caf
        Dim Context As New SIGDATASDOEntities(cadena_conexion())

        Dim query1 = From z In Context.GE_MT_TIPO_MUESTREO
                     Select z.TIPO, z.NOMBRE, z.PREFIJO_MUESTRA, z.ESTADO

        Return ToDataTable(query1)

    End Function

    Function sistema_muestreo() As DataTable
        'Extraer info caf
        Dim Context As New SIGDATASDOEntities(cadena_conexion())

        Dim query1 = From z In Context.GE_V_TIPOMUESTREO
                     Select z.CODIGO, z.NOMBRE

        Return ToDataTable(query1)

    End Function

    Function sistema_muestreoen() As DataTable
        'Extraer info caf
        Dim Context As New SIGDATASDOEntities(cadena_conexion())

        Dim query1 = From z In Context.GE_V_TIPOMUESTREOEN
                     Select z.CODIGO, z.NOMBRE

        Return ToDataTable(query1)

    End Function

    Function tipo_canal() As DataTable
        'Extraer info caf
        Dim Context As New SIGDATASDOEntities(cadena_conexion())

        Dim query1 = From z In Context.GE_V_TIPOCANAL
                     Select z.CODIGO, z.NOMBRE

        Return ToDataTable(query1)

    End Function

    Function tipo_qaqc() As DataTable
        'Extraer info caf
        Dim Context As New SIGDATASDOEntities(cadena_conexion())

        Dim query1 = From z In Context.GE_V_TIPOQAQC
                     Select z.CODIGO, z.NOMBRE

        Return ToDataTable(query1)

    End Function

    Function tipo_ubicacion() As DataTable
        'Extraer info caf
        Dim Context As New sigdatasdoEntities(cadena_conexion())

        Dim query1 = From z In Context.GE_V_TIPUBICACION
                     Select z.CODIGO, z.NOMBRE

        Return ToDataTable(query1)

        'Dim Context As New SIGDATASDOEntities(cadena_conexion())

        'Dim query1 = From z In Context.GE_V_TIPOQAQC
        '             Select z.CODIGO, z.NOMBRE

        'Return ToDataTable(query1)

    End Function

    Function tipo_labor() As DataTable
        'Extraer info caf
        Dim Context As New SIGDATASDOEntities(cadena_conexion())

        Dim query1 = From z In Context.GE_TIPO_LABOR
                     Select z.ID, z.NOMBRE, z.ABREVIATURA

        Return ToDataTable(query1)

    End Function

    Function consulta_labor() As DataTable
        'Extraer info caf
        Dim Context As New SIGDATASDOEntities(cadena_conexion())

        Dim query1 = From z In Context.GE_V_LABORES_SUBTERRANEA_DETALLE
                     Select z.ID, z.NOMBRE, z.PROYECTO, z.NIVEL, z.TLABOR, z.CODIFICACION, z.DESCRIPCION

        Return ToDataTable(query1)

    End Function

    Function consulta_sondajes() As DataTable
        'Extraer info caf
        Dim Context As New SIGDATASDOEntities(cadena_conexion())

        Dim query1 = From z In Context.GE_PERFORACION_CAB
                     Select z.ID, z.NOMBRE

        Return ToDataTable(query1)

    End Function

    Public Function fninserta_labor(proyecto As String, tlabor As String, codificacion As String, descripcion As String, usrcre As String, feccre As String, usrmod As String, fecmod As String, nivel As Double) As Integer

        Try
            Dim act As New SIGDATASDOEntities(cadena_conexion())
            Dim trans As New GE_LABORES_SUBTERRANEA

            trans.PROYECTO = proyecto
            trans.TLABOR = tlabor
            trans.CODIFICACION = codificacion
            trans.DESCRIPCION = descripcion
            trans.USRCRE = usrcre
            trans.FECCRE = CType(Now, Date)
            trans.USRMOD = usrmod
            trans.FECMOD = CType(Now, Date)
            trans.NIVEL = nivel

            act.AddToGE_LABORES_SUBTERRANEA(trans)
            act.SaveChanges()

            estado = 1
        Catch ex As Exception
            MsgBox(ex.Message)
            estado = 0
        End Try

        Return estado

    End Function

    Public Function fninserta_programa_muestreo(COMPANIA As String, UNIDAD As String, PROGRAMA As String, OBSERVACION As String, FECHA As String, MODIFICADOPOR As String, MODIFICADOEL As String, TURNO As String, MUESTRAS_OBJETIVO As String, MUESTRAS_REAL As String, ESTADO As String, TIPO As String, PROYECTO_CODIGO As String, PROYECTO_DESCRIPCION As String) As Integer

        Try
            Dim act As New SIGDATASDOEntities(cadena_conexion())
            Dim trans As New GE_PROGRAMA_MUESTREO

            trans.COMPANIA = COMPANIA
            trans.UNIDAD = UNIDAD
            trans.PROGRAMA = PROGRAMA
            trans.OBSERVACION = OBSERVACION
            trans.FECHA = FECHA
            trans.MODIFICADOPOR = MODIFICADOPOR
            trans.MODIFICADOEL = MODIFICADOEL
            trans.TURNO = TURNO
            trans.MUESTRAS_OBJETIVO = MUESTRAS_OBJETIVO
            trans.MUESTRAS_REAL = MUESTRAS_REAL
            trans.ESTADO = ESTADO
            trans.TIPO = TIPO
            trans.PROYECTO_CODIGO = PROYECTO_CODIGO
            trans.PROYECTO_DESCRIPCION = PROYECTO_DESCRIPCION

            act.AddToGE_PROGRAMA_MUESTREO(trans)
            act.SaveChanges()

            ESTADO = 1
        Catch ex As Exception
            MsgBox(ex.Message)
            ESTADO = 0
        End Try

        Return ESTADO

    End Function


    Public Function fninserta_reporte_muestreo(COMPANIA As String, UNIDAD As String, PROGRAMA As String, REPORTE As String, REPORTA As String, SUPERVISOR As String, FECHA_REPORTE As String, LABOR As String, OBSERVACION As String, ORDEN_LABORATORIO As String, FECHA_ENTREGA As String, RESPONSABLE_ENTREGA As String, MUESTRAS_ENTREGADAS As String, USRCRE As String, FECCRE As String, USRMOD As String, FECMOD As String) As Integer

        Try
            Dim act As New SIGDATASDOEntities(cadena_conexion())
            Dim trans As New GE_REPORTE_MUESTREO

            trans.COMPANIA = COMPANIA
            trans.UNIDAD = UNIDAD
            trans.PROGRAMA = PROGRAMA
            trans.REPORTE = REPORTE
            trans.REPORTA = REPORTA
            trans.SUPERVISOR = SUPERVISOR
            trans.FECHA_REPORTE = FECHA_REPORTE
            trans.LABOR = LABOR
            trans.OBSERVACION = OBSERVACION
            trans.ORDEN_LABORATORIO = ORDEN_LABORATORIO
            trans.FECHA_ENTREGA = FECHA_ENTREGA
            trans.RESPONSABLE_ENTREGA = RESPONSABLE_ENTREGA
            trans.MUESTRAS_ENTREGADAS = MUESTRAS_ENTREGADAS
            trans.USRCRE = USRCRE
            trans.FECCRE = FECCRE
            trans.USRMOD = USRMOD
            trans.FECMOD = FECMOD

            act.AddToGE_REPORTE_MUESTREO(trans)
            act.SaveChanges()

            estado = 1
        Catch ex As Exception
            MsgBox(ex.Message)
            estado = 0
        End Try

        Return estado

    End Function


    Public Function fninserta_programa_muestreo_ubicacion(COMPANIA As String, UNIDAD As String, PROGRAMA As String, LABOR As String, NUMERO_MUESTREROS As String, PROGRAMADO As String, GEOLOGO_RES As String) As Integer

        Try
            Dim act As New SIGDATASDOEntities(cadena_conexion())
            Dim trans As New GE_REPORTE_MUESTREO_UBICA

            trans.COMPANIA = COMPANIA
            trans.UNIDAD = UNIDAD
            trans.PROGRAMA = PROGRAMA
            trans.LABOR = LABOR
            trans.NUMERO_MUESTREROS = NUMERO_MUESTREROS
            trans.PROGRAMADO = PROGRAMADO
            trans.GEOLOGO_RES = GEOLOGO_RES

            act.AddToGE_REPORTE_MUESTREO_UBICA(trans)

            act.SaveChanges()

            estado = 1
        Catch ex As Exception
            MsgBox(ex.Message)
            estado = 0
        End Try

        Return estado

    End Function

    Public Function actualiza_topoghrafia(SREPORTE As String, SMUESTRA As String, TOPOGRAFIAX As Double, TOPOGRAFIAY As Double, TOPOGRAFIAZ As Double, AZIMUT As Double, INCLINACION As Double) As Integer

        Try

            Dim Context As New SIGDATASDOEntities(cadena_conexion())

            Dim query1 = (From z In Context.GE_REPORTE_MUESTREO_DETALLE
                         Where z.REPORTE = SREPORTE And z.MUESTRA = SMUESTRA
                 Select z).FirstOrDefault

            query1.TOPOGRAFIA_X = TOPOGRAFIAX
            query1.TOPOGRAFIA_Y = TOPOGRAFIAY
            query1.TOPOGRAFIA_Z = TOPOGRAFIAZ
            query1.AZIMUT = AZIMUT
            query1.INCLINACION = INCLINACION

            Context.SaveChanges()

        Catch ex As Exception
            MsgBox("Se tiene inconsistencias en los campos de INFORMACION TOPOGRAFICA en la muestra : " & SMUESTRA & ", Favor revise antes de importar...", MsgBoxStyle.Critical, "SIG.NET")
        End Try

        Return 0

    End Function


    Public Function fninserta_repmuestreo(COMPANIA As String, UNIDAD As String, PROGRAMA As String, REPORTE As String, MUESTRA As String, LONGITUD As String, SISTEMA_MUESTREO As String, RESPONSABLE As String, OBSERVACION As String, TIPO_MUESTREO As String, AZIMUT As String, INCLINACION As String, QAQC As String, TOPOGRAFIA_X As String, TOPOGRAFIA_Y As String, TOPOGRAFIA_Z As String, REPORTE_TOPOGRAFIA As String, REPORTE_LABORATORIO As String, LABORATORIO_LOCAL_LEY As String, LABORATORIO_LOCAL_HUMEDAD As String, LABORATORIO_EXT01_LEY As String, LABORATORIO_EXT01_HUMEDAD As String, LABORATORIO_EXT02_LEY As String, LABORATORIO_EXT02_HUMEDAD As String, LITOLOGIA As String, MINERALIZACION As String, POLIGONO As String, ORDEN_LABORATORIO As String, FECHA_ENTREGA As String, RESPONSABLE_ENTREGA As String, AYUDANTE As String, PROYECTO As String, MUESTRA_QAQC As String, LABORATORIO_APROBACION_FEC As String, LABORATORIO_APROBACION_USU As String, LEY_GEOLOGIA As String, PILA As String, POLIGONO_REFERENCIA As String, LABORATORIO_LEY_ESTADO As String, LABORATORIO_LEY_OBS As String, TITULAR As String, LABOR As String, SONDAJE As String, METRAJE_FROM As String, METRAJE_TO As String, TIPO_CANAL As String, MUESTREO_EN As String, MANTO As String, CALICATA As String, CC_ANCHO As String, CC_LARGO As String, ZMUESTRA As String, LOGUEO As String, REFERENCIAM As String, GEMMUESTRA As String, RECMUESTRA As String, DUPMUESTRA As String, LEYGEMMUESTRA As String, LEYRECMUESTRA As String, LEYDUPMUESTRA As String, PRIORIDAD As String, CLITOLOGIA As String, CDLITOLOGIA As String, CALTERACION As String, CDALTERACION As String, CESTRUCTURAS As String, CDESTRUCTURAS As String, CMINERALIZACION As String, CDMINERALIZACION As String, PULMUESTRA As String, USRCRE As String, FECCRE As String, USRMOD As String, FECMOD As String) As Integer

        Try
            Dim act As New SIGDATASDOEntities(cadena_conexion())
            Dim trans As New GE_REPORTE_MUESTREO_DETALLE

            trans.COMPANIA = COMPANIA
            trans.UNIDAD = UNIDAD
            trans.PROGRAMA = PROGRAMA
            trans.REPORTE = REPORTE
            trans.MUESTRA = MUESTRA
            trans.LONGITUD = LONGITUD
            trans.SISTEMA_MUESTREO = SISTEMA_MUESTREO
            trans.RESPONSABLE = RESPONSABLE
            trans.OBSERVACION = observacion
            trans.TIPO_MUESTREO = TIPO_MUESTREO
            trans.AZIMUT = AZIMUT
            trans.INCLINACION = INCLINACION
            trans.QAQC = QAQC
            trans.TOPOGRAFIA_X = TOPOGRAFIA_X
            trans.TOPOGRAFIA_Y = TOPOGRAFIA_Y
            trans.TOPOGRAFIA_Z = TOPOGRAFIA_Z
            trans.REPORTE_TOPOGRAFIA = REPORTE_TOPOGRAFIA
            trans.REPORTE_LABORATORIO = REPORTE_LABORATORIO
            trans.LABORATORIO_LOCAL_LEY = LABORATORIO_LOCAL_LEY
            trans.LABORATORIO_LOCAL_HUMEDAD = LABORATORIO_LOCAL_HUMEDAD
            trans.LABORATORIO_EXT01_LEY = LABORATORIO_EXT01_LEY
            trans.LABORATORIO_EXT01_HUMEDAD = LABORATORIO_EXT01_HUMEDAD
            trans.LABORATORIO_EXT02_LEY = LABORATORIO_EXT02_LEY
            trans.LABORATORIO_EXT02_HUMEDAD = LABORATORIO_EXT02_HUMEDAD
            trans.LITOLOGIA = LITOLOGIA
            trans.MINERALIZACION = MINERALIZACION
            trans.POLIGONO = POLIGONO
            trans.ORDEN_LABORATORIO = ORDEN_LABORATORIO
            trans.FECHA_ENTREGA = FECHA_ENTREGA
            trans.RESPONSABLE_ENTREGA = RESPONSABLE_ENTREGA
            trans.AYUDANTE = AYUDANTE
            trans.PROYECTO = PROYECTO
            trans.MUESTRA_QAQC = MUESTRA_QAQC
            trans.LABORATORIO_APROBACION_FEC = LABORATORIO_APROBACION_FEC
            trans.LABORATORIO_APROBACION_USU = LABORATORIO_APROBACION_USU
            trans.LEY_GEOLOGIA = LEY_GEOLOGIA
            trans.PILA = PILA
            trans.POLIGONO_REFERENCIA = POLIGONO_REFERENCIA
            trans.LABORATORIO_LEY_ESTADO = LABORATORIO_LEY_ESTADO
            trans.LABORATORIO_LEY_OBS = LABORATORIO_LEY_OBS
            trans.TITULAR = TITULAR
            trans.LABOR = LABOR
            trans.SONDAJE = SONDAJE
            trans.METRAJE_FROM = CType(METRAJE_FROM, Double)
            trans.METRAJE_TO = CType(METRAJE_TO, Double)
            trans.TIPO_CANAL = TIPO_CANAL
            trans.MUESTREO_EN = MUESTREO_EN
            trans.MANTO = MANTO
            trans.CALICATA = CALICATA
            trans.CC_ANCHO = CC_ANCHO
            trans.CC_LARGO = CC_LARGO
            trans.ZMUESTRA = ZMUESTRA
            trans.LOGUEO = LOGUEO
            trans.REFERENCIAM = REFERENCIAM
            trans.GEMMUESTRA = GEMMUESTRA
            trans.RECMUESTRA = RECMUESTRA
            trans.DUPMUESTRA = DUPMUESTRA
            trans.LEYGEMMUESTRA = LEYGEMMUESTRA
            trans.LEYRECMUESTRA = LEYRECMUESTRA
            trans.LEYDUPMUESTRA = LEYDUPMUESTRA
            trans.PRIORIDAD = PRIORIDAD
            trans.CLITOLOGIA = CLITOLOGIA
            trans.CDLITOLOGIA = CDLITOLOGIA
            trans.CALTERACION = CALTERACION
            trans.CDALTERACION = CDALTERACION
            trans.CESTRUCTURAS = CESTRUCTURAS
            trans.CDESTRUCTURAS = CDESTRUCTURAS
            trans.CMINERALIZACION = CMINERALIZACION
            trans.CDMINERALIZACION = CDMINERALIZACION
            trans.PULMUESTRA = PULMUESTRA
            trans.USRCRE = USRCRE
            trans.FECCRE = CType(Now, Date)
            trans.USRMOD = USRMOD
            trans.FECMOD = CType(Now, Date)

            act.AddToGE_REPORTE_MUESTREO_DETALLE(trans)
            act.SaveChanges()

        Catch ex As Exception
            MsgBox(ex.Message)

        End Try

        Return 0

    End Function


    Public Function ToDataTable(Of T)(ByVal varlist As IQueryable(Of T)) As DataTable
        Dim dtReturn As New DataTable

        'column names
        Dim oProps As PropertyInfo() = Nothing

        If varlist Is Nothing Then
            Return dtReturn
        End If

        For Each rec As T In varlist
            'Use reflection to get property names, to create table, Only first time, others will follow
            If oProps Is Nothing Then
                oProps = (rec.GetType()).GetProperties()
                For Each pi As PropertyInfo In oProps
                    Dim colType As Type = pi.PropertyType

                    If colType.IsGenericType Then
                        If colType.GetGenericTypeDefinition() Is Nothing Then
                            colType = colType.GetGenericArguments(0)
                        End If
                    End If

                    If colType.Name.Trim = "Nullable`1" Then
                        Dim tmp = colType.FullName.Replace("System.Nullable`1[[System.", "").Split(",")(0).ToString
                        colType = System.Type.GetType("System." & tmp)
                    End If

                    dtReturn.Columns.Add(New DataColumn(pi.Name, colType))
                Next

            End If

            Dim dr As DataRow = dtReturn.NewRow()

            For Each pi As PropertyInfo In oProps
                dr(pi.Name) = IIf(pi.GetValue(rec, Nothing) Is Nothing, DBNull.Value, pi.GetValue(rec, Nothing))
            Next

            dtReturn.Rows.Add(dr)
        Next

        Return dtReturn
    End Function


End Class