<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2
        {
            width: 120px;
            height: 120px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <asp:SqlDataSource ID="SqlDSAdRotator" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Ads]"></asp:SqlDataSource>
<div id="SlideShowMainContainer">

<div class="cycle-slideshow"
    data-cycle-fx="scrollHorz"
    data-cycle-timeout="4000"
    data-cycle-prev="#prev"
    data-cycle-next="#next"
    data-cycle-slides=">span"
    data-cycle-manual-fx="scrollHorz"
    >

<asp:Repeater ID="rptr_slides" runat="server" DataSourceID="SqlDSAdRotator">
  <ItemTemplate>
     <span>
         
         <!--Running Images from the Picture field-->
             <asp:Image ID="img_slides" runat="server" Width="940" Height="448" ImageUrl='<%# Eval("Picture") %>' />
         <!--End  of "Running Images from the Picture field" code-->
         
         <!-- Writing on Top of the image-->
         <div class="cycle-overlay">
         <%# Eval("Make") + " " + Eval("Model") %>
         </div>
         <!-- End of "Writing on Top of image" code-->

     </span>
    </ItemTemplate>
  </asp:Repeater>
    
    
</div></div>
<!--Div for Buttons-->
     <div class="center" style="margin-top: 5px;">
    <a href="#" id="prev"><img alt="" src="img/prev.png" style="border:0; margin-left:350px;" class="auto-style2"  /></a> 
    <a href="#" id="next"><img alt="" src="img/next.png" style="border:0;" class="auto-style2" /></a> 
 </div>
<!--End "Div for Buttons"-->
</asp:Content>