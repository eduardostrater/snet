Imports SIGLOGICA
Imports DevExpress.XtraNavBar

Public Class frminicio

    Public usr As String
    Public clv As String

    Private Sub frminicio_Load(sender As System.Object, e As System.EventArgs) Handles MyBase.Load

        usr = frmlogin.txtu.Text
        clv = frmlogin.txtc.Text

        'cargar_menu(0, Nothing, MenuStrip1)

        frmlogin.Hide()

        carganav()

    End Sub

    Private Sub carganav()
        ' Create a NavBarControl.
        Dim navBar As NavBarControl = New NavBarControl()
        Me.Controls.Add(navBar)
        navBar.Dock = DockStyle.Left

        navBar.Width = 310

        ' Apply the "SkinExplorerBarView" style.
        'navBar.PaintStyleName = "SkinNav:NavigationPane"
        navBar.PaintStyleName = "NavigationPane"
        ' Assign the list that stores small images to the control.
        navBar.SmallImages = ImageList1


        ' Create a Local group.
        Dim groupLocal1 As NavBarGroup = New NavBarGroup("CATEOS")
        Dim groupLocal2 As NavBarGroup = New NavBarGroup("PROSPECCION")
        Dim groupLocal3 As NavBarGroup = New NavBarGroup("EXPLORACION")
        Dim groupLocal4 As NavBarGroup = New NavBarGroup("PRODUCCION")
        Dim groupLocal5 As NavBarGroup = New NavBarGroup("REPORTES")
        Dim groupLocal6 As NavBarGroup = New NavBarGroup("CONFIGURACION")

        ' Create an Inbox item and assign an image from the SmallImages list to the item.
        'Dim itemInbox As NavBarItem = New NavBarItem("Registro de Muestras - Exploraciones")
        'itemInbox.SmallImageIndex = 0
        '' Create an Outbox item.
        'Dim itemOutbox As NavBarItem = New NavBarItem("Outbox")
        'itemOutbox.SmallImageIndex = 1
        '' Create a disabled Sent Items item.
        'Dim itemSentItems As NavBarItem = New NavBarItem("Sent Items")
        'itemSentItems.SmallImageIndex = 2
        'itemSentItems.Enabled = False
        ' Add the created items to the group and the group to the NavBarControl.
        ' Prevent excessive updates using the BeginUpdate and EndUpdate methods.
        navBar.BeginUpdate()

        Dim trans As New clslogin
        Dim datos As New DataTable

        navBar.Groups.Add(groupLocal1)
        navBar.Groups.Add(groupLocal2)
        navBar.Groups.Add(groupLocal3)
        navBar.Groups.Add(groupLocal4)
        navBar.Groups.Add(groupLocal5)
        navBar.Groups.Add(groupLocal6)

        
        For ix = 0 To trans.selmenusr(usr, clv, "CATEOS").Rows.Count - 1

            Dim itemOutbox As NavBarItem = New NavBarItem(trans.selmenusr(usr, clv, "CATEOS").Rows(ix).Item(1))
            itemOutbox.SmallImageIndex = 0

            groupLocal1.ItemLinks.Add(itemOutbox)

        Next

        For iy = 0 To trans.selmenusr(usr, clv, "EXPLORACION").Rows.Count - 1

            Dim itemOutbox As NavBarItem = New NavBarItem(trans.selmenusr(usr, clv, "EXPLORACION").Rows(iy).Item(1))
            itemOutbox.SmallImageIndex = 0

            groupLocal3.ItemLinks.Add(itemOutbox)

        Next

        For iy = 0 To trans.selmenusr(usr, clv, "PROSPECCION").Rows.Count - 1

            Dim itemOutbox As NavBarItem = New NavBarItem(trans.selmenusr(usr, clv, "PROSPECCION").Rows(iy).Item(1))
            itemOutbox.SmallImageIndex = 0

            groupLocal2.ItemLinks.Add(itemOutbox)

        Next

        For iy = 0 To trans.selmenusr(usr, clv, "PRODUCCION").Rows.Count - 1

            Dim itemOutbox As NavBarItem = New NavBarItem(trans.selmenusr(usr, clv, "PRODUCCION").Rows(iy).Item(1))
            itemOutbox.SmallImageIndex = 0

            groupLocal4.ItemLinks.Add(itemOutbox)

        Next


        For iy = 0 To trans.selmenusr(usr, clv, "REPORTES").Rows.Count - 1

            Dim itemOutbox As NavBarItem = New NavBarItem(trans.selmenusr(usr, clv, "REPORTES").Rows(iy).Item(1))
            itemOutbox.SmallImageIndex = 0

            groupLocal5.ItemLinks.Add(itemOutbox)

        Next

        For iy = 0 To trans.selmenusr(usr, clv, "CONFIGURACION").Rows.Count - 1

            Dim itemOutbox As NavBarItem = New NavBarItem(trans.selmenusr(usr, clv, "CONFIGURACION").Rows(iy).Item(1))
            itemOutbox.SmallImageIndex = 0

            groupLocal6.ItemLinks.Add(itemOutbox)

        Next

        'For ia = 1 To 10

        '    Dim ite As NavBarItem = New NavBarItem(ia.ToString)
        '    itemOutbox.SmallImageIndex = 1

        '    groupLocal.ItemLinks.Add(ite)

        'Next

        'groupLocal.ItemLinks.Add(itemOutbox)
        'groupLocal.ItemLinks.Add(itemSentItems)

        'groupLocal1.Expanded = True
        'groupLocal2.Expanded = True
        'groupLocal3.Expanded = True
        'groupLocal4.Expanded = True
        'groupLocal5.Expanded = True
        'groupLocal6.Expanded = True

        navBar.EndUpdate()

        ' Specify the event handler which will be invoked when any link is clicked.
        AddHandler navBar.LinkClicked, AddressOf navBar_LinkClicked
    End Sub

    Private Sub navBar_LinkClicked(ByVal sender As System.Object, ByVal e As NavBarLinkEventArgs)
        'MessageBox.Show(String.Format("The {0} link has been clicked", e.Link.Caption))

        If e.Link.Caption = "REGISTRO INFORME DE MUESTREO - EXPLORACIONES" Then
            Dim frm As New frmregmuestreo
            frm.MdiParent = Me
            frm.Show()
        End If

        If e.Link.Caption = "PROGRAMA DE MUESTREO-EXPLORACIONES" Then
            Dim frm As New frmrepmuestreo
            frm.MdiParent = Me
            frm.Show()
        End If

        If e.Link.Caption = "MANTENIMIENTO DE LABORES" Then
            Dim frm As New frmmtolab
            frm.MdiParent = Me
            frm.Show()
        End If

        If e.Link.Caption = "MANTENIMIENTO DE PROYECTO" Then
            Dim frm As New frmproyecto
            frm.MdiParent = Me
            frm.Show()
        End If

        If e.Link.Caption = "MANTENIMIENTO DE USUARIOS" Then
            Dim frm As New frmproyecto
            frm.MdiParent = Me
            frm.Show()
        End If

        If e.Link.Caption = "ADMINISTRADOR DE MUESTRAS" Then
            Dim frm As New frmadmmuestras
            frm.MdiParent = Me
            frm.Show()
        End If

        If e.Link.Caption = "ADMINISTRADOR DE MUESTRAS-PRODUCCION" Then
            Dim frm As New frmadmmuestraspr
            frm.MdiParent = Me
            frm.Show()
        End If

        If e.Link.Caption = "REGISTRO PERFORACION DIAMANTINA" Then
            Dim frm As New frmperdia
            frm.MdiParent = Me
            frm.Show()
        End If

        If e.Link.Caption = "REGISTRO INFORME DE MUESTREO -BH - PILAS" Then
            Dim frm As New frmregmuestreopr
            frm.MdiParent = Me
            frm.Show()
        End If

        If e.Link.Caption = "PROGRAMA DE MUESTREO - BH - PILAS" Then
            Dim frm As New frmrepmuestreopr
            frm.MdiParent = Me
            frm.Show()
        End If

        If e.Link.Caption = "REGISTRO DE BLENDING" Then
            Dim frm As New frmblending
            frm.MdiParent = Me
            frm.Show()
        End If

        If e.Link.Caption = "CONFIGURACION ORIGEN-MINA" Then
            Dim frm As New frmorigenmina
            frm.MdiParent = Me
            frm.Show()
        End If


        If e.Link.Caption = "REPORTE DIARIO DE PERFORACION" Then
            Dim frm As New frmregdiaper
            frm.MdiParent = Me
            frm.Show()
        End If

        
        If e.Link.Caption = "REGISTRO DE PARAMETROS DE PRODUCCION" Then
            Dim frm As New frmparpro
            frm.MdiParent = Me
            frm.Show()
        End If

        If e.Link.Caption = "REGISTRO ORIGEN-MINA" Then
            Dim frm As New frmorigenmina
            frm.MdiParent = Me
            frm.Show()
        End If

        If e.Link.Caption = "CONTROL Y VALIDACION DE PESAJES BALANZA" Then
            Dim frm As New frmbalanza
            frm.MdiParent = Me
            frm.Show()
        End If

    End Sub

    Private Sub cargar_menu(ByVal indice_padre As Int32, ByVal menu_padre As ToolStripMenuItem, ByVal menu As MenuStrip)

        Dim trans As New clslogin
        Dim datos As New DataTable

        'datos = trans.selmenusr(usr, clv,)

        Dim datos_hijos As New DataView(datos)
        'filtramos los datos y obtenemos los hijos del id = ?  

        datos_hijos.RowFilter = datos.Columns("IDUNICO").ColumnName + "=" & Convert.ToString(indice_padre)

        'Recorremos los datos filtrados   

        For Each fila As DataRowView In datos_hijos
            'Declaramos un nuevo item hijo  
            Dim menu_hijo As New ToolStripMenuItem()
            'Texto a mostrar en el Item  
            menu_hijo.Text = fila("DESCRIPCION").ToString()

            'Nombre a asignar al Item  
            menu_hijo.Name = fila("IDMENUSU").ToString()

            If menu_padre Is Nothing Then
                'Agregamos como item Raiz  
                menu.Items.Add(menu_hijo)
            Else
                'Agregamos un item a otro item  
                menu_padre.DropDownItems.Add(menu_hijo)
                '   toolstrip(menu_hijo.Text)
            End If

            cargar_menu(Int32.Parse(fila("IDMENUSU").ToString()), menu_hijo, menu)

            'toolstrip(menu_hijo.Text)

            AddHandler menu_hijo.Click, AddressOf Listado_Eventos

        Next

    End Sub

    Private Sub mostrarForm(ByVal nombreform As String)

        Try
            'Creamos una variable tipo Form
            Dim frmdinamico As Form
            'Extraemos toda la información necesaria para poder pasar
            'con el solo nombre del formulario a la variable "frmdinamico", el objeto

            frmdinamico = AppDomain.CurrentDomain.CreateInstanceAndUnwrap(Me.GetType.Assembly.GetName.Name, _
                                    System.String.Concat(Me.GetType.Assembly.GetName.Name, ".", nombreform))

            'Llamamos la rutina que no permitira abrir 2 veces el formulario
            llamarform(frmdinamico, Me)
        Catch ex As Exception

        End Try

    End Sub

    Public Sub Listado_Eventos(ByVal sender As Object, ByVal e As EventArgs)

        'Evento Generico de Cada item    
        Dim clickedItem As ToolStripMenuItem = DirectCast(sender, ToolStripMenuItem)

        Select Case clickedItem.Text
            Case "REGISTRO INFORME DE MUESTREO - EXPLORACIONES"
                Dim frm As New frmregmuestreo
                frm.MdiParent = Me
                frm.Show()
        End Select

        Select Case clickedItem.Text
            Case "PROGRAMA DE MUESTREO-EXPLORACIONES"
                Dim frm As New frmrepmuestreo
                frm.MdiParent = Me
                frm.Show()
        End Select

        Select Case clickedItem.Text
            Case "MANTENIMIENTO DE LABORES"
                Dim frm As New frmmtolab
                frm.MdiParent = Me
                frm.Show()
        End Select

        Select Case clickedItem.Text
            Case "MANTENIMIENTO DE PROYECTO"
                Dim frm As New frmproyecto
                frm.MdiParent = Me
                frm.Show()
        End Select

        Select Case clickedItem.Text
            Case "MANTENIMIENTO DE PROYECTO"
                Dim frm As New frmproyecto
                frm.MdiParent = Me
                frm.Show()
        End Select

        Select Case clickedItem.Text
            Case "CONFIGURACION ORIGEN-MINA"
                Dim frm As New frmorigenmina
                frm.MdiParent = Me
                frm.Show()
        End Select


    End Sub

End Class