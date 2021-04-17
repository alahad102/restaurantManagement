<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Details.aspx.cs" Inherits="Details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>Restaurant Details</title>
</head>

<body>
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
	<form id="form1" runat="server" class="auto-style12">
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
		<asp:Panel ID="Panel1" runat="server" BackColor="#FF3300" CssClass="auto-style1" Height="67px" Width="560px">
			<div class="auto-style2">
				<em><strong>
				<asp:Label ID="Label1" runat="server" CssClass="auto-style3" Text="Restaurant Info"></asp:Label>
				</strong>
				<asp:Label ID="Label6" runat="server" Text="Label" ForeColor="#FF3300"></asp:Label>
				</em>
			</div>
		</asp:Panel>
		<asp:Panel ID="Panel2" runat="server" CssClass="auto-style4" Height="267px" Width="384px">
			<asp:DataList ID="DataList1" runat="server" OnItemCommand="DataList1_ItemCommand">
				<ItemTemplate>
					<table class="auto-style5">
						<tr>
							<td class="auto-style6">
								<asp:Label ID="Label8" runat="server" CssClass="auto-style9" Font-Bold="True" Text="Name:"></asp:Label>
								<asp:Label ID="Label2" runat="server" Text='<%# Eval("resid") %>' ForeColor="White"></asp:Label>
								&nbsp;&nbsp; <em><strong>
								<asp:Label ID="Label3" runat="server" CssClass="auto-style3" Text='<%#Eval("resname") %>'></asp:Label>
								</strong></em></td>
						</tr>
						<tr>
							<td class="auto-style7"><strong>
								<asp:Label ID="Label9" runat="server" CssClass="auto-style9" Text="Location:   "></asp:Label>
								<em>
								<asp:Label ID="Label4" runat="server" CssClass="auto-style9" Text='<%# Eval("location") %>' ForeColor="Red"></asp:Label>
								</em></strong></td>
						</tr>
						<tr>
							<td class="auto-style11"><strong>
								<asp:Label ID="Label10" runat="server" CssClass="auto-style9" Text="Address:   "></asp:Label>
								</strong><em><strong>
								<asp:Label ID="Label5" runat="server" CssClass="auto-style9" Text='<%#Eval("address") %>'></asp:Label>
								</strong></em></td>
						</tr>
						<tr>
							<td class="auto-style11"><strong>
								<asp:Label ID="Label11" runat="server" CssClass="auto-style9" Text="Rating:   "></asp:Label>
								<em>
								<asp:Label ID="Label7" runat="server" CssClass="auto-style10" Text='<%#Eval("avgrate") %>'></asp:Label>
								</em></strong></td>
						</tr>
						<tr>
							<td>
								<asp:LinkButton ID="LinkButton1" runat="server" CommandName="reserve" CommandArgument=' <%#Eval("resid") %>'>Reserve</asp:LinkButton>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<asp:LinkButton ID="LinkButton2" runat="server" CommandName="menu" CommandArgument=' <%#Eval("resid") %>'>View Menu</asp:LinkButton>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<asp:LinkButton ID="LinkButton3" runat="server" CommandName="rate" CommandArgument=' <%#Eval("resid") %>'>Ratings</asp:LinkButton>
							</td>
						</tr>
					</table>
				</ItemTemplate>
			</asp:DataList>
		</asp:Panel>
		<asp:Panel ID="Panel3" runat="server" BackColor="White" CssClass="auto-style13" Height="48px" Width="345px">
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
	</form>
</body>
</html>
