<%@ Page Title="" Language="VB" MasterPageFile="~/Site1.Master" %>

<script runat="server">

   
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style7
        {
            width: 182px;
            text-align: center;
            font-weight: bold;
            color: #990000;
        }
        .style8
        {
            text-align: left;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%;">
    <tr>
        <td class="style7">
            <table style="width: 402%;">
                <tr>
                    <td colspan="3" class="style8">
                        Evaluation Details</td>
                </tr>
                <tr>
                    <td style="text-align: left">
                        Grade Scale : Excellent 1 -------------&gt; Worst 5</td>
                    <td class="style8">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td class="style7">
            <asp:DetailsView 
                ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                DataKeyNames="RecordID" DataSourceID="SqlDataSource1" Height="50px" 
              
                style="color: #000000; text-align: left; font-size: small;" Width="508px">
                <Fields>
                    <asp:BoundField DataField="Maham" 
                        HeaderText="Committed to the tasks and procedures functional" 
                        SortExpression="Maham" />
                    <asp:BoundField DataField="Khadamat" HeaderText="Performs services help" 
                        SortExpression="Khadamat" />
                    <asp:BoundField DataField="Sejellat" HeaderText="Keep good records" 
                        SortExpression="Sejellat" />
                    <asp:BoundField DataField="Syasat" HeaderText="Adhere to policies and procedures of the university" 
                        SortExpression="Syasat" />
                    <asp:BoundField DataField="Maharat" HeaderText="Has good organizational skills" 
                        SortExpression="Maharat" />
                    <asp:BoundField DataField="Tahfeez" HeaderText="Self-motivation" 
                        SortExpression="Tahfeez" />
                    <asp:BoundField DataField="Lateef" HeaderText="Employee nice and positive in his work" 
                        SortExpression="Lateef" />
                    <asp:BoundField DataField="Computer" HeaderText="Uses computer programs to effectively" 
                        SortExpression="Computer" />
                    <asp:BoundField DataField="Raghba" HeaderText="What causes the desire to ask him" 
                        SortExpression="Raghba" />
                    <asp:BoundField DataField="Indebat" HeaderText="Works in accordance with the discipline of the employee" 
                        SortExpression="Indebat" />
                    <asp:BoundField DataField="Alaqat" HeaderText="Relationships: in line with the rest of the staff" 
                        SortExpression="Alaqat" />
                    <asp:BoundField DataField="Team" 
                        HeaderText="Teamwork: supporting team members and management" 
                        SortExpression="Team" />
                    <asp:BoundField DataField="Customers" HeaderText="Customer Services" 
                        SortExpression="Customers" />
                    <asp:BoundField DataField="Itesal" HeaderText="Communication Skills" 
                        SortExpression="Itesal" />
                    <asp:BoundField DataField="TimeUse" HeaderText="Use of time" 
                        SortExpression="TimeUse" />
                    <asp:BoundField DataField="Mobadara" HeaderText="Initiative" 
                        SortExpression="Mobadara" />
                    <asp:BoundField DataField="Takayyof" HeaderText="Adapt to changes" 
                        SortExpression="Takayyof" />
                    <asp:BoundField DataField="Qararat" HeaderText="Decision-making" 
                        SortExpression="Qararat" />
                    <asp:BoundField DataField="OutsideLook" HeaderText="External appearance of decent" 
                        SortExpression="OutsideLook" />
                    <asp:BoundField DataField="Quality" HeaderText="Quality of work in general" 
                        SortExpression="Quality" />
                    <asp:BoundField DataField="SpecialJobDemands" HeaderText="Special Job Demands" 
                        SortExpression="SpecialJobDemands" />
                    <asp:BoundField DataField="SpecialNotes" HeaderText="Special Notes" 
                        SortExpression="SpecialNotes" />
                    <asp:BoundField DataField="Recommendations" HeaderText="Recommendations" 
                        SortExpression="Recommendations" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT * FROM [EmployeeEvaluations] WHERE ([RecordID] = @RecordID)">
                <SelectParameters>
                    <asp:SessionParameter DefaultValue="0" Name="RecordID" SessionField="EID" 
                        Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
</table>
</asp:Content>

