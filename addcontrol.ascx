<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="addcontrol.ascx.cs" Inherits="Onlineshop.addcontrol" %>

<style type="text/css">
    .auto-style1 {
        width: 488px;
    }
    .auto-style2 {
        width: 488px;
        height: 26px;
    }
    .auto-style3 {
        height: 26px;
    }
</style>

<table style="width:100%;">
    <tr>
        <td class="auto-style1">Enter 1st num</td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">Enter 2nd num</td>
        <td class="auto-style3">
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style3"></td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style3"></td>
        <td class="auto-style3"></td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" style="height: 26px" Text="Button" />
            <asp:Label ID="Label21" runat="server" Text="Label"></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>

