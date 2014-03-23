<%@ Page Language="C#" MasterPageFile="~/Admin.master"AutoEventWireup="true" CodeFile="AdminPeoductList.aspx.cs" Inherits="_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
        {
            width: 547px;
            height: 256px;
        }
        .style9
        {
            height: 35px;
        }
        .style10
        {
            height: 70px;
        }
        .style11
        {
            width: 100%;
        }
        .style12
        {
            width: 264px;
            height: 45px;
        }
        .style13
        {
            width: 28px;
            height: 45px;
        }
        .style14
        {
            height: 45px;
        }
        .style15
        {
            height: 267px;
        }
        .style16
        {
            width: 480px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style6">
        <tr>
            <td class="style10">
                <table class="style11">
                    <tr>
                        <td align="right" class="style12" 
                            style="font-size: medium; font-weight: normal; font-style: italic; color: #666666">
                            Select Company :</td>
                        <td class="style13">
                        </td>
                        <td class="style14">
                            <asp:DropDownList ID="DDLCo" runat="server" AutoPostBack="True" 
                                onselectedindexchanged="DDLCo_SelectedIndexChanged">
                            </asp:DropDownList>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td align="center" class="style9">
                <asp:Label ID="LabDisp" runat="server" Font-Bold="False" Font-Italic="True" 
                    Font-Size="Medium" ForeColor="#666666"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style15">
                <table class="style6">
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style16" style="text-align: center" valign="top">
                            <asp:GridView ID="GVProdList" runat="server" AutoGenerateColumns="False" 
                                CellPadding="4" ForeColor="#333333" GridLines="None">
                                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                <Columns>
                                    <asp:ImageField DataImageUrlField="Img" HeaderText="Image">
                                        <ControlStyle Height="70px" Width="75px" />
                                    </asp:ImageField>
                                    <asp:BoundField DataField="Product" HeaderText="Product Name" />
                                    <asp:BoundField DataField="Model" HeaderText="Model" />
                                    <asp:BoundField DataField="pid" HtmlEncode="False" />
                                </Columns>
                                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <EditRowStyle BackColor="#999999" />
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            </asp:GridView>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

