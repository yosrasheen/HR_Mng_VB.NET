<%@ Page Title="" Language="VB" MasterPageFile="~/Site1.Master" %>

<script runat="server">

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Response.Redirect("HRManPay2.aspx")
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
                        Manage Payroll</td>
                </tr>
                <tr>
                    <td>
                        <asp:GridView ID="GridView1" runat="server" BackColor="White" 
                            BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                            DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" 
                            AutoGenerateColumns="False" DataKeyNames="EmployeeID" 
                            style="text-align: left; font-size: small;" AllowPaging="True" PageSize="8">
                            <RowStyle BackColor="#F7F7DE" />
                            <Columns>
                                <asp:BoundField DataField="EmployeeID" HeaderText="Employee #" 
                                    InsertVisible="False" ReadOnly="True" SortExpression="EmployeeID" />
                                <asp:BoundField DataField="MainSalary" HeaderText="Main Salary" 
                                    SortExpression="MainSalary" />
                                <asp:BoundField DataField="Transportation" HeaderText="Transportation" 
                                    SortExpression="Transportation" />
                                <asp:BoundField DataField="Housing" HeaderText="Housing" 
                                    SortExpression="Housing" />
                                <asp:BoundField DataField="Schooling" HeaderText="Schooling" 
                                    SortExpression="Schooling" />
                                <asp:BoundField DataField="HealthInsurance" HeaderText="Health Insurance" 
                                    SortExpression="HealthInsurance" />
                                <asp:BoundField DataField="HealthInsuranceClass" HeaderText="Insurance Level" 
                                    SortExpression="HealthInsuranceClass" />
                            </Columns>
                            <FooterStyle BackColor="#CCCC99" />
                            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                            <AlternatingRowStyle BackColor="White" />
                        </asp:GridView>
                        <asp:Button ID="Button1" runat="server" Height="26px" style="font-weight: 700" 
                            Text="Edit Payroll Settings" onclick="Button1_Click" />
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            SelectCommand="SELECT Employee.EmpName, Employee.EmployeeID, Payroll.MainSalary, Payroll.Transportation, Payroll.Housing, Payroll.Schooling, Payroll.HealthInsurance, Payroll.HealthInsuranceClass FROM Employee INNER JOIN Payroll ON Employee.EmployeeID = Payroll.EmployeeID"></asp:SqlDataSource>
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

