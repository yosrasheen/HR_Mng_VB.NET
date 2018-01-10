<%@ Page Title="" Language="VB" ClassName="ConnectionFile.vb"  MasterPageFile="~/Site1.Master" %>

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
                    &nbsp;</td>
                <td class="style7">
                    My Requests</td>
                <td rowspan="3">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" 
                        CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" 
                        GridLines="Vertical">
                        <RowStyle BackColor="#F7F7DE" />
                        <Columns>
                            <asp:BoundField DataField="CourseName" HeaderText="CourseName" 
                                SortExpression="CourseName" />
                            <asp:BoundField DataField="RequestDate" HeaderText="RequestDate" 
                                SortExpression="RequestDate" />
                            <asp:BoundField DataField="RequestStatus" HeaderText="RequestStatus" 
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
                        SelectCommand="SELECT TrainingCourses.CourseName, EmpTrainingRequests.RequestDate, EmpTrainingRequests.RequestStatus FROM EmpTrainingRequests INNER JOIN TrainingCourses ON EmpTrainingRequests.CourseID = TrainingCourses.TrainCourseID">
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="style7">
                    Employee Training<br />
                    <br />
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
                    <br />
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

