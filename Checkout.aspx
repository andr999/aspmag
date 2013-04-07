<%@ Page Title="" Language="C#" MasterPageFile="~/BalloonShop.master" AutoEventWireup="true" CodeFile="Checkout.aspx.cs" Inherits="Checkout" %>

<%@ Register TagPrefix="uc1" TagName="CustomerDetailsEdit"
Src="UserControls/CustomerDetailsEdit.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="titleLabel" runat="server"
 CssClass="CatalogTitle" Text="Confirm Your Order" />
 <br /><br />
 <asp:GridView ID="grid" runat="server"
  Width="100%" AutoGenerationColumns="False" DataKeyNames="ProductID"
  BorderWidth="1px" >
  <Columns>
   <asp:BoundField DataField="Name" HeaderText="Product Name"
   ReadOnly="true" SortExpression="Name" />
   <asp:BoundField DataField="Price" DataFormatString="{0:c}"
   HeaderText="Price" ReadOnly="true" SortExpression="Price" />
   <asp:BoundField DataField="Quantity" HeaderText="Quantity"
   ReadOnly="true" SortExpression="Quantity" />
   <asp:BoundField DataField="Subtotal" ReadOnly="true"
   DataFormatString="{0:c}" HeaderText="Subtotal"
   SortExpression="Subtotal" />
  </Columns>
  </asp:GridView>
  <asp:Label ID="Label2" runat="server" Text="Total amount: "
  CssClass="ProductDescription" />
  <asp:Label ID="totalAmountLabel" runat="server" Text="Label"
  CssClass="ProductPrice" />
  <br /><br />
  <uc1:CustomerDetailsEdit ID="CustomerDetailsEdit"
  runat="server" Editable="false" Title="User Details" />
  <br />
  <asp:Label ID="InfoLabel" runat="server" />
  <br /><br />
  Shipping type:
  <asp:DropDownList ID="shippingSelection" runat="server" />
  <br /><br />
    <asp:Button ID="placeOrderButton" runat="server"
  Text="Place order" OnClick="placeOrderButton_Click" />
</asp:Content>

