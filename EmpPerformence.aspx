<%@ Page Title="" Language="VB" MasterPageFile="~/Site1.Master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
        {
            width: 165px;
            background-color: #C0C0C0;
        }
        .style7
        {
            width: 165px;
            color: #990000;
            font-weight: bold;
            background-color: #C0C0C0;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <table style="width:100%;">
            <tr>
                <td class="style7">
                    Employee Performence</td>
                <td rowspan="3">
                    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                        BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" 
                        CellPadding="3" DataSourceID="SqlDataSource1" 
                        GridLines="Vertical" Height="169px" Width="561px" AllowPaging="True">
                        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <Fields>
                            <asp:BoundField DataField="EvDate" HeaderText="Evaluation Date" 
                                SortExpression="EvDate" />
                            <asp:BoundField DataField="EvDetails" HeaderText="Evaluation Details" 
                                SortExpression="EvDetails" />
                        </Fields>
                        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                        <EditRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                        <AlternatingRowStyle BackColor="#DCDCDC" />
                    </asp:DetailsView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT [EvDate], [EvDetails] FROM [EmployeeEvaluations]">
                    </asp:SqlDataSource>
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
        </table>
    </div>
</asp:Content>

