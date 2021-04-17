<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DefaultHome.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>HOME</title>
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

#DropDownList1 {
    margin-top: 55px;
}
 #listBttn {
    background-color: #FF5733; /* Green */
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
}
.slider{
    
    width: 960px;
    height: 412px;
    animation: slide 5s infinite;
}
@keyframes slide{
    25%{
        background: url(css/Images/slider1.jpg);
    }
    
    50%{
        background: url(css/Images/slider2.jpg);
    }
    
    75%{
        background: url(css/Images/slider3.png);
    }
    
    100%{
        background: url(css/Images/slider33.jpg);
    }
 

}
</style>
    <form id="form1" runat="server">
     <div>
    <nav>
    <ul>
      
      <li><a href="#"> HOME </a></li>
      <li><a href="Error.aspx"> ABOUT </a></li>
      <li><a href="Error.aspx"> CONTACT</a></li>
      <li><a href="Login.aspx"> LOGIN </a></li>
      <li><a href="Register.aspx"> SIGN UP</a></li>
    </ul>
    </nav>
    </div>
        <div class="auto-style2">

</div>
        <div class="slider">

        </div>
<div>
    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style1" Height="60px" Width="644px">
        <asp:ListItem>Select Your Location</asp:ListItem>
        <asp:ListItem>Banani</asp:ListItem>
        <asp:ListItem>Khilgaon</asp:ListItem>
        <asp:ListItem>Dhanmondi</asp:ListItem>
    </asp:DropDownList>
    <asp:Button ID="listBttn" runat="server" Height="61px" OnClick="Button2_Click" Text="Search" Width="117px" />
</div>

    </form>
</body>
</html>
