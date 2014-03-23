<%@ Page Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdminManageCo.aspx.cs" Inherits="_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style3
    {
        width: 550px;
        height: 199px;
    }
    .style4
    {
        height: 38px;
    }
    .style5
    {
        height: 45px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style3">
    <tr>
        <td class="style4" align="center" 
            style="font-family: 'Times New Roman', Times, serif; font-size: x-large; font-weight: bold; font-style: italic; color: #003399">
            MANAGE COMPANY</td>
    </tr>
    <tr>
        <td class="style5">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConflictDetection="CompareAllValues" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                DeleteCommand="DELETE FROM [Company] WHERE [CoID] = @original_CoID AND [Name] = @original_Name" 
                InsertCommand="INSERT INTO [Company] ([CoID], [Name]) VALUES (@CoID, @Name)" 
                OldValuesParameterFormatString="original_{0}" 
                SelectCommand="SELECT * FROM [Company]" 
                UpdateCommand="UPDATE [Company] SET [Name] = @Name WHERE [CoID] = @original_CoID AND [Name] = @original_Name">
                <DeleteParameters>
                    <asp:Parameter Name="original_CoID" Type="String" />
                    <asp:Parameter Name="original_Name" Type="String" />
                </DeleteParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="original_CoID" Type="String" />
                    <asp:Parameter Name="original_Name" Type="String" />
                </UpdateParameters>
                <InsertParameters>
                    <asp:Parameter Name="CoID" Type="String" />
                    <asp:Parameter Name="Name" Type="String" />
                </InsertParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td style="text-align: center">
            <asp:ListView ID="ListView1" runat="server" DataKeyNames="CoID" 
                DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
                <AlternatingItemTemplate>
                    <tr style="background-color:#FFF8DC;">
                        <td>
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                        </td>
                        <td>
                            <asp:Label ID="CoIDLabel" runat="server" Text='<%# Eval("CoID") %>' />
                        </td>
                        <td>
                            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                        </td>
                    </tr>
                </AlternatingItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table ID="itemPlaceholderContainer" runat="server" border="1" 
                                    style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                    <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                        <th runat="server">
                                        </th>
                                        <th runat="server">
                                            CoID</th>
                                        <th runat="server">
                                            Name</th>
                                    </tr>
                                    <tr ID="itemPlaceholder" runat="server">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" 
                                style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                            </td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <InsertItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                                Text="Insert" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                                Text="Clear" />
                        </td>
                        <td>
                            <asp:TextBox ID="CoIDTextBox" runat="server" Text='<%# Bind("CoID") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                        </td>
                    </tr>
                </InsertItemTemplate>
                <SelectedItemTemplate>
                    <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                        <td>
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                        </td>
                        <td>
                            <asp:Label ID="CoIDLabel" runat="server" Text='<%# Eval("CoID") %>' />
                        </td>
                        <td>
                            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                        </td>
                    </tr>
                </SelectedItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" 
                        style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                        <tr>
                            <td>
                                No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <EditItemTemplate>
                    <tr style="background-color:#008A8C;color: #FFFFFF;">
                        <td>
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                                Text="Update" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                                Text="Cancel" />
                        </td>
                        <td>
                            <asp:Label ID="CoIDLabel1" runat="server" Text='<%# Eval("CoID") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                        </td>
                    </tr>
                </EditItemTemplate>
                <ItemTemplate>
                    <tr style="background-color:#DCDCDC;color: #000000;">
                        <td>
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                        </td>
                        <td>
                            <asp:Label ID="CoIDLabel" runat="server" Text='<%# Eval("CoID") %>' />
                        </td>
                        <td>
                            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:ListView>
        </td>
    </tr>
</table>
</asp:Content>

