
Partial Class admin_detailView
    Inherits System.Web.UI.Page


    Protected Sub FormView1_ItemDeleted(sender As Object, e As FormViewDeletedEventArgs) Handles FormView1.ItemDeleted
        Response.Redirect("~/admin/currentMembers.aspx")
    End Sub
End Class
