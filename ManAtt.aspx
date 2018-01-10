<%@ Page Title="" Language="VB" MasterPageFile="~/Site1.Master" %>

<script runat="server">

   

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        If TextBox2.Text = "" Then
            label1.text = "Enter employee ID for that"
        Else
            GridView1.DataBind()
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
                        Manage Attendence<br />
                        <br />
                        <span class="style9">Enter Employee ID to display his 
                        Attendence Records: </span>
                        <br />
                        Emp #:
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        &nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" style="font-weight: 700" 
                            Text="Search" onclick="Button1_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" style="color: #FF0000"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="margin-left: 40px">
                        <asp:GridView ID="GridView1" runat="server" BackColor="White" 
                            BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                            DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" 
                            AutoGenerateColumns="False" DataKeyNames="RecordID" 
                            style="text-align: left; font-size: small;" Width="527px" 
                            AllowPaging="True" PageSize="8">
                            <RowStyle BackColor="#F7F7DE" />
                            <Columns>
                                <asp:CommandField ShowEditButton="True" />
                                <asp:BoundField DataField="AttDate" HeaderText="AttDate" 
                                    SortExpression="AttDate" />
                                <asp:BoundField DataField="AttTime" HeaderText="AttTime" 
                                    SortExpression="AttTime" />
                                <asp:BoundField DataField="LeaveTime" HeaderText="LeaveTime" 
                                    SortExpression="LeaveTime" />
                                <asp:BoundField DataField="RecordID" HeaderText="RecordID" 
                                    InsertVisible="False" ReadOnly="True" SortExpression="RecordID" 
                                    Visible="False" />
                            </Columns>
                            <FooterStyle BackColor="#CCCC99" />
                            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                            <AlternatingRowStyle BackColor="White" />
                        </asp:GridView>
                        <br />
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            
                            
                            
                            SelectCommand="SELECT AttDate, AttTime, LeaveTime, RecordID FROM Attendence WHERE (EmpID = @EmpID)" 
                            ConflictDetection="CompareAllValues" 
                            DeleteCommand="DELETE FROM [Attendence] WHERE [RecordID] = @original_RecordID AND (([AttDate] = @original_AttDate) OR ([AttDate] IS NULL AND @original_AttDate IS NULL)) AND (([AttTime] = @original_AttTime) OR ([AttTime] IS NULL AND @original_AttTime IS NULL)) AND (([LeaveTime] = @original_LeaveTime) OR ([LeaveTime] IS NULL AND @original_LeaveTime IS NULL))" 
                            InsertCommand="INSERT INTO [Attendence] ([AttDate], [AttTime], [LeaveTime]) VALUES (@AttDate, @AttTime, @LeaveTime)" 
                            OldValuesParameterFormatString="original_{0}" 
                            
                            UpdateCommand="UPDATE [Attendence] SET [AttDate] = @AttDate, [AttTime] = @AttTime, [LeaveTime] = @LeaveTime WHERE [RecordID] = @original_RecordID AND (([AttDate] = @original_AttDate) OR ([AttDate] IS NULL AND @original_AttDate IS NULL)) AND (([AttTime] = @original_AttTime) OR ([AttTime] IS NULL AND @original_AttTime IS NULL)) AND (([LeaveTime] = @original_LeaveTime) OR ([LeaveTime] IS NULL AND @original_LeaveTime IS NULL))">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="TextBox2" DefaultValue="0" Name="EmpID" 
                                    PropertyName="Text" Type="Int32" />
                            </SelectParameters>
                            <DeleteParameters>
                                <asp:Parameter Name="original_RecordID" Type="Int32" />
                                <asp:Parameter DbType="Date" Name="original_AttDate" />
                                <asp:Parameter DbType="Time" Name="original_AttTime" />
                                <asp:Parameter DbType="Time" Name="original_LeaveTime" />
                            </DeleteParameters>
                            <UpdateParameters>
                                <asp:Parameter DbType="Date" Name="AttDate" />
                                <asp:Parameter DbType="Time" Name="AttTime" />
                                <asp:Parameter DbType="Time" Name="LeaveTime" />
                                <asp:Parameter Name="original_RecordID" Type="Int32" />
                                <asp:Parameter DbType="Date" Name="original_AttDate" />
                                <asp:Parameter DbType="Time" Name="original_AttTime" />
                                <asp:Parameter DbType="Time" Name="original_LeaveTime" />
                            </UpdateParameters>
                            <InsertParameters>
                                <asp:Parameter DbType="Date" Name="AttDate" />
                                <asp:Parameter DbType="Time" Name="AttTime" />
                                <asp:Parameter DbType="Time" Name="LeaveTime" />
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

