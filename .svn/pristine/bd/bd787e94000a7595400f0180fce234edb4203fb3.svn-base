Imports SIGLOGICA

Public Class frmrepmuestreo

    Public datcom As New DataTable
    Public tbl1 As New DataTable()
    Public tbl2 As New DataTable()

    Sub creardtbl1()

        tbl1.Columns.Add("COMPANIA", GetType(String))
        tbl1.Columns.Add("UNIDAD", GetType(String))
        tbl1.Columns.Add("PROGRAMA", GetType(String))
        tbl1.Columns.Add("OBSERVACION", GetType(String))
        tbl1.Columns.Add("FECHA", GetType(String))
        tbl1.Columns.Add("MODIFICADOPOR", GetType(String))
        tbl1.Columns.Add("MODIFICADOEL", GetType(String))
        tbl1.Columns.Add("TURNO", GetType(String))
        tbl1.Columns.Add("MUESTRAS_OBJETIVO", GetType(String))
        tbl1.Columns.Add("MUESTRAS_REAL", GetType(String))
        tbl1.Columns.Add("ESTADO", GetType(String))
        tbl1.Columns.Add("TIPO", GetType(String))
        tbl1.Columns.Add("PROYECTO_CODIGO", GetType(String))
        tbl1.Columns.Add("PROYECTO_DESCRIPCION", GetType(String))

    End Sub

    Sub agregadtbl1(COMPANIA As String, UNIDAD As String, PROGRAMA As String, OBSERVACION As String, FECHA As String, MODIFICADOPOR As String, MODIFICADOEL As String, TURNO As String, MUESTRAS_OBJETIVO As String, MUESTRAS_REAL As String, ESTADO As String, TIPO As String, PROYECTO_CODIGO As String, PROYECTO_DESCRIPCION As String)

        tbl1.Rows.Add(COMPANIA, UNIDAD, PROGRAMA, OBSERVACION, FECHA, MODIFICADOPOR, MODIFICADOEL, TURNO, MUESTRAS_OBJETIVO, MUESTRAS_REAL, ESTADO, TIPO, PROYECTO_CODIGO, PROYECTO_DESCRIPCION)

    End Sub

    Sub creardtbl2()

        tbl2.Columns.Add("COMPANIA", GetType(String))
        tbl2.Columns.Add("UNIDAD", GetType(String))
        tbl2.Columns.Add("PROGRAMA", GetType(String))
        tbl2.Columns.Add("ID", GetType(String))
        tbl2.Columns.Add("NUMERO_MUESTREROS", GetType(String))
        tbl2.Columns.Add("PROGRAMADO", GetType(String))
        tbl2.Columns.Add("GEOLOGO_RES", GetType(String))

    End Sub

    Sub agregadtbl2(COMPANIA As String, UNIDAD As String, PROGRAMA As String, ID As String, NUMERO_MUESTREROS As String, PROGRAMADO As String, GEOLOGO_RES As String)

        tbl2.Rows.Add(COMPANIA, UNIDAD, PROGRAMA, ID, NUMERO_MUESTREROS, PROGRAMADO, GEOLOGO_RES)
        grddetalle.DataSource = tbl2

    End Sub

    Private Sub frmrepmuestreo_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        deshabilitado()

        txtcreadop.Text = puser
        txtestado.Text = "NUEVO"

        creardtbl1()
        creardtbl2()

    End Sub

    Sub cargar_datos()

        Dim tranz As New clsmuestreol


        RepositoryItemSearchLookUpEdit1.DataSource = tranz.consulta_labor
        RepositoryItemSearchLookUpEdit1.DisplayMember = "NOMBRE"
        RepositoryItemSearchLookUpEdit1.ValueMember = "ID"

        RepositoryItemGridLookUpEdit1.DataSource = tranz.usuarios_contrata
        RepositoryItemGridLookUpEdit1.DisplayMember = "USUARIO_NOMBRE"
        RepositoryItemGridLookUpEdit1.ValueMember = "USUARIO_CODIGO"


    End Sub

    Private Sub btnagregar_Click(sender As System.Object, e As System.EventArgs) Handles btnagregar.Click
        agregadtbl2("01", "", "", "", 0, "", "")
    End Sub

    Private Sub Userboton1_cancelar() Handles Userboton1.cancelar
        deshabilitado()
    End Sub

    Private Sub Userboton1_guardar() Handles Userboton1.guardar

        Dim trans As New clsmuestreol

        trans.fninserta_programa_muestreo("01", "000001", txtprograma.Text, "", CType(Now, Date), "admin", CType(Now, Date), Mid(cmbturno.Text, 1, 1), 0, 0, "N", "EX", "", "")


        For i = 0 To GridView1.RowCount - 1

            trans.fninserta_programa_muestreo_ubicacion("01", "000001", txtprograma.Text, _
                                         CType(GridView1.GetRowCellValue(i, "ID"), Integer), _
                               CType(GridView1.GetRowCellValue(i, "NUMERO_MUESTREROS"), Double), _
                                CType(GridView1.GetRowCellValue(i, "PROGRAMADO"), String), _
                            CType(GridView1.GetRowCellValue(i, "GEOLOGO_RES"), String))

        Next
        deshabilitado()

    End Sub


    Private Sub Userboton1_nuevo() Handles Userboton1.nuevo

        txtprograma.Enabled = True
        txtfecha.Enabled = True
        DateTimePicker1.Enabled = True
        cmbturno.Enabled = True
        txtcreadop.Enabled = True
        DateTimePicker2.Enabled = True
        txtestado.Enabled = True
        TextBox5.Enabled = True
        TextBox6.Enabled = True
        TextBox7.Enabled = True
        TextBox8.Enabled = True

        tbl1.Clear()
        tbl2.Clear()

        grddetalle.Enabled = True

        cargar_datos()

        Userboton1.btnguardar.Enabled = True
        Userboton1.btnactualizar.Enabled = False
        Userboton1.btncancelar.Enabled = True
        Userboton1.btnborrar.Enabled = False
        Userboton1.btnimprimir.Enabled = False
        Userboton1.btnmensaje.Enabled = False

        txtprograma.Text = Year(Now) & Month(Now) & Now.Day & "-" & Hour(Now) & Second(Now)

    End Sub


    Sub deshabilitado()

        txtprograma.Text = ""
        txtfecha.Text = ""
        DateTimePicker1.Text = ""
        cmbturno.Text = ""
        txtcreadop.Text = ""
        DateTimePicker2.Text = ""
        txtestado.Text = ""
        TextBox5.Text = ""
        TextBox6.Text = ""
        TextBox7.Text = ""
        TextBox8.Text = ""

        txtprograma.Enabled = False
        txtfecha.Enabled = False
        DateTimePicker1.Enabled = False
        cmbturno.Enabled = False
        txtcreadop.Enabled = False
        DateTimePicker2.Enabled = False
        txtestado.Enabled = False
        TextBox5.Enabled = False
        TextBox6.Enabled = False
        TextBox7.Enabled = False
        TextBox8.Enabled = False


        Userboton1.btnguardar.Enabled = False
        Userboton1.btnactualizar.Enabled = False
        Userboton1.btncancelar.Enabled = False
        Userboton1.btnborrar.Enabled = False
        Userboton1.btncancelar.Enabled = False
        Userboton1.btnimprimir.Enabled = False
        Userboton1.btnmensaje.Enabled = False

    End Sub

    
End Class