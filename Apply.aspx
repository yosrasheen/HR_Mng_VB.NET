<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Apply.aspx.vb" Inherits="Applicants" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 191px;
        }
        .style2
        {
            width: 191px;
            color: #990000;
            font-weight: bold;
        }
        .style3
        {
            width: 260px;
        }
        .style4
        {
            font-weight: bold;
            color: #990000;
        }
        .style5
        {
            width: 91px;
        }
        .style6
        {
            height: 234px;
        }
        .style8
        {
            width: 204px;
        }
        .style9
        {
            width: 216px;
        }
        .style10
        {
            width: 216px;
            color: #FF0000;
        }
    </style>
</head>
<body bgcolor="#e2e3e5">
    <form id="form1" runat="server">
    <div>
    
        <table style="width:100%;">
            <tr>
                <td class="style2">
                    Apply for Job</td>
                <td class="style4">
                    &nbsp;</td>
                <td class="style5">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
                <td class="style5">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style6" colspan="4">
                    <table style="width:100%;">
                        <tr>
                            <td class="style8">
                                Jobs Available In that cpmpany</td>
                            <td class="style9">
                                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                                    DataSourceID="SqlDataSource1" DataTextField="JobRequired" 
                                    DataValueField="VacancyID">
                                </asp:DropDownList>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="DropDownList1" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style8">
                                Your CV </td>
                            <td class="style9">
                                <asp:FileUpload ID="FileUpload1" runat="server" Width="278px" />
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                    ControlToValidate="FileUpload1" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style8">
                                &nbsp;</td>
                            <td class="style10">
                                (note: your CV must be as Acrobat Format&nbsp; - .pdf )</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style8">
                                &nbsp;</td>
                            <td class="style9">
                                <asp:Button ID="Button1" runat="server" style="font-weight: 700" 
                                    Text="Confirm Apply" />
                            </td>
                            <td>
                                <asp:Label ID="Label1" runat="server" style="font-weight: 700; color: #FF0000"></asp:Label>
                            </td>
                        </tr>
                    </table>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td class="style3">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT [VacancyID], [JobRequired] FROM [Vacancies] WHERE (([CompanyID] = @CompanyID) AND ([Stataus] = @Stataus))">
                        <SelectParameters>
                            <asp:SessionParameter DefaultValue="0" Name="CompanyID" 
                                SessionField="CompanyID" Type="Int32" />
                            <asp:Parameter DefaultValue="Available" Name="Stataus" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
