﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Mytemplate.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Onlineshop.WebForm1" %>
<%@ Register Assembly="Onlineshop" Namespace="Onlineshop" TagPrefix="cool" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <cool:Mycustomcontol id="c1" runat="server" Text="Hello World!" />
</asp:Content>
