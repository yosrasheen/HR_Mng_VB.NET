<%@ Page Title="" Language="VB" MasterPageFile="~/Site1.Master" %>

<script runat="server">

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        If TextBox2.Text = "" Or TextBox3.Text = "" Then
            label1.text = "Enter The From and To Dates to search for training courses"
        Else
            
        End If
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Response.Redirect("ManTraining2.aspx")
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
                    <td>
                        Manage Training - Previous Training Courses
                        <br />
                        <span class="style9">From Date (MM/dd/yyyy): </span>
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="style9" Width="102px"></asp:TextBox>
                        <span class="style9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; To Date(MM/dd/yyyy):
                        </span>
                        <asp:TextBox ID="TextBox3" runat="server" CssClass="style9" Width="82px"></asp:TextBox>
                        <span class="style9">&nbsp;&nbsp;
                        </span>
                        <asp:Button ID="Button1" runat="server" style="font-weight: 700" 
                            Text="Search" CssClass="style9" onclick="Button1_Click" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: left">
                        <asp:Label ID="Label1" runat="server" style="color: #FF0000"></asp:Label>
                        -
                        <asp:RangeValidator ID="RangeValidator1" runat="server" 
                            ControlToValidate="TextBox2" ErrorMessage="Enter Dates In Format (M/D/Y)" 
                            MaximumValue="1/1/2020" MinimumValue="1/1/2012" Type="Date"></asp:RangeValidator>
&nbsp;-
                        <asp:RangeValidator ID="RangeValidator2" runat="server" 
                            ControlToValidate="TextBox3" ErrorMessage="Enter Dates In Format (M/D/Y)" 
                            MaximumValue="1/1/2020" MinimumValue="1/1/2012" Type="Date"></asp:RangeValidator>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:GridView ID="GridView1" runat="server" BackColor="White" 
                            BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                            DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" 
                            AutoGenerateColumns="False" style="text-align: left; font-size: small;" Height="170px" 
                            PageSize="5" Width="581px" AllowPaging="True">
                            <RowStyle BackColor="#F7F7DE" />
                            <Columns>
                                <asp:BoundField DataField="CourseName" HeaderText="Name" 
                                    SortExpression="CourseName" />
                                <asp:BoundField DataField="StartDate" HeaderText="Start Date" 
                                    SortExpression="StartDate" />
                                <asp:BoundField DataField="EndDate" HeaderText="End Date" 
                                    SortExpression="EndDate" />
                                <asp:BoundField DataField="TTime" HeaderText="Time" SortExpression="TTime" />
                                <asp:BoundField DataField="MinimumCount" HeaderText="Min Count" 
                                    SortExpression="MinimumCount" />
                                <asp:BoundField DataField="MaximumCount" HeaderText="Max Count" 
                                    SortExpression="MaximumCount" />
                                <asp:BoundField DataField="Place" HeaderText="Place" SortExpression="Place" />
                            </Columns>
                            <FooterStyle BackColor="#CCCC99" />
                            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                            <AlternatingRowStyle BackColor="White" />
                        </asp:GridView>
                        <asp:Button ID="Button2" runat="server" Text="Add New Training Course" 
                            onclick="Button2_Click" CausesValidation="False" />
                        <br />
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            
                            
                            
                            
                            SelectCommand="SELECT CourseName, StartDate, EndDate, TTime, MinimumCount, MaximumCount, Place, Activated FROM TrainingCourses WHERE (StartDate &gt;= @d1) AND (StartDate &lt;= @d2)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="TextBox2" Name="d1" PropertyName="Text" />
                                <asp:ControlParameter ControlID="TextBox3" Name="d2" PropertyName="Text" />
                            </SelectParameters>
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

