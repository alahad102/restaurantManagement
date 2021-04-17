<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Menushow.aspx.cs" Inherits="Menushow" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Menu</title>
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
        margin-top: 51px;
        margin-left: 195px;
    }
    .auto-style2 {
        text-align: center;
    }
    .auto-style3 {
        font-size: xx-large;
    }
    .auto-style4 {
        margin-top: 50px;
    }
    
</style>
    <form id="form1" runat="server">
   
        <asp:Panel ID="Panel1" runat="server" BackColor="#FF3300" CssClass="auto-style1" Height="70px" Width="1002px">
            <div class="auto-style2">
                <strong><em>
                <asp:Label ID="Label1" runat="server" CssClass="auto-style3" Text="MENU"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" ForeColor="#FF3300" Text="Label"></asp:Label>
                &nbsp;&nbsp; </em></strong>
            </div>
        </asp:Panel>

        <asp:Panel ID="Panel2" runat="server" CssClass="auto-style1" Height="1000px">
            <asp:DataList ID="DataList1" runat="server" CssClass="auto-style5" style="margin-left: 116px">
                <ItemTemplate>
                    <table>
                        <tr>
                            <td>
                            
                                 <img src=" <%#Eval("imagedata") %>" height="811" width="811"/>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </asp:Panel>
   
    </form>
</body>
</html>
