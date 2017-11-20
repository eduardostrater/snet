Imports SIGDATA
Imports System.Reflection

Public Class clsperdial

    Public Function fnbuscaproysondajes() As DataTable

        Dim trans As New clsperdia
        Return trans.fnbuscaproysondajes

    End Function

    Public Function fnbuscaproysondajesfil(ByVal sproyecto As String) As DataTable

        Dim trans As New clsperdia
        Return trans.fnbuscaproysondajesfil(sproyecto)

    End Function

    Function fnbuscasonsondajesfil(ByVal sproyecto As String, ByVal sestado As String) As DataTable
        Dim trans As New clsperdia
        Return trans.fnbuscasonsondajesfil(sproyecto, sestado)
    End Function

    Function fnbuscasonsondajesfil_eje(ByVal sproyecto As String, ByVal sestado As String) As DataTable
        Dim trans As New clsperdia
        Return trans.fnbuscasonsondajesfil_eje(sproyecto, sestado)
    End Function

    Function fnbusinfo_lit(ByVal ssondaje As String) As DataTable
        Dim trans As New clsperdia
        Return trans.fnbusinfo_lit(ssondaje)
    End Function


    Function fnbusinfo_alt(ByVal ssondaje As String) As DataTable
        Dim trans As New clsperdia
        Return trans.fnbusinfo_alt(ssondaje)
    End Function


    Function fnbusinfo_min(ByVal ssondaje As String) As DataTable
        Dim trans As New clsperdia
        Return trans.fnbusinfo_min(ssondaje)
    End Function

    Function fnbusinfo_mco(ByVal ssondaje As String) As DataTable
        Dim trans As New clsperdia
        Return trans.fnbusinfo_mco(ssondaje)
    End Function

    Function fnbusinfo_mue(ByVal ssondaje As String) As DataTable
        Dim trans As New clsperdia
        Return trans.fnbusinfo_mue(ssondaje)
    End Function

    Function fnbusinfo_est(ByVal ssondaje As String) As DataTable
        Dim trans As New clsperdia
        Return trans.fnbusinfo_est(ssondaje)
    End Function

    Public Function fnexistesondaje(ByVal vsondaje As String) As DataTable
        Dim trans As New clsperdia
        Return trans.fnexistesondaje(vsondaje)
    End Function

    Public Function fninsertaGE_PROYECTO_PRF(ByVal PROYECTO As String, ByVal OBJETIVO As String, ByVal FECHA As String, ByVal RESUMEN As String, ByVal FECHACREA As String, ByVal USUARCREA As String, ByVal CORDENADAE As String, ByVal CORDENADAN As String, ByVal COTA As String, ByVal AZIMUT As String, ByVal INCLINACION As String, ByVal archivo As String) As Integer

        Dim trans As New clsperdia
        trans.fninsertaGE_PROYECTO_PRF(PROYECTO, OBJETIVO, FECHA, RESUMEN, FECHACREA, USUARCREA, CORDENADAE, CORDENADAN, COTA, AZIMUT, INCLINACION, archivo)
        Return 0

    End Function

    Public Function fnactualiza_sondaje(ByVal proyecto As String, ByVal reporta As String, ByVal supervisor As String, ByVal labor As String, ByVal fecha As String, ByVal coordenadae As String, ByVal coordenadan As String, ByVal cota As String, ByVal azimut As String, ByVal inclinacion As String, ByVal archivopdf As String, ByVal creadopor As String, ByVal fechacrea As String, ByVal modifipor As String, ByVal fechamod As String, ByVal longtotal As String, ByVal maquina As String, ByVal sondajee As String, ByVal tipest As String, ByVal fechai As String, ByVal fechaf As String, ByVal referencia As String, ByVal aformato As String, ByVal aplanta As String, ByVal aseccion As String, ByVal objetivo As String) As Integer

        Dim trans As New clsperdia
        trans.fnactualiza_sondaje(proyecto, reporta, supervisor, labor, fecha, coordenadae, coordenadan, cota, azimut, inclinacion, archivopdf, creadopor, fechacrea, modifipor, fechamod, longtotal, maquina, sondajee, tipest, fechai, fechaf, referencia, aformato, aplanta, aseccion, objetivo)
        Return 0

    End Function

    Public Function fninsertage_reporte_prf(ByVal proyecto As String, ByVal reporta As String, ByVal supervisor As String, ByVal labor As String, ByVal fecha As String, ByVal coordenadae As String, ByVal coordenadan As String, ByVal cota As String, ByVal azimut As String, ByVal inclinacion As String, ByVal archivopdf As String, ByVal estado As String, ByVal creadopor As String, ByVal fechacrea As String, ByVal modifipor As String, ByVal fechamod As String, ByVal longtotal As String, ByVal maquina As String, ByVal sondajee As String, ByVal tipest As String, ByVal fechai As String, ByVal fechaf As String, ByVal referencia As String, ByVal aformato As String, ByVal aplanta As String, ByVal aseccion As String, ByVal objetivo As String) As Integer

        Dim trans As New clsperdia
        trans.fninsertage_reporte_prf(proyecto, reporta, supervisor, labor, fecha, coordenadae, coordenadan, cota, azimut, inclinacion, archivopdf, estado, creadopor, fechacrea, modifipor, fechamod, longtotal, maquina, sondajee, tipest, fechai, fechaf, referencia, aformato, aplanta, aseccion, objetivo)
        Return 0

    End Function

    Public Function fninsertage_reporte_prf_detalle_lit(ByVal sondaje As String, ByVal metraje_from As String, ByVal metraje_to As String, ByVal intervalo As String, ByVal litologia As String, ByVal detalle As String, ByVal usrcre As String, ByVal feccre As String, ByVal usrmod As String, ByVal fecmod As String, ByVal proyecto As String) As Integer

        Dim trans As New clsperdia
        trans.fninsertage_reporte_prf_detalle_lit(sondaje, metraje_from, metraje_to, intervalo, litologia, detalle, usrcre, feccre, usrmod, fecmod, proyecto)
        Return 0

    End Function

    Public Function fninsertage_reporte_prf_detalle_alt(ByVal sondaje As String, ByVal metraje_from As String, ByVal metraje_to As String, ByVal intervalo As String, ByVal alteracion As String, ByVal detalle As String, ByVal usrcre As String, ByVal feccre As String, ByVal usrmod As String, ByVal fecmod As String, ByVal proyecto As String) As Integer

        Dim trans As New clsperdia
        trans.fninsertage_reporte_prf_detalle_alt(sondaje, metraje_from, metraje_to, intervalo, alteracion, detalle, usrcre, feccre, usrmod, fecmod, proyecto)
        Return 0

    End Function

    Function fnbuscapordenes(ByVal fechai As String, ByVal fechaf As String) As DataTable

        Dim trans As New clsperdia
        Return trans.fnbuscapordenes(fechai, fechaf)

    End Function

    Function fnlistapordenes(ByVal orden As String) As DataTable

        Dim trans As New clsperdia
        Return trans.fnlistapordenes(orden)

    End Function

    Function fnconfiguracionmail() As DataTable

        Dim trans As New clsperdia
        Return trans.fnconfiguracionmail

    End Function

    Public Function fninsertage_reporte_prf_detalle_est(ByVal sondaje As String, ByVal metraje_from As String, ByVal metraje_to As String, ByVal intervalo As String, ByVal estructura As String, ByVal detalle As String, ByVal usrcre As String, ByVal feccre As String, ByVal usrmod As String, ByVal fecmod As String, ByVal proyecto As String) As Integer

        Dim trans As New clsperdia
        trans.fninsertage_reporte_prf_detalle_est(sondaje, metraje_from, metraje_to, intervalo, estructura, detalle, usrcre, feccre, usrmod, fecmod, proyecto)
        Return 0

    End Function

    Public Function fninsertage_reporte_prf_detalle_min(ByVal sondaje As String, ByVal metraje_from As String, ByVal metraje_to As String, ByVal intervalo As String, ByVal mineralizacion As String, ByVal detalle As String, ByVal usrcre As String, ByVal feccre As String, ByVal usrmod As String, ByVal fecmod As String, ByVal proyecto As String) As Integer

        Dim trans As New clsperdia
        trans.fninsertage_reporte_prf_detalle_min(sondaje, metraje_from, metraje_to, intervalo, mineralizacion, detalle, usrcre, feccre, usrmod, fecmod, proyecto)
        Return 0

    End Function

    Public Function fninsertage_reporte_prf_detalle_mineco(ByVal sondaje As String, ByVal metraje_from As String, ByVal metraje_to As String, ByVal intervalo As String, ByVal mineconomico As String, ByVal detalle As String, ByVal usrcre As String, ByVal feccre As String, ByVal usrmod As String, ByVal fecmod As String, ByVal proyecto As String) As Integer

        Dim trans As New clsperdia
        trans.fninsertage_reporte_prf_detalle_mineco(sondaje, metraje_from, metraje_to, intervalo, mineconomico, detalle, usrcre, feccre, usrmod, fecmod, proyecto)
        Return 0

    End Function

    Public Function fnborrasondaje(ByVal proyecto As String) As Integer
        Dim trans As New clsperdia
        trans.fnborrasondaje(proyecto)
        Return 1
    End Function

    Public Function fnborrainfgeologica_lit(ByVal sondaje As String) As Integer
        Dim trans As New clsperdia
        trans.fnborrainfgeologica_lit(sondaje)
        Return 1
    End Function

    Function fnborrainfgeologica_alt(ByVal sondaje As String) As Integer
        Dim trans As New clsperdia
        trans.fnborrainfgeologica_alt(sondaje)
        Return 1
    End Function

    Function fnborrainfgeologica_est(ByVal sondaje As String) As Integer
        Dim trans As New clsperdia
        trans.fnborrainfgeologica_est(sondaje)
        Return 1
    End Function

    Function fnborrainfgeologica_min(ByVal sondaje As String) As Integer
        Dim trans As New clsperdia
        trans.fnborrainfgeologica_min(sondaje)
        Return 1
    End Function

    Function fnborrainfgeologica_mineco(ByVal sondaje As String) As Integer
        Dim trans As New clsperdia
        trans.fnborrainfgeologica_mineco(sondaje)
        Return 1
    End Function

    Public Function fnbuscaproysondajescorrel(ByVal estados As String, ByVal tipos As String) As DataTable

        Dim trans As New clsperdia
        Return trans.fnbuscaproysondajescorrel(estados, tipos)

    End Function

    Public Function fninserta_sondaje_correl(ByVal sondaje As String, ByVal correl As String, ByVal estado As String, ByVal tipo As String) As Integer

        Dim trans As New clsperdia
        trans.fninserta_sondaje_correl(sondaje, correl, estado, tipo)
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
