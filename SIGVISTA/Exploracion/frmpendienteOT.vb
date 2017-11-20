Imports SIGLOGICA
Imports System.Data.SqlClient
Imports System.Net.Mail


Public Class frmpendienteOT

    Dim message As New MailMessage
    Dim smtp As New SmtpClient

    Public ind As Integer

    Private Sub btnbuscar_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnbuscar.Click

        Dim tranz As New clsperdial
        tranz.fnbuscapordenes(txtfechai.Text, txtfechaf.Text)

        For i = 0 To tranz.fnbuscapordenes(txtfechai.Text, txtfechaf.Text).Rows.Count - 1
            grdorden.DataSource = tranz.fnbuscapordenes(txtfechai.Text, txtfechaf.Text)
        Next

    End Sub

    Private Sub btnenviar_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnenviar.Click

        If MsgBox("Usted enviara la orden de laboratorio Nro." & CType(grdorden.Rows(grdorden.CurrentRow.Index).Cells(0).Value.ToString, String), MsgBoxStyle.YesNo, "SIG.NET") = MsgBoxResult.Yes Then

            Try
                Dim tranz As New clsperdial

                envia_mailot(tranz.fnlistapordenes(CType(grdorden.Rows(grdorden.CurrentRow.Index).Cells(0).Value.ToString, String)), tranz.fnconfiguracionmail.Rows(0).Item(0).ToString, tranz.fnconfiguracionmail.Rows(0).Item(1).ToString, tranz.fnconfiguracionmail.Rows(0).Item(2).ToString)

            Catch ex As Exception
                MsgBox(ex.Message)
            End Try
            
        End If

    End Sub

    Public Sub envia_mailot(ByVal dtt As DataTable, ByVal destinatarios As String, ByVal cuenta As String, ByVal clave As String)

        Dim cad As String

        cad = "<tr align=center bgcolor=#0C7D94><td><font color=""#FFFFFF"" Size=1 FACE=""Geneva, Arial""><b>&nbsp;&nbsp;&nbsp;MUESTRA&nbsp;&nbsp;&nbsp;</b></FONT></td>" _
                  & "<td><font color=""#FFFFFF"" Size=1 FACE=""Geneva, Arial""><b>&nbsp;&nbsp;&nbsp;ORDEN LABORATORIO&nbsp;&nbsp;&nbsp;</b></FONT></td><td><font color=""#FFFFFF"" Size=1 FACE=""Geneva, Arial""><b>&nbsp;&nbsp;&nbsp;FECHA ENTREGA&nbsp;&nbsp;&nbsp;</b></FONT></td></tr>"


        For index As Integer = 0 To dtt.Rows.Count - 1
            cad = cad + "<tr align=center><td><FONT SIZE=1>" & dtt.Rows(index).Item(0) & "</FONT></td><td><FONT SIZE=1>" & dtt.Rows(index).Item(1) & "</FONT></td><td><FONT SIZE=1>" & _
                        dtt.Rows(index).Item(2) & "</FONT></td></tr>"
        Next

        message.From = New MailAddress(cuenta)

        '        message.To.Add("ganaya@coripuno.com.pe,dplasencia@coripuno.com.pe,phuamani@coripuno.com.pe,emendoza@coripuno.com.pe,jfernandezm@coripuno.com.pe,wenrique@coripuno.com.pe,jmoreno@coripuno.com.pe,rcalsin@coripuno.com.pe,mjamachi@coripuno.com.pe,scusimayta@coripuno.com.pe,cholsen@coripuno.com.pe")
        'message.To.Add("ganaya@coripuno.com.pe,atrujillo@coripuno.com.pe,lhuamani@coripuno.com.pe,dplasencia@coripuno.com.pe,jtamayo@coripuno.com.pe,jcusquipoma@coripuno.com.pe,dmantilla@coripuno.com.pe,cholsen@coripuno.com.pe,cholsenr@gmail.com")
        message.To.Add(destinatarios)

        'message.To.Add("cholsen@coripuno.com.pe")

        message.IsBodyHtml = True

        message.Body = "<html>" _
                     & "<HEAD>" _
                    & "<STYLE type=text/css>" _
                      & "BODY { font-family: ""new century schoolbook"", serif }" _
                    & "</STYLE>" _
                & "</HEAD>" _
                           & "<body bgcolor=LemonChiffon>" _
                           & "<center><b>Sistema de Información Geológica - Ordenes de Laboratorio - Mina San Cori  </b></center>" _
                            & "<BR><BR><BR>" _
                             & "<table align=center width=""50%"" border=""0"" cellspacing=""0"" cellpadding=""0"" border=1>" _
                               & cad _
                               & "</table>" _
                               & "<BR><BR><BR><center><b>SIG</center></b>" _
                                   & "</body>" _
                           & "</html>"

        message.Subject = "Sistema de Información Geológica - Ordenes de Laboratorio - Mina San Cori"

        message.Priority = MailPriority.Normal

        smtp.EnableSsl = True

        smtp.Port = "25"

        smtp.Host = "smtp.gmail.com"

        smtp.Credentials = New Net.NetworkCredential(cuenta, clave)

        smtp.Send(message)


        MsgBox("Se envió satisfactoriamente la Orden de laboratorio seleccionada...", vbOK, "SIG.NET")

    End Sub


    Private Sub btncancelar_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btncancelar.Click
        Me.Close()
    End Sub

   
End Class