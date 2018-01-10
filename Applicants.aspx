<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Applicants.aspx.vb" Inherits="Applicants" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 191px;
        }
        .style2
        {
            width: 191px;
            color: #990000;
            font-weight: bold;
        }
        .style3
        {
        }
        .style4
        {
            font-weight: bold;
            color: #990000;
        }
        .style5
        {
            width: 91px;
        }
        .style6
        {
            width: 191px;
            height: 234px;
        }
        .style7
        {
            font-weight: bold;
            color: #990000;
            height: 234px;
        }
    </style>
</head>
<body bgcolor="#e2e3e5">
    <form id="form1" runat="server">
    <div>
    
        <table style="width:100%;">
            <tr>
                <td class="style2">
                    Companies List</td>
                <td class="style4">
                    Available Jobs In selected Company</td>
                <td class="style5">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style6">
                    <asp:ListBox ID="ListBox1" runat="server" AutoPostBack="True" 
                        DataSourceID="SqlDataSource1" DataTextField="CompanyName" 
                        DataValueField="CompanyID" Height="159px" Width="174px"></asp:ListBox>
                    <br />
                    <br />
                    <br />
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT VacancyID, JobRequired, QualificationRequired, JobPostDate, JobDetails FROM Vacancies WHERE (CompanyID = @CompanyID) AND (Stataus = @Stataus)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ListBox1" DefaultValue="0" Name="CompanyID" 
                                PropertyName="SelectedValue" Type="Int32" />
                            <asp:Parameter DefaultValue="Available" Name="Stataus" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <br />
                </td>
                <td class="style7" colspan="3">
                    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" 
                        AutoGenerateRows="False" BackColor="White" BorderColor="#DEDFDE" 
                        BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="VacancyID" 
                        DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Vertical" 
                        Height="50px" Width="426px">
                        <FooterStyle BackColor="#CCCC99" />
                        <RowStyle BackColor="#F7F7DE" />
                        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                        <Fields>
                            <asp:BoundField DataField="VacancyID" HeaderText="VacancyID" 
                                InsertVisible="False" ReadOnly="True" SortExpression="VacancyID" 
                                Visible="False" />
                            <asp:BoundField DataField="JobRequired" HeaderText="Required Job Name" 
                                SortExpression="JobRequired" />
                            <asp:BoundField DataField="QualificationRequired" HeaderText="Qualifications" 
                                SortExpression="QualificationRequired" />
                            <asp:BoundField DataField="JobPostDate" HeaderText="Post Date" 
                                SortExpression="JobPostDate" />
                            <asp:BoundField DataField="JobDetails" HeaderText="Details" 
                                SortExpression="JobDetails" />
                        </Fields>
                        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                        <EditRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                        <AlternatingRowStyle BackColor="White" />
                    </asp:DetailsView>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT [CompanyID], [CompanyName] FROM [Companies]">
                    </asp:SqlDataSource>
                </td>
                <td class="style3" colspan="3">
                    <asp:Button ID="Button1" runat="server" Enabled="False" 
                        style="font-weight: 700" Text="Apply For Job In That Comapny" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
