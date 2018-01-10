<%@ Page Title="" Language="VB" MasterPageFile="~/Site1.Master" %>

<script runat="server">

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs)

    End Sub
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
        .style8
        {
            font-weight: bold;
            color: #990000;
            margin-right: 0px;
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
                    Employee Vacations</td>
                <td class="style9">
                    <b><span class="style10">New Vacation Request</span><br class="style10" />
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
                    <asp:Button ID="Button1" runat="server" CssClass="style8" Text="New Vacation" 
                        onclick="Button1_Click" />
                    <br />
                    <br />
                    <asp:Button ID="Button2" runat="server" CssClass="style8" 
                        Text="Previous Vacations" Width="132px" />
                </td>
                <td class="style9">
                    Job Name</td>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="----------"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style9">
                    Vacation Reason</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>Eargent</asp:ListItem>
                        <asp:ListItem>Sick Leave</asp:ListItem>
                        <asp:ListItem>Exiplicity</asp:ListItem>
                        <asp:ListItem>No Reason</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style9">
                    Start Date</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style6" rowspan="2">
                    &nbsp;</td>
                <td class="style9">
                    End Date</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style9">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button3" runat="server" Text="Send Request" />
                </td>
            </tr>
            </table>
    </div>
</asp:Content>

