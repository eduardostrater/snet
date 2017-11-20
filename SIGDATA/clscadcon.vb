Imports System.IO

Public Class clscadcon

    Function cadena_conexion() As String

        Dim ocon As String

        Dim enlace As System.IO.StreamReader
        enlace = New StreamReader("cadcon.cnx")

        ocon = enlace.ReadToEnd
        enlace.Close()

        'ocon = "metadata=res://*/SIGDATASDO.csdl|res://*/SIGDATASDO.ssdl|res://*/SIGDATASDO.msl;provider=System.Data.SqlClient;provider connection string=""data source=GUTY\XBD;initial catalog=SIGDATA;persist security info=True;user id=sa;password=123456;multipleactiveresultsets=True;App=EntityFramework"""

        Return ocon

    End Function

End Class
