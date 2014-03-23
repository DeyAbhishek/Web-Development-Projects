<%@ Master Language="C#" AutoEventWireup="true" CodeFile="MobileUser.master.cs" Inherits="MobileUser" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
	<title>Mobile Store</title>
    <asp:ContentPlaceHolder id="head" runat="server">
    </asp:ContentPlaceHolder>
	<link rel="stylesheet" type="text/css" href="HTML/style.css">
    <style type="text/css">
        .style1
        {
            width: 110px;
        }
        .style2
        {
            height: 21px;
        }
        .style3
        {
            width: 280px;
        }
        .style4
        {
            width: 774px;
        }
        .style5
        {
            width: 192px;
        }
    </style>
</head>

<body leftmargin=0 topmargin=0 marginheight="0" marginwidth="0" bgcolor="#ffffff">
<form id="form1" runat="server">
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
	<td width="50%" background="HTML/images/bg.gif"><img src="HTML/images/px1.gif" width="1" height="1" alt="" border="0"></td>
	<td valign="bottom" background="HTML/images/bg_left.gif"><img src="HTML/images/bg_left.gif" alt="" width="17" height="16" border="0"></td>
	<td>
<table border="0" cellpadding="0" cellspacing="0" width="780">
<tr>
	      <td rowspan="2" width="100%" valign="top">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td><img src="HTML/images/Logo.jpg" width="377" height="61"></td>
              </tr>
              <tr>
                <td><img src="HTML/images/HomeLeft.jpg" width="377" height="203"></td>
              </tr>
              <tr>
                <td>
                  <table border="0" cellspacing="0" cellpadding="0" style="width: 120%">
                    <tr> 
                      <td style="height:61px;width:377px">                 
	                        <img src="HTML/images/MobsLeft.jpg" width="377px" height="61px" />
	                   </td>
                    </tr>
                  </table>
                </td>
              </tr>
            </table>
          </td>
	<td valign="top" bgcolor="#0A64AA">
<table border="0" cellpadding="0" cellspacing="0">
<tr>
	<td><img src="HTML/images/top01.gif" width="156" height="31" alt="" border="0"></td>
</tr>
<tr>
	<td background="HTML/images/fon_menu.gif" height="30"><p class="menu01"><a href="UserHome.aspx">Home</a></p></td>
</tr>
<tr>
	<td background="HTML/images/fon_menu.gif" height="30"><p class="menu01"><a href="UserPeoductList.aspx">Products</a></p></td>
</tr>
<tr>
	<td background="HTML/images/fon_menu.gif" height="30"><p class="menu01"><a href="UserRegistrarion.aspx">Register</a></p></td>
</tr>

<tr>
	<td background="HTML/images/fon_menu.gif" height="30"><p class="menu01">Feedback</p></td>
</tr>
<tr>
	<td background="HTML/images/fon_menu.gif" height="30"><p class="menu01"><a href="#">Contact US</a></p></td>
</tr>
<tr>
	<td background="HTML/images/fon_menu.gif" height="30">
	<p class="menu01">
        <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Log Off</asp:LinkButton>
	</p>
	</td>
</tr>

<tr>
	<td><img src="HTML/images/fon_menu02.gif" alt="" width="156" height="53" border="0"/></td>
</tr>
</table>
	</td>
	<td><img src="HTML/images/HomeRight.jpg" width="247" height="264" alt="" border="0"/></td>
</tr>
<tr>
	<td style="height:61px;" colspan="2">
	    <img src="HTML/images/MobsRight.jpg" style="width: 405px" />
	</td>
</tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="780">
<tr>
	<td colspan="2" background="HTML/images/fon01.gif" align="center" 
        class="style2" style="font-size: small; font-weight: bold"><img src="HTML/images/px1.gif" width="1" height="1" alt="" border="0">Members 
        Login</td>
	<td colspan="2" background="HTML/images/fon01.gif" class="style2"></td>
</tr>
<tr>
	<td background="HTML/images/fon02.gif" height="87" align="center" width="377">
<table border="0" cellpadding="0" cellspacing="0" background="" 
            style="height: 58px; width: 269px">

<tr>
	
	<td class="style1" 
        style="font-style: italic; font-weight: bold; font-size: small; font-family: 'Times New Roman', Times, serif; color: #666666;">User ID :</td>
	<td class="style5"><asp:TextBox ID="TxtID" runat="server"></asp:TextBox></td>
</tr>
<tr>
    <td class="style1" 
        style="font-style: italic; font-weight: bold; font-size: small; font-family: 'Times New Roman', Times, serif; color: #666666;">Password :</td>
	<td class="style5">
        <asp:TextBox ID="TxtPass" runat="server" Width="128px" TextMode="Password"></asp:TextBox>
        <asp:ImageButton ID="ImageButton1" runat="server" Height="21px" 
            ImageUrl="~/HTML/images/b_go.gif" Width="27px" 
            onclick="ImageButton1_Click" />
    </td>
</tr>

</table>
	</td>
	<td background="HTML/images/fon02.gif" height="87"><img src="HTML/images/e01.gif" width="2" height="87" alt="" border="0"></td>
	<td background="HTML/images/fon02.gif" height="87" align="center" width="380">
<table border="0" cellpadding="0" cellspacing="0" background="">

<tr>
	<td class="style3">
        <asp:Label ID="LabUser" runat="server" Font-Bold="True" Font-Italic="True" 
            Font-Names="Times New Roman" ForeColor="#666666"></asp:Label>
    </td>
</tr>

</table>
	</td>
	<td background="HTML/images/fon02.gif" height="87" align="right"><img src="HTML/images/e02.gif" width="21" height="87" alt="" border="0"></td>
</tr>
<tr>
	<td colspan="4" height="21" background="HTML/images/fon03.gif"><img src="HTML/images/px1.gif" width="1" height="1" alt="" border="0"></td>
</tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="780">
<tr valign="top" style="background-color: #E5E5E5">
	<td style="height: 400px">
	<div style="width: 779px; height: 400px">
        <asp:ContentPlaceHolder id="ContentPlaceHolder1" runat="server">
        
            <table class="style4">
                <tr>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        
        </asp:ContentPlaceHolder>
    </div>
	
	</td>
</tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="780">
<tr>
	<td colspan="2"><img src="HTML/images/px1.gif" width="1" height="1" alt="" border="0"></td>
</tr>
<tr bgcolor="#EE7B10">
	<td height="19" colspan="2"><img src="HTML/images/px1.gif" width="1" height="1" alt="" border="0"></td>
</tr>
<tr>
	<td height="70"><p>Copyright &copy; CompanyName.com</p></td>
	<td>
<p class="menu02">
<a href="UserHome.aspx">Home</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="UserPeoductList.aspx">Products</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="AdminLogin.aspx">Admin</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="">Contact Us</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</p>
	</td>
</tr>
</table>
	</td>
	<td valign="bottom" background="HTML/images/bg_right.gif"><img src="HTML/images/bg_right.gif" alt="" width="17" height="16" border="0"></td>
	<td width="50%" background="HTML/images/bg.gif"><img src="HTML/images/px1.gif" width="1" height="1" alt="" border="0"></td>
</tr>
</table>
</form>
</body>
</html>

-->
