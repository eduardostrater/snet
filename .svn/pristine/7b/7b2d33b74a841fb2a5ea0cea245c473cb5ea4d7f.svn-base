Imports DevExpress.XtraGrid.Views.Grid
Imports DevExpress.XtraGrid.Views.Base
Imports SIGLOGICA
Imports DevExpress.XtraGrid.Columns

Public Class frmperdia

    Public datcom As New DataTable
    Public datcom_lit As New DataTable
    Public datcom_alt As New DataTable
    Public datcom_est As New DataTable
    Public datcom_min As New DataTable
    Public datcom_mec As New DataTable
    Public datcom_mue As New DataTable

    Public tbl1 As New DataTable()
    Public tbl2 As New DataTable()
    Public tbl3 As New DataTable()
    Public tbl4 As New DataTable()
    Public tbl5 As New DataTable()
    Public tbl6 As New DataTable()
    Public tbl7 As New DataTable()

    Public correl As String

    Sub creardtbl1()

        tbl1.Columns.Add("SONDAJE", GetType(String))
        tbl1.Columns.Add("REFERENCIA", GetType(String))
        tbl1.Columns.Add("TIPO", GetType(String))
        tbl1.Columns.Add("SUPERVISOR", GetType(String))
        tbl1.Columns.Add("LABOR", GetType(String))
        tbl1.Columns.Add("FECHA_CREACION", GetType(String))
        tbl1.Columns.Add("FECHA_INICIO", GetType(String))
        tbl1.Columns.Add("FECHA_FINAL", GetType(String))
        tbl1.Columns.Add("COORDENADA_E", GetType(String))
        tbl1.Columns.Add("COORDENADA_N", GetType(String))
        tbl1.Columns.Add("COTA", GetType(String))
        tbl1.Columns.Add("AZIMUT", GetType(String))
        tbl1.Columns.Add("INCLINACION", GetType(String))
        tbl1.Columns.Add("RUTA_ARCHIVO", GetType(String))
        tbl1.Columns.Add("ESTADO", GetType(String))
        tbl1.Columns.Add("LONGITUD_TOTAL", GetType(String))

    End Sub

    Sub creardtbl2()

        tbl2.Columns.Add("SONDAJE", GetType(String))
        tbl2.Columns.Add("METRAJE_FROM", GetType(String))
        tbl2.Columns.Add("METRAJE_TO", GetType(String))
        tbl2.Columns.Add("INTERVALO", GetType(String))
        tbl2.Columns.Add("ABREVIATURA", GetType(String))
        tbl2.Columns.Add("DETALLE", GetType(String))

    End Sub

    Sub creardtbl3()

        tbl3.Columns.Add("SONDAJE", GetType(String))
        tbl3.Columns.Add("METRAJE_FROM", GetType(String))
        tbl3.Columns.Add("METRAJE_TO", GetType(String))
        tbl3.Columns.Add("INTERVALO", GetType(String))
        tbl3.Columns.Add("ABREVIATURA", GetType(String))
        tbl3.Columns.Add("DETALLE", GetType(String))

    End Sub

    Sub creardtbl4()

        tbl4.Columns.Add("SONDAJE", GetType(String))
        tbl4.Columns.Add("METRAJE_FROM", GetType(String))
        tbl4.Columns.Add("METRAJE_TO", GetType(String))
        tbl4.Columns.Add("INTERVALO", GetType(String))
        tbl4.Columns.Add("ABREVIATURA", GetType(String))
        tbl4.Columns.Add("DETALLE", GetType(String))

    End Sub

    Sub creardtbl5()

        tbl5.Columns.Add("SONDAJE", GetType(String))
        tbl5.Columns.Add("METRAJE_FROM", GetType(String))
        tbl5.Columns.Add("METRAJE_TO", GetType(String))
        tbl5.Columns.Add("INTERVALO", GetType(String))
        tbl5.Columns.Add("ABREVIATURA", GetType(String))
        tbl5.Columns.Add("DETALLE", GetType(String))

    End Sub

    Sub creardtbl6()

        tbl6.Columns.Add("SONDAJE", GetType(String))
        tbl6.Columns.Add("METRAJE_FROM", GetType(String))
        tbl6.Columns.Add("METRAJE_TO", GetType(String))
        tbl6.Columns.Add("INTERVALO", GetType(String))
        tbl6.Columns.Add("ABREVIATURA", GetType(String))
        tbl6.Columns.Add("DETALLE", GetType(String))

    End Sub

    Sub creardtbl7()

        tbl7.Columns.Add("SONDAJE", GetType(String))
        tbl7.Columns.Add("MUESTRA", GetType(String))
        tbl7.Columns.Add("METRAJE_FROM", GetType(String))
        tbl7.Columns.Add("METRAJE_TO", GetType(String))
        tbl7.Columns.Add("LABORATORIO_LOCAL_LEY", GetType(String))

    End Sub

    Sub agregadtbl1(ByVal SONDAJE As String, ByVal REFERENCIA As String, ByVal TIPO As String, ByVal SUPERVISOR As String, ByVal LABOR As String, ByVal FECHA_CREACION As String, ByVal FECHA_INICIO As String, ByVal FECHA_FINAL As String, ByVal COORDENADA_E As String, ByVal COORDENADA_N As String, ByVal COTA As String, ByVal AZIMUT As String, ByVal INCLINACION As String, ByVal RUTA_ARCHIVO As String, ByVal ESTADO As String, ByVal LONGITUD_TOTAL As String)

        'tbl.Rows.Add(conif, circbt, nivten, coin13, nrocaf, codest, matest, tipest, matcon, tipcond, seccon, lonvan, tipais, canais, cadiac, pastrl, luminr, tpotenc, vpotenc, reteni, putrra, estado, situacion, codnifp)
        tbl1.Rows.Add(SONDAJE, REFERENCIA, TIPO, SUPERVISOR, LABOR, FECHA_CREACION, FECHA_INICIO, FECHA_FINAL, COORDENADA_E, COORDENADA_N, COTA, AZIMUT, INCLINACION, RUTA_ARCHIVO, ESTADO, LONGITUD_TOTAL)
        grdsondaje.DataSource = tbl1

    End Sub

    Sub agregadtbl2(ByVal SONDAJE As String, ByVal METRAJE_FROM As String, ByVal METRAJE_TO As String, ByVal INTERVALO As String, ByVal LITOLOGIA As String, ByVal DETALLE As String)

        tbl2.Rows.Add(SONDAJE, METRAJE_FROM, METRAJE_TO, INTERVALO, LITOLOGIA, DETALLE)
        grdlitologia.DataSource = tbl2

    End Sub

    Sub agregadtbl3(ByVal SONDAJE As String, ByVal METRAJE_FROM As String, ByVal METRAJE_TO As String, ByVal INTERVALO As String, ByVal ALTERACION As String, ByVal DETALLE As String)

        tbl3.Rows.Add(SONDAJE, METRAJE_FROM, METRAJE_TO, INTERVALO, ALTERACION, DETALLE)
        grdalteracion.DataSource = tbl3

    End Sub

    Sub agregadtbl4(ByVal SONDAJE As String, ByVal METRAJE_FROM As String, ByVal METRAJE_TO As String, ByVal INTERVALO As String, ByVal ESTRUCTURAS As String, ByVal DETALLE As String)

        tbl4.Rows.Add(SONDAJE, METRAJE_FROM, METRAJE_TO, INTERVALO, ESTRUCTURAS, DETALLE)
        grdestructuras.DataSource = tbl4

    End Sub

    Sub agregadtbl5(ByVal SONDAJE As String, ByVal METRAJE_FROM As String, ByVal METRAJE_TO As String, ByVal INTERVALO As String, ByVal MINERALIZACION As String, ByVal DETALLE As String)

        tbl5.Rows.Add(SONDAJE, METRAJE_FROM, METRAJE_TO, INTERVALO, MINERALIZACION, DETALLE)
        grdzonmin.DataSource = tbl5

    End Sub

    Sub agregadtbl6(ByVal SONDAJE As String, ByVal METRAJE_FROM As String, ByVal METRAJE_TO As String, ByVal INTERVALO As String, ByVal MINERALECO As String, ByVal DETALLE As String)

        tbl6.Rows.Add(SONDAJE, METRAJE_FROM, METRAJE_TO, INTERVALO, MINERALECO, DETALLE)
        grdmineco.DataSource = tbl6

    End Sub

    Sub agregadtbl7(ByVal SONDAJE As String, ByVal MUESTRA As String, ByVal DESDE As String, ByVal HASTA As String, ByVal LEY As String)

        tbl7.Rows.Add(SONDAJE, MUESTRA, DESDE, HASTA, LEY)
        grdmuestras.DataSource = tbl7

    End Sub



    Private Sub frmperdia_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        'creardtbl1()
        'creardtbl2()
        'creardtbl3()
        'creardtbl4()
        'creardtbl5()
        'creardtbl6()
        'creardtbl7()

        'iniciar()

        'cargar()
        'infgeologica()
        'deshabilitado()
        'cunbound()

    End Sub


    Public Sub iniciar()

        txtsondajep.Enabled = False
        txtlabor.Enabled = False
        txtfecha.Enabled = False
        txtobjetivo.Enabled = False
        txtcore.Enabled = False
        txtcorn.Enabled = False
        txtcota.Enabled = False
        txtinclina.Enabled = False
        txtazimut.Enabled = False
        cmbcla.Enabled = False
        txtlontot.Enabled = False
        txtmaq.Enabled = False
        grdreporta.Enabled = False
        grdsupervisa.Enabled = False
        txtfecini.Enabled = False
        txtfecfin.Enabled = False
        txtanefor.Enabled = False
        txtanepla.Enabled = False
        txtanesec.Enabled = False
        grdsondaje.Enabled = False


        txtsondajee.Enabled = False
        txtlabore.Enabled = False
        txtfechae.Enabled = False
        txtobjetivoe.Enabled = False
        txtcoree.Enabled = False
        txtcorne.Enabled = False
        txtcotae.Enabled = False
        txtinclinacione.Enabled = False
        cmbclae.Enabled = False
        txtlontote.Enabled = False
        txtmaqe.Enabled = False
        grdreportae.Enabled = False
        grdsupervisae.Enabled = False
        txtfecinie.Enabled = False
        txtfecfine.Enabled = False
        txtanefore.Enabled = False
        txtaneplae.Enabled = False
        txtanesece.Enabled = False
        btncargar4.Enabled = False
        btncargar5.Enabled = False
        btncarga6.Enabled = False
        btnver4.Enabled = False
        btnver5.Enabled = False
        btver6.Enabled = False

        Useroperacion1.Enabled = False
        Useroperacion2.Enabled = False
        grdlitologia.Enabled = False
        Useroperacion3.Enabled = False
        grdalteracion.Enabled = False
        Useroperacion4.Enabled = False
        grdestructuras.Enabled = False
        Useroperacion5.Enabled = False
        grdzonmin.Enabled = False
        Useroperacion6.Enabled = False
        grdmineco.Enabled = False
        grdmuestras.Enabled = False
        'txtsondaje.Enabled = False

        deshabilitado()

    End Sub

    Public Sub cunbound()

        grdlitologia.ForceInitialize()
        grdalteracion.ForceInitialize()
        grdestructuras.ForceInitialize()
        grdzonmin.ForceInitialize()
        grdmineco.ForceInitialize()

        ' Create an unbound column.
        Dim unbColumn As GridColumn = GridView3.Columns.AddField("Longitud")
        unbColumn.VisibleIndex = GridView3.Columns.Count
        unbColumn.UnboundType = DevExpress.Data.UnboundColumnType.Decimal
        ' Disable editing.
        unbColumn.OptionsColumn.AllowEdit = False
        ' Specify format settings.
        unbColumn.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric
        unbColumn.DisplayFormat.FormatString = "f2"
        ' Customize the appearance settings.
        unbColumn.AppearanceCell.BackColor = Color.LemonChiffon
        unbColumn.VisibleIndex = 3

        ' Create an unbound column.
        Dim unbColumn1 As GridColumn = GridView2.Columns.AddField("Longitud")
        unbColumn1.VisibleIndex = GridView2.Columns.Count
        unbColumn1.UnboundType = DevExpress.Data.UnboundColumnType.Decimal
        ' Disable editing.
        unbColumn1.OptionsColumn.AllowEdit = False
        ' Specify format settings.
        unbColumn1.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric
        unbColumn1.DisplayFormat.FormatString = "f2"
        ' Customize the appearance settings.
        unbColumn1.AppearanceCell.BackColor = Color.LemonChiffon
        unbColumn1.VisibleIndex = 3


        ' Create an unbound column.
        Dim unbColumn2 As GridColumn = GridView4.Columns.AddField("Longitud")
        unbColumn2.VisibleIndex = GridView4.Columns.Count
        unbColumn2.UnboundType = DevExpress.Data.UnboundColumnType.Decimal
        ' Disable editing.
        unbColumn2.OptionsColumn.AllowEdit = False
        ' Specify format settings.
        unbColumn2.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric
        unbColumn2.DisplayFormat.FormatString = "f2"
        ' Customize the appearance settings.
        unbColumn2.AppearanceCell.BackColor = Color.LemonChiffon
        unbColumn2.VisibleIndex = 3


        ' Create an unbound column.
        Dim unbColumn3 As GridColumn = GridView5.Columns.AddField("Longitud")
        unbColumn3.VisibleIndex = GridView5.Columns.Count
        unbColumn3.UnboundType = DevExpress.Data.UnboundColumnType.Decimal
        ' Disable editing.
        unbColumn3.OptionsColumn.AllowEdit = False
        ' Specify format settings.
        unbColumn3.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric
        unbColumn3.DisplayFormat.FormatString = "f2"
        ' Customize the appearance settings.
        unbColumn3.AppearanceCell.BackColor = Color.LemonChiffon
        unbColumn3.VisibleIndex = 3

        ' Create an unbound column.
        Dim unbColumn4 As GridColumn = GridView6.Columns.AddField("Longitud")
        unbColumn4.VisibleIndex = GridView6.Columns.Count
        unbColumn4.UnboundType = DevExpress.Data.UnboundColumnType.Decimal
        ' Disable editing.
        unbColumn4.OptionsColumn.AllowEdit = False
        ' Specify format settings.
        unbColumn4.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric
        unbColumn4.DisplayFormat.FormatString = "f2"
        ' Customize the appearance settings.
        unbColumn4.AppearanceCell.BackColor = Color.LemonChiffon
        unbColumn4.VisibleIndex = 3

    End Sub


    Private Sub Useroperacion1_agregar() Handles Useroperacion1.agregar
        agregadtbl1("", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "")
    End Sub

    Private Sub Useroperacion2_agregar() Handles Useroperacion2.agregar
        agregadtbl2(txtsondajee.Text, 0, 0, 0, "", "")
    End Sub

    Private Sub Useroperacion3_agregar() Handles Useroperacion3.agregar
        agregadtbl3(txtsondajee.Text, 0, 0, 0, "", "")
    End Sub

    Private Sub Useroperacion4_agregar() Handles Useroperacion4.agregar
        agregadtbl4(txtsondajee.Text, 0, 0, 0, "", "")
    End Sub

    Private Sub Useroperacion5_agregar() Handles Useroperacion5.agregar
        agregadtbl5(txtsondajee.Text, 0, 0, 0, "", "")
    End Sub

    Private Sub Useroperacion6_agregar() Handles Useroperacion6.agregar
        agregadtbl6(txtsondajee.Text, 0, 0, 0, "", "")
    End Sub

    Private Sub GridView1_Click(ByVal sender As Object, ByVal e As System.EventArgs)

        Dim view As GridView = GridView1
        txtsondajee.Text = GridView1.GetRowCellValue(view.FocusedRowHandle, "SONDAJE")

        llena_infogeo(GridView1.GetRowCellValue(view.FocusedRowHandle, "SONDAJE"))

    End Sub


    Private Sub GridView1_KeyDown(ByVal sender As Object, ByVal e As System.Windows.Forms.KeyEventArgs)

        If (e.KeyCode = Keys.Delete And e.Modifiers = Keys.Control) Then
            If (MessageBox.Show("¿Desea borrar registro?", "Confirmación", _
              MessageBoxButtons.YesNo) <> DialogResult.Yes) Then Return
            Dim view As GridView = CType(sender, GridView)
            view.DeleteRow(view.FocusedRowHandle)
        End If

    End Sub

    Private Sub Useroperacion1_quitar() Handles Useroperacion1.quitar
        Dim view As GridView = GridView1
        view.DeleteRow(view.FocusedRowHandle)
    End Sub


    Private Sub Useroperacion2_quitar() Handles Useroperacion2.quitar
        Dim view As GridView = GridView3
        view.DeleteRow(view.FocusedRowHandle)
    End Sub


    Private Sub Useroperacion3_quitar() Handles Useroperacion3.quitar
        Dim view As GridView = GridView2
        view.DeleteRow(view.FocusedRowHandle)
    End Sub

    Private Sub Useroperacion4_quitar() Handles Useroperacion4.quitar
        Dim view As GridView = GridView4
        view.DeleteRow(view.FocusedRowHandle)
    End Sub

    Private Sub Useroperacion5_quitar() Handles Useroperacion5.quitar
        Dim view As GridView = GridView5
        view.DeleteRow(view.FocusedRowHandle)
    End Sub

    Private Sub Useroperacion6_quitar() Handles Useroperacion6.quitar
        Dim view As GridView = GridView6
        view.DeleteRow(view.FocusedRowHandle)
    End Sub

    Private Sub RepositoryItemButtonEdit1_ButtonClick(ByVal sender As Object, ByVal e As DevExpress.XtraEditors.Controls.ButtonPressedEventArgs) Handles RepositoryItemButtonEdit1.ButtonClick

        'Dim view As GridView = GridView1
        'MsgBox(view.GetRowCellValue(view.FocusedRowHandle, "SONDAJE"))
        popupnombre.Show()
        cmbtipo.SelectedIndex = 0
        'cmbestado.SelectedIndex = 0
        txtnombre.Text = ""

    End Sub


    Private Sub btncancelar_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btncancelar.Click

        popupnombre.Hide()

    End Sub

    Private Sub btnasignar_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnasignar.Click

        'Dim view As GridView = GridView1

        If MsgBox("¿Desea asignar " + txtnombre.Text + " como nombre de sondaje?", MsgBoxStyle.YesNo, "Creación nombre de sondaje") = MsgBoxResult.Yes Then

            'SDODF15001
            fninserta_sondaje_correl(txtnombre.Text, Mid(txtnombre.Text, 8, 3), Mid(txtnombre.Text, 5, 1), Mid(txtnombre.Text, 4, 1))

            txtsondajee.Text = txtnombre.Text

            '   GridView1.SetRowCellValue(view.FocusedRowHandle, "SONDAJE", txtnombre.Text)

            popupnombre.Hide()

        End If

    End Sub

    Public Function obtiene_correl(ByVal valet As String, ByVal tipos As String) As String

        Dim trans As New clsperdial
        'Dim num As Integer

        'num = trans.fnbuscaproysondajescorrel(valet).Rows.Count
        'MsgBox(trans.fnbuscaproysondajescorrel(valet).Rows.Count)

        If trans.fnbuscaproysondajescorrel(valet, tipos).Rows.Count = 0 Then
            correl = "001"
        Else
            correl = CType(CType(trans.fnbuscaproysondajescorrel(valet, tipos).Rows(0).Item("CORREL"), Double) + 1, String).PadLeft(3, "0"c)
        End If

        Return correl

    End Function

    Public Sub fninserta_sondaje_correl(ByVal sondaje As String, ByVal correl As String, ByVal estado As String, ByVal tipo As String)

        Dim trans As New clsperdial
        trans.fninserta_sondaje_correl(sondaje, correl, estado, tipo)

    End Sub

    Private Sub GridView3_CellValueChanged(ByVal sender As Object, ByVal e As DevExpress.XtraGrid.Views.Base.CellValueChangedEventArgs) Handles GridView3.CellValueChanged

        If e.Column.Caption <> "METRAJE_FROM" Or e.Column.Caption <> "METRAJE_TO" Then Exit Sub

        Dim cellValue As Double = 10


        'e.Value.ToString(+" " + _
        '          GridView3.GetRowCellValue(e.RowHandle,
        '          GridView3.Columns("METRAJE_FROM")).ToString())

        GridView3.SetRowCellValue(e.RowHandle, _
      GridView3.Columns("INTERVALO"), cellValue)


    End Sub



    Sub infgeologica()

        Dim tranz As New clsmuestreol
        Dim trany As New clsperdial

        opcbuscar.Properties.DataSource = trany.fnbuscaproysondajes
        opcbuscar.Properties.DisplayMember = "sondaje"
        opcbuscar.Properties.ValueMember = "ID"
        opcbuscar.Properties.View.BestFitColumns()
        opcbuscar.Properties.PopupFormWidth = 800

        RepositoryItemGridLookUpEdit4.DataSource = tranz.infgeologica("")
        RepositoryItemGridLookUpEdit4.DisplayMember = "ABREVIATURA"
        RepositoryItemGridLookUpEdit4.ValueMember = "ABREVIATURA"

        RepositoryItemGridLookUpEdit5.DataSource = tranz.infgeologica("")
        RepositoryItemGridLookUpEdit5.DisplayMember = "ABREVIATURA"
        RepositoryItemGridLookUpEdit5.ValueMember = "ABREVIATURA"

        RepositoryItemGridLookUpEdit6.DataSource = tranz.infgeologica("")
        RepositoryItemGridLookUpEdit6.DisplayMember = "ABREVIATURA"
        RepositoryItemGridLookUpEdit6.ValueMember = "ABREVIATURA"

        RepositoryItemGridLookUpEdit8.DataSource = tranz.infgeologica("")
        RepositoryItemGridLookUpEdit8.DisplayMember = "ABREVIATURA"
        RepositoryItemGridLookUpEdit8.ValueMember = "ABREVIATURA"

        RepositoryItemGridLookUpEdit7.DataSource = tranz.infgeologica("")
        RepositoryItemGridLookUpEdit7.DisplayMember = "ABREVIATURA"
        RepositoryItemGridLookUpEdit7.ValueMember = "ABREVIATURA"


        ''   Select z.ID, z.NOMBRE, z.PROYECTO, z.NIVEL, z.TLABOR, z.CODIFICACION, z.DESCRIPCION
        'cmblabor.Properties.DataSource = tranz.consulta_labor
        'cmblabor.Properties.DisplayMember = "NOMBRE"
        'cmblabor.Properties.ValueMember = "CODIFICACION"
        'cmblabor.Properties.View.BestFitColumns()
        'cmblabor.Properties.PopupFormWidth = 800

        RepositoryItemGridLookUpEdit1.DataSource = tranz.usuarios_contrata
        RepositoryItemGridLookUpEdit1.DisplayMember = "USUARIO_NOMBRE"
        RepositoryItemGridLookUpEdit1.ValueMember = "USUARIO_CODIGO"

        RepositoryItemGridLookUpEdit2.DataSource = tranz.consulta_labor
        RepositoryItemGridLookUpEdit2.DisplayMember = "NOMBRE"
        RepositoryItemGridLookUpEdit2.ValueMember = "ID"

    End Sub

    'Private Sub GridView1_SelectionChanged(ByVal sender As Object, ByVal e As DevExpress.Data.SelectionChangedEventArgs) Handles GridView1.SelectionChanged

    '    Dim view As GridView = GridView1
    '    txtsondaje.Text = GridView1.GetRowCellValue(view.FocusedRowHandle, "SONDAJE")
    '    llena_infogeo(GridView1.GetRowCellValue(view.FocusedRowHandle, "SONDAJE"))

    'End Sub

    Sub llena_infogeo(ByVal sondaje As String)

        Dim trans As New clsperdial

        tbl2.Clear()
        tbl3.Clear()
        tbl4.Clear()
        tbl5.Clear()
        tbl6.Clear()
        tbl7.Clear()

        datcom_lit = trans.fnbusinfo_lit(sondaje)
        datcom_alt = trans.fnbusinfo_alt(sondaje)
        datcom_est = trans.fnbusinfo_est(sondaje)
        datcom_min = trans.fnbusinfo_min(sondaje)
        datcom_mec = trans.fnbusinfo_mco(sondaje)
        datcom_mue = trans.fnbusinfo_mue(sondaje)

        If datcom_lit.Rows.Count > 0 Then

            For i = 0 To datcom_lit.Rows.Count - 1

                agregadtbl2(datcom_lit.Rows(i).Item("SONDAJE"), _
                            datcom_lit.Rows(i).Item("METRAJE_FROM"), _
                            datcom_lit.Rows(i).Item("METRAJE_TO"), _
                            datcom_lit.Rows(i).Item("INTERVALO"), _
                            datcom_lit.Rows(i).Item("ABREVIATURA"), _
                            datcom_lit.Rows(i).Item("DETALLE"))
            Next

        End If

        If datcom_alt.Rows.Count > 0 Then

            For i = 0 To datcom_alt.Rows.Count - 1

                agregadtbl3(datcom_alt.Rows(i).Item("SONDAJE"), _
                            datcom_alt.Rows(i).Item("METRAJE_FROM"), _
                            datcom_alt.Rows(i).Item("METRAJE_TO"), _
                            datcom_alt.Rows(i).Item("INTERVALO"), _
                            datcom_alt.Rows(i).Item("ABREVIATURA"), _
                            datcom_alt.Rows(i).Item("DETALLE"))
            Next

        End If

        If datcom_est.Rows.Count > 0 Then

            For i = 0 To datcom_est.Rows.Count - 1

                agregadtbl4(datcom_est.Rows(i).Item("SONDAJE"), _
                            datcom_est.Rows(i).Item("METRAJE_FROM"), _
                            datcom_est.Rows(i).Item("METRAJE_TO"), _
                            datcom_est.Rows(i).Item("INTERVALO"), _
                            datcom_est.Rows(i).Item("ABREVIATURA"), _
                            datcom_est.Rows(i).Item("DETALLE"))
            Next

        End If

        If datcom_min.Rows.Count > 0 Then

            For i = 0 To datcom_min.Rows.Count - 1

                agregadtbl5(datcom_min.Rows(i).Item("SONDAJE"), _
                            datcom_min.Rows(i).Item("METRAJE_FROM"), _
                            datcom_min.Rows(i).Item("METRAJE_TO"), _
                            datcom_min.Rows(i).Item("INTERVALO"), _
                            datcom_min.Rows(i).Item("ABREVIATURA"), _
                            datcom_min.Rows(i).Item("DETALLE"))
            Next

        End If

        If datcom_mec.Rows.Count > 0 Then

            For i = 0 To datcom_mec.Rows.Count - 1

                agregadtbl6(datcom_mec.Rows(i).Item("SONDAJE"), _
                            datcom_mec.Rows(i).Item("METRAJE_FROM"), _
                            datcom_mec.Rows(i).Item("METRAJE_TO"), _
                            datcom_mec.Rows(i).Item("INTERVALO"), _
                            datcom_mec.Rows(i).Item("ABREVIATURA"), _
                            datcom_mec.Rows(i).Item("DETALLE"))
            Next

        End If

        If datcom_mue.Rows.Count > 0 Then

            For i = 0 To datcom_mue.Rows.Count - 1

                agregadtbl7(datcom_mue.Rows(i).Item("SONDAJE"), _
                            datcom_mue.Rows(i).Item("MUESTRA"), _
                            datcom_mue.Rows(i).Item("METRAJE_FROM"), _
                            datcom_mue.Rows(i).Item("METRAJE_TO"), _
                            datcom_mue.Rows(i).Item("LABORATORIO_LOCAL_LEY"))
            Next

        End If

    End Sub


    Private Sub Userboton1_actualizar() Handles Userboton1.actualizar


        txtsondajep.Enabled = True
        txtlabor.Enabled = True
        txtfecha.Enabled = True
        txtobjetivo.Enabled = True
        txtcore.Enabled = True
        txtcorn.Enabled = True
        txtcota.Enabled = True
        txtinclina.Enabled = True
        txtazimut.Enabled = True
        cmbcla.Enabled = True
        txtlontot.Enabled = True
        txtmaq.Enabled = True
        grdreporta.Enabled = True
        grdsupervisa.Enabled = True
        txtfecini.Enabled = True
        txtfecfin.Enabled = True
        txtanefor.Enabled = True
        txtanepla.Enabled = True
        txtanesec.Enabled = True


        txtsondajee.Enabled = True
        txtlabore.Enabled = True
        txtfechae.Enabled = True
        txtobjetivoe.Enabled = True
        txtcoree.Enabled = True
        txtcorne.Enabled = True
        txtcotae.Enabled = True
        txtinclinacione.Enabled = True
        cmbclae.Enabled = True
        txtlontote.Enabled = True
        txtmaqe.Enabled = True
        grdreportae.Enabled = True
        grdsupervisae.Enabled = True
        txtfecinie.Enabled = True
        txtfecfine.Enabled = True
        txtanefore.Enabled = True
        txtaneplae.Enabled = True
        txtanesece.Enabled = True
        btncargar4.Enabled = True
        btncargar5.Enabled = True
        btncarga6.Enabled = True
        btnver4.Enabled = True
        btnver5.Enabled = True
        btver6.Enabled = True


        grdsondaje.Enabled = True
        Useroperacion1.Enabled = True
        Useroperacion2.Enabled = True
        grdlitologia.Enabled = True
        Useroperacion3.Enabled = True
        grdalteracion.Enabled = True
        Useroperacion4.Enabled = True
        grdestructuras.Enabled = True
        Useroperacion5.Enabled = True
        grdzonmin.Enabled = True
        Useroperacion6.Enabled = True
        grdmineco.Enabled = True
        grdmuestras.Enabled = True


        Userboton1.btnguardar.Enabled = True
        Userboton1.btnactualizar.Enabled = False
        Userboton1.btncancelar.Enabled = True
        Userboton1.btnborrar.Enabled = False
        Userboton1.btnimprimir.Enabled = False
        Userboton1.btnmensaje.Enabled = False


        lblestado.Text = "2"
    End Sub

    Private Sub Userboton1_cancelar() Handles Userboton1.cancelar

        txtsondajep.Enabled = False
        txtlabor.Enabled = False
        txtfecha.Enabled = False
        txtobjetivo.Enabled = False
        txtcore.Enabled = False
        txtcorn.Enabled = False
        txtcota.Enabled = False
        txtinclina.Enabled = False
        txtazimut.Enabled = False
        cmbcla.Enabled = False
        txtlontot.Enabled = False
        txtmaq.Enabled = False
        grdreporta.Enabled = False
        grdsupervisa.Enabled = False
        txtfecini.Enabled = False
        txtfecfin.Enabled = False
        txtanefor.Enabled = False
        txtanepla.Enabled = False
        txtanesec.Enabled = False
        grdsondaje.Enabled = False


        txtsondajee.Enabled = False
        txtlabore.Enabled = False
        txtfechae.Enabled = False
        txtobjetivoe.Enabled = False
        txtcoree.Enabled = False
        txtcorne.Enabled = False
        txtcotae.Enabled = False
        txtinclinacione.Enabled = False
        cmbclae.Enabled = False
        txtlontote.Enabled = False
        txtmaqe.Enabled = False
        grdreportae.Enabled = False
        grdsupervisae.Enabled = False
        txtfecinie.Enabled = False
        txtfecfine.Enabled = False
        txtanefore.Enabled = False
        txtaneplae.Enabled = False
        txtanesece.Enabled = False
        btncargar4.Enabled = False
        btncargar5.Enabled = False
        btncarga6.Enabled = False
        btnver4.Enabled = False
        btnver5.Enabled = False
        btver6.Enabled = False

        Useroperacion1.Enabled = False
        Useroperacion2.Enabled = False
        grdlitologia.Enabled = False
        Useroperacion3.Enabled = False
        grdalteracion.Enabled = False
        Useroperacion4.Enabled = False
        grdestructuras.Enabled = False
        Useroperacion5.Enabled = False
        grdzonmin.Enabled = False
        Useroperacion6.Enabled = False
        grdmineco.Enabled = False
        grdmuestras.Enabled = False
        'txtsondaje.Enabled = False

        ErrorProvider1.Clear()


        deshabilitado()
    End Sub

    Private Sub Userboton1_guardar() Handles Userboton1.guardar

        Dim trans As New clsperdial

        Dim err As Integer

        'programado
        If Len(txtsondajep.Text) = 0 Then
            ErrorProvider1.SetError(txtsondajep, "Ingrese sondaje programado")
            err = 1
        End If

        If Len(txtlabor.Text) = 0 Then
            ErrorProvider1.SetError(txtlabor, "Ingrese labor programado")
            err = 1
        End If

        If Len(txtfecha.Text) = 0 Then
            ErrorProvider1.SetError(txtfecha, "Ingrese fecha programado")
            err = 1
        End If

        If Len(txtobjetivo.Text) = 0 Then
            ErrorProvider1.SetError(txtobjetivo, "Ingrese objetivo programado")
            err = 1
        End If

        If Len(txtcore.Text) = 0 Then
            ErrorProvider1.SetError(txtcore, "Ingrese coordenada E programado")
            err = 1
        End If

        If Len(txtcorn.Text) = 0 Then
            ErrorProvider1.SetError(txtcorn, "Ingrese coordenada N programado")
            err = 1
        End If

        If Len(txtcota.Text) = 0 Then
            ErrorProvider1.SetError(txtcota, "Ingrese cota programado")
            err = 1
        End If

        If Len(txtinclina.Text) = 0 Then
            ErrorProvider1.SetError(txtinclina, "Ingrese inclinación programado")
            err = 1
        End If

        If Len(txtazimut.Text) = 0 Then
            ErrorProvider1.SetError(txtazimut, "Ingrese azimut programado")
            err = 1
        End If

        If Len(cmbcla.Text) = 0 Then
            ErrorProvider1.SetError(cmbcla, "Ingrese tipo programado")
            err = 1
        End If

        If Len(txtlontot.Text) = 0 Then
            ErrorProvider1.SetError(txtlontot, "Ingrese longitud total programado")
            err = 1
        End If

        If Len(txtmaq.Text) = 0 Then
            ErrorProvider1.SetError(txtmaq, "Ingrese maquina programado")
            err = 1
        End If

        If Len(grdreporta.Text) = 0 Then
            ErrorProvider1.SetError(grdreporta, "Ingrese personal que reporta programado")
            err = 1
        End If

        If Len(grdsupervisa.Text) = 0 Then
            ErrorProvider1.SetError(grdsupervisa, "Ingrese personal que supervisa programado")
            err = 1
        End If

        If Len(txtfecini.Text) = 0 Then
            ErrorProvider1.SetError(txtfecini, "Ingrese fecha inicial programado")
            err = 1
        End If

        If Len(txtfecfin.Text) = 0 Then
            ErrorProvider1.SetError(txtfecfin, "Ingrese fecha final programado")
            err = 1
        End If

        If Len(txtanefor.Text) = 0 Then
            ErrorProvider1.SetError(txtanefor, "Ingrese anexo formato programado")
            err = 1
        End If

        If Len(txtanepla.Text) = 0 Then
            ErrorProvider1.SetError(txtanepla, "Ingrese anexo planta programado")
            err = 1
        End If

        If Len(txtanesec.Text) = 0 Then
            ErrorProvider1.SetError(txtanesec, "Ingrese anexo sección programado")
            err = 1
        End If


        'ejecutado

        If Len(txtsondajee.Text) = 0 Then
            ErrorProvider1.SetError(txtsondajee, "Ingrese sondaje ejecutado")
            err = 1
        End If

        If Len(txtlabore.Text) = 0 Then
            ErrorProvider1.SetError(txtlabore, "Ingrese labor ejecutado")
            err = 1
        End If

        If Len(txtfechae.Text) = 0 Then
            ErrorProvider1.SetError(txtfechae, "Ingrese fecha ejecutado")
            err = 1
        End If

        If Len(txtobjetivoe.Text) = 0 Then
            ErrorProvider1.SetError(txtobjetivoe, "Ingrese objetivo ejecutado")
            err = 1
        End If

        If Len(txtcoree.Text) = 0 Then
            ErrorProvider1.SetError(txtcoree, "Ingrese coordenada E ejecutado")
            err = 1
        End If

        If Len(txtcorne.Text) = 0 Then
            ErrorProvider1.SetError(txtcorne, "Ingrese coordenada N ejecutado")
            err = 1
        End If

        If Len(txtcotae.Text) = 0 Then
            ErrorProvider1.SetError(txtcotae, "Ingrese cota ejecutado")
            err = 1
        End If

        If Len(txtinclinacione.Text) = 0 Then
            ErrorProvider1.SetError(txtinclinacione, "Ingrese inclinación ejecutado")
            err = 1
        End If

        If Len(txtazimute.Text) = 0 Then
            ErrorProvider1.SetError(txtazimute, "Ingrese azimut ejecutado")
            err = 1
        End If

        If Len(cmbclae.Text) = 0 Then
            ErrorProvider1.SetError(cmbclae, "Ingrese tipo ejecutado")
            err = 1
        End If

        If Len(txtlontote.Text) = 0 Then
            ErrorProvider1.SetError(txtlontote, "Ingrese longitud total ejecutado")
            err = 1
        End If

        If Len(txtmaqe.Text) = 0 Then
            ErrorProvider1.SetError(txtmaqe, "Ingrese maquina ejecutado")
            err = 1
        End If

        If Len(grdreportae.Text) = 0 Then
            ErrorProvider1.SetError(grdreportae, "Ingrese personal que reporta ejecutado")
            err = 1
        End If

        If Len(grdsupervisae.Text) = 0 Then
            ErrorProvider1.SetError(grdsupervisae, "Ingrese personal que supervisa ejecutado")
            err = 1
        End If

        If Len(txtfecinie.Text) = 0 Then
            ErrorProvider1.SetError(txtfecinie, "Ingrese fecha inicial ejecutado")
            err = 1
        End If

        If Len(txtfecfine.Text) = 0 Then
            ErrorProvider1.SetError(txtfecfine, "Ingrese fecha final ejecutado")
            err = 1
        End If

        If Len(txtanefore.Text) = 0 Then
            ErrorProvider1.SetError(txtanefore, "Ingrese anexo formato ejecutado")
            err = 1
        End If

        If Len(txtaneplae.Text) = 0 Then
            ErrorProvider1.SetError(txtaneplae, "Ingrese anexo planta ejecutado")
            err = 1
        End If

        If Len(txtanesece.Text) = 0 Then
            ErrorProvider1.SetError(txtanesece, "Ingrese anexo sección ejecutado")
            err = 1
        End If


            'txtsondajee.Text = ""
            'txtlabore.Text = ""
            'txtfechae.Text = ""
            'txtcoree.Text = ""
            'txtobjetivoe.Text = ""
            'txtcorne.Text = ""
            'txtcotae.Text = ""
            'txtinclinacione.Text = ""
            'txtazimute.Text = ""
            'cmbclae.Text = ""
            'txtlontote.Text = ""
            'txtmaqe.Text = ""
            'grdreportae.Text = ""
            'grdsupervisae.Text = ""
            'txtfecinie.Text = ""
            'txtfecfine.Text = ""
            'txtanefore.Text = ""
            'txtaneplae.Text = ""
            'txtanesece.Text = ""


        'err = 0

        If err = 1 Then

            MsgBox("Complete los campos para guardar información")

        Else

            'Try

            If lblestado.Text = "1" Then

                ' trans.fninsertaGE_PROYECTO_PRF(txtproyecto.Text, txtobjetivo.Text, txtfecha.Text, txtresumen.Text, CType(Now, Date), "", txtcoordenadae.Text, txtcoordenadan.Text, txtcota.Text, txtazimut.Text, txtinclinacion.Text, txtarchivo.Text)


                trans.fninsertage_reporte_prf("", grdreporta.EditValue, grdsupervisa.EditValue, _
                                                 txtlabor.EditValue, txtfecha.Text, _
                           txtcore.Text, txtcorn.Text, _
                           txtcota.Text, txtazimut.Text, _
                           txtinclina.Text, "", _
                           "PRO", "", _
                           CType(Now, Date), "", CType(Now, Date), txtlontot.Text, _
                           txtmaq.Text, txtsondajep.Text, _
                           cmbcla.Text, txtfecini.Text, _
                           txtfecfin.Text, "", txtanefor.Text, txtanepla.Text, txtanesec.Text, txtobjetivo.Text)


                If txtsondajee.Text = "" Then

                    MsgBox("No ha insertado sondaje ejecutado", MsgBoxStyle.Information, "SIG.NET")

                Else

                    trans.fninsertage_reporte_prf(txtsondajep.Text, grdreportae.EditValue, grdsupervisae.EditValue, _
                                              txtlabore.EditValue, txtfechae.Text, _
                        txtcoree.Text, txtcorne.Text, _
                        txtcotae.Text, txtazimute.Text, _
                        txtinclinacione.Text, "", _
                        "EJE", "", _
                        CType(Now, Date), "", CType(Now, Date), txtlontote.Text, _
                        txtmaqe.Text, txtsondajee.Text, _
                        cmbclae.Text, txtfecinie.Text, _
                        txtfecfine.Text, "", txtanefore.Text, txtaneplae.Text, txtanesece.Text, txtobjetivo.Text)

                    'Try


                    'For i = 0 To GridView1.RowCount - 1
                    '    trans.fninsertage_reporte_prf(txtsondajep.Text, "", CType(GridView1.GetRowCellValue(i, "SUPERVISOR"), String), _
                    '                                  CType(GridView1.GetRowCellValue(i, "LABOR"), String), CType(Now, Date), _
                    '            CType(GridView1.GetRowCellValue(i, "COORDENADA_E"), String), CType(GridView1.GetRowCellValue(i, "COORDENADA_N"), String), _
                    '            CType(GridView1.GetRowCellValue(i, "COTA"), String), CType(GridView1.GetRowCellValue(i, "AZIMUT"), String), _
                    '            CType(GridView1.GetRowCellValue(i, "INCLINACION"), String), CType(GridView1.GetRowCellValue(i, "RUTA_ARCHIVO"), String), _
                    '            CType(GridView1.GetRowCellValue(i, "ESTADO"), String), "", _
                    '            CType(Now, Date), "", _
                    '            CType(Now, Date), CType(GridView1.GetRowCellValue(i, "LONGITUD_TOTAL"), String), _
                    '            CType(GridView1.GetRowCellValue(i, "MAQUINA"), String), CType(GridView1.GetRowCellValue(i, "SONDAJE"), String), _
                    '            "", CType(GridView1.GetRowCellValue(i, "FECHA_INICIO"), String), _
                    '            CType(GridView1.GetRowCellValue(i, "FECHA_FINAL"), String), CType(GridView1.GetRowCellValue(i, "REFERENCIA"), String), "", "", "")
                    'Next

                    For i = 0 To GridView3.RowCount - 1

                        trans.fninsertage_reporte_prf_detalle_lit(CType(GridView3.GetRowCellValue(i, "SONDAJE"), String), CType(GridView3.GetRowCellValue(i, "METRAJE_FROM"), String), _
                        CType(GridView3.GetRowCellValue(i, "METRAJE_TO"), String), CType(GridView3.GetRowCellValue(i, "Longitud"), String), _
                        CType(GridView3.GetRowCellValue(i, "ABREVIATURA"), String), CType(GridView3.GetRowCellValue(i, "DETALLE"), String), _
                        "", CType(Now, Date), "", CType(Now, Date), txtsondajep.Text)
                    Next


                    For i = 0 To GridView2.RowCount - 1

                        trans.fninsertage_reporte_prf_detalle_alt(CType(GridView2.GetRowCellValue(i, "SONDAJE"), String), CType(GridView2.GetRowCellValue(i, "METRAJE_FROM"), String), _
                        CType(GridView2.GetRowCellValue(i, "METRAJE_TO"), String), CType(GridView2.GetRowCellValue(i, "Longitud"), String), _
                        CType(GridView2.GetRowCellValue(i, "ABREVIATURA"), String), CType(GridView2.GetRowCellValue(i, "DETALLE"), String), _
                        "", CType(Now, Date), "", CType(Now, Date), txtsondajep.Text)

                    Next


                    For i = 0 To GridView4.RowCount - 1

                        trans.fninsertage_reporte_prf_detalle_est(CType(GridView4.GetRowCellValue(i, "SONDAJE"), String), CType(GridView4.GetRowCellValue(i, "METRAJE_FROM"), String), _
                        CType(GridView4.GetRowCellValue(i, "METRAJE_TO"), String), CType(GridView4.GetRowCellValue(i, "Longitud"), String), _
                        CType(GridView4.GetRowCellValue(i, "ABREVIATURA"), String), CType(GridView4.GetRowCellValue(i, "DETALLE"), String), _
                        "", CType(Now, Date), "", CType(Now, Date), txtsondajep.Text)

                    Next


                    For i = 0 To GridView5.RowCount - 1

                        trans.fninsertage_reporte_prf_detalle_min(CType(GridView5.GetRowCellValue(i, "SONDAJE"), String), CType(GridView5.GetRowCellValue(i, "METRAJE_FROM"), String), _
                        CType(GridView5.GetRowCellValue(i, "METRAJE_TO"), String), CType(GridView5.GetRowCellValue(i, "Longitud"), String), _
                        CType(GridView5.GetRowCellValue(i, "ABREVIATURA"), String), CType(GridView5.GetRowCellValue(i, "DETALLE"), String), _
                        "", CType(Now, Date), "", CType(Now, Date), txtsondajep.Text)

                    Next

                    For i = 0 To GridView6.RowCount - 1

                        trans.fninsertage_reporte_prf_detalle_mineco(CType(GridView6.GetRowCellValue(i, "SONDAJE"), String), CType(GridView6.GetRowCellValue(i, "METRAJE_FROM"), String), _
                          CType(GridView6.GetRowCellValue(i, "METRAJE_TO"), String), CType(GridView6.GetRowCellValue(i, "Longitud"), String), _
                          CType(GridView6.GetRowCellValue(i, "ABREVIATURA"), String), CType(GridView6.GetRowCellValue(i, "DETALLE"), String), _
                          "", CType(Now, Date), "", CType(Now, Date), txtsondajep.Text)

                    Next

                    'Catch ex As Exception
                    'MsgBox(ex.Message)

                    'End Try

                End If

            Else

                trans.fnactualiza_sondaje("", grdreporta.EditValue, grdsupervisa.EditValue, _
                                                 txtlabor.EditValue, txtfecha.Text, _
                           txtcore.Text, txtcorn.Text, _
                           txtcota.Text, txtazimut.Text, _
                           txtinclina.Text, "", _
                            "", _
                           CType(Now, Date), "", CType(Now, Date), txtlontot.Text, _
                           txtmaq.Text, txtsondajep.Text, _
                           cmbcla.Text, txtfecini.Text, _
                           txtfecfin.Text, "", txtanefor.Text, txtanepla.Text, txtanesec.Text, txtobjetivo.Text)


                If txtsondajee.Text = "" Then

                    MsgBox("No ha insertado sondaje ejecutado", MsgBoxStyle.Information, "SIG.NET")

                Else

                    If trans.fnexistesondaje(txtsondajee.Text).Rows.Count > 0 Then

                        trans.fnactualiza_sondaje(txtsondajep.Text, grdreportae.EditValue, grdsupervisae.EditValue, _
                                              txtlabore.EditValue, txtfechae.Text, _
                        txtcoree.Text, txtcorne.Text, _
                        txtcotae.Text, txtazimute.Text, _
                        txtinclinacione.Text, "", _
                         "", _
                        CType(Now, Date), "", CType(Now, Date), txtlontote.Text, _
                        txtmaqe.Text, txtsondajee.Text, _
                        cmbclae.Text, txtfecinie.Text, _
                        txtfecfine.Text, "", txtanefore.Text, txtaneplae.Text, txtanesece.Text, txtobjetivoe.Text)

                    Else

                        trans.fninsertage_reporte_prf(txtsondajep.Text, grdreportae.EditValue, grdsupervisae.EditValue, _
                                   txtlabore.EditValue, txtfechae.Text, _
             txtcoree.Text, txtcorne.Text, _
             txtcotae.Text, txtazimute.Text, _
             txtinclinacione.Text, "", _
             "EJE", "", _
             CType(Now, Date), "", CType(Now, Date), txtlontote.Text, _
             txtmaqe.Text, txtsondajee.Text, _
             cmbclae.Text, txtfecinie.Text, _
             txtfecfine.Text, "", txtanefore.Text, txtaneplae.Text, txtanesece.Text, txtobjetivoe.Text)

                    End If

                End If


                For i = 0 To GridView3.RowCount - 1
                    trans.fnborrainfgeologica_lit(CType(GridView3.GetRowCellValue(i, "SONDAJE"), String))
                Next

                For i = 0 To GridView3.RowCount - 1

                    trans.fninsertage_reporte_prf_detalle_lit(CType(GridView3.GetRowCellValue(i, "SONDAJE"), String), CType(GridView3.GetRowCellValue(i, "METRAJE_FROM"), String), _
                    CType(GridView3.GetRowCellValue(i, "METRAJE_TO"), String), CType(GridView3.GetRowCellValue(i, "INTERVALO"), String), _
                    CType(GridView3.GetRowCellValue(i, "ABREVIATURA"), String), CType(GridView3.GetRowCellValue(i, "DETALLE"), String), _
                    "", CType(Now, Date), "", CType(Now, Date), txtsondajep.Text)
                Next

                For i = 0 To GridView2.RowCount - 1
                    trans.fnborrainfgeologica_alt(CType(GridView2.GetRowCellValue(i, "SONDAJE"), String))
                Next

                For i = 0 To GridView2.RowCount - 1

                    trans.fninsertage_reporte_prf_detalle_alt(CType(GridView2.GetRowCellValue(i, "SONDAJE"), String), CType(GridView2.GetRowCellValue(i, "METRAJE_FROM"), String), _
                    CType(GridView2.GetRowCellValue(i, "METRAJE_TO"), String), CType(GridView2.GetRowCellValue(i, "INTERVALO"), String), _
                    CType(GridView2.GetRowCellValue(i, "ABREVIATURA"), String), CType(GridView2.GetRowCellValue(i, "DETALLE"), String), _
                    "", CType(Now, Date), "", CType(Now, Date), txtsondajep.Text)

                Next

                For i = 0 To GridView4.RowCount - 1
                    trans.fnborrainfgeologica_est(CType(GridView4.GetRowCellValue(i, "SONDAJE"), String))
                Next

                For i = 0 To GridView4.RowCount - 1

                    trans.fninsertage_reporte_prf_detalle_est(CType(GridView4.GetRowCellValue(i, "SONDAJE"), String), CType(GridView4.GetRowCellValue(i, "METRAJE_FROM"), String), _
                    CType(GridView4.GetRowCellValue(i, "METRAJE_TO"), String), CType(GridView4.GetRowCellValue(i, "INTERVALO"), String), _
                    CType(GridView4.GetRowCellValue(i, "ABREVIATURA"), String), CType(GridView4.GetRowCellValue(i, "DETALLE"), String), _
                    "", CType(Now, Date), "", CType(Now, Date), txtsondajep.Text)

                Next

                For i = 0 To GridView5.RowCount - 1
                    trans.fnborrainfgeologica_min(CType(GridView5.GetRowCellValue(i, "SONDAJE"), String))
                Next

                For i = 0 To GridView5.RowCount - 1

                    trans.fninsertage_reporte_prf_detalle_min(CType(GridView5.GetRowCellValue(i, "SONDAJE"), String), CType(GridView5.GetRowCellValue(i, "METRAJE_FROM"), String), _
                    CType(GridView5.GetRowCellValue(i, "METRAJE_TO"), String), CType(GridView5.GetRowCellValue(i, "INTERVALO"), String), _
                    CType(GridView5.GetRowCellValue(i, "ABREVIATURA"), String), CType(GridView5.GetRowCellValue(i, "DETALLE"), String), _
                    "", CType(Now, Date), "", CType(Now, Date), txtsondajep.Text)

                Next

                For i = 0 To GridView6.RowCount - 1
                    trans.fnborrainfgeologica_mineco(CType(GridView6.GetRowCellValue(i, "SONDAJE"), String))
                Next

                For i = 0 To GridView6.RowCount - 1

                    trans.fninsertage_reporte_prf_detalle_mineco(CType(GridView6.GetRowCellValue(i, "SONDAJE"), String), CType(GridView6.GetRowCellValue(i, "METRAJE_FROM"), String), _
                      CType(GridView6.GetRowCellValue(i, "METRAJE_TO"), String), CType(GridView6.GetRowCellValue(i, "INTERVALO"), String), _
                      CType(GridView6.GetRowCellValue(i, "ABREVIATURA"), String), CType(GridView6.GetRowCellValue(i, "DETALLE"), String), _
                      "", CType(Now, Date), "", CType(Now, Date), txtsondajep.Text)

                Next

            End If


            txtsondajep.Enabled = False
            txtlabor.Enabled = False
            txtfecha.Enabled = False
            txtobjetivo.Enabled = False
            txtcore.Enabled = False
            txtcorn.Enabled = False
            txtcota.Enabled = False
            txtinclina.Enabled = False
            txtazimut.Enabled = False
            cmbcla.Enabled = False
            txtlontot.Enabled = False
            txtmaq.Enabled = False
            grdreporta.Enabled = False
            grdsupervisa.Enabled = False
            txtfecini.Enabled = False
            txtfecfin.Enabled = False
            txtanefor.Enabled = False
            txtanepla.Enabled = False
            txtanesec.Enabled = False
            grdsondaje.Enabled = False


            txtsondajee.Enabled = False
            txtlabore.Enabled = False
            txtfechae.Enabled = False
            txtobjetivoe.Enabled = False
            txtcoree.Enabled = False
            txtcorne.Enabled = False
            txtcotae.Enabled = False
            txtinclinacione.Enabled = False
            cmbclae.Enabled = False
            txtlontote.Enabled = False
            txtmaqe.Enabled = False
            grdreportae.Enabled = False
            grdsupervisae.Enabled = False
            txtfecinie.Enabled = False
            txtfecfine.Enabled = False
            txtanefore.Enabled = False
            txtaneplae.Enabled = False
            txtanesece.Enabled = False
            btncargar4.Enabled = False
            btncargar5.Enabled = False
            btncarga6.Enabled = False
            btnver4.Enabled = False
            btnver5.Enabled = False
            btver6.Enabled = False

            Useroperacion1.Enabled = False
            Useroperacion2.Enabled = False
            grdlitologia.Enabled = False
            Useroperacion3.Enabled = False
            grdalteracion.Enabled = False
            Useroperacion4.Enabled = False
            grdestructuras.Enabled = False
            Useroperacion5.Enabled = False
            grdzonmin.Enabled = False
            Useroperacion6.Enabled = False
            grdmineco.Enabled = False
            grdmuestras.Enabled = False
            'txtsondaje.Enabled = False

            deshabilitado()

            'Catch ex As Exception
            'MessageBox.Show(ex.Message, "Exixten errores en lo registrado, revise antes de grabar!!!", MessageBoxButtons.OK, MessageBoxIcon.Information)
            'End Try

        End If

    End Sub


    Private Sub Userboton1_nuevo() Handles Userboton1.nuevo

        txtsondajep.Enabled = True
        txtlabor.Enabled = True
        txtfecha.Enabled = True
        txtobjetivo.Enabled = True
        txtcore.Enabled = True
        txtcorn.Enabled = True
        txtcota.Enabled = True
        txtinclina.Enabled = True
        txtazimut.Enabled = True
        cmbcla.Enabled = True
        txtlontot.Enabled = True
        txtmaq.Enabled = True
        grdreporta.Enabled = True
        grdsupervisa.Enabled = True
        txtfecini.Enabled = True
        txtfecfin.Enabled = True
        txtanefor.Enabled = True
        txtanepla.Enabled = True
        txtanesec.Enabled = True

        txtsondajee.Enabled = True
        txtlabore.Enabled = True
        txtfechae.Enabled = True
        txtobjetivoe.Enabled = True
        txtcoree.Enabled = True
        txtcorne.Enabled = True
        txtcotae.Enabled = True
        txtinclinacione.Enabled = True
        cmbclae.Enabled = True
        txtlontote.Enabled = True
        txtmaqe.Enabled = True
        grdreportae.Enabled = True
        grdsupervisae.Enabled = True
        txtfecinie.Enabled = True
        txtfecfine.Enabled = True
        txtanefore.Enabled = True
        txtaneplae.Enabled = True
        txtanesece.Enabled = True
        btncargar4.Enabled = True
        btncargar5.Enabled = True
        btncarga6.Enabled = True
        btnver4.Enabled = True
        btnver5.Enabled = True
        btver6.Enabled = True

        grdsondaje.Enabled = True
        Useroperacion1.Enabled = True
        Useroperacion2.Enabled = True
        grdlitologia.Enabled = True
        Useroperacion3.Enabled = True
        grdalteracion.Enabled = True
        Useroperacion4.Enabled = True
        grdestructuras.Enabled = True
        Useroperacion5.Enabled = True
        grdzonmin.Enabled = True
        Useroperacion6.Enabled = True
        grdmineco.Enabled = True
        grdmuestras.Enabled = True
        'txtsondaje.Enabled = True


        txtsondajep.Text = ""
        txtlabor.Text = ""
        txtfecha.Text = ""
        txtobjetivo.Text = ""
        txtcore.Text = ""
        txtcorn.Text = ""
        txtcota.Text = ""
        txtinclina.Text = ""
        txtazimut.Text = ""
        cmbcla.Text = ""
        txtlontot.Text = ""
        txtmaq.Text = ""
        grdreporta.Text = ""
        grdsupervisa.Text = ""
        txtfecini.Text = ""
        txtfecfin.Text = ""
        txtanefor.Text = ""
        txtanepla.Text = ""
        txtanesec.Text = ""

        txtsondajee.Text = ""
        txtlabore.Text = ""
        txtfechae.Text = ""
        txtcoree.Text = ""
        txtobjetivoe.Text = ""
        txtcorne.Text = ""
        txtcotae.Text = ""
        txtinclinacione.Text = ""
        txtazimute.Text = ""
        cmbclae.Text = ""
        txtlontote.Text = ""
        txtmaqe.Text = ""
        grdreportae.Text = ""
        grdsupervisae.Text = ""
        txtfecinie.Text = ""
        txtfecfine.Text = ""
        txtanefore.Text = ""
        txtaneplae.Text = ""
        txtanesece.Text = ""


        grdsondaje.DataSource = Nothing
        grdlitologia.DataSource = Nothing
        grdalteracion.DataSource = Nothing
        grdestructuras.DataSource = Nothing
        grdzonmin.DataSource = Nothing
        grdmineco.DataSource = Nothing
        grdmuestras.DataSource = Nothing


        Userboton1.btnguardar.Enabled = True
        Userboton1.btnactualizar.Enabled = False
        Userboton1.btncancelar.Enabled = True
        Userboton1.btnborrar.Enabled = False
        Userboton1.btnimprimir.Enabled = False
        Userboton1.btnmensaje.Enabled = False

        lblestado.Text = "1"

    End Sub



    Sub deshabilitado()

        'grddetalle.DataSource = Nothing
        'GridView1.Columns.Clear()


        'grdprograma.Text = ""
        'grdreporta.Text = ""
        'grdlabor.Text = ""
        'txtreporte.Text = ""
        'grdsupervisor.Text = ""
        'txtfecha.Text = ""
        'txtproyecto.Text = ""
        'txtobserva.Text = ""

        'grdprograma.Enabled = False
        'grdreporta.Enabled = False
        'grdlabor.Enabled = False
        'txtreporte.Enabled = False
        'grdsupervisor.Enabled = False
        'txtfecha.Enabled = False
        'txtproyecto.Enabled = False
        'txtobserva.Enabled = False
        'btnagregar.Enabled = False

        Userboton1.btnnuevo.Enabled = True
        Userboton1.btnguardar.Enabled = False
        Userboton1.btnactualizar.Enabled = False
        Userboton1.btncancelar.Enabled = False
        Userboton1.btnborrar.Enabled = False
        Userboton1.btncancelar.Enabled = False
        Userboton1.btnimprimir.Enabled = False
        Userboton1.btnmensaje.Enabled = False

    End Sub


    Private Sub opcbuscar_EditValueChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles opcbuscar.EditValueChanged

        txtsondajep.Enabled = True
        txtlabor.Enabled = True
        txtfecha.Enabled = True
        txtobjetivo.Enabled = True
        txtcore.Enabled = True
        txtcorn.Enabled = True
        txtcota.Enabled = True
        txtinclina.Enabled = True
        txtazimut.Enabled = True
        cmbcla.Enabled = True
        txtlontot.Enabled = True
        txtmaq.Enabled = True
        grdreporta.Enabled = True
        grdsupervisa.Enabled = True
        txtfecini.Enabled = True
        txtfecfin.Enabled = True
        txtanefor.Enabled = True
        txtanepla.Enabled = True
        txtanesec.Enabled = True
        grdsondaje.Enabled = True

        txtsondajee.Enabled = True
        txtlabore.Enabled = True
        txtfechae.Enabled = True
        txtobjetivoe.Enabled = True
        txtcoree.Enabled = True
        txtcorne.Enabled = True
        txtcotae.Enabled = True
        txtinclinacione.Enabled = True
        cmbclae.Enabled = True
        txtlontote.Enabled = True
        txtmaqe.Enabled = True
        grdreportae.Enabled = True
        grdsupervisae.Enabled = True
        txtfecinie.Enabled = True
        txtfecfine.Enabled = True
        txtanefore.Enabled = True
        txtaneplae.Enabled = True
        txtanesece.Enabled = True
        btncargar4.Enabled = True
        btncargar5.Enabled = True
        btncarga6.Enabled = True
        btnver4.Enabled = True
        btnver5.Enabled = True
        btver6.Enabled = True


        Useroperacion1.Enabled = True
        Useroperacion2.Enabled = True
        grdlitologia.Enabled = True
        Useroperacion3.Enabled = True
        grdalteracion.Enabled = True
        Useroperacion4.Enabled = True
        grdestructuras.Enabled = True
        Useroperacion5.Enabled = True
        grdzonmin.Enabled = True
        Useroperacion6.Enabled = True
        grdmineco.Enabled = True
        grdmuestras.Enabled = True
        'txtsondaje.Enabled = True

        Userboton1.btnnuevo.Enabled = False
        Userboton1.btnguardar.Enabled = True
        Userboton1.btnactualizar.Enabled = False
        Userboton1.btncancelar.Enabled = True
        Userboton1.btnborrar.Enabled = False
        Userboton1.btnimprimir.Enabled = False
        Userboton1.btnmensaje.Enabled = False

        txtsondajep.Text = ""
        txtlabor.Text = ""
        txtfecha.Text = ""
        txtobjetivo.Text = ""
        txtcore.Text = ""
        txtcorn.Text = ""
        txtcota.Text = ""
        txtinclina.Text = ""
        txtazimut.Text = ""
        cmbcla.Text = ""
        txtlontot.Text = ""
        txtmaq.Text = ""
        grdreporta.Text = ""
        grdsupervisa.Text = ""
        txtfecini.Text = ""
        txtfecfin.Text = ""
        txtanefor.Text = ""
        txtanepla.Text = ""
        txtanesec.Text = ""

        txtsondajee.Text = ""
        txtlabore.Text = ""
        txtfechae.Text = ""
        txtcoree.Text = ""
        txtobjetivoe.Text = ""
        txtcorne.Text = ""
        txtcotae.Text = ""
        txtinclinacione.Text = ""
        txtazimute.Text = ""
        cmbclae.Text = ""
        txtlontote.Text = ""
        txtmaqe.Text = ""
        grdreportae.Text = ""
        grdsupervisae.Text = ""
        txtfecinie.Text = ""
        txtfecfine.Text = ""
        txtanefore.Text = ""
        txtaneplae.Text = ""
        txtanesece.Text = ""

        lblestado.Text = "2"

        Dim view As DevExpress.XtraGrid.Views.Grid.GridView = CType(opcbuscar.Properties.View, DevExpress.XtraGrid.Views.Grid.GridView)
        Dim val As Object = view.GetRowCellValue(view.FocusedRowHandle, "sondaje")


        llenar_controles_busqueda(val)
        ErrorProvider1.Clear()


    End Sub


    Sub llenar_controles_busqueda(ByVal valor As String)

        Dim trans As New clsperdial

        datcom.Clear()
        tbl1.Clear()

        txtsondajep.Text = trans.fnbuscasonsondajesfil(valor, "PRO").Rows(0).Item("sondaje").ToString
        txtlabor.Text = trans.fnbuscasonsondajesfil(valor, "PRO").Rows(0).Item("labor").ToString
        txtfecha.Text = trans.fnbuscasonsondajesfil(valor, "PRO").Rows(0).Item("fecha").ToString
        txtobjetivo.Text = trans.fnbuscasonsondajesfil(valor, "PRO").Rows(0).Item("objetivo").ToString
        txtcore.Text = trans.fnbuscasonsondajesfil(valor, "PRO").Rows(0).Item("coordenadae").ToString
        txtcorn.Text = trans.fnbuscasonsondajesfil(valor, "PRO").Rows(0).Item("coordenadan").ToString
        txtcota.Text = trans.fnbuscasonsondajesfil(valor, "PRO").Rows(0).Item("cota").ToString
        txtinclina.Text = trans.fnbuscasonsondajesfil(valor, "PRO").Rows(0).Item("inclinacion").ToString
        txtazimut.Text = trans.fnbuscasonsondajesfil(valor, "PRO").Rows(0).Item("azimut").ToString
        cmbcla.Text = trans.fnbuscasonsondajesfil(valor, "PRO").Rows(0).Item("tipest").ToString
        txtlontot.Text = trans.fnbuscasonsondajesfil(valor, "PRO").Rows(0).Item("longtotal").ToString
        txtmaq.Text = trans.fnbuscasonsondajesfil(valor, "PRO").Rows(0).Item("maquina").ToString
        grdreporta.Text = trans.fnbuscasonsondajesfil(valor, "PRO").Rows(0).Item("reporta").ToString
        grdsupervisa.Text = trans.fnbuscasonsondajesfil(valor, "PRO").Rows(0).Item("supervisor").ToString
        txtfecini.Text = trans.fnbuscasonsondajesfil(valor, "PRO").Rows(0).Item("fechai").ToString
        txtfecfin.Text = trans.fnbuscasonsondajesfil(valor, "PRO").Rows(0).Item("fechaf").ToString
        txtanefor.Text = trans.fnbuscasonsondajesfil(valor, "PRO").Rows(0).Item("aformato").ToString()
        txtanepla.Text = trans.fnbuscasonsondajesfil(valor, "PRO").Rows(0).Item("aplanta").ToString
        txtanesec.Text = trans.fnbuscasonsondajesfil(valor, "PRO").Rows(0).Item("aseccion").ToString()

        If trans.fnbuscasonsondajesfil_eje(valor, "EJE").Rows.Count > 0 Then
            txtsondajee.Text = trans.fnbuscasonsondajesfil_eje(valor, "EJE").Rows(0).Item("sondaje").ToString
            txtlabore.Text = trans.fnbuscasonsondajesfil_eje(valor, "EJE").Rows(0).Item("labor").ToString
            txtfechae.Text = trans.fnbuscasonsondajesfil_eje(valor, "EJE").Rows(0).Item("fecha").ToString
            txtobjetivoe.Text = trans.fnbuscasonsondajesfil_eje(valor, "EJE").Rows(0).Item("objetivo").ToString
            txtcoree.Text = trans.fnbuscasonsondajesfil_eje(valor, "EJE").Rows(0).Item("coordenadae").ToString
            txtcorne.Text = trans.fnbuscasonsondajesfil_eje(valor, "EJE").Rows(0).Item("coordenadan").ToString
            txtcotae.Text = trans.fnbuscasonsondajesfil_eje(valor, "EJE").Rows(0).Item("cota").ToString
            txtinclinacione.Text = trans.fnbuscasonsondajesfil_eje(valor, "EJE").Rows(0).Item("inclinacion").ToString
            txtazimute.Text = trans.fnbuscasonsondajesfil_eje(valor, "EJE").Rows(0).Item("azimut").ToString
            cmbclae.Text = trans.fnbuscasonsondajesfil_eje(valor, "EJE").Rows(0).Item("tipest").ToString
            txtlontote.Text = trans.fnbuscasonsondajesfil_eje(valor, "EJE").Rows(0).Item("longtotal").ToString
            txtmaqe.Text = trans.fnbuscasonsondajesfil_eje(valor, "EJE").Rows(0).Item("maquina").ToString
            grdreportae.Text = trans.fnbuscasonsondajesfil_eje(valor, "EJE").Rows(0).Item("reporta").ToString
            grdsupervisae.Text = trans.fnbuscasonsondajesfil_eje(valor, "EJE").Rows(0).Item("supervisor").ToString
            txtfecinie.Text = trans.fnbuscasonsondajesfil_eje(valor, "EJE").Rows(0).Item("fechai").ToString
            txtfecfine.Text = trans.fnbuscasonsondajesfil_eje(valor, "EJE").Rows(0).Item("fechaf").ToString
            txtanefore.Text = trans.fnbuscasonsondajesfil_eje(valor, "EJE").Rows(0).Item("aformato").ToString()
            txtaneplae.Text = trans.fnbuscasonsondajesfil_eje(valor, "EJE").Rows(0).Item("aplanta").ToString
            txtanesece.Text = trans.fnbuscasonsondajesfil_eje(valor, "EJE").Rows(0).Item("aseccion").ToString()

            llena_infogeo(trans.fnbuscasonsondajesfil_eje(valor, "EJE").Rows(0).Item("sondaje").ToString)

        End If
        'datcom = trans.fnbuscasonsondajesfil(trans.fnbuscaproysondajesfil(valor).Rows(0).Item("PROYECTO").ToString)
        'datcom = trans.fnbuscasonsondajesfil_eje(valor, "EJE")

        'If datcom.Rows.Count > 0 Then

        '    For i = 0 To datcom.Rows.Count - 1

        '        agregadtbl1(datcom.Rows(i).Item("SONDAJE"), _
        '                    datcom.Rows(i).Item("referencia"), _
        '                    datcom.Rows(i).Item("tipest"), _
        '                    datcom.Rows(i).Item("supervisor"), _
        '                    datcom.Rows(i).Item("labor"), _
        '                    datcom.Rows(i).Item("fechacrea"), _
        '                    datcom.Rows(i).Item("fechai"), _
        '                    datcom.Rows(i).Item("fechaf"), _
        '                    datcom.Rows(i).Item("coordenadae"), _
        '                    datcom.Rows(i).Item("coordenadan"), _
        '                    datcom.Rows(i).Item("cota"), _
        '                    datcom.Rows(i).Item("azimut"), _
        '                    datcom.Rows(i).Item("inclinacion"), _
        '                    datcom.Rows(i).Item("archivopdf"), _
        '                    datcom.Rows(i).Item("estado"), _
        '                    datcom.Rows(i).Item("longtotal"))
        '    Next

        'End If
    End Sub


    Private Sub btnver_Click(ByVal sender As System.Object, ByVal e As System.EventArgs)


        'Dim loPSI As New ProcessStartInfo
        'Dim loProceso As New Process
        'loPSI.FileName = txtarchivo.Text
        'Try
        '    loProceso = Process.Start(loPSI)
        'Catch Exp As Exception
        '    MessageBox.Show(Exp.Message, "No se puede abrir el archivo...", MessageBoxButtons.OK, MessageBoxIcon.Information)
        'End Try


    End Sub


    Private Sub btncargar1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btncargar1.Click

        OpenFileDialog1.ShowDialog()
        txtanefor.Text = OpenFileDialog1.FileName

    End Sub

    Sub cargar()

        Dim tranz As New clsmuestreol

        txtlabor.Properties.DataSource = tranz.consulta_labor()
        txtlabor.Properties.DisplayMember = "NOMBRE"
        txtlabor.Properties.ValueMember = "ID"

        grdreporta.Properties.DataSource = tranz.usuarios_contrata
        grdreporta.Properties.DisplayMember = "USUARIO_NOMBRE"
        grdreporta.Properties.ValueMember = "USUARIO_CODIGO"

        grdsupervisa.Properties.DataSource = tranz.usuarios_contrata
        grdsupervisa.Properties.DisplayMember = "USUARIO_NOMBRE"
        grdsupervisa.Properties.ValueMember = "USUARIO_CODIGO"

        txtlabore.Properties.DataSource = tranz.consulta_labor()
        txtlabore.Properties.DisplayMember = "NOMBRE"
        txtlabore.Properties.ValueMember = "ID"

        grdreportae.Properties.DataSource = tranz.usuarios_contrata
        grdreportae.Properties.DisplayMember = "USUARIO_NOMBRE"
        grdreportae.Properties.ValueMember = "USUARIO_CODIGO"

        grdsupervisae.Properties.DataSource = tranz.usuarios_contrata
        grdsupervisae.Properties.DisplayMember = "USUARIO_NOMBRE"
        grdsupervisae.Properties.ValueMember = "USUARIO_CODIGO"


    End Sub

    Private Sub RepositoryItemButtonEdit3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles RepositoryItemButtonEdit3.Click

        Dim view As GridView = GridView1
        Dim result As DialogResult = OpenFileDialog1.ShowDialog()


        If result = Windows.Forms.DialogResult.OK Then


            Dim path As String = OpenFileDialog1.FileName
            Try

                ' MsgBox(path)

                GridView1.SetRowCellValue(view.FocusedRowHandle, "SONDAJE", path)

            Catch ex As Exception

                Me.Text = "Error"

            End Try
        End If



    End Sub

    Private Sub btncargar2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btncargar2.Click
        OpenFileDialog1.ShowDialog()
        txtanepla.Text = OpenFileDialog1.FileName
    End Sub



    Private Sub btncargar3_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btncargar3.Click
        OpenFileDialog1.ShowDialog()
        txtanesec.Text = OpenFileDialog1.FileName
    End Sub

    Private Sub btnver1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnver1.Click

        Dim loPSI As New ProcessStartInfo
        Dim loProceso As New Process
        loPSI.FileName = txtanefor.Text
        Try
            loProceso = Process.Start(loPSI)
        Catch Exp As Exception
            MessageBox.Show(Exp.Message, "No se puede abrir el archivo...", MessageBoxButtons.OK, MessageBoxIcon.Information)
        End Try

    End Sub


    Private Sub btnver2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnver2.Click

        Dim loPSI As New ProcessStartInfo
        Dim loProceso As New Process
        loPSI.FileName = txtanepla.Text
        Try
            loProceso = Process.Start(loPSI)
        Catch Exp As Exception
            MessageBox.Show(Exp.Message, "No se puede abrir el archivo...", MessageBoxButtons.OK, MessageBoxIcon.Information)
        End Try
    End Sub

    Private Sub btnver3_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnver3.Click

        Dim loPSI As New ProcessStartInfo
        Dim loProceso As New Process
        loPSI.FileName = txtanesec.Text
        Try
            loProceso = Process.Start(loPSI)
        Catch Exp As Exception
            MessageBox.Show(Exp.Message, "No se puede abrir el archivo...", MessageBoxButtons.OK, MessageBoxIcon.Information)
        End Try
    End Sub

    Private Sub btnver4_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnver4.Click

        Dim loPSI As New ProcessStartInfo
        Dim loProceso As New Process
        loPSI.FileName = txtanefore.Text
        Try
            loProceso = Process.Start(loPSI)
        Catch Exp As Exception
            MessageBox.Show(Exp.Message, "No se puede abrir el archivo...", MessageBoxButtons.OK, MessageBoxIcon.Information)
        End Try
    End Sub

    Private Sub btnver5_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnver5.Click

        Dim loPSI As New ProcessStartInfo
        Dim loProceso As New Process
        loPSI.FileName = txtaneplae.Text
        Try
            loProceso = Process.Start(loPSI)
        Catch Exp As Exception
            MessageBox.Show(Exp.Message, "No se puede abrir el archivo...", MessageBoxButtons.OK, MessageBoxIcon.Information)
        End Try

    End Sub

    Private Sub btver6_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btver6.Click

        Dim loPSI As New ProcessStartInfo
        Dim loProceso As New Process
        loPSI.FileName = txtanesece.Text
        Try
            loProceso = Process.Start(loPSI)
        Catch Exp As Exception
            MessageBox.Show(Exp.Message, "No se puede abrir el archivo...", MessageBoxButtons.OK, MessageBoxIcon.Information)
        End Try
    End Sub


    Private Sub btncargar4_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btncargar4.Click
        OpenFileDialog1.ShowDialog()
        txtanefore.Text = OpenFileDialog1.FileName
    End Sub



    Private Sub btncargar5_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btncargar5.Click
        OpenFileDialog1.ShowDialog()
        txtaneplae.Text = OpenFileDialog1.FileName
    End Sub


    Private Sub btncarga6_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btncarga6.Click
        OpenFileDialog1.ShowDialog()
        txtanesece.Text = OpenFileDialog1.FileName
    End Sub


    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        popupnombre.Show()
        cmbtipo.SelectedIndex = 0
        cmbtipo.Text = ""
        'cmbestado.SelectedIndex = 0
        txtnombre.Text = ""
    End Sub


    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click
        popupsondaje.Show()
        cmbtipo1.SelectedIndex = 0
        cmbtipo1.Text = ""
        'cmbestado.SelectedIndex = 0
        txtnombre1.Text = ""
    End Sub

    Private Sub btncancelar1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btncancelar1.Click
        popupsondaje.Hide()
    End Sub


    Private Sub cmbtipo_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles cmbtipo.SelectedIndexChanged

        Dim valest, valtip As String
        valtip = ""
        valest = "E"

        If cmbtipo.Text = "DDH" Then
            valtip = "D"
        End If

        If cmbtipo.Text = "RC" Then
            valtip = "R"
        End If


        If cmbtipo.Text = "--SELECCIONE--" Then

            txtnombre.Text = ""

        Else

            txtnombre.Text = "SDO" & valtip & valest & Mid(Year(Now()), 3, 2) & obtiene_correl(valest, valtip)

        End If




    End Sub

    Private Sub cmbtipo1_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles cmbtipo1.SelectedIndexChanged

        Dim valest, valtip As String
        valtip = ""
        valest = "P"

        If cmbtipo1.Text = "DDH" Then
            valtip = "D"
        End If

        If cmbtipo1.Text = "RC" Then
            valtip = "R"
        End If


        If cmbtipo1.Text = "--SELECCIONE--" Then

            txtnombre1.Text = ""

        Else

            txtnombre1.Text = "SDO" & valtip & valest & Mid(Year(Now()), 3, 2) & obtiene_correl(valest, valtip)

        End If

    End Sub

    Private Sub btnasignar1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnasignar1.Click

        'Dim view As GridView = GridView1

        If MsgBox("¿Desea asignar " + txtnombre1.Text + " como nombre de sondaje?", MsgBoxStyle.YesNo, "Creación nombre de sondaje") = MsgBoxResult.Yes Then

            'SDODF15001
            fninserta_sondaje_correl(txtnombre1.Text, Mid(txtnombre1.Text, 8, 3), Mid(txtnombre1.Text, 5, 1), Mid(txtnombre1.Text, 4, 1))

            txtsondajep.Text = txtnombre1.Text

            '   GridView1.SetRowCellValue(view.FocusedRowHandle, "SONDAJE", txtnombre.Text)

            popupsondaje.Hide()

        End If

    End Sub

    ' Returns the total amount for a specific row.
    Private Function getTotalValue(ByVal view As GridView, ByVal listSourceRowIndex As Integer) As Decimal

        Dim metraje_from As Decimal = Convert.ToDecimal(view.GetListSourceRowCellValue(listSourceRowIndex, "METRAJE_FROM"))
        Dim metraje_to As Decimal = Convert.ToDecimal(view.GetListSourceRowCellValue(listSourceRowIndex, "METRAJE_TO"))

        Return IIf((metraje_from - metraje_to) < 0, (metraje_from - metraje_to) * -1, (metraje_from - metraje_to))

    End Function

    Private Sub GridView3_CustomUnboundColumnData(ByVal sender As Object, ByVal e As DevExpress.XtraGrid.Views.Base.CustomColumnDataEventArgs) Handles GridView3.CustomUnboundColumnData

        Dim view As GridView = TryCast(sender, GridView)
        If e.Column.FieldName = "Longitud" AndAlso e.IsGetData Then
            e.Value = getTotalValue(view, e.ListSourceRowIndex)
        End If

    End Sub

    Private Sub GridView2_CustomUnboundColumnData(ByVal sender As Object, ByVal e As DevExpress.XtraGrid.Views.Base.CustomColumnDataEventArgs) Handles GridView2.CustomUnboundColumnData

        Dim view As GridView = TryCast(sender, GridView)
        If e.Column.FieldName = "Longitud" AndAlso e.IsGetData Then
            e.Value = getTotalValue(view, e.ListSourceRowIndex)
        End If

    End Sub

    Private Sub GridView4_CustomUnboundColumnData(ByVal sender As Object, ByVal e As DevExpress.XtraGrid.Views.Base.CustomColumnDataEventArgs) Handles GridView4.CustomUnboundColumnData

        Dim view As GridView = TryCast(sender, GridView)
        If e.Column.FieldName = "Longitud" AndAlso e.IsGetData Then
            e.Value = getTotalValue(view, e.ListSourceRowIndex)
        End If

    End Sub


    Private Sub GridView5_CustomUnboundColumnData(ByVal sender As Object, ByVal e As DevExpress.XtraGrid.Views.Base.CustomColumnDataEventArgs) Handles GridView5.CustomUnboundColumnData

        Dim view As GridView = TryCast(sender, GridView)
        If e.Column.FieldName = "Longitud" AndAlso e.IsGetData Then
            e.Value = getTotalValue(view, e.ListSourceRowIndex)
        End If

    End Sub


    Private Sub GridView6_CustomUnboundColumnData(ByVal sender As Object, ByVal e As DevExpress.XtraGrid.Views.Base.CustomColumnDataEventArgs) Handles GridView6.CustomUnboundColumnData

        Dim view As GridView = TryCast(sender, GridView)
        If e.Column.FieldName = "Longitud" AndAlso e.IsGetData Then
            e.Value = getTotalValue(view, e.ListSourceRowIndex)
        End If

    End Sub


    Private Sub txtcoree_InvalidValue(sender As Object, e As DevExpress.XtraEditors.Controls.InvalidValueExceptionEventArgs) Handles txtcoree.InvalidValue

        e.ExceptionMode = DevExpress.XtraEditors.Controls.ExceptionMode.DisplayError

    End Sub


    Private Sub GroupBox3_Enter(sender As System.Object, e As System.EventArgs) Handles GroupBox3.Enter

    End Sub
End Class