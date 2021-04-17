<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UpdateProfile.aspx.cs" Inherits="UpdateProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Profile Updation</title>

     <style type="text/css">
        .auto-style1 {
            text-align: center;
            margin-left: 210px;
            margin-top: 45px;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            font-size: xx-large;
        }
        .auto-style4 {
            margin-left: 214px;
            margin-top: 22px;
        }
        .auto-style5 {
            width: 120%;
        }
        .auto-style6 {
            height: 76px;
        }
        .auto-style7 {
            font-size: large;
        }
        .auto-style8 {
            margin-left: 28px;
        }
        .auto-style9 {
            height: 62px;
        }
        .auto-style10 {
            height: 69px;
        }
        .auto-style11 {
            height: 63px;
            text-align: center;
        }
        .auto-style12 {
            margin-left: 105px;
        }
        .auto-style13 {
            margin-left: 100px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
                <div>
            <asp:Panel ID="Panel1" runat="server" BackColor="#660033" CssClass="auto-style1" Height="65px" Width="518px">
                <div class="auto-style2">
                    <strong>
                    <asp:Label ID="Label1" runat="server" CssClass="auto-style3" Text="Profile"></asp:Label>
                    </strong>
                    <asp:Label ID="Label9" runat="server" Text="Label" ForeColor="#660033"></asp:Label>
                </div>
            </asp:Panel>
        </div>
        <asp:Panel ID="Panel2" runat="server" CssClass="auto-style4" Height="446px" Width="849px">
            <table class="auto-style5">
                <tr>
                    <td class="auto-style6"><strong>
                        <asp:Label ID="Label2" runat="server" CssClass="auto-style7" Text="Restaurant Name"></asp:Label>
                        </strong>
                        <asp:TextBox ID="resnameText" runat="server" CssClass="auto-style8" Width="303px"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label3" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9"><strong>
                        <asp:Label ID="Label4" runat="server" CssClass="auto-style7" Text="Address"></asp:Label>
                        </strong>
                        <asp:TextBox ID="addText" runat="server" CssClass="auto-style12" Height="37px" Width="388px"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label5" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10"><strong>
                        <asp:Label ID="Label6" runat="server" CssClass="auto-style7" Text="Location"></asp:Label>
                        </strong>
                        <asp:DropDownList ID="LocationDropDown" runat="server" CssClass="auto-style13" Height="29px" Width="305px">
                            <asp:ListItem>Banani</asp:ListItem>
                            <asp:ListItem>Dhanmondi</asp:ListItem>
                            <asp:ListItem>Khilgaon</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9"><strong>
                        <asp:Label ID="Label7" runat="server" CssClass="auto-style7" Text="Upload Your Menu"></asp:Label>
                        &nbsp;&nbsp;&nbsp; </strong>
                        <asp:FileUpload ID="FileUpload1" runat="server" Width="310px" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label8" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">
                        <asp:Button ID="uploadBttn" runat="server" Height="51px" Text="Update" Width="168px" CssClass="auto-style14" OnClick="uploadBttn_Click" />

                       <style>
                        #uploadBttn {
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

                    </td>
                </tr>
            </table>
            <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
        </asp:Panel>
        </div>
    </form>
</body>
</html>
