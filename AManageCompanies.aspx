<%@ Page Title="" Language="VB" MasterPageFile="~/Site1.Master" %>

<script runat="server">

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
       
        If Session.Contents("Logged") <> 1 Or Session.Contents("LoggedType") <> "Admin" Then
       
            Response.Redirect("SignIn.aspx")
       
        End If
        
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim SqlConn As New System.Data.SqlClient.SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\HRMS.mdf;Integrated Security=True;User Instance=False")
        SqlConn.Open()
        Dim strSQL As String = ("Update Companies set Activated ='true' where CompanyID = " & DropDownList1.SelectedValue)
        Dim SqlComm As New System.Data.SqlClient.SqlCommand(strSQL, SqlConn)
        SqlComm.ExecuteNonQuery()
        Label3.Text = "That company successfully activated"
        DropDownList1.DataBind()
        DropDownList2.DataBind()
        
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim SqlConn As New System.Data.SqlClient.SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\HRMS.mdf;Integrated Security=True;User Instance=False")
        SqlConn.Open()
        Dim strSQL As String = ("Update Companies set Activated ='false' where CompanyID = " & DropDownList2.SelectedValue)
        Dim SqlComm As New System.Data.SqlClient.SqlCommand(strSQL, SqlConn)
        SqlComm.ExecuteNonQuery()
        Label3.Text = "That company successfully Inactivated"
        DropDownList1.DataBind()
        DropDownList2.DataBind()
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
            width: 182px;
            text-align: center;
            height: 31px;
        }
        .style10
        {
            width: 182px;
            text-align: center;
            height: 29px;
        }
        .style11
        {
            width: 182px;
            text-align: center;
            height: 33px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%;">
    <tr>
        <td class="style7">
            Admin Control Panel</td>
        <td rowspan="8" class="style8" style="text-align: center">
            <table style="width:100%;">
                <tr>
                    <td colspan="4">
                        Manage Companies (Activate - Inactivate)</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" style="color: #000000" 
                            Text="List of Companies which didn't activated yet"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" 
                            DataSourceID="SqlDataSource1" DataTextField="CompanyName" 
                            DataValueField="CompanyID" ValidationGroup="1">
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="DropDownList1" ErrorMessage="*" ValidationGroup="1"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Activate" 
                            ValidationGroup="1" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" style="color: #000000" 
                            Text="List of Companies which previously activated"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList2" runat="server" 
                            DataSourceID="SqlDataSource2" DataTextField="CompanyName" 
                            DataValueField="CompanyID" ValidationGroup="2">
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="DropDownList2" ErrorMessage="*" ValidationGroup="2"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:Button ID="Button2" runat="server" Text="InActivate" 
                            onclick="Button2_Click" />
                    </td>
                </tr>
                <tr>
                    <td colspan="4">
                        <br />
                        <asp:Label ID="Label3" runat="server" style="color: #FF0000"></asp:Label>
                    </td>
                </tr>
            </table>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConflictDetection="CompareAllValues" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            DeleteCommand="DELETE FROM [Companies] WHERE [CompanyID] = @original_CompanyID AND (([CompanyName] = @original_CompanyName) OR ([CompanyName] IS NULL AND @original_CompanyName IS NULL)) AND (([Tel] = @original_Tel) OR ([Tel] IS NULL AND @original_Tel IS NULL)) AND (([Address] = @original_Address) OR ([Address] IS NULL AND @original_Address IS NULL)) AND (([FieldOfWork] = @original_FieldOfWork) OR ([FieldOfWork] IS NULL AND @original_FieldOfWork IS NULL)) AND (([Activated] = @original_Activated) OR ([Activated] IS NULL AND @original_Activated IS NULL))" 
                            InsertCommand="INSERT INTO [Companies] ([CompanyName], [Tel], [Address], [FieldOfWork], [Activated]) VALUES (@CompanyName, @Tel, @Address, @FieldOfWork, @Activated)" 
                            OldValuesParameterFormatString="original_{0}" 
                            SelectCommand="SELECT CompanyName, Tel, Address, FieldOfWork, Activated, CompanyID FROM Companies WHERE (Activated = 'false')" 
                            
                UpdateCommand="UPDATE [Companies] SET [CompanyName] = @CompanyName, [Tel] = @Tel, [Address] = @Address, [FieldOfWork] = @FieldOfWork, [Activated] = @Activated WHERE [CompanyID] = @original_CompanyID AND (([CompanyName] = @original_CompanyName) OR ([CompanyName] IS NULL AND @original_CompanyName IS NULL)) AND (([Tel] = @original_Tel) OR ([Tel] IS NULL AND @original_Tel IS NULL)) AND (([Address] = @original_Address) OR ([Address] IS NULL AND @original_Address IS NULL)) AND (([FieldOfWork] = @original_FieldOfWork) OR ([FieldOfWork] IS NULL AND @original_FieldOfWork IS NULL)) AND (([Activated] = @original_Activated) OR ([Activated] IS NULL AND @original_Activated IS NULL))">
                            <DeleteParameters>
                                <asp:Parameter Name="original_CompanyID" Type="Int32" />
                                <asp:Parameter Name="original_CompanyName" Type="String" />
                                <asp:Parameter Name="original_Tel" Type="Int32" />
                                <asp:Parameter Name="original_Address" Type="String" />
                                <asp:Parameter Name="original_FieldOfWork" Type="String" />
                                <asp:Parameter Name="original_Activated" Type="Boolean" />
                            </DeleteParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="CompanyName" Type="String" />
                                <asp:Parameter Name="Tel" Type="Int32" />
                                <asp:Parameter Name="Address" Type="String" />
                                <asp:Parameter Name="FieldOfWork" Type="String" />
                                <asp:Parameter Name="Activated" Type="Boolean" />
                                <asp:Parameter Name="original_CompanyID" Type="Int32" />
                                <asp:Parameter Name="original_CompanyName" Type="String" />
                                <asp:Parameter Name="original_Tel" Type="Int32" />
                                <asp:Parameter Name="original_Address" Type="String" />
                                <asp:Parameter Name="original_FieldOfWork" Type="String" />
                                <asp:Parameter Name="original_Activated" Type="Boolean" />
                            </UpdateParameters>
                            <InsertParameters>
                                <asp:Parameter Name="CompanyName" Type="String" />
                                <asp:Parameter Name="Tel" Type="Int32" />
                                <asp:Parameter Name="Address" Type="String" />
                                <asp:Parameter Name="FieldOfWork" Type="String" />
                                <asp:Parameter Name="Activated" Type="Boolean" />
                            </InsertParameters>
                        </asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                            ConflictDetection="CompareAllValues" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            DeleteCommand="DELETE FROM [Companies] WHERE [CompanyID] = @original_CompanyID AND (([CompanyName] = @original_CompanyName) OR ([CompanyName] IS NULL AND @original_CompanyName IS NULL)) AND (([Tel] = @original_Tel) OR ([Tel] IS NULL AND @original_Tel IS NULL)) AND (([Address] = @original_Address) OR ([Address] IS NULL AND @original_Address IS NULL)) AND (([FieldOfWork] = @original_FieldOfWork) OR ([FieldOfWork] IS NULL AND @original_FieldOfWork IS NULL)) AND (([Activated] = @original_Activated) OR ([Activated] IS NULL AND @original_Activated IS NULL))" 
                            InsertCommand="INSERT INTO [Companies] ([CompanyName], [Tel], [Address], [FieldOfWork], [Activated]) VALUES (@CompanyName, @Tel, @Address, @FieldOfWork, @Activated)" 
                            OldValuesParameterFormatString="original_{0}" 
                            SelectCommand="SELECT CompanyName, Tel, Address, FieldOfWork, Activated, CompanyID FROM Companies WHERE (Activated = 'True')" 
                            
                UpdateCommand="UPDATE [Companies] SET [CompanyName] = @CompanyName, [Tel] = @Tel, [Address] = @Address, [FieldOfWork] = @FieldOfWork, [Activated] = @Activated WHERE [CompanyID] = @original_CompanyID AND (([CompanyName] = @original_CompanyName) OR ([CompanyName] IS NULL AND @original_CompanyName IS NULL)) AND (([Tel] = @original_Tel) OR ([Tel] IS NULL AND @original_Tel IS NULL)) AND (([Address] = @original_Address) OR ([Address] IS NULL AND @original_Address IS NULL)) AND (([FieldOfWork] = @original_FieldOfWork) OR ([FieldOfWork] IS NULL AND @original_FieldOfWork IS NULL)) AND (([Activated] = @original_Activated) OR ([Activated] IS NULL AND @original_Activated IS NULL))">
                            <DeleteParameters>
                                <asp:Parameter Name="original_CompanyID" Type="Int32" />
                                <asp:Parameter Name="original_CompanyName" Type="String" />
                                <asp:Parameter Name="original_Tel" Type="Int32" />
                                <asp:Parameter Name="original_Address" Type="String" />
                                <asp:Parameter Name="original_FieldOfWork" Type="String" />
                                <asp:Parameter Name="original_Activated" Type="Boolean" />
                            </DeleteParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="CompanyName" Type="String" />
                                <asp:Parameter Name="Tel" Type="Int32" />
                                <asp:Parameter Name="Address" Type="String" />
                                <asp:Parameter Name="FieldOfWork" Type="String" />
                                <asp:Parameter Name="Activated" Type="Boolean" />
                                <asp:Parameter Name="original_CompanyID" Type="Int32" />
                                <asp:Parameter Name="original_CompanyName" Type="String" />
                                <asp:Parameter Name="original_Tel" Type="Int32" />
                                <asp:Parameter Name="original_Address" Type="String" />
                                <asp:Parameter Name="original_FieldOfWork" Type="String" />
                                <asp:Parameter Name="original_Activated" Type="Boolean" />
                            </UpdateParameters>
                            <InsertParameters>
                                <asp:Parameter Name="CompanyName" Type="String" />
                                <asp:Parameter Name="Tel" Type="Int32" />
                                <asp:Parameter Name="Address" Type="String" />
                                <asp:Parameter Name="FieldOfWork" Type="String" />
                                <asp:Parameter Name="Activated" Type="Boolean" />
                            </InsertParameters>
                        </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td class="style9">
            <asp:HyperLink ID="HyperLink4" runat="server" 
                NavigateUrl="AManageCompanies.aspx" 
                style="color: #FF0000; background-color: #FFFF66">Manage Companies</asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td class="style10">
            <asp:HyperLink ID="HyperLink6" runat="server" 
                NavigateUrl="AManagerLaborLaw.aspx">Manage Labor Law</asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td class="style11">
            <asp:HyperLink ID="HyperLink8" runat="server" 
                NavigateUrl="AManagerPages.aspx">Manage Pages</asp:HyperLink>
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

