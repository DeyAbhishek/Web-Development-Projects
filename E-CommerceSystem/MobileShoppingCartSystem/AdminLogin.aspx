<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="AdminLogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head id="Head1" runat="server">

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>MobileStore admin</title>
    
<link rel="stylesheet" href="images/BrightSide.css" type="text/css" />
	
    <style type="text/css">
        .style1
        {
            width: 800px;
            height: 102px;
        }
        .style2
        {
            width: 100%;
            height: 39px;
        }
        .style5
        {
            height: 211px;
        }
        .style6
        {
            height: 32px;
        }
        .style7
        {
            width: 27px;
            height: 32px;
        }
        .style8
        {
            height: 32px;
        }
        .style9
        {
            width: 378px;
            height: 34px;
        }
        .style10
        {
            width: 27px;
            height: 34px;
        }
        .style11
        {
            height: 34px;
        }
        .style12
        {
            height: 32px;
            width: 378px;
        }
    </style>
	
</head>

<body>
<form id="form1" runat="server">
<!-- wrap starts here -->
<div id="wrap">
	
	<div id="header">				
			
		<h1 id="logo">Mobile Store Admin</h1>	

		
		<!-- Menu Tabs -->
		
													
	</div>	
				
	<!-- content-wrap starts here -->
	<div id="content-wrap">		
											
	<img src="images/headerphoto.jpg" width="820" height="120" alt="headerphoto" class="no-border" />
		
		<div id="main" style="width:803px">	
			<!--
			
		    -->
							
		    <table class="style1">
                <tr>
                    <td align="center" class="style5" 
                        style="color: #666666; font-size: medium; font-weight: bold; font-style: italic" 
                        valign="top">
                        <table class="style2">
                            <tr>
                                <td align="right" class="style9">
                                    User ID :</td>
                                <td class="style10">
                                </td>
                                <td align="left" class="style11">
                                    <asp:TextBox ID="TxtUid" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" class="style12">
                                    Password :</td>
                                <td class="style7">
                                </td>
                                <td align="left" class="style8">
                                    <asp:TextBox ID="TxtPass" runat="server" TextMode="Password"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" class="style12">
                                    &nbsp;</td>
                                <td class="style7">
                                    &nbsp;</td>
                                <td align="left" class="style8">
                                    <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" />
                                </td>
                            </tr>
                            <tr>
                                <td align="center" class="style6" colspan="3">
                                    <asp:Label ID="LabDisp" runat="server"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td align="center" 
                        style="color: #666666; font-size: medium; font-weight: bold; font-style: italic">
                        &nbsp;</td>
                </tr>
            </table>
							
		</div>	
			
	<!-- content-wrap ends here -->		
	</div>

<!-- footer starts here -->	
<div id="footer">
	
	<div class="footer-left">
		<p class="align-left">&copy; 2011   <strong>My Company</strong></p>		
	</div>
	
	<div class="footer-right">
		<p class="align-right">
            <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">User Home</asp:LinkButton>
		</p>
	</div>
	
</div>

</div>
</form>
</body>
</html>
