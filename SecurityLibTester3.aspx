<%@ Page Title="" Language="C#" MasterPageFile="~/BalloonShop.master" AutoEventWireup="true" CodeFile="SecurityLibTester3.aspx.cs" Inherits="SecurityLibTester3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
Card Holder:<br />
<asp:TextBox ID="cardHolderBox" runat="server" />
<br />
Card number:<br />
<asp:TextBox ID="cardNumberBox" runat="server" />
<br />
Issue Date:<br />
<asp:TextBox ID="issueDateBox" runat="server" />
<br />
Expiry Date:<br />
<asp:TextBox ID="expiryDateBox" runat="server" />
<br />
Issue Number:<br />
<asp:TextBox ID="issueNumberBox" runat="server" />
<br />
Card Type:<br />
<asp:TextBox ID="cardTypeBox" runat="server" />
<br />
<asp:Button ID="processButton" runat="server" Text="Process" OnClick="processButton_Click" />
<br />
<asp:Label ID="result" runat="server" />
</asp:Content>

