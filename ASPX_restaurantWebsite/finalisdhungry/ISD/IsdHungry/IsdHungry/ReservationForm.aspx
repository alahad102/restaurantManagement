<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ReservationForm.aspx.cs" Inherits="ReservationForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>Reservation Form</title>
	<style type="text/css">
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
		.auto-style1 {
			margin-left: 178px;
			margin-top: 98px;
		}
		.auto-style2 {
			font-size: 40pt;
		}
		.auto-style3 {
			margin-left: 224px;
			margin-top: 25px;
		}
		.auto-style4 {
			height: 77px;
		}
		.auto-style5 {
			height: 72px;
		}
		.auto-style6 {
			height: 232px;
		}
		.auto-style7 {
			font-size: large;
		}
		.auto-style8 {
			margin-left: 145px;
			margin-top: 16px;
		}
		.auto-style9 {
			margin-left: 64px;
			margin-top: 11px;
		}
		.auto-style10 {
			margin-left: 46px;
			margin-top: 9px;
		}
		.auto-style11 {
			height: 67px;
			margin-top: 37px;
		}
		.auto-style12 {
			margin-left: 149px;
			margin-top: 15px;
		}

		#reserveBttn {
			  background-color: #CC0000; /* Green */
			  border: none;
			  color: white;
			  padding: 15px 32px;
			  text-align: center;
			  text-decoration: none;
			  display: inline-block;
			  font-size: 16px;
}
	
		.auto-style13 {
			height: 30px;
		}
	
		.auto-style14 {
			margin-left: 28px;
		}
	
		.auto-style15 {
			margin-left: 58px;
		}
	
	</style>
</head>
<body>
	<form id="form1" runat="server">
	   <div>
			<nav>
	<ul>
	  
	  <li><a href="DefaultHome.aspx"> HOME </a></li>
	  <li><a href="Error.aspx"> ABOUT </a></li>
	  <li><a href="Error.aspx"> CONTACT</a></li>
	  <li><a href="Login.aspx"> LOGIN </a></li>
	  <li><a href="Register.aspx"> SIGN UP</a></li>
	</ul>
	</nav>
	   </div>
		<div>
			<asp:Panel ID="Panel1" runat="server" BackColor="#CC0000" CssClass="auto-style1" Height="96px" Width="667px">
				<asp:Label ID="Label1" runat="server" Text="id" ForeColor="#990033"></asp:Label>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong><span class="auto-style2">Reservation Form</span></strong></asp:Panel>
		</div>
		<asp:Panel ID="Panel2" runat="server" CssClass="auto-style3" Height="616px" Width="671px">
			<div class="auto-style4">

				<asp:Label ID="Label2" runat="server" CssClass="auto-style7" Font-Bold="True" Text="Name"></asp:Label>
				<asp:TextBox ID="rName" runat="server" CssClass="auto-style8" Height="21px" Width="344px"></asp:TextBox>

			    <asp:Label ID="Label7" runat="server"></asp:Label>

			</div>

			<div class="auto-style5">

				<strong>
				<asp:Label ID="Label3" runat="server" CssClass="auto-style7" Text="Contact Number"></asp:Label>
				</strong>
				<asp:TextBox ID="rContact" runat="server" CssClass="auto-style9" Height="20px" Width="353px"></asp:TextBox>

			    <asp:Label ID="Label8" runat="server"></asp:Label>

			</div>

			<div class="auto-style6">

				<asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
				<asp:Label ID="Label5" runat="server" Text="Select a time"></asp:Label>
				<asp:DropDownList ID="DropDownList1" runat="server" Height="27px" Width="108px" CssClass="auto-style14">
					<asp:ListItem>4-5</asp:ListItem>
					<asp:ListItem>2-3</asp:ListItem>
					<asp:ListItem>5-6</asp:ListItem>
				</asp:DropDownList>
				<asp:TextBox ID="DateText" runat="server" CssClass="auto-style10" Height="24px" Width="187px"></asp:TextBox>

			</div>
			<div class="auto-style11" >

				<strong>
				<asp:Label ID="Label6" runat="server" CssClass="auto-style7" Text="Number of People"></asp:Label>
				</strong>
				<asp:TextBox ID="pplText" runat="server" CssClass="auto-style15" Height="21px" Width="292px"></asp:TextBox>

			    <asp:Label ID="Label9" runat="server"></asp:Label>

			</div>
			<div class="auto-style11">

				<asp:Button ID="reserveBttn" runat="server" CssClass="auto-style12" Height="50px" Text="Reserve" Width="255px" OnClick="reserveBttn_Click" />

			</div>
			<div class="auto-style13">

				<asp:Label ID="MsgLabel" runat="server"></asp:Label>

			</div>
		</asp:Panel>
	</form>
</body>
</html>
