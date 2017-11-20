Imports SIGDATA
Imports System.Reflection


Public Class clsqaqcl

    Function consulta_qaqc(sreporte As String) As DataTable

        Dim trans As New clsqaqc
        Return trans.consulta_qaqc("eee")

    End Function


End Class
