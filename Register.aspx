<%@ Page Title="" Language="C#" MasterPageFile="~/Mytemplate.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Onlineshop.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style2 {
        width: 304px;
    }
    .auto-style3 {
        width: 364px;
    }
    .auto-style4 {
        width: 304px;
        height: 23px;
    }
    .auto-style5 {
        width: 364px;
        height: 23px;
    }
    .auto-style6 {
        width: 304px;
        height: 22px;
    }
    .auto-style7 {
        width: 364px;
        height: 22px;
    }
    .auto-style8 {
        height: 22px;
    }
    .auto-style12 {
        width: 304px;
        height: 28px;
    }
    .auto-style13 {
        width: 364px;
        height: 28px;
    }
    .auto-style14 {
        height: 28px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%;">
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">Username</td>
        <td class="auto-style3">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="enter ur name" Display="None"></asp:RequiredFieldValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">Password</td>
        <td class="auto-style3">
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">Confirm Password</td>
        <td class="auto-style3">
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" ErrorMessage="password mismatch" Display="None"></asp:CompareValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">Gender </td>
        <td class="auto-style5">
            <asp:RadioButton ID="Male" runat="server" GroupName="m1" Text="Male" OnCheckedChanged="Male_CheckedChanged" />
            <asp:RadioButton ID="Female" runat="server" GroupName="m1" Text="Female" />
        </td>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style1"></td>
    </tr>
    <tr>
        <td class="auto-style4">Age</td>
        <td class="auto-style5">
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style1">
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="textbox4" ErrorMessage="u are not eligible to register" MaximumValue="100" MinimumValue="10" Type="Integer" Display="None"></asp:RangeValidator>
        </td>
        <td class="auto-style1"></td>
    </tr>
    <tr>
        <td class="auto-style6">Email </td>
        <td class="auto-style7">
            <asp:TextBox ID="TextBox6" runat="server" OnTextChanged="TextBox6_TextChanged"></asp:TextBox>
        </td>
        <td class="auto-style8">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox6" ErrorMessage="Enter email in proper format" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="None"></asp:RegularExpressionValidator>
        </td>
        <td class="auto-style8"></td>
    </tr>
    <tr>
        <td class="auto-style2">Nationality</td>
        <td class="auto-style3">
            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:CustomValidator ID="CustomValidator2" runat="server" ControlToValidate="TextBox7" ErrorMessage="You are living in wrong countrry" OnServerValidate="CustomValidator2_ServerValidate" ClientValidationFunction="myfunc" Display="None"></asp:CustomValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style5">&nbsp;</td>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style1"></td>
    </tr>
    <tr>
        <td class="auto-style12"></td>
        <td class="auto-style13">
            <asp:Button ID="Button1" runat="server" Height="22px" Text="Register" Width="68px" OnClick="Button1_Click1" />
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        </td>
        <td class="auto-style14">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        </td>
        <td class="auto-style14"></td>
    </tr>
    <tr>
        <td class="auto-style6"></td>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style8">&nbsp;</td>
        <td class="auto-style8"></td>
    </tr>
    <tr>
        <td class="auto-style4"></td>
        <td class="auto-style5"></td>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style1"></td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4"></td>
        <td class="auto-style5"></td>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style1"></td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4"></td>
        <td class="auto-style5"></td>
        <td class="auto-style1"></td>
        <td class="auto-style1"></td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
    <script>
        function myfunc(source, args) {
            if (args.Value == "INDIA" || args.Value == "CANADA" || args.Value == "USA") {
                args.IsValid = true;
            }
            else {
                args.IsValid = false;
            }
        }
    </script>
</asp:Content>
