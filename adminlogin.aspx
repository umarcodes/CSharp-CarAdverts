<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="adminlogin.aspx.cs" Inherits="admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <asp:Label ID="USRLbl" runat="server" Text="Username"></asp:Label>
    <asp:TextBox ID="UsernameTB" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Passlbl" runat="server" Text="Password"></asp:Label>
    <asp:TextBox ID="PasswordTB" runat="server" TextMode="Password"></asp:TextBox>
    <br />
    <asp:Button ID="loginBtn" runat="server" onclick="loginBtn_Click" 
        Text="Login" />
    <asp:Label ID="failLbl" runat="server"></asp:Label>
</asp:Content>

