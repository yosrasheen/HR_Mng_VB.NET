<%@ Page Title="" Language="VB" MasterPageFile="~/Site1.Master" %>

<script runat="server">

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
        .style11
        {
            font-weight: normal;
            color: #000000;
            text-align: left;
        }
        .style13
        {
            text-align: left;
        }
        .style14
        {
            color: #000000;
            text-align: left;
        }
        .style15
        {
            color: #000000;
            height: 23px;
            text-align: left;
        }
        .style16
        {
            height: 23px;
        }
        .style19
        {
            color: #000000;
            height: 23px;
            text-align: left;
            font-weight: normal;
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
                    <td colspan="4">
                        Manage Evaluation - New Evaluation</td>
                </tr>
                <tr>
                    <td class="style11">
                        General Responsibilities
                    </td>
                    <td class="style13">
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>يلتزم بالمهام والاجراءات الوظيفيه</asp:ListItem>
                            <asp:ListItem>يؤدي خدمات مساعده</asp:ListItem>
                            <asp:ListItem>يحتفظ بسجلات جديده</asp:ListItem>
                            <asp:ListItem>يلتزم بسياسات واجراءات الجامعه</asp:ListItem>
                            <asp:ListItem>لديه مهارات تنظيميه جاهزة</asp:ListItem>
                        </asp:DropDownList>
                        <span class="style11">&nbsp;</td>
                    <td class="style14">
                        Evaluation Degree</span></td>
                    <td class="style13">
                        <asp:DropDownList ID="DropDownList2" runat="server">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="style11">
                        General personalization</td>
                    <td style="text-align: left">
                        <asp:DropDownList ID="DropDownList7" runat="server">
                            <asp:ListItem>Relations</asp:ListItem>
                            <asp:ListItem>Team work</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="style11">
                        Evaluation Degree</td>
                    <td>
                        <asp:DropDownList ID="DropDownList3" runat="server">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="style11">
                        Special job demands</td>
                    <td colspan="3">
                        <span class="style9">
                        <asp:TextBox ID="TextBox2" runat="server" Height="89px" 
                            style="text-align: left" TextMode="MultiLine" Width="393px"></asp:TextBox>
                    </td>
                    </span>
                </tr>
                <tr>
                    <td class="style19">
                        Special Notes</td>
                    <td class="style15" colspan="3">
                        <asp:TextBox ID="TextBox3" runat="server" Height="89px" TextMode="MultiLine" 
                            Width="393px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style19">
                        Recommendations</td>
                    <td class="style16" colspan="3">
                        <span class="style9">
                        <asp:TextBox ID="TextBox4" runat="server" Height="89px" 
                            style="text-align: left" TextMode="MultiLine" Width="393px"></asp:TextBox>
                        </span>
                    </td>
                </tr>
            </table>
                        <asp:Button ID="Button1" runat="server" style="font-weight: 700" 
                            Text="Save Evaluation" />
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

