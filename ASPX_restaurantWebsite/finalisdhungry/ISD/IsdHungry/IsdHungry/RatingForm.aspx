<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RatingForm.aspx.cs" Inherits="RatingForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Rating Form</title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 338px;
            margin-top: 83px;
        }
        .auto-style2 {
            margin-left: 344px;
        }
        .auto-style3 {
            width: 100%;
            height: 306px;
        }
        .auto-style4 {
            height: 62px;
        }
        .auto-style5 {
            height: 72px;
        }
        .auto-style6 {
            height: 93px;
        }
        .auto-style7 {
            margin-left: 29px;
        }
        .auto-style8 {
            font-weight: bold;
        }
        .auto-style9 {
            text-align: center;
        }
         #Button1 {
                        background-color: #000066; 
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
            <asp:Panel ID="Panel1" runat="server" BackColor="#000066" CssClass="auto-style1" Height="67px" Width="312px">
                <asp:Label ID="Label1" runat="server" Text="Label" ForeColor="#000066"></asp:Label>
            </asp:Panel>
        </div>
        <asp:Panel ID="Panel2" runat="server" CssClass="auto-style2" Height="329px" Width="302px">
            <table class="auto-style3">
                <tr>
                    <td class="auto-style4"><strong>
                        <asp:Label ID="Label2" runat="server" Text="name"></asp:Label>
                        </strong>
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style7" Width="209px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5"><strong>
                        <asp:Label ID="Label3" runat="server" Text="rating"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>
                        <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="60px">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6"><strong>
                        <asp:Label ID="Label4" runat="server" Text="review"></asp:Label>
                        &nbsp;&nbsp; </strong>
                        <asp:TextBox ID="TextBox2" runat="server" Height="49px" Width="223px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9"><strong>
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style8" Text="Rate" OnClick="Button1_Click" />
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style9">
                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Go Back</asp:LinkButton>
                    </td>
                </tr>
            </table>
        </asp:Panel>
    </form>
</body>
</html>
