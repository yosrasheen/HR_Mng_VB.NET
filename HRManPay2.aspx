<%@ Page Title="" Language="VB" MasterPageFile="~/Site1.Master" %>

<script runat="server">

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        TextBox2.Text = ""
        TextBox3.Text = ""
        Label1.Text = ""
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs)
      
        Dim SqlConn As New System.Data.SqlClient.SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\HRMS.mdf;Integrated Security=True;User Instance=False")
        SqlConn.Open()
        Dim strSQL As String = ("Update PayrollSettings set AllowedAbsent =" & TextBox2.Text & ", CutPerAbsent = " & TextBox3.Text & "Where JobType = '" & DropDownList1.SelectedValue & "'")
        Dim SqlComm As New System.Data.SqlClient.SqlCommand(strSQL, SqlConn)
        SqlComm.ExecuteNonQuery()
        Label1.Text = "The Payroll Setting Modified"
        TextBox2.Text = ""
        TextBox3.Text = ""
        DropDownList1.DataBind()
        GridView1.DataBind()
        
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
            text-align: left;
        }
        .style10
        {
            text-align: left;
            height: 23px;
        }
        .style11
        {
            text-align: left;
            width: 164px;
            color: #000000;
            font-weight: normal;
        }
        .style12
        {
            text-align: left;
            width: 164px;
            color: #000000;
            font-weight: normal;
            height: 16px;
        }
        .style13
        {
            text-align: left;
            height: 16px;
        }
        .style14
        {
            text-align: left;
            height: 23px;
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
                    <td colspan="2">
                        Manage Payroll</td>
                </tr>
                <tr>
                    <td class="style11">
                        Jop Type</td>
                    <td class="style9">
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>Manager</asp:ListItem>
                            <asp:ListItem>HR Manager</asp:ListItem>
                            <asp:ListItem>Employee</asp:ListItem>
                            <asp:ListItem>Others</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="DropDownList1" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style11">
                        Allowed Absent Days</td>
                    <td class="style9">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="TextBox2" ErrorMessage="*"></asp:RequiredFieldValidator>
                        &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
                            runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter Numbers" 
                            ValidationExpression="\d{1,3}"></asp:RegularExpressionValidator>
&nbsp;(days/Year)</td>
                </tr>
                <tr>
                    <td class="style11">
                        Cut Percent Per Day
                    </td>
                    <td class="style9">
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="TextBox3" ErrorMessage="*"></asp:RequiredFieldValidator>
                        &nbsp;<asp:RangeValidator ID="RangeValidator1" runat="server" 
                            ControlToValidate="TextBox3" ErrorMessage="Enter Money" MaximumValue="40" 
                            MinimumValue="1" Type="Double"></asp:RangeValidator>
&nbsp;
                        In S.R.</td>
                </tr>
                <tr>
                    <td class="style12">
                    </td>
                    <td class="style13">
                        <asp:Button ID="Button1" runat="server" Text="Save Changes" 
                            onclick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" Text="Cancel" onclick="Button2_Click" 
                            CausesValidation="False" />
                    </td>
                </tr>
                <tr>
                    <td class="style10">
                        </td>
                    <td class="style14">
                        <asp:Label ID="Label1" runat="server" style="color: #FF0000"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style10" colspan="2">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                            BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" 
                            CellPadding="4" DataKeyNames="SettingID" DataSourceID="SqlDataSource1" 
                            ForeColor="Black" GridLines="Vertical">
                            <RowStyle BackColor="#F7F7DE" />
                            <Columns>
                                <asp:BoundField DataField="JobType" HeaderText="Job Type" 
                                    SortExpression="JobType" />
                                <asp:BoundField DataField="AllowedAbsent" 
                                    HeaderText="Allowed Absent (days/Year)" SortExpression="AllowedAbsent" />
                                <asp:BoundField DataField="CutPerAbsent" HeaderText="Cut / Absent Day (S.R.)" 
                                    SortExpression="CutPerAbsent" />
                            </Columns>
                            <FooterStyle BackColor="#CCCC99" />
                            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                            <AlternatingRowStyle BackColor="White" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            SelectCommand="SELECT [JobType], [AllowedAbsent], [CutPerAbsent], [SettingID] FROM [PayRollSettings]">
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

