<%@ Page Title="" Language="VB" MasterPageFile="~/Site1.Master" %>

<script runat="server">

    

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Session.Contents("REmpID") = 0
        Dim SqlConn As New System.Data.SqlClient.SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\HRMS.mdf;Integrated Security=True;User Instance=False")
        Dim strSQL As String = ("select * from Employee where EmployeeID =" & TextBox2.Text)
        Dim SqlComm As New System.Data.SqlClient.SqlCommand(strSQL, SqlConn)
        Dim dataAdapter As System.Data.SqlClient.SqlDataAdapter = _
        New System.Data.SqlClient.SqlDataAdapter(SqlComm)

        Dim dataSet As System.Data.DataSet = New System.Data.DataSet
        dataAdapter.Fill(dataSet)

        'Test The result
        If dataSet.Tables(0).Rows.Count <> 0 Then
            
            Session.Contents("REmpID") = dataSet.Tables(0).Rows(0).Item(0)
           
            Button2.Enabled = True
            Button3.Enabled = True
            Button4.Enabled = True
            Button5.Enabled = True   
             
        Else
            
            Label1.Text = "Employee ID Not Valid"
            Session.Contents("REmpID") = 0
            Button2.Enabled = False
            Button3.Enabled = False
            Button4.Enabled = False
            Button5.Enabled = False
        End If
    End Sub

    
    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Response.Redirect("ProfileReport.aspx")
    End Sub

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Response.Redirect("TrainingReport.aspx")
    End Sub

    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Response.Redirect("EvaluationReport.aspx")
    End Sub

    Protected Sub Button5_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Response.Redirect("VacationReport.aspx")
    End Sub
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style6
    {
        width: 182px;
            text-align: center;
        }
        .style7
        {
            width: 182px;
            text-align: center;
            font-weight: bold;
            color: #990000;
        }
        .style8
        {
            color: #990000;
            font-weight: bold;
        }
        .style9
        {
            color: #000000;
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%;">
    <tr>
        <td class="style7">
            Manager Control Panel</td>
        <td rowspan="9" class="style8" style="text-align: center">
            <table style="width:100%;">
                <tr>
                    <td colspan="3">
                        Manager Reports<br />
                        <br />
                        <span class="style9">Enter Employee Name or Employee ID to display his Report: </span>
                        <br />
                        Emp #:
                        <asp:TextBox ID="TextBox2" runat="server" ValidationGroup="1"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="TextBox2" ErrorMessage="*" ValidationGroup="1"></asp:RequiredFieldValidator>
                        &nbsp;
                        <asp:Button ID="Button1" runat="server" style="font-weight: 700" 
                            Text="Search" ValidationGroup="1" onclick="Button1_Click" />
                        <br />
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="3" style="text-align: left">
                        <asp:Button ID="Button2" runat="server" Text="Profile Report" Width="112px" 
                            Enabled="False" onclick="Button2_Click" />
&nbsp;&nbsp;
                        <asp:Button ID="Button3" runat="server" Text="Training Report" Width="121px" 
                            Enabled="False" onclick="Button3_Click" />
&nbsp;&nbsp;
                        <asp:Button ID="Button4" runat="server" Text="Evaluation Report" 
                            Width="116px" Enabled="False" onclick="Button4_Click" />
&nbsp;&nbsp;
                        <asp:Button ID="Button5" runat="server" Text="Vacation Report" Width="122px" 
                            Enabled="False" onclick="Button5_Click" />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td class="style6">
            <asp:HyperLink ID="HyperLink4" runat="server" 
                NavigateUrl="~/ManagerVacations.aspx">Manage Vacations</asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td class="style6">
            <asp:HyperLink ID="HyperLink6" runat="server" 
                NavigateUrl="~/ManagerTraining.aspx">Manage Training</asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td class="style6">
            <asp:HyperLink ID="HyperLink8" runat="server" 
                NavigateUrl="~/ManagerEvaluation.aspx">Manage Evaluation</asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td class="style6">
            <asp:HyperLink ID="HyperLink9" runat="server" 
                NavigateUrl="~/ManagerReports.aspx">Manage Reports</asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td class="style6">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style6">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style6">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT [TrainCourseID], [CourseName] FROM [TrainingCourses]">
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td class="style6">
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

