Imports SIGLOGICA
Imports DevExpress.XtraGrid.Views.Grid
Imports DevExpress.XtraGrid.Views.Base
Imports DevExpress.XtraGrid.Columns
Imports System.IO


Public Class frmadmmuestras

    Private Sub GridView1_CustomDrawCell(sender As Object, e As DevExpress.XtraGrid.Views.Base.RowCellCustomDrawEventArgs) Handles GridView1.CustomDrawCell

        Dim currentView As GridView = CType(sender, GridView)
        If (e.RowHandle = currentView.FocusedRowHandle) Then Return
        Dim r As Rectangle = e.Bounds
        If e.Column.FieldName = "LABORATORIO_LOCAL_LEY" Then


            Dim valor As Double = CType(currentView.GetRowCellValue(e.RowHandle, _
              currentView.Columns("LABORATORIO_LOCAL_LEY")), Double)

            If valor >= 0 And valor <= 0.99 Then
                e.Appearance.BackColor = Color.Green
            End If

            If valor >= 1 And valor <= 1.99 Then
                e.Appearance.BackColor = Color.Cyan
            End If

            If valor >= 2 And valor <= 2.99 Then
                e.Appearance.BackColor = Color.Yellow
            End If

            If valor >= 3 And valor <= 3.99 Then
                e.Appearance.BackColor = Color.Red
            End If

            If valor >= 3 Then
                e.Appearance.BackColor = Color.Magenta
            End If

            If valor >= 3 And valor <= 3.99 Then
                e.Appearance.BackColor = Color.White
            End If

        End If

    End Sub

    Private Sub btnbuscar_Click(sender As System.Object, e As System.EventArgs) Handles btnbuscar.Click
        Dim trans As New clsmuestreol

        grddetalle.DataSource = trans.consultaadmmuestras(CType(fecini.Text, Date), CType(fecfin.Text, Date), txtmuestra.Text)

        Dim tranz As New clsmuestreol

        RepositoryItemGridLookUpEdit1.DataSource = tranz.usuarios_contrata
        RepositoryItemGridLookUpEdit1.DisplayMember = "USUARIO_NOMBRE"
        RepositoryItemGridLookUpEdit1.ValueMember = "USUARIO_CODIGO"

        RepositoryItemGridLookUpEdit2.DataSource = tranz.usuarios_contrata
        RepositoryItemGridLookUpEdit2.DisplayMember = "USUARIO_NOMBRE"
        RepositoryItemGridLookUpEdit2.ValueMember = "USUARIO_CODIGO"

        RepositoryItemGridLookUpEdit3.DataSource = tranz.consulta_labor
        RepositoryItemGridLookUpEdit3.DisplayMember = "NOMBRE"
        RepositoryItemGridLookUpEdit3.ValueMember = "ID"

        RepositoryItemGridLookUpEdit4.DataSource = tranz.stipo_muestreo
        RepositoryItemGridLookUpEdit4.DisplayMember = "NOMBRE"
        RepositoryItemGridLookUpEdit4.ValueMember = "TIPO"

        Dim view As ColumnView = GridView1

        view.ActiveFilter.Add(view.Columns("MUESTRA"),
        New ColumnFilterInfo("[MUESTRA] Like '%" & txtmuestra.Text & "%'", ""))

        'New ColumnFilterInfo("[MUESTRA] Like '%" & txtmuestra.Text & "%' and [LABOR] Like '%" & dr.Row("NOMBRE").ToString & "%'", ""))

    End Sub

    Private Sub Button1_Click(sender As System.Object, e As System.EventArgs) Handles Button1.Click

        Dim myStream As Stream
        Dim saveFileDialog1 As New SaveFileDialog()

        saveFileDialog1.Filter = "xls files (*.xls)|*.xls"
        saveFileDialog1.FilterIndex = 2
        saveFileDialog1.RestoreDirectory = True

        If saveFileDialog1.ShowDialog() = DialogResult.OK Then
            myStream = saveFileDialog1.OpenFile()
            If (myStream IsNot Nothing) Then

                grddetalle.ExportToXls(myStream)

                myStream.Close()
            End If
        End If


    End Sub

    Private Sub frmadmmuestras_Load(sender As Object, e As System.EventArgs) Handles Me.Load

        Dim tranz As New clsmuestreol

        buscalabor.Properties.DataSource = tranz.consulta_labor
        buscalabor.Properties.DisplayMember = "NOMBRE"
        buscalabor.Properties.ValueMember = "ID"

    End Sub

    Private Sub btnimportar_Click(sender As System.Object, e As System.EventArgs) Handles btnimportar.Click
        Dim frm As New frmtopografia
        frm.Show()
    End Sub

    Private Sub buscalabor_EditValueChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles buscalabor.EditValueChanged

        'Dim view As ColumnView = GridView1

        'view.ActiveFilter.Add(view.Columns("LABOR"),
        'New ColumnFilterInfo("[LABOR] Like '%" & buscalabor. & "%'", ""))

        'Dim valor As String = buscalabor.EditValue.ToString()

        'Dim dr As DataRowView

        'dr = buscalabor.Properties.GetRowByKeyValue(valor)

        'Dim view As ColumnView = GridView1

        'view.ActiveFilter.Add(view.Columns("LABOR"),
        'New ColumnFilterInfo("[MUESTRA] Like '%" & txtmuestra.Text & "%'" & " and [LABOR] Like '%" & dr.Row("NOMBRE").ToString & "%'", ""))

    End Sub

    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click
        Dim frm As New frmpendienteOT
        frm.ShowDialog()
    End Sub
End Class