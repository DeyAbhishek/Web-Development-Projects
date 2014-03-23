<%@ Page Language="C#" MasterPageFile="~/MobileUser.master" AutoEventWireup="true" CodeFile="UserProductDet.aspx.cs" Inherits="_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
        {
            width: 772px;
            height: 361px;
        }
        .style7
        {
            width: 100%;
            height: 26px;
        }
        .style8
        {
            width: 22px;
            height: 37px;
        }
        .style9
        {
            width: 175px;
            height: 37px;
        }
        .style10
        {
            width: 344px;
            height: 37px;
        }
        .style11
        {
        }
        .style12
        {
            height: 316px;
        }
        .style13
        {
            width: 100%;
        }
        .style14
        {
            height: 33px;
        }
        .style15
        {
            height: 33px;
            width: 547px;
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style6">
        <tr>
            <td valign="top" 
                style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-style: italic; color: #666666" 
                class="style12">
                <table class="style7">
                    <tr>
                        <td align="right" class="style9" 
                            style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: normal; font-style: italic; color: #666666">
                            Product ID :</td>
                        <td class="style8">
                            </td>
                        <td class="style10" 
                            style="color: #0066CC; font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; font-style: italic">
                            <asp:Label ID="LabPID" runat="server"></asp:Label>
                        </td>
                        <td valign="middle" class="style11" align="center" rowspan="5">
                            <asp:Image ID="MobImg" runat="server" Height="160px" />
                            </td>
                    </tr>
                    <tr>
                        <td align="right" class="style9" 
                            style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: normal; font-style: italic; color: #666666">
                            Product Name :</td>
                        <td class="style8">
                            &nbsp;</td>
                        <td class="style10" 
                            style="color: #0066CC; font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; font-style: italic">
                            <asp:Label ID="LabName" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" class="style9" 
                            style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: normal; font-style: italic; color: #666666">
                            Model :</td>
                        <td class="style8">
                            &nbsp;</td>
                        <td class="style10" 
                            style="color: #0066CC; font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; font-style: italic">
                            <asp:Label ID="LabModel" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" class="style9" 
                            style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: normal; font-style: italic; color: #666666">
                            Company :</td>
                        <td class="style8">
                            &nbsp;</td>
                        <td class="style10" 
                            style="color: #0066CC; font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; font-style: italic">
                            <asp:Label ID="LabCo" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" class="style9" 
                            style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: normal; font-style: italic; color: #666666">
                            Price :</td>
                        <td class="style8">
                            &nbsp;</td>
                        <td class="style10" 
                            style="color: #0066CC; font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; font-style: italic">
                            <asp:Label ID="LabPrice" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" class="style9" 
                            style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: normal; font-style: italic; color: #666666">
                            Description :</td>
                        <td class="style8">
                            &nbsp;</td>
                        <td class="style10" 
                            style="color: #0066CC; font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; font-style: italic">
                            <asp:TextBox ID="TxtDes" runat="server" BorderStyle="None" Height="99px" 
                                ReadOnly="True" TextMode="MultiLine" Width="173px"></asp:TextBox>
                        </td>
                        <td valign="middle" align="center" class="style11">
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td valign="top" style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-style: italic; color: #666666">
                <table class="style13">
                    <tr>
                        <td align="center" class="style15">
                            <asp:Label ID="LabDisp" runat="server" Font-Italic="True" Font-Size="Medium" 
                                ForeColor="#666666"></asp:Label>
                        </td>
                        <td align="center" class="style14">
                            <asp:Button ID="BtnCart" runat="server" Text="Add to Cart" 
                                onclick="BtnCart_Click" />
                        </td>
                        <td align="center" class="style14">
                            <asp:Button ID="BtnBill" runat="server" Text="Show Bill" 
                                onclick="BtnBill_Click" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

