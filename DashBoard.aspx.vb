Public Class DashBoard
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'Fill User Info
        Me.lblUserNameMenu.Text = clsGlobal.strUserName
        Me.lblUserName.Text = clsGlobal.strUserName
        Me.lblSidebarUserName.Text = clsGlobal.strUserName
        Me.lblUserRole.Text = clsGlobal.strUserDesig
        Me.lblSideBarUserDesig.Text = clsGlobal.strUserDesig

        Me.lblBoxText1.Text = "Sales Order"
        Me.lblBoxText2.Text = "Sales"
        Me.lblBoxText3.Text = "Purchase Order"
        Me.lblBoxText4.Text = "Purchase"
        If clsGlobal.TransCount = True Then
            Me.lblBoxValue1.Text = clsGlobal.dsDashBoardTransCount.Tables(0).Rows(0).Item(0)
            Me.lblBoxValue2.Text = clsGlobal.dsDashBoardTransCount.Tables(1).Rows(0).Item(0)
            Me.lblBoxValue3.Text = clsGlobal.dsDashBoardTransCount.Tables(2).Rows(0).Item(0)
            Me.lblBoxValue4.Text = clsGlobal.dsDashBoardTransCount.Tables(3).Rows(0).Item(0)
        End If

        Dim dt As DataTable = clsGlobal.SqlDataTable("select (select SUM(BillAmount) from SaleHeader  where VoucherDate between DATEADD(Month, -1, getdate()) and  getdate()) as [BillAmount],SUM(BillAmount) as [TotalBIllAmount] from SaleHeader")

        Me.lblBox1T.Text = Space(1) & String.Format("{0:0.00}", CDbl(dt.Rows(0).Item(0)) / CDbl(dt.Rows(0).Item(1)))
        Me.lblBox1M.Text = dt.Rows(0).Item(0).ToString()
        Me.lblBox1B.Text = "TOTAL REVENUE"

        Me.lblBox2T.Text = Space(1) & String.Format("{0:0.00}", CDbl(dt.Rows(0).Item(0)) / CDbl(dt.Rows(0).Item(1)))
        Me.lblBox2M.Text = dt.Rows(0).Item(0).ToString()
        Me.lblBox2B.Text = "TOTAL COST"

        'if the profit is + then the  profitUp.Visible = True
        profitUp.Visible = False

        Me.lblBox3Tup.Text = Space(1) & String.Format("{0:0.00}", CDbl(dt.Rows(0).Item(0)) / CDbl(dt.Rows(0).Item(1)))
        Me.lblBox3Tdn.Text = Space(1) & String.Format("{0:0.00}", CDbl(dt.Rows(0).Item(0)) / CDbl(dt.Rows(0).Item(1)))
        Me.lblBox3M.Text = dt.Rows(0).Item(0).ToString()
        Me.lblBox3B.Text = "TOTAL PROFIT"

        Me.lblBox4T.Text = Space(1) & String.Format("{0:0.00}", CDbl(dt.Rows(0).Item(0)) / CDbl(dt.Rows(0).Item(1)))
        Me.lblBox4M.Text = dt.Rows(0).Item(0).ToString()
        Me.lblBox4B.Text = "TOTAL PURCHASE"

    End Sub
End Class