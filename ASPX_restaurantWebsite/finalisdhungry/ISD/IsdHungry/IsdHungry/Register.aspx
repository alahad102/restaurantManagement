<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register Page</title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            margin-left: 266px;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            font-size: xx-large;
        }
        .auto-style4 {
            margin-left: 268px;
        }
        .auto-style5 {
            height: 45px;
            margin-top: 41px;
            width: 644px;
        }
        .auto-style6 {
            font-size: large;
        }
        .auto-style7 {
            margin-left: 64px;
        }
        .auto-style9 {
            height: 37px;
            width: 649px;
        }
        .auto-style10 {
            height: 68px;
            text-align: center;
            margin-top: 27px;
        }
        .auto-style11 {
            margin-left: 0px;
        }
        .auto-style13 {
            height: 47px;
            margin-top: 23px;
        }
        .auto-style14 {
            margin-left: 92px;
        }
        .auto-style15 {
            margin-left: 62px;
        }
        .auto-style16 {
            margin-left: 17px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Panel ID="Panel1" runat="server" BackColor="#660033" CssClass="auto-style1" Height="112px" Width="470px">
            <div class="auto-style2">
                <strong>
                <asp:Label ID="Label1" runat="server" CssClass="auto-style3" Text="Register Form"></asp:Label>
                </strong>
            </div>
        </asp:Panel>
        <div>
            <asp:Panel ID="Panel2" runat="server" CssClass="auto-style4" Height="377px" Width="644px">
            <div class="auto-style5">

                <strong>
                <asp:Label ID="Label2" runat="server" CssClass="auto-style6" Text="Username"></asp:Label>
                </strong>
                <asp:TextBox ID="userText" runat="server" CssClass="auto-style7" Width="285px"></asp:TextBox>

                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label6" runat="server"></asp:Label>

            </div>

            <div class="auto-style9">
                <strong>
                <asp:Label ID="Label3" runat="server" CssClass="auto-style6" Text="Email"></asp:Label>
                </strong>
                <asp:TextBox ID="emailText" runat="server" CssClass="auto-style14" Width="284px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label7" runat="server"></asp:Label>
            </div>

            <div class="auto-style17">
                <strong>
                <asp:Label ID="Label4" runat="server" CssClass="auto-style6" Text="Password"></asp:Label>
                </strong>
                <asp:TextBox ID="passwordText" runat="server" CssClass="auto-style15" Width="288px" Height="16px" TextMode="Password"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label8" runat="server"></asp:Label>
            </div>

             <div class="auto-style13">
                  <strong>
                <asp:Label ID="Label5" runat="server" Text="Confirm Password"></asp:Label>
                </strong>
                  <asp:TextBox ID="conpassText" runat="server" CssClass="auto-style16" Width="288px" TextMode="Password"></asp:TextBox>
             </div>

            <div class="auto-style10"> 
             <asp:Button ID="regbttn" runat="server" CssClass="auto-style11" Height="54px" Text="Register" Width="182px" Font-Bold="True" OnClick="regbttn_Click" />

                <style>
                        #regbttn {
                        background-color: #660033; 
                        border: none;
                        color: white;
                        padding: 15px 32px;
                        text-align: center;
                        text-decoration: none;
                        display: inline-block;
                        font-size: 16px;
                         }
                        .auto-style24 {
                            font-size: xx-large;
                            width: 832px;
                        }
                        .auto-style25 {
                            font-size: 55pt;
                        }
                    </style>

            </div>

            </asp:Panel>
        </div>
    </form>
</body>
</html>
