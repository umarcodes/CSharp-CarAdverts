<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Adverts.aspx.cs" Inherits="Adverts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <a href="createNewAd.aspx">Create New Advert</a>
    <asp:DataList ID="DataList1" runat="server" DataKeyField="Make" DataSourceID="ObjectDataSource1" Width="940px" RepeatColumns="4" CellPadding="4" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" GridLines="Both">
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        <ItemStyle BackColor="White" ForeColor="#330099" />
        <ItemTemplate>
            <span>
                <ul>
               <li> <asp:Label ID="titleLabel" runat="server" Text='<%# Eval("make")%>' />
                <li><asp:Label ID="Label1" runat="server" Text='<%# Eval("model")%>' /></li>
                <li><asp:Label ID="Label3" runat="server" Text='<%# Eval("email")%>' /></li>
                <li><asp:Label ID="Label4" runat="server" Text='<%# Eval("price")%>' /></li>
                <li><asp:Label ID="Label5" runat="server" Text='<%# Eval("seller")%>' /></li>

                </ul>
            <a href='<%# Eval("picture")%>'"; rel="lightbox">
            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("picturesmall") %>' visible="true" Width="90px"/>
               </a>
            
            <br />
            </span>
        </ItemTemplate>
        <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
    </asp:DataList>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="AdsTableAdapters.AdsTableAdapter" UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_Make" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Make" Type="String" />
            <asp:Parameter Name="Model" Type="String" />
            <asp:Parameter Name="Picture" Type="String" />
            <asp:Parameter Name="Price" Type="String" />
            <asp:Parameter Name="Seller" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Model" Type="String" />
            <asp:Parameter Name="Picture" Type="String" />
            <asp:Parameter Name="Price" Type="String" />
            <asp:Parameter Name="Seller" Type="String" />
            <asp:Parameter Name="Original_Make" Type="String" />
        </UpdateParameters>
    </asp:ObjectDataSource>
    
    </asp:Content>