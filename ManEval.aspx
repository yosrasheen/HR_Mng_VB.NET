<%@ Page Title="" Language="VB" MasterPageFile="~/Site1.Master" %>

<script runat="server">

    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs)

    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        TextBox2.Text = ""
        TextBox3.Text = ""
        TextBox4.Text = ""
        Label1.text = ""
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs)
         
        Dim SqlConn As New System.Data.SqlClient.SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\HRMS.mdf;Integrated Security=True;User Instance=False")
        SqlConn.Open()
        Dim strSQL As String = ("Insert Into EmployeeEvaluations (EmployeeID, EvDate, Maham, Khadamat, Sejellat, Syasat, Maharat, Tahfeez, Lateef, Computer, Raghba, Indebat, Alaqat, Team, Customers, Itesal, TimeUse, Mobadara, Takayyof, Qararat, OutsideLook, Quality, SpecialJobDemands, SpecialNotes, Recommendations) Values (" & DropDownList1.SelectedValue & ",'" & Format(Now, "MM/dd/yyyy") & "'," & DropDownList2.SelectedValue & "," & DropDownList3.SelectedValue & "," & DropDownList4.SelectedValue & "," & DropDownList5.SelectedValue & "," & DropDownList6.SelectedValue & "," & DropDownList7.SelectedValue & "," & DropDownList8.SelectedValue & "," & DropDownList9.SelectedValue & "," & DropDownList10.SelectedValue & "," & DropDownList11.SelectedValue & "," & DropDownList12.SelectedValue & "," & DropDownList13.SelectedValue & "," & DropDownList14.SelectedValue & "," & DropDownList15.SelectedValue & "," & DropDownList16.SelectedValue & "," & DropDownList17.SelectedValue & "," & DropDownList18.SelectedValue & "," & DropDownList19.SelectedValue & "," & DropDownList20.SelectedValue & "," & DropDownList21.SelectedValue & ",'" & TextBox2.Text & "','" & TextBox3.Text & "','" & TextBox4.Text & "')")
        Dim SqlComm As New System.Data.SqlClient.SqlCommand(strSQL, SqlConn)
        SqlComm.ExecuteNonQuery()
        Label1.Text = "Evaluation Succesfully Saved"
        TextBox2.Text = ""
        TextBox3.Text = ""
        TextBox4.Text = ""
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
            text-align: left;
            font-size: medium;
        }
        .style11
        {
            color: #000000;
            font-weight: normal;
        }
        .style12
        {
            text-align: left;
            font-size: small;
        }
        .style13
        {
            font-size: small;
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
                    <td colspan="6">
                        Manage Evaluation<br />
                        Insert Evaluation for Employee
                        <asp:DropDownList ID="DropDownList1" runat="server" 
                            DataSourceID="SqlDataSource1" DataTextField="EmpName" 
                            DataValueField="EmployeeID">
                        </asp:DropDownList>
                    &nbsp; (1- Excellent , 5-Very Week)</td>
                </tr>
                <tr class="style11">
                    <td class="style12">
                        Committed to the tasks functional<br />
                    </td>
                    <td class="style10">
                        <asp:DropDownList ID="DropDownList2" runat="server" CssClass="style13">
                            <asp:ListItem Value="1">1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem Value="5">5 </asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="style12">
                        &nbsp;</td>
                    <td class="style12">
                        Performs Services Help</td>
                    <td class="style10">
                        <asp:DropDownList ID="DropDownList3" runat="server" CssClass="style13">
                            <asp:ListItem Value="1">1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem Value="5">5 </asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="style12">
                        &nbsp;</td>
                </tr>
                <tr class="style11">
                    <td class="style12">
                        Keep Good Records</td>
                    <td class="style10">
                        <asp:DropDownList ID="DropDownList4" runat="server" CssClass="style13">
                            <asp:ListItem Value="1">1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem Value="5">5 </asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="style12">
                        &nbsp;</td>
                    <td class="style12">
                        Adhere to policies</td>
                    <td class="style10">
                        <asp:DropDownList ID="DropDownList5" runat="server" CssClass="style13">
                            <asp:ListItem Value="1">1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem Value="5">5 </asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="style12">
                        &nbsp;</td>
                </tr>
                <tr class="style11">
                    <td class="style12">
                        Has good organizational skills</td>
                    <td class="style10">
                        <asp:DropDownList ID="DropDownList6" runat="server" CssClass="style13">
                            <asp:ListItem Value="1">1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem Value="5">5 </asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="style12">
                        &nbsp;</td>
                    <td class="style12">
                        Self - motivation</td>
                    <td class="style10">
                        <asp:DropDownList ID="DropDownList7" runat="server" CssClass="style13">
                            <asp:ListItem Value="1">1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem Value="5">5 </asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="style12">
                        &nbsp;</td>
                </tr>
                <tr class="style11">
                    <td class="style12">
                        Employee nice and positive in his work</td>
                    <td class="style10">
                        <asp:DropDownList ID="DropDownList8" runat="server" CssClass="style13">
                            <asp:ListItem Value="1">1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem Value="5">5 </asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="style12">
                        &nbsp;</td>
                    <td class="style12">
                        Uses computer programs to effeciency</td>
                    <td class="style10">
                        <asp:DropDownList ID="DropDownList9" runat="server" CssClass="style13">
                            <asp:ListItem Value="1">1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem Value="5">5 </asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="style12">
                        &nbsp;</td>
                </tr>
                <tr class="style11">
                    <td class="style12">
                        what causes the desire to ask him
                    </td>
                    <td class="style10">
                        <asp:DropDownList ID="DropDownList10" runat="server" CssClass="style13">
                            <asp:ListItem Value="1">1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem Value="5">5 </asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="style12">
                        &nbsp;</td>
                    <td class="style12">
                        Works in accordance with disiplines</td>
                    <td class="style10">
                        <asp:DropDownList ID="DropDownList11" runat="server" CssClass="style13">
                            <asp:ListItem Value="1">1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem Value="5">5 </asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="style12">
                        &nbsp;</td>
                </tr>
                <tr class="style11">
                    <td class="style12">
                        Relathionships with other stass members</td>
                    <td class="style10">
                        <asp:DropDownList ID="DropDownList12" runat="server" CssClass="style13">
                            <asp:ListItem Value="1">1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem Value="5">5 </asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="style12">
                        &nbsp;</td>
                    <td class="style12">
                        team work
                    </td>
                    <td class="style10">
                        <asp:DropDownList ID="DropDownList13" runat="server" CssClass="style13">
                            <asp:ListItem Value="1">1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem Value="5">5 </asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="style12">
                        &nbsp;</td>
                </tr>
                <tr class="style11">
                    <td class="style12">
                        customer services</td>
                    <td class="style10">
                        <asp:DropDownList ID="DropDownList14" runat="server" CssClass="style13">
                            <asp:ListItem Value="1">1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem Value="5">5 </asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="style12">
                        &nbsp;</td>
                    <td class="style12">
                        communication skills</td>
                    <td class="style10">
                        <asp:DropDownList ID="DropDownList15" runat="server" CssClass="style13">
                            <asp:ListItem Value="1">1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem Value="5">5 </asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="style12">
                        &nbsp;</td>
                </tr>
                <tr class="style11">
                    <td class="style12">
                        Use of Time</td>
                    <td class="style10">
                        <asp:DropDownList ID="DropDownList16" runat="server" CssClass="style13">
                            <asp:ListItem Value="1">1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem Value="5">5 </asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="style12">
                        &nbsp;</td>
                    <td class="style12">
                        Initiative</td>
                    <td class="style10">
                        <asp:DropDownList ID="DropDownList17" runat="server" CssClass="style13">
                            <asp:ListItem Value="1">1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem Value="5">5 </asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="style12">
                        &nbsp;</td>
                </tr>
                <tr class="style11">
                    <td class="style12">
                        Adapt to change</td>
                    <td class="style10">
                        <asp:DropDownList ID="DropDownList18" runat="server" CssClass="style13">
                            <asp:ListItem Value="1">1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem Value="5">5 </asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="style12">
                        &nbsp;</td>
                    <td class="style12">
                        Desision Making</td>
                    <td class="style10">
                        <asp:DropDownList ID="DropDownList19" runat="server" CssClass="style13">
                            <asp:ListItem Value="1">1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem Value="5">5 </asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="style12">
                        &nbsp;</td>
                </tr>
                <tr class="style11">
                    <td class="style12">
                        External appearence of decent</td>
                    <td class="style10">
                        <asp:DropDownList ID="DropDownList20" runat="server" CssClass="style13">
                            <asp:ListItem Value="1">1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem Value="5">5 </asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="style12">
                        &nbsp;</td>
                    <td class="style12">
                        Quality of work
                    </td>
                    <td class="style10">
                        <asp:DropDownList ID="DropDownList21" runat="server" CssClass="style13">
                            <asp:ListItem Value="1">1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem Value="5">5 </asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="style12">
                        &nbsp;</td>
                </tr>
                <tr class="style11">
                    <td class="style12">
                        Special Demands</td>
                    <td class="style12" colspan="4">
                        <asp:TextBox ID="TextBox2" runat="server" style="margin-left: 0px" 
                            Width="284px"></asp:TextBox>
                    </td>
                    <td class="style12">
                        &nbsp;</td>
                </tr>
                <tr class="style11">
                    <td class="style12">
                        Special Notes</td>
                    <td class="style12" colspan="4">
                        <asp:TextBox ID="TextBox3" runat="server" style="margin-left: 0px" 
                            Width="284px"></asp:TextBox>
                    </td>
                    <td class="style12">
                        &nbsp;</td>
                </tr>
                <tr class="style11">
                    <td class="style12">
                        Recommendations</td>
                    <td class="style12" colspan="4">
                        <asp:TextBox ID="TextBox4" runat="server" style="margin-left: 0px" 
                            Width="284px"></asp:TextBox>
                    </td>
                    <td class="style12">
                        &nbsp;</td>
                </tr>
                <tr class="style11">
                    <td class="style12">
                        &nbsp;</td>
                    <td class="style12" colspan="4">
                        <asp:Button ID="Button1" runat="server" Text="Save" onclick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Cancel" />
                    </td>
                    <td class="style12">
                        &nbsp;</td>
                </tr>
                <tr class="style11">
                    <td class="style12">
                        &nbsp;</td>
                    <td class="style12" colspan="4">
                        <asp:Label ID="Label1" runat="server" style="font-weight: 700; color: #FF0000"></asp:Label>
                    </td>
                    <td class="style12">
                        &nbsp;</td>
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT [EmployeeID], [EmpName] FROM [Employee]">
            </asp:SqlDataSource>
        </td>
    </tr>
</table>
</asp:Content>

