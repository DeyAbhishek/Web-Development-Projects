<%@ Page Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdminViewBill.aspx.cs" Inherits="_Default" Title="Untitled Page" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 550px;
        }
        .style3
        {
            height: 61px;
        }
        .style4
        {
            width: 100%;
            height: 40px;
        }
        .style5
        {
            width: 80px;
        }
        .style6
        {
            width: 111px;
        }
        .style7
        {
            width: 67px;
        }
        .style8
        {
            width: 134px;
        }
        .style9
        {
            width: 14px;
        }
        .style10
        {
            height: 149px;
        }
        .style11
        {
            height: 37px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style2">
        <tr>
            <td class="style3" 
                style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-style: italic; color: #666666; font-weight: bold">
                <table class="style4">
                    <tr>
                        <td class="style5">
                            Start Date</td>
                        <td class="style6">
                            <asp:TextBox ID="TxtStDate" runat="server" Width="102px"></asp:TextBox>
                            <cc1:CalendarExtender ID="TxtStDate_CalendarExtender" runat="server" 
                                Enabled="True" TargetControlID="TxtStDate">
                            </cc1:CalendarExtender>
                        </td>
                        <td class="style7">
                            End Date</td>
                        <td class="style8">
                            <asp:TextBox ID="TxtEndDate" runat="server" Width="114px"></asp:TextBox>
                            <cc1:CalendarExtender ID="TxtEndDate_CalendarExtender" runat="server" 
                                Enabled="True" TargetControlID="TxtEndDate">
                            </cc1:CalendarExtender>
                        </td>
                        <td class="style9">
                            &nbsp;</td>
                        <td>
                            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Show" />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td align="center" class="style11" 
                style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-style: italic; color: #666666; font-weight: bold" 
                valign="top">
                <asp:Label ID="LabDisp" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center" class="style10" 
                style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-style: italic; color: #666666; font-weight: bold" 
                valign="top">
                <asp:GridView ID="GVBill" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" ForeColor="#333333" GridLines="None" Width="509px">
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <RowStyle BackColor="#E3EAEB" />
                    <Columns>
                        <asp:BoundField DataField="userID" HeaderText="UserID" />
                        <asp:BoundField DataField="Billno" HeaderText="Bill No" />
                        <asp:BoundField DataField="BDate" HeaderText="Bill Date" />
                        <asp:BoundField DataField="Total" HeaderText="Total Amt" />
                        <asp:BoundField DataField="Det" HtmlEncode="False" />
                    </Columns>
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#7C6F57" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-style: italic; color: #666666; font-weight: bold">
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
        </tr>
        <tr>
            <td style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-style: italic; color: #666666; font-weight: bold">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-style: italic; color: #666666; font-weight: bold">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

