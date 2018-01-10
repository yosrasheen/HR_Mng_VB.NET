
Partial Class Applicants
    Inherits System.Web.UI.Page

  
   
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click

        If (FileUpload1.PostedFile.ContentType = "application/pdf") Then


            FileUpload1.SaveAs("C:\HRWebApplication\CV\" & FileUpload1.FileName)
            Dim SqlConn As New System.Data.SqlClient.SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\HRMS.mdf;Integrated Security=True;User Instance=False")
            SqlConn.Open()
            Dim strSQL As String = ("Insert into EmployeeVacanciesRequests (VacancyID, PostDate, AttachedCV, Status) values (" & DropDownList1.SelectedValue & ",'" & Format(Now, "MM/dd/yyyy") & "','CV\" & FileUpload1.FileName & "','Pending')")
            Dim SqlComm As New System.Data.SqlClient.SqlCommand(strSQL, SqlConn)
            SqlComm.ExecuteNonQuery()
            Label1.Text = "Your CV Succesfully Posted, Wait to contact you"

        Else

            Label1.Text = "Your CV Must be on acrobat format"
        End If
    End Sub
End Class
