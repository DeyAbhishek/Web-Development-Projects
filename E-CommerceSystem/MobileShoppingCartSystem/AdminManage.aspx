<%@ Page Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdminManage.aspx.cs" Inherits="_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 550px;
        }
        .style3
        {
            height: 39px;
        }
        .style4
        {
            height: 154px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style2">
        <tr>
            <td align="center" class="style3">
            </td>
        </tr>
        <tr>
            <td align="center" class="style3">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConflictDetection="CompareAllValues" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    DeleteCommand="DELETE FROM [Admin] WHERE [AdminID] = @original_AdminID AND [Pass] = @original_Pass AND [FName] = @original_FName" 
                    InsertCommand="INSERT INTO [Admin] ([AdminID], [Pass], [FName]) VALUES (@AdminID, @Pass, @FName)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT * FROM [Admin]" 
                    UpdateCommand="UPDATE [Admin] SET [Pass] = @Pass, [FName] = @FName WHERE [AdminID] = @original_AdminID AND [Pass] = @original_Pass AND [FName] = @original_FName">
                    <DeleteParameters>
                        <asp:Parameter Name="original_AdminID" Type="String" />
                        <asp:Parameter Name="original_Pass" Type="String" />
                        <asp:Parameter Name="original_FName" Type="String" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Pass" Type="String" />
                        <asp:Parameter Name="FName" Type="String" />
                        <asp:Parameter Name="original_AdminID" Type="String" />
                        <asp:Parameter Name="original_Pass" Type="String" />
                        <asp:Parameter Name="original_FName" Type="String" />
                    </UpdateParameters>
                    <InsertParameters>
                        <asp:Parameter Name="AdminID" Type="String" />
                        <asp:Parameter Name="Pass" Type="String" />
                        <asp:Parameter Name="FName" Type="String" />
                    </InsertParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td align="center" class="style4" valign="top">
                <asp:ListView ID="ListView1" runat="server" DataKeyNames="AdminID" 
                    DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
                    <AlternatingItemTemplate>
                        <tr style="background-color:#FFF8DC;">
                            <td>
                                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                                    Text="Delete" />
                                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                            </td>
                            <td>
                                <asp:Label ID="AdminIDLabel" runat="server" Text='<%# Eval("AdminID") %>' />
                            </td>
                            <td>
                                <asp:Label ID="PassLabel" runat="server" Text='<%# Eval("Pass") %>' />
                            </td>
                            <td>
                                <asp:Label ID="FNameLabel" runat="server" Text='<%# Eval("FName") %>' />
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
                                                AdminID</th>
                                            <th runat="server">
                                                Pass</th>
                                            <th runat="server">
                                                FName</th>
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
                                <asp:TextBox ID="AdminIDTextBox" runat="server" Text='<%# Bind("AdminID") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="PassTextBox" runat="server" Text='<%# Bind("Pass") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="FNameTextBox" runat="server" Text='<%# Bind("FName") %>' />
                            </td>
                        </tr>
                    </InsertItemTemplate>
                    <SelectedItemTemplate>
                        <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                            <td>
                                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                                    Text="Delete" />
                                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                            </td>
                            <td>
                                <asp:Label ID="AdminIDLabel" runat="server" Text='<%# Eval("AdminID") %>' />
                            </td>
                            <td>
                                <asp:Label ID="PassLabel" runat="server" Text='<%# Eval("Pass") %>' />
                            </td>
                            <td>
                                <asp:Label ID="FNameLabel" runat="server" Text='<%# Eval("FName") %>' />
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
                                <asp:Label ID="AdminIDLabel1" runat="server" Text='<%# Eval("AdminID") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="PassTextBox" runat="server" Text='<%# Bind("Pass") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="FNameTextBox" runat="server" Text='<%# Bind("FName") %>' />
                            </td>
                        </tr>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <tr style="background-color:#DCDCDC;color: #000000;">
                            <td>
                                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                                    Text="Delete" />
                                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                            </td>
                            <td>
                                <asp:Label ID="AdminIDLabel" runat="server" Text='<%# Eval("AdminID") %>' />
                            </td>
                            <td>
                                <asp:Label ID="PassLabel" runat="server" Text='<%# Eval("Pass") %>' />
                            </td>
                            <td>
                                <asp:Label ID="FNameLabel" runat="server" Text='<%# Eval("FName") %>' />
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:ListView>
            </td>
        </tr>
        <tr>
            <td align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

