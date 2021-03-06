﻿
<%@ Page Title="" Language="VB"  MasterPageFile="~/Site1.Master" %>
 
<script runat="server"  >
   
  

    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim requestID As Integer
        Session.Contents("selected") = 1
        requestID = GridView1.SelectedDataKey.Value
    
     
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        If Session.Contents("Selected") = 1 Then
            Dim SqlConn2 As New System.Data.SqlClient.SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\HRMS.mdf;Integrated Security=True;User Instance=False")
            Dim strSQL2 As String = ("Update VacationsRequests set RequestStatus = '" & DropDownList1.SelectedValue & "'  where requestID = " & GridView1.SelectedDataKey.Item(0))
            Dim SqlComm2 As New System.Data.SqlClient.SqlCommand(strSQL2, SqlConn2)
            SqlConn2.Open()
            SqlComm2.ExecuteNonQuery()
        
            Label2.Text = "Vacation Request Saved"
            Session.Contents("Selected") = 0
           
            '' تحديث الجريد من جديد 
            
                     
        
            GridView1.DataBind()
            
        Else
            Label2.Text = "You Have to select a vacation request first"
            Session.Contents("Selected") = 0
        End If
    End Sub

   
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)

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
        .style10
        {
            width: 343px;
        }
        .style11
        {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%;">
    <tr>
        <td class="style7">
            Manager Control Panel</td>
        <td rowspan="9" class="style8" style="text-align: center">
            <table style="width:100%;">
                <tr>
                    <td class="style11" colspan="2">
                        Manage Vacation Requests</td>
                </tr>
                <tr>
                    <td class="style11" colspan="2">
                        <asp:GridView ID="GridView1" runat="server" BackColor="White" 
                            BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                            DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" 
                            AutoGenerateColumns="False" DataKeyNames="RequestID" 
                            style="text-align: left; font-size: small;" Width="527px" 
                            AllowPaging="True" PageSize="5" 
                            
                            onselectedindexchanged="GridView1_SelectedIndexChanged">
                            <RowStyle BackColor="#F7F7DE" />
                            <Columns>
                                <asp:CommandField ShowSelectButton="True" />
                                <asp:BoundField DataField="EmployeeID" HeaderText="EmployeeID" 
                                    InsertVisible="False" ReadOnly="True" SortExpression="EmployeeID" />
                                <asp:BoundField DataField="EmpName" HeaderText="EmpName" 
                                    SortExpression="EmpName" />
                                <asp:BoundField DataField="RequestDate" HeaderText="Request Date" 
                                    SortExpression="RequestDate" />
                                <asp:BoundField DataField="VacationReason" HeaderText="Vacation Reason" 
                                    SortExpression="VacationReason" />
                                <asp:BoundField DataField="VacStart" HeaderText="Start Date" 
                                    SortExpression="VacStart" />
                                <asp:BoundField DataField="VacEnd" HeaderText="End Date" 
                                    SortExpression="VacEnd" />
                                <asp:BoundField DataField="RequestID" HeaderText="RequestID" 
                                    InsertVisible="False" ReadOnly="True" SortExpression="RequestID" 
                                    Visible="False" />
                            </Columns>
                            <FooterStyle BackColor="#CCCC99" />
                            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                            <AlternatingRowStyle BackColor="White" />
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td class="style10" style="text-align: left">
                        <br />
                        <br />
                    </td>
                    <td>
                        The selected request you want to
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                            <asp:ListItem>Approve</asp:ListItem>
                            <asp:ListItem>Disapprove</asp:ListItem>
                        </asp:DropDownList>
                        &nbsp;
                        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Save " />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label2" runat="server" 
                            style="color: #FF0000; background-color: #FFFF00"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        &nbsp;</td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td class="style6">
            <asp:HyperLink ID="HyperLink4" runat="server" 
                NavigateUrl="ManagerVacations.aspx">Manage Vacations</asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td class="style6">
            <asp:HyperLink ID="HyperLink6" runat="server" 
                NavigateUrl="~/ManagerTraining.aspx">Manage Training</asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td class="style6">
            <asp:HyperLink ID="HyperLink8" runat="server" 
                NavigateUrl="~/ManagerEvaluation.aspx">Manage Evaluation</asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td class="style6">
            <asp:HyperLink ID="HyperLink9" runat="server" 
                NavigateUrl="~/ManagerReports.aspx">Manage Reports</asp:HyperLink>
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
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            
                            
                            
                            SelectCommand="SELECT VacationsRequests.VacationReason, VacationsRequests.RequestDate, VacationsRequests.VacStart, VacationsRequests.VacEnd, VacationsRequests.RequestID, Employee.EmployeeID, Employee.EmpName FROM VacationsRequests INNER JOIN Employee ON VacationsRequests.EmployeeID = Employee.EmployeeID WHERE (VacationsRequests.RequestStatus = @m)" 
                            ConflictDetection="CompareAllValues" 
                            DeleteCommand="DELETE FROM [VacationsRequests] WHERE [RequestID] = @original_RequestID AND (([VacationReason] = @original_VacationReason) OR ([VacationReason] IS NULL AND @original_VacationReason IS NULL)) AND (([RequestDate] = @original_RequestDate) OR ([RequestDate] IS NULL AND @original_RequestDate IS NULL)) AND (([VacStart] = @original_VacStart) OR ([VacStart] IS NULL AND @original_VacStart IS NULL)) AND (([VacEnd] = @original_VacEnd) OR ([VacEnd] IS NULL AND @original_VacEnd IS NULL))" 
                            InsertCommand="INSERT INTO [VacationsRequests] ([VacationReason], [RequestDate], [VacStart], [VacEnd]) VALUES (@VacationReason, @RequestDate, @VacStart, @VacEnd)" 
                            OldValuesParameterFormatString="original_{0}" 
                            
                            
                            
                            UpdateCommand="UPDATE [VacationsRequests] SET [VacationReason] = @VacationReason, [RequestDate] = @RequestDate, [VacStart] = @VacStart, [VacEnd] = @VacEnd WHERE [RequestID] = @original_RequestID AND (([VacationReason] = @original_VacationReason) OR ([VacationReason] IS NULL AND @original_VacationReason IS NULL)) AND (([RequestDate] = @original_RequestDate) OR ([RequestDate] IS NULL AND @original_RequestDate IS NULL)) AND (([VacStart] = @original_VacStart) OR ([VacStart] IS NULL AND @original_VacStart IS NULL)) AND (([VacEnd] = @original_VacEnd) OR ([VacEnd] IS NULL AND @original_VacEnd IS NULL))">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="Pending" Name="m" />
                            </SelectParameters>
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
</asp:Content>

