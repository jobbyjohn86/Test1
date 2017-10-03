Public Class AccountMenu
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        ClientScript.GetPostBackEventReference(Me, "")
    End Sub

    Private Sub ledgerStatement_ServerClick(sender As Object, e As EventArgs) Handles ledgerStatement.ServerClick
        Response.Redirect("ContentPages/LedgerStatement.html")
    End Sub
End Class