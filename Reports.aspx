<%@ Page Title="" Language="VB" MasterPageFile="~/Site1.Master" %>

<script runat="server">

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
            HR Control Panel</td>
        <td rowspan="9" class="style8" style="text-align: center">
            <table style="width:100%;">
                <tr>
                    <td>
                        Manage Reports<br />
                        <br />
                        <span class="style9">Enter Employee Name or Employee ID to Print His Report<br />
                        </span>Emp #:
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp; Emp Name:
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
&nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" style="font-weight: 700" 
                            Text="Issue Report" />
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
        <td class="style6">
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="HRManPay.aspx">Manage Payroll</asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td class="style6">
            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="ManVac.aspx">Manage Vacations</asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td class="style6">
            <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="ManAtt.aspx">Manage Attendence</asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td class="style6">
            <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="ManTraining.aspx">Manage Training</asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td class="style6">
            <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="ManReq.aspx">Manage Reqruitment</asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td class="style6">
            <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="ManEval.aspx">Manage Evaluation</asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td class="style6">
            <asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="Reports.aspx">Manage Reports</asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td class="style6">
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

