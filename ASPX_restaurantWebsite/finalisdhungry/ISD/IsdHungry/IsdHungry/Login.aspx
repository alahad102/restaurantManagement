<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Form</title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            margin-left: 258px;
            margin-top: 31px;
        }
        .auto-style2 {
            font-size: xx-large;
        }
        .auto-style3 {
            margin-left: 260px;
            margin-top: 27px;
        }
        .auto-style4 {
            width: 100%;
        }
        .auto-style5 {
            height: 69px;
        }
        .auto-style6 {
            height: 71px;
        }
        .auto-style7 {
            height: 75px;
        }
        .auto-style8 {
            font-size: large;
        }
        .auto-style9 {
            margin-left: 80px;
        }
        .auto-style10 {
            margin-left: 82px;
        }
        .auto-style11 {
            margin-left: 26px;
        }

        #adminlogBttn{
             background-color: #660033; 
                        border: none;
                        color: white;
                        padding: 15px 32px;
                        text-align: center;
                        text-decoration: none;
                        display: inline-block;
                        font-size: 16px;

        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Panel1" runat="server" BackColor="#660033" CssClass="auto-style1" Height="106px" Width="498px">
                <div>
                    <strong>
                    <asp:Label ID="Label1" runat="server" CssClass="auto-style2" Text="Login Form"></asp:Label>
                    </strong>
                </div>
            </asp:Panel>
        </div>
        <asp:Panel ID="Panel2" runat="server" CssClass="auto-style3" Height="251px" Width="492px">
            <table class="auto-style4">
                <tr>
                    <td class="auto-style5"><strong>
                        <asp:Label ID="Label2" runat="server" CssClass="auto-style8" Text="username"></asp:Label>
                        </strong>
                        <asp:TextBox ID="usernameText" runat="server" CssClass="auto-style9" Width="315px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6"><strong>
                        <asp:Label ID="Label3" runat="server" CssClass="auto-style8" Text="Password"></asp:Label>
                        </strong>
                        <asp:TextBox ID="passwordText" runat="server" CssClass="auto-style10" Width="307px" OnTextChanged="passwordText_TextChanged" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <asp:Button ID="logBttn" runat="server" CssClass="auto-style11" Text="User Login" Width="168px" OnClick="logBttn_Click" />

                        <style>
                        #logBttn {
                        background-color: #660033; 
                        border: none;
                        color: white;
                        padding: 15px 32px;
                        text-align: center;
                        text-decoration: none;
                        display: inline-block;
                        font-size: 16px;
                         }
                        .auto-style16 {
                            margin-left: 2px;
                        }
                        </style>

                        <asp:Button ID="adminlogBttn" runat="server" CssClass="auto-style11" OnClick="adminlog_Click" Text="Admin Login" Width="168px" />

                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>

        </asp:Panel>
    </form>
</body>
</html>
