
Partial Class login
    Inherits System.Web.UI.Page

    Protected Sub Login1_LoggedIn(sender As Object, e As EventArgs) Handles Login1.LoggedIn

        If Roles.IsUserInRole(Login1.UserName, "r_admin") = True Then
            Response.Redirect("~/admin/currentMembers.aspx")
        Else : Response.Redirect("~/currentMembers.aspx")
        End If
    End Sub
End Class
