<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="signUp.aspx.cs" Inherits="signUp" %>
<%@ Register    Assembly="AjaxControlToolkit"    Namespace="AjaxControlToolkit"TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2
        {
            float: left;
            width: 113px;
            height: 50px;
        }
        .auto-style3
        {
            filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#ffc339', endColorstr='#ff9b19',GradientType=0 );
            -webkit-border-radius: 20px;
            -moz-border-radius: 20px;
            border-radius: 20px;
            line-height: 20px;
            font-size: 16px;
            color: #fff;
            text-shadow: -1px -1px #ff9b19;
            float: right;
            cursor: pointer;
            border: 1px solid #ff9b19;
            margin-left: 10px;
            margin-bottom: 0px;
            padding: 6px 12px;
            background: #ffc339;
        }
        .auto-style4
        {
            width: 410px;
            overflow: hidden;
            height: 104px;
            border-bottom: 1px solid #ddd;
            margin: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link rel="stylesheet" href="css/formstyle.css" type="text/css" />
        <div class="formtitle">Register Now!!!</div>
    <div class="input">
				<div class="inputtext">Full Name: </div>
				<div class="inputcontent">
					<asp:TextBox ID="fullnameTB" runat="server"></asp:TextBox>
				    <asp:RequiredFieldValidator ID="FullNameValidator" runat="server" ControlToValidate="fullnameTB" ErrorMessage="Required"></asp:RequiredFieldValidator>
				</div>
    </div>
    <div class="input">
				<div class="inputtext">User Name: </div>
				<div class="inputcontent">
					<asp:TextBox ID="usernameTB" runat="server"></asp:TextBox>
				    <asp:RequiredFieldValidator ID="UserNameValidator" runat="server" ControlToValidate="usernameTB" ErrorMessage="Required"></asp:RequiredFieldValidator>
				</div>
    </div>
    <div class="input">
				<div class="inputtext">Password: </div>
				<div class="inputcontent">
					<asp:TextBox ID="passwordTB" runat="server" TextMode="Password"></asp:TextBox>
				    <asp:RequiredFieldValidator ID="PasswordValidator" runat="server" ControlToValidate="passwordTB" ErrorMessage="Required"></asp:RequiredFieldValidator>
				</div>
    </div>
    <div class="auto-style4">
				<div class="inputtext">Address: </div>
				<div class="inputcontent">
					<asp:TextBox ID="StAddressTB" runat="server"></asp:TextBox>
				    <asp:RequiredFieldValidator ID="StAddressValidator" runat="server" ControlToValidate="StAddressTB" ErrorMessage="Required"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="LocalAreaTB" runat="server"></asp:TextBox>
				    <asp:RequiredFieldValidator ID="LocalAreaRFV" runat="server" ControlToValidate="LocalAreaTB" ErrorMessage="Required"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="CityTB" runat="server"></asp:TextBox>
				    <asp:RequiredFieldValidator ID="CityRFV" runat="server" ControlToValidate="CityTB" ErrorMessage="Required"></asp:RequiredFieldValidator>
				</div>
    </div>
    <div class="input">
				<div class="inputtext">Post Code: </div>
				<div class="inputcontent">
					<asp:TextBox ID="postcodeTB" runat="server"></asp:TextBox>
				    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="passwordTB" ErrorMessage="Required"></asp:RequiredFieldValidator>
				    </br>
				</div>
    </div>
    <div class="input">
				<div class="inputtext">Age: </div>
				<div class="inputcontent">
					<asp:TextBox ID="AgeTB" runat="server"></asp:TextBox>
				    <asp:RequiredFieldValidator ID="AgeValidator" runat="server" ControlToValidate="AgeTB" ErrorMessage="Required"></asp:RequiredFieldValidator>
				</div>
    </div>
    <div class="input">
                  <div class="auto-style2" class="inputtext">Gender</div>
                <div>
                <asp:DropDownList ID="GenderDDL" runat="server"
                                  AppendDataBoundItems="true" Height="26px" Width="218px">
                <asp:ListItem Value="-1">Select</asp:ListItem>
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
                <asp:ListItem>Prefer not to say</asp:ListItem>
                <asp:ListItem>You don't wanna know</asp:ListItem>
                </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="GenderValidator" runat="server" ControlToValidate="GenderDDL" ErrorMessage="Required"></asp:RequiredFieldValidator>
                    
                </div>
    </div><asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Register" CssClass="auto-style3"/>
    
    </asp:Content>