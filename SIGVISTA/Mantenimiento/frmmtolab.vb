Imports SIGLOGICA

Public Class frmmtolab

    Private Sub Userboton1_cancelar() Handles Userboton1.cancelar
        deshabilitado()
    End Sub

    Private Sub Userboton1_guardar() Handles Userboton1.guardar

        Dim estado As Integer
        Dim trans As New clsmuestreol
        estado = trans.fninserta_labor(cmbproyecto.SelectedItem, CType(seltlabor.EditValue, String), txtcodificacion.Text, txtdescripcion.Text, puser, "", puser, "", CType(txtnivel.Text, Decimal))

        If estado = 1 Then
            MsgBox("Se Completo Registro de Labor", MsgBoxStyle.Information, "SIG")
            consulta_labores()
        Else
            MsgBox("No se completo Registro de Labor", MsgBoxStyle.Information, "SIG")
            consulta_labores()
        End If

        deshabilitado()
    End Sub

    Sub consulta_labores()
        Dim trans As New clsmuestreol
        grddetalle.DataSource = trans.consulta_labor
    End Sub

    Private Sub frmmtolab_Load(sender As Object, e As System.EventArgs) Handles Me.Load

        Dim trans As New clsmuestreol

        consulta_labores()

        RepositoryItemLookUpEdit1.DataSource = trans.tipo_labor
        RepositoryItemLookUpEdit1.DisplayMember = "NOMBRE"
        RepositoryItemLookUpEdit1.ValueMember = "ABREVIATURA"

        deshabilitado()

    End Sub


    Private Sub Userboton1_nuevo() Handles Userboton1.nuevo

        cmbproyecto.Enabled = True
        cmbestado.Enabled = True
        txtnivel.Enabled = True
        seltlabor.Enabled = True
        txtcodificacion.Enabled = True
        txtdescripcion.Enabled = True

        TXTID.Text = ""
        cmbproyecto.Text = ""
        cmbestado.Text = ""
        txtnivel.Text = ""
        seltlabor.Text = ""
        txtcodificacion.Text = ""
        txtdescripcion.Text = ""
        seltlabor.EditValue = ""

        grddetalle.Enabled = True

        Userboton1.btnguardar.Enabled = True
        Userboton1.btnactualizar.Enabled = False
        Userboton1.btncancelar.Enabled = True
        Userboton1.btnborrar.Enabled = False
        Userboton1.btnimprimir.Enabled = False
        Userboton1.btnmensaje.Enabled = False


    End Sub

    Sub deshabilitado()

        cmbproyecto.Text = ""
        cmbestado.Text = ""
        txtnivel.Text = ""
        seltlabor.Text = ""
        txtcodificacion.Text = ""
        txtdescripcion.Text = ""
        seltlabor.EditValue = ""

        cmbproyecto.Enabled = False
        cmbestado.Enabled = False
        txtnivel.Enabled = False
        seltlabor.Enabled = False
        txtcodificacion.Enabled = False
        txtdescripcion.Enabled = False


        Userboton1.btnguardar.Enabled = False
        Userboton1.btnactualizar.Enabled = False
        Userboton1.btncancelar.Enabled = False
        Userboton1.btnborrar.Enabled = False
        Userboton1.btncancelar.Enabled = False
        Userboton1.btnimprimir.Enabled = False
        Userboton1.btnmensaje.Enabled = False

    End Sub

    Private Sub grddetalle_Click(sender As System.Object, e As System.EventArgs) Handles grddetalle.Click

        TXTID.Text = GridView1.GetFocusedRowCellValue("ID").ToString
        cmbproyecto.Text = GridView1.GetFocusedRowCellValue("PROYECTO").ToString
        cmbestado.Text = "EXPLORACION" 'GridView1.GetFocusedRowCellValue("").ToString
        txtnivel.Text = GridView1.GetFocusedRowCellValue("NIVEL").ToString
        'TextBox1.Text = GridView1.GetFocusedRowCellValue("TLABOR").ToString
        txtcodificacion.Text = GridView1.GetFocusedRowCellValue("CODIFICACION").ToString
        txtdescripcion.Text = GridView1.GetFocusedRowCellValue("DESCRIPCION").ToString

        Select Case GridView1.GetFocusedRowCellValue("TLABOR").ToString
            Case "CX"
                seltlabor.EditValue = "CX"
            Case "GL"
                seltlabor.EditValue = "GL"
            Case "BP"
                seltlabor.EditValue = "BP"
            Case "CH"
                seltlabor.EditValue = "CH"
            Case "IN"
                seltlabor.EditValue = "IN"
            Case "RM"
                seltlabor.EditValue = "RM"
            Case "PQ"
                seltlabor.EditValue = "PQ"
        End Select
        'CX(Crucero)
        'GL(Galeria)
        'BP	By Pass
        'CH(Chimenea)
        'IN	Inclinado
        'RM(Rampa)
        'PQ(Pique)

    End Sub


    Private Sub TXTID_TextChanged(sender As System.Object, e As System.EventArgs) Handles TXTID.TextChanged

    End Sub

 
End Class