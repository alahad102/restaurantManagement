<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RatingShow.aspx.cs" Inherits="RatingShow" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>See Your Reviews</title>
	<style>

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
		text-align: center;
		margin-left: 217px;
		margin-top: 90px;
	}
	.auto-style2 {
		text-align: center;
	}
	.auto-style3 {
		font-size: x-large;
	}
	.auto-style4 {
		margin-left: 311px;
	}
	.auto-style5 {
		width: 112%;
		height: 213px;
	}
	.auto-style6 {
		height: 39px;
		text-align: left;
	}
	.auto-style7 {
		height: 49px;
		}
	.auto-style9 {
		font-size: medium;
	}
	.auto-style10 {
		font-size: large;
	}
	.auto-style11 {
		height: 54px;
		text-align: left;
	}
	.auto-style12 {
		width: 1086px;
		height: 1045px;
	}
	.auto-style13 {
		text-align: center;
		margin-top: 72px;
		margin-left: 298px;
	}
	.auto-style14 {
		font-size: xx-large;
	}
	.auto-style15 {
		width: 100%;
		height: 165px;
	}
	.auto-style16 {
		text-align: left;
		width: 58px;
		height: 42px;
	}
	.auto-style17 {
		width: 58px;
		text-align: left;
		height: 66px;
	}
	.auto-style18 {
		height: 42px;
		text-align: left;
	}
	.auto-style19 {
		width: 58px;
		height: 35px;
		text-align: left;
	}
	.auto-style20 {
		height: 35px;
		text-align: left;
	}
	.auto-style21 {
		text-align: left;
		height: 66px;
	}
</style>
</head>
<body>
	<form id="form1" runat="server">
		<div>
			<nav>
				<ul>
			  <li><a href="#"> HOME </a></li>
			  <li><a> ABOUT </a></li>
			  <li><a> CONTACT</a></li>
			  <li><a href="#"> LOGIN </a></li>
			  <li><a> SIGN UP</a></li>
	</ul>
	</nav>
		</div>
	<div>
 
		<asp:Panel ID="Panel3" runat="server" BackColor="White" CssClass="auto-style13" Height="48px" Width="345px">
			<asp:Label ID="Label18" runat="server" ForeColor="White" Text="id"></asp:Label>
			<strong><span class="auto-style14">Reviews</span></strong><br />
			<asp:Panel ID="Panel4" runat="server" Height="324px" Width="447px">
				<asp:DataList ID="DataList2" runat="server">
					<ItemTemplate>
						<table class="auto-style15">
							<tr>
								<td class="auto-style16">
									<asp:Label ID="Label12" runat="server" Text="name" ForeColor="Red"></asp:Label>
								</td>
								<td class="auto-style18">
									<asp:Label ID="Label13" runat="server" Text='<%#Eval("reviewname") %>'></asp:Label>
								</td>
							</tr>
							<tr>
								<td class="auto-style19">
									<asp:Label ID="Label14" runat="server" Text="rating" ForeColor="Red"></asp:Label>
								</td>
								<td class="auto-style20">
									<asp:Label ID="Label15" runat="server" Text='<%#Eval("rating") %>'></asp:Label>
								</td>
							</tr>
							<tr>
								<td class="auto-style17">
									<asp:Label ID="Label16" runat="server" Text="review" ForeColor="Red"></asp:Label>
								</td>
								<td class="auto-style21">
									<asp:Label ID="Label17" runat="server" Text='<%#Eval("review") %>'></asp:Label>
								</td>
							</tr>
						</table>
					</ItemTemplate>
				</asp:DataList>
			</asp:Panel>
		</asp:Panel>
	</div>
	</form>
</body>
</html>
