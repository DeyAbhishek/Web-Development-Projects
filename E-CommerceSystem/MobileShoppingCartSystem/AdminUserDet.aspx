<%@ Page Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdminUserDet.aspx.cs" Inherits="_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 550px;
        }
        .style3
        {
            height: 85px;
        }
        .style4
        {
            width: 100%;
            height: 48px;
        }
        .style5
        {
            width: 129px;
        }
        .style6
        {
            width: 30px;
        }
        .style7
        {
            width: 199px;
        }
        .style8
        {
            height: 34px;
        }
        .style9
        {
            height: 116px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style2">
        <tr>
            <td class="style3" 
                style="font-size: medium; font-family: 'Times New Roman', Times, serif; font-style: italic; color: #666666">
                <table class="style4">
                    <tr>
                        <td class="style5">
                            Enter User ID :</td>
                        <td class="style6">
                            &nbsp;</td>
                        <td class="style7">
                            <asp:TextBox ID="TxtUid" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                                Text="Show User" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td align="center" class="style8" 
                style="font-size: medium; font-family: 'Times New Roman', Times, serif; font-style: italic; color: #666666">
                <asp:Label ID="LabDisp" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center" class="style9" 
                style="font-size: medium; font-family: 'Times New Roman', Times, serif; font-style: italic; color: #666666" 
                valign="top">
                <asp:GridView ID="GVUser" runat="server" CellPadding="4" ForeColor="#333333" 
                    GridLines="None" Width="533px">
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <RowStyle BackColor="#E3EAEB" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#7C6F57" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td style="font-size: medium; font-family: 'Times New Roman', Times, serif; font-style: italic; color: #666666">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="font-size: medium; font-family: 'Times New Roman', Times, serif; font-style: italic; color: #666666">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="font-size: medium; font-family: 'Times New Roman', Times, serif; font-style: italic; color: #666666">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

