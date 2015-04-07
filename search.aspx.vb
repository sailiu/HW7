
Partial Class search
    Inherits System.Web.UI.Page

    Protected Sub tb_serach_TextChanged(sender As Object, e As EventArgs) Handles tb_serach.TextChanged
       

        Dim searchWord As String
        searchWord = "Select * From hw7Database_sailiu where (member_name Like '%" + tb_serach.Text.ToString() + "%')"
        SqlDataSource1.SelectCommand = searchWord

    End Sub

    Protected Sub tb_serach1_TextChanged(sender As Object, e As EventArgs) Handles tb_serach1.TextChanged
        Dim searchWord As String
        searchWord = "Select * From hw7Database_sailiu where (member_name Like '%" + tb_serach1.Text.ToString() + "%')"
        SqlDataSource1.SelectCommand = searchWord
    End Sub
End Class
