<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ReservationShow.aspx.cs" Inherits="ReservationShow" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Reservation List</title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            margin-left: 269px;
            margin-top: 60px;
        }
        .auto-style2 {
            margin-left: 272px;
            margin-top: 40px;
        }
        .auto-style3 {
            text-align: center;
            font-size: xx-large;
        }
        .auto-style4 {
            width: 100%;
            height: 268px;
        }
        .auto-style5 {
            height: 43px;
            text-align: center;
        }
        .auto-style6 {
            height: 50px;
            text-align: center;
        }
        .auto-style7 {
            height: 47px;
            text-align: center;
        }
        .auto-style8 {
            height: 46px;
            text-align: center;
        }
        .auto-style9 {
            font-size: large;
        }
        .auto-style10 {
            text-align: center;
        }
    </style>
</head>
<body>

    <form id="form1" runat="server">
        <div>
        
            
        
            <asp:Panel ID="Panel1" runat="server" BackColor="#660033" CssClass="auto-style1" Height="75px" Width="473px">
                <div class="auto-style3">
                    <strong>Reservation List</strong><asp:Label ID="Label6" runat="server" Text="Label" ForeColor="#660033"></asp:Label>
                </div>
            </asp:Panel>
        
            
        
        </div>

        <asp:Panel ID="Panel2" runat="server" CssClass="auto-style2" Height="351px" Width="468px">
            <asp:DataList ID="DataList1" runat="server" OnItemCommand="DataList1_ItemCommand">
                <ItemTemplate>
                    <table class="auto-style4">
                        <tr>
                            <td class="auto-style5"><em>
                                <asp:Label ID="Label1" runat="server" CssClass="auto-style9" Text='<%#Eval("name") %>'></asp:Label>
                                </em></td>
                        </tr>
                        <tr>
                            <td class="auto-style6"><em>
                                <asp:Label ID="Label2" runat="server" CssClass="auto-style9" Text='<%#Eval("contact") %>'></asp:Label>
                                </em></td>
                        </tr>
                        <tr>
                            <td class="auto-style7"><em><strong>
                                <asp:Label ID="Label3" runat="server" CssClass="auto-style9" ForeColor="#003300" Text='<%#Eval("date") %>'></asp:Label>
                                </strong></em></td>
                        </tr>
                        <tr>
                            <td class="auto-style8"><strong><em>
                                <asp:Label ID="Label4" runat="server" CssClass="auto-style9" ForeColor="#003300" Text='<%#Eval("time") %>'></asp:Label>
                                </em></strong></td>
                        </tr>
                        <tr>
                            <td class="auto-style10"><strong><em>
                                <asp:Label ID="Label5" runat="server" CssClass="auto-style9" ForeColor="#003300" Text='<%#Eval("people") %>'></asp:Label>
                                </em></strong></td>
                        </tr>
                        <tr>
                            <td class="auto-style10">
                                <asp:LinkButton ID="LinkButton1" runat="server" CommandName="home" >Go to Profile</asp:LinkButton>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </asp:Panel>

    </form>
</body>
</html>
