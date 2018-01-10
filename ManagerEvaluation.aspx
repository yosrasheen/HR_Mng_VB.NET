<%@ Page Title="" Language="VB" MasterPageFile="~/Site1.Master" %>

<script runat="server">

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        If TextBox2.Text = "" Then
            Label1.Text = "You have to enter Employee ID"
        Else
            Session.Contents("EEmpID") = 0
            Dim SqlConn As New System.Data.SqlClient.SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\HRMS.mdf;Integrated Security=True;User Instance=False")
            Dim strSQL As String = ("select * from Employee where EmployeeID =" & TextBox2.Text)
            Dim SqlComm As New System.Data.SqlClient.SqlCommand(strSQL, SqlConn)
            Dim dataAdapter As System.Data.SqlClient.SqlDataAdapter = _
            New System.Data.SqlClient.SqlDataAdapter(SqlComm)

            Dim dataSet As System.Data.DataSet = New System.Data.DataSet
            dataAdapter.Fill(dataSet)

            'Test The result
            If dataSet.Tables(0).Rows.Count <> 0 Then
                Session.Contents("EEmpID") = dataSet.Tables(0).Rows(0).Item(0)
                Label1.Text = ""
             
            Else
                Label1.Text = "Employee ID Not Valid"
           

            End If
        End If
    End Sub

    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim requestID As Integer
        Session.Contents("Eselected") = 1
        requestID = GridView1.SelectedDataKey.Value
        Session.Contents("EID") = requestID
    End Sub

    Protected Sub TextBox2_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs)

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
            Manager Control Panel</td>
        <td rowspan="9" class="style8" style="text-align: center">
            <table style="width:100%;">
                <tr>
                    <td colspan="2">
                       Emp #:
                        <asp:TextBox ID="TextBox2" runat="server" ontextchanged="TextBox2_TextChanged"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="TextBox2" ErrorMessage="*"></asp:RequiredFieldValidator>
                        &nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" style="font-weight: 700" 
                            Text="Search" onclick="Button1_Click" />
                        <br />
                        <asp:Label ID="Label1" runat="server" style="background-color: #FFFF00"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <br />
                        <asp:GridView ID="GridView1" runat="server" BackColor="White" 
                            BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                            DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" 
                            AutoGenerateColumns="False" Width="284px" AllowPaging="True" PageSize="5" 
                            DataKeyNames="RecordID" 
                            onselectedindexchanged="GridView1_SelectedIndexChanged">
                            <RowStyle BackColor="#F7F7DE" />
                            <Columns>
                                <asp:CommandField ShowSelectButton="True" />
                                <asp:BoundField DataField="EvDate" HeaderText="Evaluation Date" 
                                    SortExpression="EvDate" />
                                <asp:BoundField DataField="RecordID" HeaderText="RecordID" 
                                    SortExpression="RecordID" InsertVisible="False" ReadOnly="True" 
                                    Visible="False" />
                            </Columns>
                            <FooterStyle BackColor="#CCCC99" />
                            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                            <AlternatingRowStyle BackColor="White" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            
                            
                            
                            SelectCommand="SELECT EvDate, RecordID FROM EmployeeEvaluations WHERE (EmployeeID = @Emp)" 
                            OldValuesParameterFormatString="original_{0}">
                            <SelectParameters>
                                <asp:SessionParameter DefaultValue="0" Name="Emp" SessionField="EEmpID" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2">
                        After Selecting the Evaluation Date go to details                         
                        <asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="EvaluationDetails.aspx" 
                            Target="_blank">Here</asp:HyperLink>
                    </td>
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
                NavigateUrl="ManagerTraining.aspx">Manage Training</asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td class="style6">
            <asp:HyperLink ID="HyperLink8" runat="server" 
                NavigateUrl="ManagerEvaluation.aspx">Manage Evaluation</asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td class="style6">
            <asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="ManagerReports.aspx">Manage Reports</asp:HyperLink>
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
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

