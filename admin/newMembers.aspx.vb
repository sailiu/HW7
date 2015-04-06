
Partial Class admin_newMembers
    Inherits System.Web.UI.Page

    Protected Sub FormView1_ItemInserted(sender As Object, e As FormViewInsertedEventArgs) Handles FormView1.ItemInserted
        Response.Redirect("~/admin/currentMembers.aspx")
    End Sub
End Class
