<%@ Page Title="" Language="VB" MasterPageFile="~/Site1.Master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
        {
            width: 164px;
            background-color: #C0C0C0;
        }
        .style7
        {
            width: 164px;
            color: #990000;
            font-weight: bold;
            background-color: #C0C0C0;
        }
        .style9
        {
            width: 218px;
        }
        .style10
        {
            color: #990000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <table style="width:100%;">
            <tr>
                <td class="style7" rowspan="4">
                    Employee Payroll</td>
                <td class="style9">
                    <b><span class="style10">Payroll Details</span><br class="style10" />
                    </b>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9">
                    Employee ID</td>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="----------"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style9">
                    Name</td>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="----------"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style9">
                    Department</td>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="----------"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style6" rowspan="3">
                    <br />
                    <br />
                    <br />
                </td>
                <td class="style9">
                    Monthly Salary</td>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="----------"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style9">
                    Housing</td>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="---------"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style9">
                    Trasportation</td>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="---------"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style6" rowspan="2">
                    &nbsp;</td>
                <td class="style9">
                    Schooling</td>
                <td>
                    <asp:Label ID="Label7" runat="server" Text="---------"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style9">
                    Travelling</td>
                <td>
                    <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            </table>
    </div>
</asp:Content>

