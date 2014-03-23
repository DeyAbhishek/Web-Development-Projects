<%@ Page Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdminAddProd.aspx.cs" Inherits="_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 550px;
            height: 352px;
        }
        .style4
        {
            width: 23px;
        }
        .style5
        {
            height: 43px;
        }
        .style6
        {
            width: 23px;
            height: 43px;
        }
        .style7
        {
    }
        .style8
        {
            height: 43px;
            width: 129px;
        }
        .style18
        {
            width: 129px;
            height: 49px;
        }
        .style19
        {
            width: 23px;
            height: 49px;
        }
        .style20
        {
            height: 49px;
        }
        .style21
        {
            width: 129px;
            height: 32px;
        }
        .style22
        {
            width: 23px;
            height: 32px;
        }
        .style23
        {
            height: 32px;
        }
        .style24
        {
            width: 129px;
            height: 91px;
        }
        .style25
        {
            width: 23px;
            height: 91px;
        }
        .style26
        {
            height: 91px;
        }
        .style27
        {
            height: 43px;
            width: 232px;
        }
        .style31
        {
            height: 49px;
            width: 232px;
        }
        .style32
        {
            height: 91px;
            width: 232px;
        }
        .style33
        {
            width: 129px;
            height: 46px;
        }
        .style34
        {
            width: 23px;
            height: 46px;
        }
        .style35
        {
            height: 46px;
            width: 232px;
        }
        .style36
        {
            height: 46px;
        }
        .style37
        {
            width: 129px;
            height: 54px;
        }
        .style38
        {
            width: 23px;
            height: 54px;
        }
        .style39
        {
            height: 54px;
            width: 232px;
        }
        .style40
        {
            height: 54px;
        }
    .style41
    {
        height: 31px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style3">
        <tr>
            <td class="style41" 
                
                style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-style: italic; color: #666666" 
                align="center" colspan="4">
                <asp:Label ID="LabDISP" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style8" 
                style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-style: italic; color: #666666">
                Product ID :</td>
            <td class="style6" 
                style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-style: italic; color: #666666">
            </td>
            <td class="style27" 
                
                style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-style: italic; color: #666666">
                <asp:TextBox ID="TxtID" runat="server" ReadOnly="True" Width="76px"></asp:TextBox>
            </td>
            <td class="style5" 
                style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-style: italic; color: #666666">
            </td>
        </tr>
        <tr>
            <td class="style37" 
                
                style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-style: italic; color: #666666">
                Product Name :</td>
            <td class="style38" 
                
                style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-style: italic; color: #666666">
                </td>
            <td style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-style: italic; color: #666666" 
                class="style39">
                <asp:TextBox ID="TxtPName" runat="server"></asp:TextBox>
            </td>
            <td style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-style: italic; color: #666666" 
                class="style40">
                </td>
        </tr>
        <tr>
            <td class="style18" 
                
                style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-style: italic; color: #666666">
                Model :</td>
            <td class="style19" 
                
                style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-style: italic; color: #666666">
                </td>
            <td style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-style: italic; color: #666666" 
                class="style31">
                <asp:TextBox ID="TxtPModel" runat="server"></asp:TextBox>
            </td>
            <td style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-style: italic; color: #666666" 
                class="style20">
                </td>
        </tr>
        <tr>
            <td class="style33" 
                
                style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-style: italic; color: #666666">
                Company :</td>
            <td class="style34" 
                
                style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-style: italic; color: #666666">
                </td>
            <td style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-style: italic; color: #666666" 
                class="style35">
                <asp:DropDownList ID="DDLCo" runat="server">
                </asp:DropDownList>
            </td>
            <td style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-style: italic; color: #666666" 
                class="style36">
                </td>
        </tr>
        <tr>
            <td class="style18" 
                
                style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-style: italic; color: #666666">
                Price :</td>
            <td class="style19" 
                
                style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-style: italic; color: #666666">
                </td>
            <td style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-style: italic; color: #666666" 
                class="style31">
                <asp:TextBox ID="TxtPrice" runat="server"></asp:TextBox>
            </td>
            <td style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-style: italic; color: #666666" 
                class="style20">
                </td>
        </tr>
        <tr>
            <td class="style24" 
                
                style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-style: italic; color: #666666">
                Description :</td>
            <td class="style25" 
                
                style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-style: italic; color: #666666">
                </td>
            <td style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-style: italic; color: #666666" 
                class="style32">
                <asp:TextBox ID="TxtDesc" runat="server" Height="71px" TextMode="MultiLine" 
                    Width="223px"></asp:TextBox>
            </td>
            <td style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-style: italic; color: #666666" 
                class="style26">
                </td>
        </tr>
        <tr>
            <td class="style21" 
                
                style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-style: italic; color: #666666">
                </td>
            <td class="style22" 
                
                style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-style: italic; color: #666666">
                </td>
            <td style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-style: italic; color: #666666" 
                class="style23" colspan="2">
                <asp:Button ID="BtnSubmit" runat="server" Text="Submit" 
                    onclick="BtnSubmit_Click" />
            </td>
        </tr>
        <tr>
            <td class="style7" 
                style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-style: italic; color: #666666">
                &nbsp;</td>
            <td class="style4" 
                style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-style: italic; color: #666666">
                &nbsp;</td>
            <td style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-style: italic; color: #666666" 
                colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7" 
                style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-style: italic; color: #666666">
                &nbsp;</td>
            <td class="style4" 
                style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-style: italic; color: #666666">
                &nbsp;</td>
            <td style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-style: italic; color: #666666" 
                colspan="2">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

