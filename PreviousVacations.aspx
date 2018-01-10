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
                <td class="style7" rowspan="2">
                    Employee Vacations</td>
                <td class="style9">
                    <b><span class="style10">Previous Vacations</span><br class="style10" />
                    </b>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9" colspan="2" rowspan="3">
                    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" 
                        AutoGenerateRows="False" CellPadding="4" DataSourceID="SqlDataSource1" 
                        ForeColor="#333333" GridLines="None" Height="50px" Width="408px">
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
                        <RowStyle BackColor="#E3EAEB" />
                        <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <Fields>
                            <asp:BoundField DataField="VacationReason" HeaderText="Vacation Reason" 
                                SortExpression="VacationReason" />
                            <asp:BoundField DataField="RequestDate" HeaderText="Request Date" 
                                SortExpression="RequestDate" />
                            <asp:BoundField DataField="VacStart" HeaderText="Start Date" 
                                SortExpression="VacStart" />
                            <asp:BoundField DataField="VacEnd" HeaderText="End Date" 
                                SortExpression="VacEnd" />
                        </Fields>
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <EditRowStyle BackColor="#7C6F57" />
                        <AlternatingRowStyle BackColor="White" />
                    </asp:DetailsView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT [VacationReason], [RequestDate], [VacStart], [VacEnd] FROM [VacationsRequests]">
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="style6" rowspan="2">
                    <asp:Button ID="Button1" runat="server" CssClass="style8" Text="New Vacation" 
                        onclick="Button1_Click" />
                    <br />
                    <br />
                    <asp:Button ID="Button2" runat="server" CssClass="style8" 
                        Text="Previous Vacations" Width="132px" />
                </td>
            </tr>
            <tr>
                <td class="style6" rowspan="2">
                    &nbsp;</td>
            </tr>
            </table>
    </div>
</asp:Content>

