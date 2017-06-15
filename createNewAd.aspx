<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="createNewAd.aspx.cs" Inherits="createNewAd" 
    Culture="auto" UICulture="auto"%>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2
        {
            width: 674px;
            border-bottom: 1px solid #ddd;
            margin-bottom: 10px;
            margin: 20px;
            overflow: hidden;
            height: 334px;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AdsConnectionString %>" ProviderName="<%$ ConnectionStrings:AdsConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Ads]"></asp:SqlDataSource>
        <asp:DataList ID="DataList1" runat="server" DataKeyField="Make" DataSourceID="SqlDataSource1" Visible="False">
            <ItemTemplate>
                Make:
                <asp:Label ID="MakeLabel" runat="server" Text='<%# Eval("Make") %>' />
                <br />
                Model:
                <asp:Label ID="ModelLabel" runat="server" Text='<%# Eval("Model") %>' />
                <br />
                Picture:
                <asp:Label ID="PictureLabel" runat="server" Text='<%# Eval("Picture") %>' />
                <br />
                Phone:
                <asp:Label ID="PhoneLabel" runat="server" Text='<%# Eval("Phone") %>' />
                <br />
                Email:
                <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                <br />
                Price:
                <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                <br />
                Seller:
                <asp:Label ID="SellerLabel" runat="server" Text='<%# Eval("Seller") %>' />
                <br />
<br />
            </ItemTemplate>
    </asp:DataList>
        <div class="formtitle">Fill in Your Car Details</div>
    <div class="input">
				<div class="inputtext">Make: </div>
				<div class="inputcontent">
					<asp:TextBox ID="makeTB" runat="server"></asp:TextBox>
				    <asp:RequiredFieldValidator ID="MakeValidator" runat="server" ControlToValidate="makeTB" ErrorMessage="Make Required">*</asp:RequiredFieldValidator>
				</div>
    </div>
    <div class="input">
                    <div class="inputtext">Model: </div>
        				<div class="inputcontent">
					<asp:TextBox ID="modelTB" runat="server"></asp:TextBox>
				    <asp:RequiredFieldValidator ID="ModelValidator" runat="server" ControlToValidate="modelTB" ErrorMessage="Model Required">*</asp:RequiredFieldValidator>
				</div>
    </div>
    <div class="input">
				<div class="inputtext">Phone: </div>
				<div class="inputcontent">
					<asp:TextBox ID="phoneTB" runat="server" Width="203px"></asp:TextBox>
				    <asp:RequiredFieldValidator ID="phoneRFV" runat="server" ControlToValidate="modelTB" ErrorMessage="Phone Required">*</asp:RequiredFieldValidator>
				    <asp:RegularExpressionValidator ID="phoneRegexValidator1" runat="server" ControlToValidate="phoneTB" ErrorMessage="You must enter a UK Phone Number in the form of without hyphens or underscores" ValidationExpression="^((\(?0\d{4}\)?\s?\d{3}\s?\d{3})|(\(?0\d{3}\)?\s?\d{3}\s?\d{4})|(\(?0\d{2}\)?\s?\d{4}\s?\d{4}))(\s?\#(\d{4}|\d{3}))?$"></asp:RegularExpressionValidator>
				</div>
    </div>
    <div class="input">
				<div class="inputtext">Email: 
				
                </div>
				<div class="inputcontent">
					<asp:TextBox ID="EmailTB" runat="server"></asp:TextBox>
				    <asp:RequiredFieldValidator ID="emailRFV" runat="server" ControlToValidate="modelTB" ErrorMessage="Email Required">*</asp:RequiredFieldValidator>
				    <asp:RegularExpressionValidator ID="EmailRegexValidator1" runat="server" ControlToValidate="EmailTB" ErrorMessage="Email Required" ValidationExpression="(\w[-._\w]*\w@\w[-._\w]*\w\.\w{2,3})">This email address is unacceptable</asp:RegularExpressionValidator>
				</div>
    </div>
    <div class="input">
        <div class="inputtext">Price

        </div>
        <div class="inputcontent">
    &nbsp;£<asp:TextBox ID="priceTB" runat="server" Width="187px"></asp:TextBox>
				    <asp:RequiredFieldValidator ID="priceRFV" runat="server" ControlToValidate="modelTB" ErrorMessage="Price Required">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="priceRegexValidator1" runat="server" ControlToValidate="priceTB" ErrorMessage="Price Required" ValidationExpression="^\$?([1-9]{1}[0-9]{0,2}(\,[0-9]{3})*(\.[0-9]{0,2})?|[1-9]{1}[0-9]{0,}(\.[0-9]{0,2})?|0(\.[0-9]{0,2})?|(\.[0-9]{1,2})?)$">You must enter a price and in Numerical Digits</asp:RegularExpressionValidator>
        </div>
        </div>
    <div class="auto-style2">
        <div class="inputtext">Upload An Image

        </div>
        <asp:FileUpload ID="FileUpload1" runat="server" />
        </div>
    
   
                  <div>
                      <asp:Label ID="Label3" runat="server"></asp:Label>
                  </div>

    <div>
    <asp:Button ID="uploadBtn" class="orangebutton" runat="server" OnClick="uploadBtn_Click" Text="Upload" />
                    </div>
    <div>
    
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        
</asp:Content>


    


