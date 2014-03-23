<%@ Page Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdminProdDetails.aspx.cs" Inherits="Default2" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style2
    {
        width: 550px;
        height: 325px;
    }
    .style3
    {
        width: 164px;
    }
    .style4
    {
        width: 34px;
    }
    .style5
    {
        height: 37px;
    }
    .style6
    {
        width: 34px;
        height: 37px;
    }
    .style7
    {
        }
    .style8
    {
        width: 164px;
        height: 30px;
    }
    .style9
    {
        width: 34px;
        height: 30px;
    }
    .style11
    {
        width: 164px;
        height: 34px;
    }
    .style12
    {
        width: 34px;
        height: 34px;
    }
    .style14
    {
        width: 164px;
        height: 39px;
    }
    .style15
    {
        width: 34px;
        height: 39px;
    }
    .style17
    {
        width: 164px;
        height: 41px;
    }
    .style18
    {
        width: 34px;
        height: 41px;
    }
    .style19
    {
        height: 41px;
    }
        .style20
        {
            height: 37px;
            width: 304px;
        }
        .style21
        {
            width: 304px;
            height: 30px;
        }
        .style22
        {
            width: 304px;
            height: 34px;
        }
        .style23
        {
            width: 304px;
            height: 39px;
        }
        .style24
        {
            width: 304px;
            height: 41px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style2">
    <tr>
        <td align="center" class="style5" colspan="4" style="font-size: x-large">
            Product Details</td>
    </tr>
    <tr>
        <td class="style5">
            Product Id :</td>
        <td class="style6" 
            style="font-size: medium; font-style: italic; color: #666666">
        </td>
        <td class="style20" 
            style="font-size: medium; font-style: italic; color: #666666">
            <asp:Label ID="LabID" runat="server"></asp:Label>
        </td>
        <td class="style7" 
            style="font-size: medium; font-style: italic; color: #666666" align="center" rowspan="5">
            <asp:Image ID="ProdImg" runat="server" Width="157px" />
        </td>
    </tr>
    <tr>
        <td class="style8">
            Product Name :</td>
        <td class="style9" 
            style="font-size: medium; font-style: italic; color: #666666">
        </td>
        <td class="style21" 
            style="font-size: medium; font-style: italic; color: #666666">
            <asp:Label ID="LabName" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style11">
            Model :</td>
        <td class="style12" 
            style="font-size: medium; font-style: italic; color: #666666">
        </td>
        <td class="style22" 
            style="font-size: medium; font-style: italic; color: #666666">
            <asp:Label ID="LabMod" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style14">
            Manufacturer :</td>
        <td class="style15" 
            style="font-size: medium; font-style: italic; color: #666666">
        </td>
        <td class="style23" 
            style="font-size: medium; font-style: italic; color: #666666">
            <asp:Label ID="LabCo" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style17">
            Price :</td>
        <td class="style18" 
            style="font-size: medium; font-style: italic; color: #666666">
        </td>
        <td class="style24" 
            style="font-size: medium; font-style: italic; color: #666666">
            <asp:Label ID="LabPrice" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style17">
            &nbsp;</td>
        <td class="style18" 
            style="font-size: medium; font-style: italic; color: #666666">
            &nbsp;</td>
        <td class="style19" 
            style="font-size: medium; font-style: italic; color: #666666" colspan="2">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style3">
            Product Details :</td>
        <td class="style4" 
            style="font-size: medium; font-style: italic; color: #666666">
            &nbsp;</td>
        <td style="font-size: medium; font-style: italic; color: #666666" colspan="2">
            <asp:TextBox ID="TxtDesc" runat="server" BorderStyle="None" ReadOnly="True" 
                TextMode="MultiLine" Width="310px"></asp:TextBox>
        </td>
    </tr>
</table>
</asp:Content>

