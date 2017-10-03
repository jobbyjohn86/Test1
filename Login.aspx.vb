Imports System.Data.SqlClient

Public Class WebForm1
    Inherits System.Web.UI.Page


#Region "Functions"
    Public Sub ShowModal(ByVal msg As String)
        ClientScript.RegisterStartupScript(Me.GetType(), "Script", "<script type='text/javascript'>$( document ).ready(function() { $('#modal-default').modal('show')});</script>")
        lblMessage.Text = msg
    End Sub

    Function ValidateUser() As Boolean
        Try
            Dim sql As String = "select * from UserMaster where UserName='" & txtUserName.Value & "' and PrintName='" & txtPassword.Value & "'"
            If clsGlobal.SqlDataTable(sql).Rows.Count > 0 Then
                Return True
            Else
                Return False
            End If
        Catch ex As Exception
            ShowModal(ex.Message)
        End Try
    End Function
    Sub LoadUserData()
        Dim dt As DataTable = clsGlobal.SqlDataTable("select UM.PrintName,DM.DesignationName  from UserMaster UM inner join  DesignationMaster  DM on UM.DesignationID =DM.DesignationId where UM.UserName ='" & txtUserName.Value & "'")
        clsGlobal.strUserName = dt.Rows(0).Item("PrintName").ToString
        clsGlobal.strUserDesig = dt.Rows(0).Item("DesignationName").ToString
    End Sub
#End Region

    Private Sub btnSignIn2_ServerClick(sender As Object, e As EventArgs) Handles btnSignIn2.ServerClick
        If ValidateUser() = False Then
            ShowModal("Invalid Credential")
            txtUserName.Value = ""
            txtPassword.Value = ""
        Else
            LoadUserData()
            Response.Redirect("DashBoard.aspx")
        End If

    End Sub

    Private Sub form1_Load(sender As Object, e As EventArgs) Handles form1.Load
        If clsGlobal.SqlConnection() = False Then
            Response.Redirect("Settings.html")
        End If
    End Sub

    'Private Sub form1_Load(sender As Object, e As EventArgs) Handles form1.Load
    '    'If Page.IsPostBack = False Then
    '    '    ScriptManager.RegisterStartupScript(Me, Me.GetType(), "Pop", "showModal();", True)

    '    '    'Dim eventTarget As String = Page.Request.Params.Get("__EventTarget")
    '    '    'Dim eventArgs As String = Page.Request.Params.Get("__EventArgument")

    '    '    'If Not String.IsNullOrEmpty(eventTarget) AndAlso eventTarget.StartsWith(Me.UniqueID) Then
    '    '    '    If eventTarget.Contains("$" + _credentialBuilder.ID + "$") Then
    '    '    '        ' Postback from credential builder modal.  Keep it open.
    '    '    '        showCredentialBuilder = True
    '    '    '    End If
    '    '    'End If
    '    'End If
    'End Sub


    ''Sub validateInput()

    ''    ScriptManager.RegisterClientScriptBlock(Me.Page, Me.Page.GetType(), "script", "<script type='text/javascript'>$( document ).ready(function() { $('##modal-default').modal('show')});</script>", True)

    ''    If txtUserName.Value = "" Then
    ''        'ClientScript.RegisterStartupScript(Me.[GetType](), "alert", "alert('You clicked YES!')", True)
    ''    End If
    ''End Sub

    'Private Sub btnSignIn2_ServerClick(sender As Object, e As EventArgs) Handles btnSignIn2.ServerClick
    '    'validateInput()
    '    'ScriptManager.RegisterClientScriptBlock(Me.Page, Me.Page.GetType(), "script", "<script type='text/javascript'>$( document ).ready(function() { $('#modal-default').modal('show')});</script>", True)

    '    ' Page.ClientScript.RegisterStartupScript(Me.GetType(), "Script", "<script type='text/javascript'>$( document ).ready(function() { $('#modal-default').modal('show')});</script>")

    '    ClientScript.RegisterStartupScript(me.GetType(), "alert", "ShowPopup();", True)

    'End Sub

    ''Private Sub WebForm1_Load(sender As Object, e As EventArgs) Handles Me.Load
    ''    'ClientScript.RegisterStartupScript(Me.[GetType](), "alert", "ShowPopup();", True)
    ''    ' Me.Label1.Text = "Your Registration is done successfully. Our team will contact you shotly"
    ''    Page.ClientScript.RegisterStartupScript(Me.GetType(), "Script", "<script>alert('This Is test')</script>")
    ''End Sub
End Class