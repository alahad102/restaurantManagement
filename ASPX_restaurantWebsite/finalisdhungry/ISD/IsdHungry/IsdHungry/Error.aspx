<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Error.aspx.cs" Inherits="Error" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Error Page</title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            margin-left: 244px;
            margin-top: 94px;
        }
        .auto-style2 {
            font-size: xx-large;
        }
    </style>
</head>
<body style="height: 551px">
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Panel1" runat="server" BackColor="#000066" CssClass="auto-style1" Height="158px" Width="535px">
                <strong>
                <asp:Label ID="Label1" runat="server" CssClass="auto-style2" ForeColor="#FF3300" Text="Sorry We are Working On This Feauter"></asp:Label>
                <br />
                <br />
                </strong>
                <asp:LinkButton ID="LinkButton1" runat="server" BackColor="#FF6600" CommandName="home " OnClick="LinkButton1_Click">GO HOME</asp:LinkButton>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
