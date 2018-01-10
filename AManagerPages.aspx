<%@ Page Title="" Language="VB" MasterPageFile="~/Site1.Master" %>

<script runat="server">



    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        If Session.Contents("Logged") <> 1 Or Session.Contents("LoggedType") <> "Admin" Then
       
            Response.Redirect("SignIn.aspx")
       
        End If
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        
        If DropDownList1.SelectedValue = "About Us" Then
           
            Dim SqlConn As New System.Data.SqlClient.SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\HRMS.mdf;Integrated Security=True;User Instance=False")
            SqlConn.Open()
            Dim strSQL As String = ("Update Pages set AboutUs ='" & Txt.Text & "'")
            Dim SqlComm As New System.Data.SqlClient.SqlCommand(strSQL, SqlConn)
            SqlComm.ExecuteNonQuery()
            Label1.Text = "Content of About Us Page Updated Succesfully"
       
        End If
            
        If DropDownList1.SelectedValue = "Services" Then
            
            Dim SqlConn As New System.Data.SqlClient.SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\HRMS.mdf;Integrated Security=True;User Instance=False")
            SqlConn.Open()
            Dim strSQL As String = ("Update Pages set Services ='" & Txt.Text & "'")
            Dim SqlComm As New System.Data.SqlClient.SqlCommand(strSQL, SqlConn)
            SqlComm.ExecuteNonQuery()
            Label1.Text = "Content of Services Page Updated Succesfully"
            
        End If
            
        If DropDownList1.SelectedValue = "Contact US" Then
            
            Dim SqlConn As New System.Data.SqlClient.SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\HRMS.mdf;Integrated Security=True;User Instance=False")
            SqlConn.Open()
            Dim strSQL As String = ("Update Pages set ContactUs ='" & Txt.Text & "'")
            Dim SqlComm As New System.Data.SqlClient.SqlCommand(strSQL, SqlConn)
            SqlComm.ExecuteNonQuery()
            Label1.Text = "Content of Contact Us Page Updated Succesfully"
            
        End If
        
        
        
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim AboutTxt, ContactTxt, ServiceTxt As String
        
        Dim SqlConn As New System.Data.SqlClient.SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\HRMS.mdf;Integrated Security=True;User Instance=False")
        Dim strSQL As String = ("select * from Pages")
        Dim SqlComm As New System.Data.SqlClient.SqlCommand(strSQL, SqlConn)
        Dim dataAdapter As System.Data.SqlClient.SqlDataAdapter = _
        New System.Data.SqlClient.SqlDataAdapter(SqlComm)

        Dim dataSet As System.Data.DataSet = New System.Data.DataSet
        dataAdapter.Fill(dataSet)

        'Test The result
        If dataSet.Tables(0).Rows.Count <> 0 Then
            AboutTxt = dataSet.Tables(0).Rows(0).Item(0)
            ContactTxt = dataSet.Tables(0).Rows(0).Item(2)
            ServiceTxt = dataSet.Tables(0).Rows(0).Item(1)
        
            If DropDownList1.SelectedValue = "About Us" Then
                Txt.Text = AboutTxt
            End If
            
            If DropDownList1.SelectedValue = "Services" Then
                Txt.Text = ServiceTxt
            End If
            
            If DropDownList1.SelectedValue = "Contact US" Then
                Txt.Text = ContactTxt
            End If
        
        
        End If
        
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
        .style9
        {
            width: 182px;
            text-align: center;
            height: 31px;
        }
        .style10
        {
            width: 182px;
            text-align: center;
            height: 29px;
        }
        .style11
        {
            width: 182px;
            text-align: center;
            height: 33px;
        }
        .style12
        {
            width: 101px;
        }
        .style14
        {
            height: 23px;
        }
        .style15
        {
            width: 139px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%;">
    <tr>
        <td class="style7">
            Admin Control Panel</td>
        <td rowspan="8" class="style8" style="text-align: center">
            <table style="width:100%;">
                <tr>
                    <td colspan="4" style="text-align: left" class="style14">
                        Manage Pages</td>
                </tr>
                <tr>
                    <td class="style12" style="text-align: left">
                        Page Name
                    </td>
                    <td style="text-align: left" colspan="2">
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>About Us</asp:ListItem>
                            <asp:ListItem>Services</asp:ListItem>
                            <asp:ListItem>Contact US</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="DropDownList1" ErrorMessage="*"></asp:RequiredFieldValidator>
                        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                            Text="Show Content" CausesValidation="False" />
                    </td>
                    <td style="text-align: left">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style15" colspan="2" style="text-align: left">
                        <asp:TextBox ID="Txt" runat="server" Height="118px" 
                          TextMode="MultiLine" Width="335px"></asp:TextBox>
                    </td>
                    <td class="style12" colspan="2" style="text-align: left">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="Txt" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style12" style="text-align: left">
                        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                            style="font-weight: 700" Text="Update" Height="28px" Width="92px" />
                    </td>
                    <td style="text-align: left" colspan="2">
                        <span class="style12">
                                    <asp:Label ID="Label1" runat="server" style="color: #FF0000"></asp:Label>
                        </span>
                        
                    </td>
                    <td style="text-align: left">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style12" style="text-align: left" colspan="3">
                        <asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="~/index.htm" 
                            Target="_blank">Home Page</asp:HyperLink>
&nbsp;</td>
                    <td style="text-align: left">
                        &nbsp;</td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td class="style9">
            <asp:HyperLink ID="HyperLink4" runat="server" 
                NavigateUrl="AManageCompanies.aspx">Manage Companies</asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td class="style10">
            <asp:HyperLink ID="HyperLink6" runat="server" 
                NavigateUrl="AManagerLaborLaw.aspx">Manage Labor Law</asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td class="style11">
            <asp:HyperLink ID="HyperLink8" runat="server" 
                NavigateUrl="AManagerPages.aspx">Manage Pages</asp:HyperLink>
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
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style6">
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

