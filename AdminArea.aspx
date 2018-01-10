<%@ Page Title="" Language="VB" MasterPageFile="~/Site1.Master" %>

<script runat="server">

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
                    <td>
                        Admin Menu<br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td>
                        <br />
                        <br />
                    </td>
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

