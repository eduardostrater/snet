Imports System.Reflection
Imports System.IO


Public Class clslog

    Function cadena_conexion() As String
        Dim cnx As New clscadcon
        Return cnx.cadena_conexion
    End Function


    Function selaccusr(ByVal user As String, ByVal clav As String) As DataTable

            'Extraer info caf
            Dim Context As New SIGDATASDOEntities(cadena_conexion())
            'Where p.CUENTAPCGR Like "335%" Or p.CUENTAPCGR Like "336%"

            Dim query1 = From p In Context.ge_v_menu_user
                         Where p.usuario = user And p.clave = clav
                             Select p.MENU, p.DESCRIPCION, p.usuario, p.clave

            Return ToDataTable(query1)

    End Function

    Function selmenusr(ByVal user As String, ByVal clav As String, proceso As String) As DataTable

        'Extraer info caf
        Dim Context As New SIGDATASDOEntities(cadena_conexion())
        'Where p.CUENTAPCGR Like "335%" Or p.CUENTAPCGR Like "336%"

        Dim query1 = From p In Context.ge_v_menu_user
                     Where p.usuario = user And p.clave = clav And p.MENU = proceso
                                      Select p.MENU, p.DESCRIPCION, p.usuario, p.clave
                                    Order By MENU

        Return ToDataTable(query1)

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
