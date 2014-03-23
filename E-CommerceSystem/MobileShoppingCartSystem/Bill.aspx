<%@ Page Language="C#" MasterPageFile="~/MobileUser.master" AutoEventWireup="true" CodeFile="Bill.aspx.cs" Inherits="_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
        {
            width: 772px;
        }
        .style7
        {
            height: 29px;
        }
        .style8
        {
            height: 50px;
        }
        .style9
        {
            width: 100%;
            height: 27px;
        }
        .style10
        {
            width: 78px;
        }
        .style11
        {
            width: 409px;
        }
        .style12
        {
            width: 56px;
        }
        .style13
        {
            height: 33px;
        }
        .style14
        {
            width: 100%;
            height: 22px;
        }
        .style15
        {
            width: 106px;
        }
        .style16
        {
            height: 10px;
        }
        .style17
        {
            height: 225px;
        }
        .style18
        {
            width: 100%;
            height: 174px;
        }
        .style19
        {
            width: 477px;
        }
        .style20
        {
            height: 58px;
        }
        .style21
        {
            width: 100%;
        }
        .style22
        {
            width: 257px;
        }
        .style24
        {
            width: 69px;
        }
        .style25
        {
            width: 328px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style6">
        <tr>
            <td class="style7">
            </td>
        </tr>
        <tr>
            <td align="center" class="style7">
                <asp:Label ID="LabDisp" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style8" style="text-align: left">
                <table class="style9">
                    <tr>
                        <td class="style10" 
                            style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; font-style: italic">
                            Bill No. :</td>
                        <td class="style11" 
                            style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: normal; font-style: normal">
                            <asp:Label ID="LabBillno" runat="server"></asp:Label>
                        </td>
                        <td class="style12" 
                            style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; font-style: italic">
                            Date :</td>
                        <td style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: normal; font-style: normal">
                            <asp:Label ID="LAbDate" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>
                <table class="style14">
                    <tr>
                        <td class="style15" 
                            
                            style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; font-style: italic; background-color: #99FFCC;">
                            Name :</td>
                        <td style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: normal; font-style: normal; background-color: #FFCCCC;">
                            <asp:Label ID="LabName" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="style13">
                <table class="style14">
                    <tr>
                        <td class="style15" 
                            
                            style="font-family: 'Times New Roman', Times, serif; font-size: small; font-weight: bold; font-style: italic; background-color: #66FFCC;">
                            Address:</td>
                                                        <td style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: normal; font-style: normal; background-color: #FFCCCC;">
                                                            <asp:Label ID="LabAdd" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style16">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style17">
                                                <table class="style18">
                                                    <tr>
                                                        <td class="style19" style="text-align: center" valign="top">
                                                            <asp:GridView ID="GVBill" runat="server" CellPadding="4" ForeColor="#333333" 
                                                                GridLines="None" Width="386px">
                                                                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                                                <RowStyle BackColor="#E3EAEB" />
                                                                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                                                                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                                                                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                                                <EditRowStyle BackColor="#7C6F57" />
                                                                <AlternatingRowStyle BackColor="White" />
                                                            </asp:GridView>
                                                        </td>
                                                        <td valign="top">
                                                            Total Bill :                             <asp:Label ID="LabTamt" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="style20">
                <table class="style21">
                    <tr>
                        <td class="style22">
                            &nbsp;</td>
                        <td class="style25">
                            &nbsp;</td>
                        <td class="style24">
                            <asp:Button ID="Button2" runat="server" Text="Pay" Width="52px" 
                                onclick="Button2_Click" />
                        </td>
                        <td>
                            <asp:Button ID="Button1" runat="server" Text="Cancel" onclick="Button1_Click" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

