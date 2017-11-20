Public Class userboton

    Public Event nuevo()
    Public Event guardar()
    Public Event actualizar()
    Public Event borrar()
    Public Event cancelar()
    Public Event imprimir()
    Public Event imprimirt()
    Public Event imprimircor()
    Public Event mensaje()


    Private Sub btnnuevo_Click(sender As System.Object, e As System.EventArgs) Handles btnnuevo.Click
        RaiseEvent nuevo()
    End Sub

    Private Sub btnactualizar_Click(sender As Object, e As System.EventArgs) Handles btnactualizar.Click
        RaiseEvent actualizar()
    End Sub

    Private Sub btnborrar_Click(sender As Object, e As System.EventArgs) Handles btnborrar.Click
        RaiseEvent borrar()
    End Sub

    Private Sub btnguardar_Click(sender As Object, e As System.EventArgs) Handles btnguardar.Click
        RaiseEvent guardar()
    End Sub

    Private Sub btncancelar_Click(sender As Object, e As System.EventArgs) Handles btncancelar.Click
        RaiseEvent cancelar()
    End Sub

    Private Sub btnmensaje_Click(sender As Object, e As System.EventArgs) Handles btnmensaje.Click
        RaiseEvent mensaje()
    End Sub

    Private Sub btnimprimir_Click(sender As System.Object, e As System.EventArgs) Handles btnimprimir.Click

    End Sub


End Class
