<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="OrderTest.aspx.cs" Inherits="OrderTest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="titlePlaceHolder" Runat="Server">
<span class="AdminTitle">BalloonShop Customer Order Access Test</span>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="adminPlaceHolder" Runat="Server">
Order number:
<asp:TextBox runat="server" ID="orderIDBox" />
<br />
<asp:Button runat="server" ID="goButton" Text="Go" onclick="goButton_Click" />
<br /><br />
<asp:Label runat="server" ID="resultLabel" />
<br /><br />
<strong>Customer address:</strong>
<br />
<asp:Label runat="server" ID="addressLabel" />
<br /><br />
<strong>Customer crdit card:</strong>
<br />
<asp:Label runat="server" ID="creditCardLabel" />
<br /><br />
<strong>Order details:</strong>
<br />
<asp:Label runat="server" ID="orderLabel" />
<br /><br />
<strong>Process order:</strong>
<br />
<asp:Button ID="processButton" runat="server" Text="Go"
Enabled="False" OnClick="processButton_Click" />
<br />
<asp:Label ID="processResultLabel" runat="server" />
</asp:Content>

