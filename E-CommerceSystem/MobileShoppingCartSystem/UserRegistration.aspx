<%@ Page Language="C#" MasterPageFile="~/MobileUser.master" AutoEventWireup="true" CodeFile="UserRegistrarion.aspx.cs" Inherits="_Default" Title="Untitled Page" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
    {
        width: 770px;
        height: 40px;
    }
    .style6
    {
        height: 30px;
    }
    .style7
    {
        width: 28px;
        height: 30px;
    }
    .style8
    {
        height: 30px;
    }
    .style9
    {
            height: 30px;
            width: 294px;
        }
    .style18
    {
            height: 30px;
            width: 262px;
        }
    .style19
    {
        height: 99px;
        width: 262px;
    }
    .style20
    {
        width: 28px;
        height: 99px;
    }
    .style21
    {
        height: 99px;
        width: 294px;
    }
    .style22
    {
        height: 99px;
    }
    .style23
    {
        height: 32px;
        width: 262px;
    }
    .style24
    {
        width: 28px;
        height: 32px;
    }
    .style25
    {
        height: 32px;
        width: 294px;
    }
    .style26
    {
        height: 32px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 780px">
    <tr>
        <td align="center" class="style6" colspan="4" 
            style="color: #FFFFFF; font-style: italic; background-color: #006699; font-size: medium; font-weight: bold;">
            User Registration</td>
    </tr>
    <tr>
        <td align="center" class="style6" colspan="4" 
            style="color: #006699; font-style: italic; font-size: medium; font-weight: bold;">
            <asp:Label ID="LabDisp" runat="server" Font-Size="Small"></asp:Label>
        </td>
    </tr>
    <tr>
        <td align="right" class="style23" style="color: #006699; font-style: italic">
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
        </td>
        <td class="style24">
        </td>
        <td class="style25">
        </td>
        <td class="style26">
        </td>
    </tr>
    <tr>
        <td align="right" class="style18" style="color: #006699; font-style: italic">
            Enter User ID</td>
        <td class="style7">
        </td>
        <td class="style9">
            <asp:TextBox ID="TxtID" runat="server"></asp:TextBox>
        </td>
        <td class="style8">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TxtID" ErrorMessage="Enter User ID"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td align="right" class="style18" style="color: #006699; font-style: italic">
            Enter Password</td>
        <td class="style7">
            &nbsp;</td>
        <td class="style9">
            <asp:TextBox ID="TxtPass" runat="server" TextMode="Password"></asp:TextBox>
            <cc1:PasswordStrength ID="TxtPass_PasswordStrength" runat="server" 
                Enabled="True" TargetControlID="TxtPass">
            </cc1:PasswordStrength>
        </td>
        <td class="style8">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="TxtPass" ErrorMessage="Enter Password"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td align="right" class="style18" style="color: #006699; font-style: italic">
            Re-Enter Password</td>
        <td class="style7">
            &nbsp;</td>
        <td class="style9">
            <asp:TextBox ID="TxtRPass" runat="server" TextMode="Password"></asp:TextBox>
        </td>
        <td class="style8">
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToCompare="TxtPass" ControlToValidate="TxtRPass" 
                ErrorMessage="Password not mached"></asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td align="right" class="style18" style="color: #006699; font-style: italic">
            Enter Full Name</td>
        <td class="style7">
            &nbsp;</td>
        <td class="style9">
            <asp:TextBox ID="TxtName" runat="server"></asp:TextBox>
        </td>
        <td class="style8">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="TxtName" ErrorMessage="Enter Name"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td align="right" class="style19" style="color: #006699; font-style: italic">
            Emter Address</td>
        <td class="style20">
        </td>
        <td class="style21">
            <asp:TextBox ID="TxtAdd" runat="server" Height="85px" TextMode="MultiLine"></asp:TextBox>
        </td>
        <td class="style22">
        </td>
    </tr>
    <tr>
        <td align="right" class="style18" style="color: #006699; font-style: italic">
            Phone Number</td>
        <td class="style7">
            &nbsp;</td>
        <td class="style9">
            <asp:TextBox ID="TxtPh" runat="server"></asp:TextBox>
        </td>
        <td class="style8">
            &nbsp;</td>
    </tr>
    <tr>
        <td align="right" class="style18" style="color: #006699; font-style: italic">
            Mobile</td>
        <td class="style7">
            &nbsp;</td>
        <td class="style9">
            <asp:TextBox ID="TxtMob" runat="server"></asp:TextBox>
        </td>
        <td class="style8">
            &nbsp;</td>
    </tr>
    <tr>
        <td align="right" class="style18" style="color: #006699; font-style: italic">
            e-Mail</td>
        <td class="style7">
            &nbsp;</td>
        <td class="style9">
            <asp:TextBox ID="TxtMail" runat="server"></asp:TextBox>
        </td>
        <td class="style8">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="TxtMail" ErrorMessage="Not a valid email" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td align="right" class="style18" style="color: #006699; font-style: italic">
            &nbsp;</td>
        <td class="style7">
            &nbsp;</td>
        <td class="style9">
            &nbsp;</td>
        <td class="style8">
            &nbsp;</td>
    </tr>
    <tr>
        <td align="right" class="style18" style="color: #006699; font-style: italic">
            &nbsp;</td>
        <td class="style7">
            &nbsp;</td>
        <td class="style8" colspan="2">
            <asp:Button ID="BtnSubmit" runat="server" Text="Submit" 
                onclick="BtnSubmit_Click" />
        </td>
    </tr>
    </table>
</asp:Content>

