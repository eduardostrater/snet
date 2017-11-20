Imports SIGLOGICA

Public Class frmlogin

    Private Sub Button1_Click(sender As System.Object, e As System.EventArgs) Handles btningresar.Click

        Dim trans As New clslogin
        Dim num As Integer

        Try
            num = trans.selaccusr(txtu.Text, txtc.Text).Rows.Count
        Catch ex As Exception
            MsgBox(ex.Message)
            MsgBox("Error en la cadena de conexión. Favor comunicarse urgente con el Administrador", MsgBoxStyle.Critical, "SISTEMA DE INFORMACION GEOLOGICA")
            Me.Close()
        End Try

        If num > 0 Then

            puser = txtu.Text
            Dim frm As New frminicio
            frm.Show()

        Else
            MsgBox("El usuario o la contraseña que has introducido no son correctas", MsgBoxStyle.Critical, "SISTEMA DE INVENTARIO SEAL")
            Me.Dispose()
        End If

    End Sub

    Private Sub btncancelar_Click(sender As System.Object, e As System.EventArgs) Handles btncancelar.Click
        Me.Close()

    End Sub

    Private Sub frmlogin_Load(sender As System.Object, e As System.EventArgs) Handles MyBase.Load
        txtu.Focus()
    End Sub
End Class