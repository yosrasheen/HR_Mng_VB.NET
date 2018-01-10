<%@ Page Title="" Language="VB" MasterPageFile="~/Site1.Master" %>

<script runat="server">

    Protected Sub DetailsView1_PageIndexChanging(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.DetailsViewPageEventArgs)

    End Sub
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
                    &nbsp;</td>
                <td class="style7">
                    Available Courses</td>
                <td rowspan="3">
                    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                        BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" 
                        CellPadding="3" DataKeyNames="TrainCourseID" DataSourceID="SqlDataSource1" 
                        GridLines="Vertical" Height="50px" Width="344px">
                        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <Fields>
                            <asp:BoundField DataField="CourseName" HeaderText="Course Name" 
                                SortExpression="CourseName" />
                            <asp:BoundField DataField="StartDate" HeaderText="Start Date" 
                                SortExpression="StartDate" />
                            <asp:BoundField DataField="EndDate" HeaderText="End Date" 
                                SortExpression="EndDate" />
                            <asp:BoundField DataField="TTime" HeaderText="Time" SortExpression="TTime" />
                            <asp:BoundField DataField="MinimumCount" HeaderText="Minimum Count" 
                                SortExpression="MinimumCount" />
                            <asp:BoundField DataField="MaximumCount" HeaderText="Maximum Count" 
                                SortExpression="MaximumCount" />
                            <asp:BoundField DataField="Place" HeaderText="Place" SortExpression="Place" />
                            <asp:CommandField HeaderText="Request Course" NewText="Request The Course" 
                                ShowInsertButton="True" />
                            <asp:CommandField HeaderText="Cancel" NewText="Cancel" 
                                ShowInsertButton="True" />
                        </Fields>
                        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                        <EditRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                        <AlternatingRowStyle BackColor="#DCDCDC" />
                    </asp:DetailsView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT [TrainCourseID], [CourseName], [Fees], [StartDate], [EndDate], [TTime], [MinimumCount], [MaximumCount], [Place] FROM [TrainingCourses] WHERE ([Activated] = @Activated)">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="True" Name="Activated" Type="Boolean" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="style7">
                    Employee Training<br />
                    <br />
                    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="MyRequests.aspx">My Requests</asp:HyperLink>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
                <td class="style6">
                    <asp:DataList ID="DataList1" runat="server" DataKeyField="TrainCourseID" 
                        DataSourceID="SqlDataSource2" Width="120px">
                        <ItemTemplate>
&nbsp;<asp:Label ID="CourseNameLabel" runat="server" style="color: #990000" 
                                Text='<%# Eval("CourseName") %>' />
                            <br />
                            <br />
                        </ItemTemplate>
                    </asp:DataList>
                    <br />
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT [TrainCourseID], [CourseName] FROM [TrainingCourses] WHERE ([Activated] = @Activated)">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="True" Name="Activated" Type="Boolean" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="style6">
                    &nbsp;</td>
                <td class="style6">
                    &nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>

