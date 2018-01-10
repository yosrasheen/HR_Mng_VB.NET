<%@ Page Title="" Language="VB" MasterPageFile="~/Site1.Master" %>

<script runat="server">

    Protected Sub SqlDataSource1_Selecting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.SqlDataSourceSelectingEventArgs)

    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs)

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
                        Manage Vacations<br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td>
                        <br />
                        <asp:GridView ID="GridView1" runat="server" BackColor="White" 
                            BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                            DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" 
                            AutoGenerateColumns="False" DataKeyNames="RequestID,EmployeeID" 
                            style="text-align: left; font-size: small;" Width="527px" 
                            AllowPaging="True" PageSize="5" 
                            
                          >
                            <RowStyle BackColor="#F7F7DE" />
                            <Columns>
                                <asp:BoundField DataField="EmployeeID" HeaderText="EmployeeID" 
                                    SortExpression="EmployeeID" InsertVisible="False" ReadOnly="True" />
                                <asp:BoundField DataField="EmpName" HeaderText="Name" 
                                    SortExpression="EmpName" />
                                <asp:BoundField DataField="RequestDate" HeaderText="Request Date" 
                                    SortExpression="RequestDate" />
                                <asp:BoundField DataField="VacationReason" HeaderText="Vacation Reason" 
                                    SortExpression="VacationReason" />
                                <asp:BoundField DataField="VacStart" HeaderText="Vacation Start" 
                                    SortExpression="VacStart" />
                                <asp:BoundField DataField="VacEnd" HeaderText="Vacation End" 
                                    SortExpression="VacEnd" />
                                <asp:BoundField DataField="RequestStatus" HeaderText="Request Status" 
                                    SortExpression="RequestStatus" />
                            </Columns>
                            <FooterStyle BackColor="#CCCC99" />
                            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                            <AlternatingRowStyle BackColor="White" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            
                            
                            
                            SelectCommand="SELECT VacationsRequests.VacationReason, VacationsRequests.RequestDate, VacationsRequests.VacStart, VacationsRequests.VacEnd, VacationsRequests.RequestID, Employee.EmployeeID, Employee.EmpName, VacationsRequests.RequestStatus FROM VacationsRequests INNER JOIN Employee ON VacationsRequests.EmployeeID = Employee.EmployeeID" 
                            ConflictDetection="CompareAllValues" 
                            DeleteCommand="DELETE FROM [VacationsRequests] WHERE [RequestID] = @original_RequestID AND (([VacationReason] = @original_VacationReason) OR ([VacationReason] IS NULL AND @original_VacationReason IS NULL)) AND (([RequestDate] = @original_RequestDate) OR ([RequestDate] IS NULL AND @original_RequestDate IS NULL)) AND (([VacStart] = @original_VacStart) OR ([VacStart] IS NULL AND @original_VacStart IS NULL)) AND (([VacEnd] = @original_VacEnd) OR ([VacEnd] IS NULL AND @original_VacEnd IS NULL))" 
                            InsertCommand="INSERT INTO [VacationsRequests] ([VacationReason], [RequestDate], [VacStart], [VacEnd]) VALUES (@VacationReason, @RequestDate, @VacStart, @VacEnd)" 
                            OldValuesParameterFormatString="original_{0}" 
                            
                            
                            
                            
                            UpdateCommand="UPDATE [VacationsRequests] SET [VacationReason] = @VacationReason, [RequestDate] = @RequestDate, [VacStart] = @VacStart, [VacEnd] = @VacEnd WHERE [RequestID] = @original_RequestID AND (([VacationReason] = @original_VacationReason) OR ([VacationReason] IS NULL AND @original_VacationReason IS NULL)) AND (([RequestDate] = @original_RequestDate) OR ([RequestDate] IS NULL AND @original_RequestDate IS NULL)) AND (([VacStart] = @original_VacStart) OR ([VacStart] IS NULL AND @original_VacStart IS NULL)) AND (([VacEnd] = @original_VacEnd) OR ([VacEnd] IS NULL AND @original_VacEnd IS NULL))">
                            <DeleteParameters>
                                <asp:Parameter Name="original_RequestID" Type="Int32" />
                                <asp:Parameter Name="original_VacationReason" Type="String" />
                                <asp:Parameter DbType="Date" Name="original_RequestDate" />
                                <asp:Parameter DbType="Date" Name="original_VacStart" />
                                <asp:Parameter DbType="Date" Name="original_VacEnd" />
                            </DeleteParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="VacationReason" Type="String" />
                                <asp:Parameter DbType="Date" Name="RequestDate" />
                                <asp:Parameter DbType="Date" Name="VacStart" />
                                <asp:Parameter DbType="Date" Name="VacEnd" />
                                <asp:Parameter Name="original_RequestID" Type="Int32" />
                                <asp:Parameter Name="original_VacationReason" Type="String" />
                                <asp:Parameter DbType="Date" Name="original_RequestDate" />
                                <asp:Parameter DbType="Date" Name="original_VacStart" />
                                <asp:Parameter DbType="Date" Name="original_VacEnd" />
                            </UpdateParameters>
                            <InsertParameters>
                                <asp:Parameter Name="VacationReason" Type="String" />
                                <asp:Parameter DbType="Date" Name="RequestDate" />
                                <asp:Parameter DbType="Date" Name="VacStart" />
                                <asp:Parameter DbType="Date" Name="VacEnd" />
                            </InsertParameters>
                        </asp:SqlDataSource>
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

