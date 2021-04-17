<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Profileowner.aspx.cs" Inherits="ProfileUpdating" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>PROFILE</title>
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
        margin-left: 123px;
        margin-top: 50px;
    }
    .auto-style2 {
        font-size: xx-large;
    }
    .auto-style3 {
        margin-left: 305px;
        margin-top: 12px;
    }
    .auto-style4 {
        width: 100%;
        height: 261px;
    }
    .auto-style5 {
        height: 48px;
        text-align: center;
    }
    .auto-style6 {
        height: 40px;
        text-align: center;
    }
    .auto-style7 {
        height: 66px;
        text-align: center;
    }
    .auto-style8 {
        font-size: xx-small;
    }
</style>
    <form id="form1" runat="server">
        <div>
         <nav>
           <ul>
              <li><a href="Home.aspx"> HOME </a></li>
              <li><a href="Error.aspx"> ABOUT </a></li>
              <li><a href="Error.aspx"> CONTACT</a></li>
              <li><a href="Profileowner.aspx"> PROFILE </a></li>
              <li><a href="Logoff.aspx"> LOGOFF</a></li>
    </ul>
    </nav>
   </div>

        <asp:Panel ID="Panel1" runat="server" CssClass="auto-style1" Height="43px" Width="786px">
            <asp:Label ID="Label1" runat="server" Text="id" ForeColor="#FFFFCC"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong><span class="auto-style2">PROFILE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></strong>
            <asp:Label ID="Label5" runat="server" CssClass="auto-style8" Text='<%# Eval("resid") %>' ForeColor="White"></asp:Label>
        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server" CssClass="auto-style3" Height="370px" Width="443px">
            <asp:DataList ID="DataList1" runat="server" OnItemCommand="DataList1_ItemCommand">
                <ItemTemplate>
                    <table class="auto-style4">
                        <tr>
                            <td class="auto-style5">
                                <asp:Label ID="Label2" runat="server" Text='<%#Eval("resname") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style6">
                                <asp:Label ID="Label3" runat="server" Text='<%#Eval("location") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style7">
                                <asp:Label ID="Label4" runat="server" Text='<%#Eval("address") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:LinkButton ID="LinkButton1" runat="server" CommandName="profile" CommandArgument='<%#Eval("resid") %>'>Update Your Profile </asp:LinkButton>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:LinkButton ID="LinkButton2" runat="server" CommandName="reserve" CommandArgument='<%#Eval("resid") %>'>View Reservations</asp:LinkButton>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:LinkButton ID="LinkButton3" runat="server" CommandName="menu" CommandArgument='<%#Eval("resid") %>'>View Menu</asp:LinkButton>
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:LinkButton ID="LinkButton4" runat="server" CommandName="rate" CommandArgument='<%#Eval("resid") %>'>Rate</asp:LinkButton>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </asp:Panel>

    </form>
</body>
</html>
