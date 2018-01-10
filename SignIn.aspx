<%@ Page Title="" Language="VB" MasterPageFile="~/Site1.Master" %>

<script runat="server">

   
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs)
       
        If DropDownList1.SelectedValue = "Admin" Then
                  
            Dim SqlConn As New System.Data.SqlClient.SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\HRMS.mdf;Integrated Security=True;User Instance=False")
            Dim strSQL As String = ("select * from Admin where Username = '" & Username.Text & "' And password = '" & Password.Text & "'")
            Dim SqlComm As New System.Data.SqlClient.SqlCommand(strSQL, SqlConn)
            Dim dataAdapter As System.Data.SqlClient.SqlDataAdapter = _
            New System.Data.SqlClient.SqlDataAdapter(SqlComm)

            Dim dataSet As System.Data.DataSet = New System.Data.DataSet
            dataAdapter.Fill(dataSet)

            'Test The result
            If dataSet.Tables(0).Rows.Count <> 0 Then
                
                Session.Contents("Logged") = 1
                Session.Contents("LoggedType") = "Admin"
                Response.Redirect("AdminArea.aspx")
            Else
                Label1.Text = "Wrong username or password"
            End If
        End If
        
        If DropDownList1.SelectedValue = "Manager" Then
                  
            Dim SqlConn As New System.Data.SqlClient.SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\HRMS.mdf;Integrated Security=True;User Instance=False")
            Dim strSQL As String = ("select * from CompanyManager where Username = '" & Username.Text & "' And password = '" & Password.Text & "'")
            Dim SqlComm As New System.Data.SqlClient.SqlCommand(strSQL, SqlConn)
            Dim dataAdapter As System.Data.SqlClient.SqlDataAdapter = _
            New System.Data.SqlClient.SqlDataAdapter(SqlComm)

            Dim dataSet As System.Data.DataSet = New System.Data.DataSet
            dataAdapter.Fill(dataSet)

            'Test The result
            If dataSet.Tables(0).Rows.Count <> 0 Then
                Session.Contents("Logged") = 1
                Session.Contents("LoggedType") = "Manager"
                Response.Redirect("ManagerMenu.aspx")
            Else
                Label1.Text = "Wrong username or password"
            End If
        End If
        
        If DropDownList1.SelectedValue = "Employee" Then
                  
            Dim SqlConn As New System.Data.SqlClient.SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\HRMS.mdf;Integrated Security=True;User Instance=False")
            Dim strSQL As String = ("select * from Employee where Username = '" & Username.Text & "' And password = '" & Password.Text & "' and EmpType ='Employee'")
            Dim SqlComm As New System.Data.SqlClient.SqlCommand(strSQL, SqlConn)
            Dim dataAdapter As System.Data.SqlClient.SqlDataAdapter = _
            New System.Data.SqlClient.SqlDataAdapter(SqlComm)

            Dim dataSet As System.Data.DataSet = New System.Data.DataSet
            dataAdapter.Fill(dataSet)

            'Test The result
            If dataSet.Tables(0).Rows.Count <> 0 Then
                Session.Contents("Logged") = 1
                Session.Contents("LoggedType") = "Employee"
                Response.Redirect("EmployeeMenu.aspx")
            Else
                Label1.Text = "Wrong username or password"
            End If
        End If
        
        If DropDownList1.SelectedValue = "HR" Then
                  
            Dim SqlConn As New System.Data.SqlClient.SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\HRMS.mdf;Integrated Security=True;User Instance=False")
            Dim strSQL As String = ("select * from Employee where Username = '" & Username.Text & "' And password = '" & Password.Text & "' and EmpType ='HR'")
            Dim SqlComm As New System.Data.SqlClient.SqlCommand(strSQL, SqlConn)
            Dim dataAdapter As System.Data.SqlClient.SqlDataAdapter = _
            New System.Data.SqlClient.SqlDataAdapter(SqlComm)

            Dim dataSet As System.Data.DataSet = New System.Data.DataSet
            dataAdapter.Fill(dataSet)

            'Test The result
            If dataSet.Tables(0).Rows.Count <> 0 Then
                Session.Contents("Logged") = 1
                Session.Contents("LoggedType") = "HR"
                Response.Redirect("HRMain.aspx")
            Else
                Label1.Text = "Wrong username or password"
            End If
        End If
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Username.Text = ""
        Password.Text = ""
        Label1.Text = ""
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
        .style10
    {
        width: 182px;
        text-align: center;
        height: 23px;
    }
    .style11
    {
        text-align: left;
    }
    .style12
    {
        color: #000000;
    }
        .style13
        {
            width: 153px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%;">
    <tr>
        <td class="style7">
            &nbsp;</td>
        <td rowspan="9" class="style8" style="text-align: center">
            <table style="width:100%;">
                <tr>
                    <td class="style11">
                        Sign In<span class="style12"><br />
                        <table style="width: 100%; height: 107px;">
                            <tr>
                                <td>
                                    Username</td>
                                <td class="style13">
                                    <span class="style12">
                        <asp:TextBox ID="Username" runat="server"></asp:TextBox>
                        </span>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                        ControlToValidate="Username" ErrorMessage="*"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Password</td>
                                <td class="style13">
                        <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                        ControlToValidate="Password" ErrorMessage="*"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    User Type&nbsp;</td>
                                <td class="style13">
                                    <asp:DropDownList ID="DropDownList1" runat="server">
                                        <asp:ListItem>Admin</asp:ListItem>
                                        <asp:ListItem>Manager</asp:ListItem>
                                        <asp:ListItem>Employee</asp:ListItem>
                                        <asp:ListItem>HR</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                        ControlToValidate="DropDownList1" ErrorMessage="*"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td class="style13">
                        <asp:Button ID="Button1" runat="server" style="font-weight: 700; height: 26px;" 
                            Text="Sign In" onclick="Button1_Click" />
                        &nbsp;&nbsp;
                                    <asp:Button ID="Button2" runat="server" CausesValidation="False" 
                                        onclick="Button2_Click" style="font-weight: 700" Text="Clear" />
                                </td>
                                <td>
                                    <asp:Label ID="Label1" runat="server" style="color: #FF0000"></asp:Label>
                                </td>
                            </tr>
                        </table>
                        </span>
                        
                    </td>
                </tr>
                <tr>
                    <td>
                        <br />
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td class="style6">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style10">
            &nbsp;</td>
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
            &nbsp;</td>
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
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

