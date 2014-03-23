<%@ Page Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdminBillDet.aspx.cs" Inherits="_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 550px;
        }
        .style3
        {
            height: 28px;
        }
        .style4
        {
            height: 141px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style2">
        <tr>
            <td class="style3">
            </td>
        </tr>
        <tr>
            <td align="center" class="style4" 
                style="font-size: medium; font-style: italic; color: #666666; font-family: 'Times New Roman', Times, serif" 
                valign="top">
                <asp:GridView ID="GVBillDet" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" ForeColor="#333333" GridLines="None" Width="508px">
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <RowStyle BackColor="#E3EAEB" />
                    <Columns>
                        <asp:BoundField DataField="pid" HeaderText="ID" />
                        <asp:BoundField DataField="pname" HeaderText="Name" />
                        <asp:BoundField DataField="mod" HeaderText="Model" />
                        <asp:BoundField DataField="price" HeaderText="Price" />
                        <asp:BoundField DataField="co" HeaderText="Company" />
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
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

