<%@ Page Title="" Language="VB" MasterPageFile="~/Site1.Master" %>

<script runat="server">

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs)
       
        FileUpload1.SaveAs("C:\HRWebApplication\Law\" & FileUpload1.FileName)
       
        Dim SqlConn As New System.Data.SqlClient.SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\HRMS.mdf;Integrated Security=True;User Instance=False")
        SqlConn.Open () 
        Dim strSQL As String = ("Update LaborLaw set LaborLawFile ='Law\" & FileUpload1.FileName & "'")
        Dim SqlComm As New System.Data.SqlClient.SqlCommand(strSQL, SqlConn)
        SqlComm.ExecuteNonQuery ()
        Label1.Text = "Labor Law Updated Succesfully"
        GridView1.DataBind()
    End Sub
    
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        If Session.Contents("Logged") <> 1 Or Session.Contents("LoggedType") <> "Admin" Then
       
            Response.Redirect("SignIn.aspx")
       
        End If
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
            width: 199px;
        }
        .style13
        {
            width: 225px;
        }
        .style14
        {
            width: 275px;
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
                    <td style="text-align: left" colspan="4">
                        Manager Labor Law</td>
                </tr>
                <tr>
                    <td style="text-align: left" colspan="4">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                            BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" 
                            CellPadding="4" DataKeyNames="LaborRecordItem" DataSourceID="SqlDataSource1" 
                            ForeColor="Black" GridLines="Vertical">
                            <RowStyle BackColor="#F7F7DE" />
                            <Columns>
                                <asp:HyperLinkField DataNavigateUrlFields="LaborLawFile" 
                                    DataTextField="LaborLawFile" HeaderText="Download Link" Target="_blank" />
                            </Columns>
                            <FooterStyle BackColor="#CCCC99" />
                            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                            <AlternatingRowStyle BackColor="White" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            SelectCommand="SELECT [LaborRecordItem], [LaborLawFile] FROM [LaborLaw]">
                        </asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: left" class="style14">
                        Upload a new Labor Law file </td>
                    <td style="text-align: left" class="style13" colspan="2">
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </td>
                    <td style="text-align: left">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="FileUpload1" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: left" class="style12" colspan="2">
                        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Update" />
                    &nbsp;&nbsp;
                        <asp:Label ID="Label1" runat="server" style="background-color: #FFFF66"></asp:Label>
                    </td>
                    <td style="text-align: left" class="style12" colspan="2">
                        &nbsp;</td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td class="style9">
            <asp:HyperLink ID="HyperLink4" runat="server" 
                NavigateUrl="AManageCompanies.aspx" 
                style="color: #0000FF; background-color: #E5E5E5">Manage Companies</asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td class="style10">
            <asp:HyperLink ID="HyperLink6" runat="server" 
                NavigateUrl="AManagerLaborLaw.aspx" 
                style="color: #FF0000; background-color: #FFFF66">Manage Labor Law</asp:HyperLink>
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

