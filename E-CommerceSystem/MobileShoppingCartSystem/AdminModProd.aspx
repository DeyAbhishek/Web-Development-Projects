<%@ Page Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdminModProd.aspx.cs" Inherits="_Default" Title="Untitled Page" %>

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
                Company :</td>
            <td class="style6" 
                style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-style: italic; color: #666666">
                &nbsp;</td>
            <td class="style27" 
                
                style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-style: italic; color: #666666">
                <asp:DropDownList ID="DDLCo" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="DDLCo_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td class="style5" 
                style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-style: italic; color: #666666" 
                                                    align="center" rowspan="5">
                <asp:Image ID="ProdImg" runat="server" Height="165px" Width="123px" />
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
                <asp:DropDownList ID="DDLPID" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="DDLPID_SelectedIndexChanged">
                </asp:DropDownList>
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
                &nbsp;</td>
            <td class="style22" 
                
                style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-style: italic; color: #666666">
                &nbsp;</td>
            <td style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-style: italic; color: #666666" 
                class="style23">
                <asp:FileUpload ID="FileUpload1" runat="server" Height="23px" Width="221px" />
            </td>
            <td style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-style: italic; color: #666666" 
                class="style23">
                <asp:Button ID="BtnUpload" runat="server" onclick="BtnUpload_Click" 
                    Text="Upload" />
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

