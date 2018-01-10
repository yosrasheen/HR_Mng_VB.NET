<%@ Page Title="" Language="VB" MasterPageFile="~/Site1.Master" %>

<script runat="server">

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs)

        Dim SqlConn2 As New System.Data.SqlClient.SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\HRMS.mdf;Integrated Security=True;User Instance=False")
        Dim strSQL2 As String = ("Insert into TrainingCourses (CourseName, StartDate, EndDate, TTime, MinimumCount, MaximumCount, Place, Activated) Values ('" & Name.Text & "','" & SD.Text & "','" & ED.Text & "','" & TTime.Text & "'," & MinC.Text & "," & MaxC.Text & ",'" & Place.Text & "',1)")
        Dim SqlComm2 As New System.Data.SqlClient.SqlCommand(strSQL2, SqlConn2)
        SqlConn2.Open()
        SqlComm2.ExecuteNonQuery()
        
        Name.Text = ""
        Place.Text = ""
        MinC.Text = ""
        MaxC.Text = ""
        SD.Text = ""
        ED.Text = ""
        TTime.Text = ""
        Label9.Text = "Training Course Data Sent"
        
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs)
       
        Name.Text = ""
        Place.Text = ""
        MinC.Text = ""
        MaxC.Text = ""
        SD.Text = ""
        ED.Text = ""
        TTime.Text = ""
        Label9.Text = ""
        
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
            width: 138px;
            text-align: left;
        }
        .style10
        {
            width: 138px;
            height: 23px;
            text-align: left;
        }
        .style11
        {
            height: 23px;
            text-align: left;
        }
        .style12
        {
            color: #000000;
        }
        .style13
        {
            width: 138px;
            text-align: left;
            color: #000000;
        }
        .style14
        {
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
                    <td colspan="2">
                        Manage Training - New Training Courses
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="style13">
                        <asp:Label ID="Label1" runat="server" Text="Course Name"></asp:Label>
                        <br />
                    </td>
                    <td class="style14">
                        <asp:TextBox ID="Name" runat="server" Width="268px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="Name" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style9">
                        <asp:Label ID="Label3" runat="server" CssClass="style12" Text="Start Date"></asp:Label>
                    </td>
                    <td class="style14">
                        <asp:TextBox ID="SD" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="SD" ErrorMessage="*"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="SD" 
                            ErrorMessage="Enter Dates In Format (M/D/Y)" MaximumValue="1/1/2020" 
                            MinimumValue="1/1/2012" Type="Date"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style9">
                        <asp:Label ID="Label4" runat="server" CssClass="style12" Text="End Date"></asp:Label>
                    </td>
                    <td class="style14">
                        <asp:TextBox ID="ED" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ControlToValidate="ED" ErrorMessage="*"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="ED" 
                            ErrorMessage="Enter Dates In Format (M/D/Y)" MaximumValue="1/1/2020" 
                            MinimumValue="1/1/2012" Type="Date"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style9">
                        <asp:Label ID="Label5" runat="server" CssClass="style12" Text="Time"></asp:Label>
                    </td>
                    <td class="style14">
                        <asp:TextBox ID="TTime" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="TTime" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style9">
                        <asp:Label ID="Label6" runat="server" CssClass="style12" Text="Minimum Count"></asp:Label>
                    </td>
                    <td class="style14">
                        <asp:TextBox ID="MinC" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                            ControlToValidate="MinC" ErrorMessage="*"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ControlToValidate="MinC" ErrorMessage="Enter Number" 
                            ValidationExpression="\d{1,3}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style10">
                        <asp:Label ID="Label7" runat="server" CssClass="style12" Text="Maximum Count"></asp:Label>
                    </td>
                    <td class="style11">
                        <asp:TextBox ID="MaxC" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                            ControlToValidate="MaxC" ErrorMessage="*"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                            ControlToValidate="MaxC" ErrorMessage="Enter Number" 
                            ValidationExpression="\d{1,3}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style9">
                        <asp:Label ID="Label8" runat="server" CssClass="style12" Text="Place"></asp:Label>
                    </td>
                    <td class="style14">
                        <asp:TextBox ID="Place" runat="server" Width="274px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                            ControlToValidate="Place" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style9">
                        &nbsp;</td>
                    <td class="style14">
                        <asp:Button ID="Button1" runat="server" Text="Add" onclick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" Text="Cancel" onclick="Button2_Click" 
                            CausesValidation="False" />
                    </td>
                </tr>
                <tr>
                    <td class="style9">
                        &nbsp;</td>
                    <td class="style14">
                        <asp:Label ID="Label9" runat="server" style="color: #FF0000"></asp:Label>
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

