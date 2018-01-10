
Partial Class Applicants
    Inherits System.Web.UI.Page

    Protected Sub ListBox1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ListBox1.SelectedIndexChanged
        Session.Contents("CompanyID") = ListBox1.SelectedValue
        Button1.Enabled = True
    End Sub

    
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Response.Redirect("Apply.aspx")
    End Sub
End Class
