<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title></title>
</head>
<body>
<style>
	body {
	background: #0C0D0D;
	margin: 0 auto;
	font-family: helvatica;
	max-width: 960px;
	padding: 20px;
}

ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
	background-color: #FF5733;
}

li {
	float: left;
}

	li a, .dropdown-btn {
		display: inline-block;
		color: #fff;
		text-align: center;
		padding: 18px 22px;
		text-decoration: none;
	}

		li a:hover, .dropdown:hover .dropdown-btn {
			background-color: #f5f5f5;
			color: #FF5733;
		}

	li.dropdown {
		display: inline-block;
	}

.dropdown-menu {
	display: none;
	position: absolute;
	background-color: #f5f5f5;
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.1);
}

	.dropdown-menu a {
		color: grey;
		padding: 12px 16px;
		text-decoration: none;
		display: block;
		text-align: left;
	}

		.dropdown-menu a:hover {
			background-color: #FF5733;
			color: #fff;
		}
.slider{
	
	width: 960px;
	height: 412px;
	animation: slide 5s infinite;
}
@keyframes slide{
	25%{
		background: url(CSSFILES/Images/slider1.jpg);
	}
	
	50%{
		background: url(CSSFILES/Images/slider2.jpg);
	}
	
	75%{
		background: url(CSSFILES/Images/slider3.png);
	}
	
	100%{
		background: url(CSSFILES/Images/slider33.jpg);
	}


}
</style>
	<form id="form1" runat="server">
	 <div>
	<nav>
	<ul>
	  
	  <li><a href="#"> HOME </a></li>
	  <li><a> ABOUT </a></li>
	  <li class="auto-style2"><a> CONTACT US</a></li>
	  <li class="auto-style1"><asp:Label ID="Label1" runat="server" Text="Hi" Font-Italic="True" ForeColor="White"></asp:Label></li>
	  <li class="auto-style4"><a href="Profileowner.aspx"> PROFILE </a></li>
	  <li> <a href="Logoff.aspx">LOG OFF</a></li>
	  
	</ul>
	</nav>
	</div>
		<div class="slider">

</div>
	
<asp:TextBox ID="TextBox1" runat="server" Height="35px" style="margin-top: 19px" Width="609px"></asp:TextBox>
<asp:Button ID="Button1" runat="server" Text="Search" Width="127px" CssClass="button" OnClick="Button1_Click"  />
<style>
#Button1 {
	background-color: #FF5733; /* Green */
	border: none;
	color: white;
	padding: 15px 32px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
}
		.auto-style1 {
		width: 93px;
		height: 40px;
		margin-top: 18px;
	}
		.auto-style2 {
		width: 239px;
	}
		.auto-style3 {
		width: 138px;
	}
	.auto-style4 {
		width: 112px;
	}
		</style>
		
	</form>
</body>
</html>
