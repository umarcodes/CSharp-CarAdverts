<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link rel="stylesheet" href="css/formstyle.css" type="text/css" />
        <div class="auto-style2">Login to your account</div>
    <div class="input">
				<div class="inputtext">Username: </div>
				<div class="inputcontent">
					<asp:TextBox ID="UsernameTB" runat="server"></asp:TextBox>
				    <asp:RequiredFieldValidator ID="usernameRFV" runat="server" ControlToValidate="UsernameTB" ErrorMessage="You must enter a username">*</asp:RequiredFieldValidator>
                    
				</div>
			</div>
    <div class="input">
				<div class="inputtext">Password: </div>
				<div class="inputcontent">
    <asp:TextBox ID="PasswordTB" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="passwordRFV" runat="server" ControlToValidate="PasswordTB" ErrorMessage="You must enter a password">*</asp:RequiredFieldValidator>
                    </div>
			</div>

<asp:ValidationSummary ID="ValidationSummary1" runat="server" />
    <asp:Button ID="loginBtn" class="orangebutton" runat="server" onclick="loginBtn_Click" 
        Text="Login" />
    </asp:Content>
