<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SearchResultList.aspx.cs" Inherits="SearchResultList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>Search Result</title>
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
		margin-left: 195px;
		margin-top: 84px;
	}
	.auto-style2 {
		text-align: center;
	}
	.auto-style3 {
		font-size: xx-large;
	}

	.auto-style4 {
		margin-left: 332px;
		margin-top: 8px;
		margin-right: 0px;
	}
	.auto-style5 {
		width: 99%;
		height: 229px;
	}
	 #view {
						background-color: #660033; 
						border: none;
						color: white;
						padding: 15px 32px;
						text-align: center;
						text-decoration: none;
						display: inline-block;
						font-size: 16px;
						 }

	.auto-style7 {
		height: 54px;
		text-align: center;
	}
	.auto-style8 {
		font-size: large;
	}

</style>
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
		<asp:Panel ID="Panel1" runat="server" BackColor="#CC0000" CssClass="auto-style1" Height="65px" Width="556px">
			<div class="auto-style2">
				<strong>
				<asp:Label ID="Label1" runat="server" CssClass="auto-style3" Text="Location"></asp:Label>
				</strong>
			</div>
		</asp:Panel>
		<div>

			<asp:Panel ID="Panel2" runat="server" CssClass="auto-style4" Height="766px" Width="548px">
				<asp:DataList ID="DataList1" runat="server" CssClass="auto-style9" style="margin-left: 7px" OnItemCommand="DataList1_ItemCommand">
					<ItemTemplate>
						<table class="auto-style5" border="1">
							
							<tr>
								<td class="auto-style7" style="border-collapse: collapse; border-spacing: inherit"><strong><em>
									<asp:Label ID="Label3" runat="server" CssClass="auto-style8" Text='  <%#Eval("resname") %>'></asp:Label>
									</em></strong></td>
								 
								<caption>
									<br />
								</caption>
							</tr>
							<tr>
								<td class="auto-style7" style="border-collapse: collapse; border-spacing: inherit"><strong><em>
									<asp:Label ID="Label4" runat="server" CssClass="auto-style8" Text= '<%#Eval("address") %>'></asp:Label>
									</em></strong></td>
							
								<caption>
									<br />
								</caption>
							</tr>
							<tr>
								<td class="auto-style2" style="border-collapse: collapse; border-spacing: inherit">
									<asp:LinkButton ID="view" runat="server"  CommandName="ViewDetails"  CommandArgument='<%#Eval("resid") %>'>ViewDetails</asp:LinkButton>
								</td>
							</tr>
						</table>
					</ItemTemplate>
				</asp:DataList>
			</asp:Panel>

		</div>
	</form>
</body>
</html>
