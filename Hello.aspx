<%@ Page Language="C#" AutoEventWireup="true" Theme ="Skin1" CodeBehind="Hello.aspx.cs" Inherits="Onlineshop.Hello" %>
<%@ Register Src="AddControl.ascx" tagname="AddControl" TagPrefix="uc1" %>
<!DOCTYPE html>
<script runat="server">

                   

                  
</script><html xmlns="http://www.w3.org/1999/xhtml"><head runat="server"><title></title></head><body><form id="form1" runat="server">
        <div>
        </div>
    <uc1:AddControl ID="AddContol1" runat="server" />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <p>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        </p>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="session" />
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        <p>
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="application" />
            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Button" />
            <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Button" />
            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
        </p>
        <p>
            <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Button" />
            <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
        </p>
        <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="store in cookie" />
        <asp:Button ID="Button8" runat="server" OnClick="Button8_Click" Text="read from cookie" />
        <p>
            <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
        </p>
        <asp:Button ID="Button9" runat="server" BorderColor="#FF9900" BorderStyle="Dotted" OnClick="Button9_Click" Text="Button" />
        <br />

                    <br />
                    <table style="width:100%;">
                        <tr>
                            <td class="auto-style1">Enter 1st num</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style1">
                                <asp:TextBox ID="TextBox33" runat="server"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style1">Enter 2nd num</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:TextBox ID="TextBox34" runat="server"></asp:TextBox>
                            </td>
                            <td class="auto-style3"></td>
                            <td class="auto-style3"></td>
                        </tr>
                        <tr>
                            <td class="auto-style1">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style1">
                                <asp:Button ID="Button20" runat="server" OnClick="Button1_Click" Text="Add num" />
                                <asp:Label ID="Label20" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                    <br />
    </form>
</body>
</html>
