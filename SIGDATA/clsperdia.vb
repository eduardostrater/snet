Imports System.Reflection

Public Class clsperdia

    Dim estado As Integer

    Function cadena_conexion() As String
        Dim cnx As New clscadcon
        Return cnx.cadena_conexion
    End Function



    Function fnbuscaproysondajes() As DataTable

        Dim Context As New SIGDATASDOEntities(cadena_conexion())

        Dim query1 = From z In Context.ge_reporte_prf
                     Where z.estado = "PRO"
                     Select z.sondaje, z.fecha

        Return ToDataTable(query1)

    End Function

    Function fnbuscaproysondajesfil(ByVal sproyecto As String) As DataTable

        Dim Context As New SIGDATASDOEntities(cadena_conexion())

        Dim query1 = From z In Context.GE_PROYECTO_PRF
                     Where z.PROYECTO = sproyecto
                Select z.ID, z.PROYECTO, z.OBJETIVO, z.FECHA, z.RESUMEN, z.FECHACREA, z.USUARCREA, _
        z.CORDENADAE, z.CORDENADAN, z.COTA, z.AZIMUT, z.INCLINACION, z.ARCHIVO

        Return ToDataTable(query1)

    End Function

    Function fnbuscapordenes(ByVal fechai As String, ByVal fechaf As String) As DataTable

        Dim Context As New sigdatasdoEntities(cadena_conexion())

        Dim query1 = From z In Context.GE_REPORTE_MUESTREO_DETALLE
                     Where z.FECHA_ENTREGA >= fechai And z.FECHA_ENTREGA <= fechaf
                     Group By z.FECHA_ENTREGA, z.ORDEN_LABORATORIO Into Group
                        Select ORDEN_LABORATORIO, FECHA_ENTREGA

        Return ToDataTable(query1)

    End Function

    Function fnlistapordenes(ByVal orden As String) As DataTable

        Dim Context As New sigdatasdoEntities(cadena_conexion())

        Dim query1 = From z In Context.GE_REPORTE_MUESTREO_DETALLE
                     Where z.ORDEN_LABORATORIO = orden
                         Select z.MUESTRA, z.ORDEN_LABORATORIO, z.FECHA_ENTREGA

        Return ToDataTable(query1)

    End Function

    Function fnconfiguracionmail() As DataTable

        Dim Context As New sigdatasdoEntities(cadena_conexion())

        Dim query1 = From z In Context.GE_CONFIGURACION_MAIL
                      Select z.DESTINATARIO, z.USUARIO, z.CLAVE

        Return ToDataTable(query1)

    End Function

    Function fnbuscasonsondajesfil(ByVal sproyecto As String, ByVal sestado As String) As DataTable

        Dim Context As New sigdatasdoEntities(cadena_conexion())


        Dim query1 = From z In Context.ge_reporte_prf
                 Where z.sondaje = sproyecto AndAlso z.estado = sestado
            Select
    z.ID,
    z.proyecto,
    z.reporta,
    z.supervisor,
    z.labor,
    z.fecha,
    z.coordenadae,
    z.coordenadan,
    z.cota,
    z.azimut,
    z.inclinacion,
    z.archivopdf,
    z.estado,
    z.creadopor,
    z.fechacrea,
    z.modifipor,
    z.fechamod,
    z.longtotal,
    z.maquina,
    z.sondaje,
    z.tipest,
    z.fechai,
    z.fechaf,
    z.referencia,
    z.objetivo,
    z.aformato,
    z.aplanta,
    z.aseccion

        Return ToDataTable(query1)

    End Function



    Function fnbuscasonsondajesfil_eje(ByVal sproyecto As String, ByVal sestado As String) As DataTable

        Dim Context As New SIGDATASDOEntities(cadena_conexion())

        Dim query1 = From z In Context.ge_reporte_prf
                 Where z.proyecto = sproyecto AndAlso z.estado = sestado
            Select
    z.ID,
    z.proyecto,
    z.reporta,
    z.supervisor,
    z.labor,
    z.fecha,
    z.coordenadae,
    z.coordenadan,
    z.cota,
    z.azimut,
    z.inclinacion,
    z.archivopdf,
    z.estado,
    z.creadopor,
    z.fechacrea,
    z.modifipor,
    z.fechamod,
    z.longtotal,
    z.maquina,
    z.sondaje,
    z.tipest,
    z.fechai,
    z.fechaf,
    z.referencia,
    z.objetivo,
    z.aformato,
    z.aplanta,
    z.aseccion

        Return ToDataTable(query1)

    End Function


    Function fnbusinfo_lit(ByVal ssondaje As String) As DataTable

        Dim Context As New SIGDATASDOEntities(cadena_conexion())

        Dim query1 = From z In Context.ge_reporte_prf_detalle_lit
                     Where z.sondaje = ssondaje
                Select ID = z.id, z.compania, z.unidad, SONDAJE = z.sondaje, METRAJE_FROM = z.metraje_from, _
        METRAJE_TO = z.metraje_to, INTERVALO = z.intervalo, ABREVIATURA = z.litologia, DETALLE = z.detalle, z.usrcre, z.feccre, z.usrmod, z.fecmod, PROYECTO = z.proyecto

        Return ToDataTable(query1)

    End Function


    Function fnbusinfo_alt(ByVal ssondaje As String) As DataTable

        Dim Context As New SIGDATASDOEntities(cadena_conexion())

        Dim query1 = From z In Context.ge_reporte_prf_detalle_alt
                     Where z.sondaje = ssondaje
                Select ID = z.id, z.compania, z.unidad, SONDAJE = z.sondaje, METRAJE_FROM = z.metraje_from, _
        METRAJE_TO = z.metraje_to, INTERVALO = z.intervalo, ABREVIATURA = z.alteracion, DETALLE = z.detalle, z.usrcre, z.feccre, z.usrmod, z.fecmod, PROYECTO = z.proyecto

        Return ToDataTable(query1)

    End Function


    Function fnbusinfo_min(ByVal ssondaje As String) As DataTable

        Dim Context As New SIGDATASDOEntities(cadena_conexion())

        Dim query1 = From z In Context.ge_reporte_prf_detalle_min
                     Where z.sondaje = ssondaje
                Select ID = z.id, z.compania, z.unidad, SONDAJE = z.sondaje, METRAJE_FROM = z.metraje_from, _
        METRAJE_TO = z.metraje_to, INTERVALO = z.intervalo, ABREVIATURA = z.mineralizacion, DETALLE = z.detalle, z.usrcre, z.feccre, z.usrmod, z.fecmod, PROYECTO = z.proyecto

        Return ToDataTable(query1)

    End Function

    Function fnbusinfo_mco(ByVal ssondaje As String) As DataTable

        Dim Context As New SIGDATASDOEntities(cadena_conexion())

        Dim query1 = From z In Context.ge_reporte_prf_detalle_mineco
                     Where z.sondaje = ssondaje
                Select ID = z.id, z.compania, z.unidad, SONDAJE = z.sondaje, METRAJE_FROM = z.metraje_from, _
        METRAJE_TO = z.metraje_to, INTERVALO = z.intervalo, ABREVIATURA = z.mineconomico, DETALLE = z.detalle, z.usrcre, z.feccre, z.usrmod, z.fecmod, PROYECTO = z.proyecto

        Return ToDataTable(query1)

    End Function

    Function fnbusinfo_est(ByVal ssondaje As String) As DataTable

        Dim Context As New SIGDATASDOEntities(cadena_conexion())

        Dim query1 = From z In Context.ge_reporte_prf_detalle_est
                     Where z.sondaje = ssondaje
                Select ID = z.id, z.compania, z.unidad, SONDAJE = z.sondaje, METRAJE_FROM = z.metraje_from, _
        METRAJE_TO = z.metraje_to, INTERVALO = z.intervalo, ABREVIATURA = z.estructura, DETALLE = z.detalle, z.usrcre, z.feccre, z.usrmod, z.fecmod, PROYECTO = z.proyecto

        Return ToDataTable(query1)

    End Function

    Function fnbusinfo_mue(ByVal ssondaje As String) As DataTable

        Dim Context As New SIGDATASDOEntities(cadena_conexion())

        Dim query1 = From z In Context.GE_REPORTE_MUESTREO_DETALLE
                     Where z.SONDAJE = ssondaje
                Select z.SONDAJE, z.MUESTRA, z.METRAJE_FROM, z.METRAJE_TO, z.LABORATORIO_LOCAL_LEY

        Return ToDataTable(query1)

    End Function

    Public Function fninsertaGE_PROYECTO_PRF(ByVal PROYECTO As String, ByVal OBJETIVO As String, ByVal FECHA As String, ByVal RESUMEN As String, ByVal FECHACREA As String, ByVal USUARCREA As String, ByVal CORDENADAE As String, ByVal CORDENADAN As String, ByVal COTA As String, ByVal AZIMUT As String, ByVal INCLINACION As String, ByVal archivo As String) As Integer

        Try
            Dim act As New SIGDATASDOEntities(cadena_conexion())
            Dim trans As New GE_PROYECTO_PRF

            trans.PROYECTO = PROYECTO
            trans.OBJETIVO = OBJETIVO
            trans.FECHA = FECHA
            trans.RESUMEN = RESUMEN
            trans.FECHACREA = FECHACREA
            trans.USUARCREA = CType(Now, Date)
            trans.CORDENADAE = CORDENADAE
            trans.CORDENADAN = CORDENADAN
            trans.COTA = COTA
            trans.AZIMUT = AZIMUT
            trans.INCLINACION = INCLINACION
            trans.ARCHIVO = archivo

            act.AddToGE_PROYECTO_PRF(trans)
            act.SaveChanges()

            estado = 1
        Catch ex As Exception
            MsgBox(ex.Message)
            estado = 0
        End Try

        Return estado

    End Function

    Public Function fnexistesondaje(ByVal vsondaje As String) As DataTable

        Dim Context As New sigdatasdoEntities(cadena_conexion())

        Dim query1 = (From z In Context.ge_reporte_prf
                      Where z.sondaje = vsondaje
                      Select z.ID, z.sondaje)

        Return ToDataTable(query1)

    End Function

    Public Function fnactualiza_sondaje(ByVal proyecto As String, ByVal reporta As String, ByVal supervisor As String, ByVal labor As String, ByVal fecha As String, ByVal coordenadae As String, ByVal coordenadan As String, ByVal cota As String, ByVal azimut As String, ByVal inclinacion As String, ByVal archivopdf As String, ByVal creadopor As String, ByVal fechacrea As String, ByVal modifipor As String, ByVal fechamod As String, ByVal longtotal As String, ByVal maquina As String, ByVal sondajee As String, ByVal tipest As String, ByVal fechai As String, ByVal fechaf As String, ByVal referencia As String, ByVal aformato As String, ByVal aplanta As String, ByVal aseccion As String, ByVal objetivo As String) As Integer


        Try
            Dim act As New sigdatasdoEntities(cadena_conexion())

            Dim trans = (From z In act.ge_reporte_prf
                         Where z.sondaje = sondajee
                        Select z).First


            trans.proyecto = proyecto
            trans.reporta = reporta
            trans.supervisor = supervisor
            trans.labor = labor
            trans.fecha = fecha
            trans.coordenadae = CType(coordenadae, Double)
            trans.coordenadan = CType(coordenadan, Double)
            trans.cota = CType(cota, Double)
            trans.azimut = CType(azimut, Double)
            trans.inclinacion = CType(inclinacion, Double)
            trans.archivopdf = archivopdf
            'trans.estado = estado
            trans.creadopor = creadopor
            trans.fechacrea = fechacrea
            trans.modifipor = modifipor
            trans.fechamod = fechamod
            trans.longtotal = CType(longtotal, Double)
            trans.maquina = maquina
            trans.sondaje = sondajee
            trans.fechai = fechai
            trans.fechaf = fechaf
            trans.referencia = referencia
            trans.tipest = tipest
            trans.aformato = aformato
            trans.aplanta = aplanta
            trans.aseccion = aseccion
            trans.objetivo = objetivo

            act.SaveChanges()


        Catch ex As Exception
            MsgBox(ex.Message)
            estado = 0
        End Try

        Return estado

    End Function

    Public Function fninsertage_reporte_prf(ByVal proyecto As String, ByVal reporta As String, ByVal supervisor As String, ByVal labor As String, ByVal fecha As String, ByVal coordenadae As String, ByVal coordenadan As String, ByVal cota As String, ByVal azimut As String, ByVal inclinacion As String, ByVal archivopdf As String, ByVal estado As String, ByVal creadopor As String, ByVal fechacrea As String, ByVal modifipor As String, ByVal fechamod As String, ByVal longtotal As String, ByVal maquina As String, ByVal sondaje As String, ByVal tipest As String, ByVal fechai As String, ByVal fechaf As String, ByVal referencia As String, ByVal aformato As String, ByVal aplanta As String, ByVal aseccion As String, ByVal objetivo As String) As Integer

        Try
            Dim act As New sigdatasdoEntities(cadena_conexion())
            Dim trans As New ge_reporte_prf

            trans.proyecto = proyecto
            trans.reporta = reporta
            trans.supervisor = supervisor
            trans.labor = labor
            trans.fecha = fecha
            trans.coordenadae = CType(coordenadae, Double)
            trans.coordenadan = CType(coordenadan, Double)
            trans.cota = CType(cota, Double)
            trans.azimut = CType(azimut, Double)
            trans.inclinacion = CType(inclinacion, Double)
            trans.archivopdf = archivopdf
            trans.estado = estado
            trans.creadopor = creadopor
            trans.fechacrea = fechacrea
            trans.modifipor = modifipor
            trans.fechamod = fechamod
            trans.longtotal = CType(longtotal, Double)
            trans.maquina = maquina
            trans.sondaje = sondaje
            trans.fechai = fechai
            trans.fechaf = fechaf
            trans.referencia = referencia
            trans.tipest = tipest
            trans.aformato = aformato
            trans.aplanta = aplanta
            trans.aseccion = aseccion
            trans.objetivo = objetivo

            act.AddToge_reporte_prf(trans)
            act.SaveChanges()

            estado = 1
        Catch ex As Exception
            MsgBox(ex.Message)
            estado = 0
        End Try

        Return estado

    End Function

    Public Function fninsertage_reporte_prf_detalle_lit(ByVal sondaje As String, ByVal metraje_from As String, ByVal metraje_to As String, ByVal intervalo As String, ByVal litologia As String, ByVal detalle As String, ByVal usrcre As String, ByVal feccre As String, ByVal usrmod As String, ByVal fecmod As String, ByVal proyecto As String) As Integer

        Try
            Dim act As New SIGDATASDOEntities(cadena_conexion())
            Dim trans As New ge_reporte_prf_detalle_lit

            trans.proyecto = proyecto
            trans.sondaje = sondaje
            trans.metraje_from = metraje_from
            trans.metraje_to = metraje_to
            trans.intervalo = intervalo
            trans.litologia = litologia
            trans.detalle = detalle
            trans.usrcre = usrcre
            trans.feccre = CType(Now, Date)
            trans.usrmod = usrmod
            trans.fecmod = CType(Now, Date)

            act.AddToge_reporte_prf_detalle_lit(trans)
            act.SaveChanges()

            estado = 1
        Catch ex As Exception
            MsgBox(ex.Message)
            estado = 0
        End Try

        Return estado

    End Function


    Public Function fninsertage_reporte_prf_detalle_alt(ByVal sondaje As String, ByVal metraje_from As String, ByVal metraje_to As String, ByVal intervalo As String, ByVal alteracion As String, ByVal detalle As String, ByVal usrcre As String, ByVal feccre As String, ByVal usrmod As String, ByVal fecmod As String, ByVal proyecto As String) As Integer

        Try
            Dim act As New SIGDATASDOEntities(cadena_conexion())
            Dim trans As New ge_reporte_prf_detalle_alt

            trans.proyecto = proyecto
            trans.sondaje = sondaje
            trans.metraje_from = metraje_from
            trans.metraje_to = metraje_to
            trans.intervalo = intervalo
            trans.alteracion = alteracion
            trans.detalle = detalle
            trans.usrcre = usrcre
            trans.feccre = CType(Now, Date)
            trans.usrmod = usrmod
            trans.fecmod = CType(Now, Date)

            act.AddToge_reporte_prf_detalle_alt(trans)
            act.SaveChanges()

            estado = 1
        Catch ex As Exception
            MsgBox(ex.Message)
            estado = 0
        End Try

        Return estado

    End Function


    Public Function fninsertage_reporte_prf_detalle_est(ByVal sondaje As String, ByVal metraje_from As String, ByVal metraje_to As String, ByVal intervalo As String, ByVal estructura As String, ByVal detalle As String, ByVal usrcre As String, ByVal feccre As String, ByVal usrmod As String, ByVal fecmod As String, ByVal proyecto As String) As Integer

        Try
            Dim act As New SIGDATASDOEntities(cadena_conexion())
            Dim trans As New ge_reporte_prf_detalle_est

            trans.proyecto = proyecto
            trans.sondaje = sondaje
            trans.metraje_from = metraje_from
            trans.metraje_to = metraje_to
            trans.intervalo = intervalo
            trans.estructura = estructura
            trans.detalle = detalle
            trans.usrcre = usrcre
            trans.feccre = CType(Now, Date)
            trans.usrmod = usrmod
            trans.fecmod = CType(Now, Date)

            act.AddToge_reporte_prf_detalle_est(trans)
            act.SaveChanges()

            estado = 1
        Catch ex As Exception
            MsgBox(ex.Message)
            estado = 0
        End Try

        Return estado

    End Function


    Public Function fninsertage_reporte_prf_detalle_min(ByVal sondaje As String, ByVal metraje_from As String, ByVal metraje_to As String, ByVal intervalo As String, ByVal mineralizacion As String, ByVal detalle As String, ByVal usrcre As String, ByVal feccre As String, ByVal usrmod As String, ByVal fecmod As String, ByVal proyecto As String) As Integer

        Try
            Dim act As New SIGDATASDOEntities(cadena_conexion())
            Dim trans As New ge_reporte_prf_detalle_min

            trans.proyecto = proyecto
            trans.sondaje = sondaje
            trans.metraje_from = metraje_from
            trans.metraje_to = metraje_to
            trans.intervalo = intervalo
            trans.mineralizacion = mineralizacion
            trans.detalle = detalle
            trans.usrcre = usrcre
            trans.feccre = CType(Now, Date)
            trans.usrmod = usrmod
            trans.fecmod = CType(Now, Date)

            act.AddToge_reporte_prf_detalle_min(trans)
            act.SaveChanges()

            estado = 1
        Catch ex As Exception
            MsgBox(ex.Message)
            estado = 0
        End Try

        Return estado

    End Function

    Public Function fninsertage_reporte_prf_detalle_mineco(ByVal sondaje As String, ByVal metraje_from As String, ByVal metraje_to As String, ByVal intervalo As String, ByVal mineconomico As String, ByVal detalle As String, ByVal usrcre As String, ByVal feccre As String, ByVal usrmod As String, ByVal fecmod As String, ByVal proyecto As String) As Integer

        Try
            Dim act As New SIGDATASDOEntities(cadena_conexion())
            Dim trans As New ge_reporte_prf_detalle_mineco

            trans.proyecto = proyecto
            trans.sondaje = sondaje
            trans.metraje_from = metraje_from
            trans.metraje_to = metraje_to
            trans.intervalo = intervalo
            trans.mineconomico = mineconomico
            trans.detalle = detalle
            trans.usrcre = usrcre
            trans.feccre = CType(Now, Date)
            trans.usrmod = usrmod
            trans.fecmod = CType(Now, Date)

            act.AddToge_reporte_prf_detalle_mineco(trans)
            act.SaveChanges()

            estado = 1
        Catch ex As Exception
            MsgBox(ex.Message)
            estado = 0
        End Try

        Return estado

    End Function


    Public Function fnborrasondaje(ByVal proyecto As String) As Integer

        Dim act As New SIGDATASDOEntities(cadena_conexion())

        Dim query1 = From z In act.ge_reporte_prf
        Where z.proyecto = proyecto
        Select z

        If query1.ToList.Count > 0 Then
            act.DeleteObject(query1.First)
            act.SaveChanges()
        End If

        Return 1

    End Function

    Public Function fnborrainfgeologica_lit(ByVal sondaje As String) As Integer

        Dim act As New SIGDATASDOEntities(cadena_conexion())


        Dim query1 = From z In act.ge_reporte_prf_detalle_lit
        Where z.sondaje = sondaje
        Select z

        If query1.ToList.Count > 0 Then
            act.DeleteObject(query1.First)
            act.SaveChanges()
        End If

        Return 1

    End Function

    Public Function fnborrainfgeologica_alt(ByVal sondaje As String) As Integer

        Dim act As New SIGDATASDOEntities(cadena_conexion())


        Dim query1 = From z In act.ge_reporte_prf_detalle_alt
        Where z.sondaje = sondaje
        Select z

        If query1.ToList.Count > 0 Then
            act.DeleteObject(query1.First)
            act.SaveChanges()
        End If

        Return 1

    End Function

    Public Function fnborrainfgeologica_est(ByVal sondaje As String) As Integer

        Dim act As New SIGDATASDOEntities(cadena_conexion())


        Dim query1 = From z In act.ge_reporte_prf_detalle_est
        Where z.sondaje = sondaje
        Select z

        If query1.ToList.Count > 0 Then
            act.DeleteObject(query1.First)
            act.SaveChanges()
        End If

        Return 1

    End Function

    Public Function fnborrainfgeologica_min(ByVal sondaje As String) As Integer

        Dim act As New SIGDATASDOEntities(cadena_conexion())


        Dim query1 = From z In act.ge_reporte_prf_detalle_min
        Where z.sondaje = sondaje
        Select z

        If query1.ToList.Count > 0 Then
            act.DeleteObject(query1.First)
            act.SaveChanges()
        End If

        Return 1

    End Function


    Public Function fnborrainfgeologica_mineco(ByVal sondaje As String) As Integer

        Dim act As New SIGDATASDOEntities(cadena_conexion())

        Dim query1 = From z In act.ge_reporte_prf_detalle_mineco
        Where z.sondaje = sondaje
        Select z

        If query1.ToList.Count > 0 Then
            act.DeleteObject(query1.First)
            act.SaveChanges()
        End If

        Return 1

    End Function

    Public Function fnbuscaproysondajescorrel(ByVal estados As String, ByVal tipos As String) As DataTable

        Dim Context As New SIGDATASDOEntities(cadena_conexion())

        Dim query1 = (From z In Context.GE_PERFORACION_CAB
                      Where z.ESTADO = estados And z.TIPO = tipos
                      Order By z.CORREL Descending
                     Select z.ID, z.CORREL)

        Return ToDataTable(query1)

    End Function

    Public Function fninserta_sondaje_correl(ByVal sondaje As String, ByVal correl As String, ByVal estado As String, ByVal tipo As String) As Integer

        Try
            Dim act As New SIGDATASDOEntities(cadena_conexion())
            Dim trans As New GE_PERFORACION_CAB

            trans.NOMBRE = sondaje
            trans.CORREL = correl
            trans.ESTADO = estado
            trans.TIPO = tipo

            act.AddToGE_PERFORACION_CAB(trans)
            act.SaveChanges()

            estado = 1

        Catch ex As Exception
            MsgBox(ex.Message)
            estado = 0
        End Try

        Return estado

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
