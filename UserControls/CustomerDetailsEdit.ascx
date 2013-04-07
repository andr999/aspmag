<%@ Control Language="C#" AutoEventWireup="true" CodeFile="CustomerDetailsEdit.ascx.cs" Inherits="UserControls_CustomerDetailsEdit" %>
<asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
    DataObjectTypeName="ProfileWrapper" SelectMethod="GetData" 
    TypeName="ProfileDataSource" UpdateMethod="UpdateData">
</asp:ObjectDataSource>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:BallonShopConnectionString %>" 
    SelectCommand="SELECT [ShippingRegionID], [ShippingRegion] FROM [ShippingRegion]">
</asp:SqlDataSource>
<asp:FormView ID="FormView1" runat="server" DataSourceID="ObjectDataSource1">
    <EditItemTemplate>
      <table class="UserDetailsTable">
      <tr><td>Address line 1:</td><td width="350px">
      <asp:TextBox Width="340px" ID="AddressTextBox" runat="server"
      Text='<%# Bind("Address1") %>' />
      </td></tr>
      <tr><td> Address line 2:</td><td>
       <asp:TextBox Width="340px" ID="Address2TextBox" runat="server"
       Text='<%# Bind("Address2") %>' />
      </td></tr>
      <tr><td>City:</td><td>
       <asp:TextBox Width="340px" ID="CityTextBox" runat="server"
       Text='<%# Bind("City") %>' />
       </td></tr>
       <tr><td>Region:</td><td>
       <asp:TextBox Width="340px" ID="RegionTextBox" runat="server"
       Text='<%# Bind("Region") %>' />
       </td></tr>
       <tr><td>Zip / PostalCode:</td><td>
       <asp:TextBox Width="340px" ID="PostalCodeTextBox" runat="server"
       Text='<%# Bind("PostalCode") %>' />
       </td></tr>
       <tr><td>Country:</td><td>
       <asp:TextBox Width="340px" ID="CountryTextBox" runat="server"
       Text='<%# Bind("Country") %>' />
       </td></tr>
       <tr><td>Shipping Region:</td><td>
       <asp:DropDownList Width="350px" ID="ShippingRegionDropDown"
       runat="server"
       SelectedValue='<%# Bind("ShippingRegion") %>'
       DataSourceID="SqlDataSource1"
       DataTextField="ShippingRegionID">
       </asp:DropDownList>
       </td></tr>
       <tr><td>DayTime Phone no:</td><td>
       <asp:TextBox Width="340px" ID="DayPhoneTextBox" runat="server"
       Text='<%# Bind("DayPhone") %>' />
       </td></tr>
       <tr><td>Evening Phone no:</td><td>
       <asp:TextBox Width="340px" ID="EvePhoneTextBox" runat="server"
       Text='<%# Bind("EyePhone") %>' />
       </td></tr>
       <tr><td>Mobile Phone no:</td><td>
       <asp:TextBox Width="340px" ID="MobPhoneTextBox" runat="server"
       Text='<%# Bind("MobPhone") %>' />
       </td></tr>
       <tr><td>Email:</td><td>
       <asp:TextBox Width="340px" ID="EmailBox" runat="server"
       Text='<%# Bind("Email") %>' />
       </td></tr>
       <tr><td valign="top">Credit Card:</td><td>
        <table cellpadding="0" cellspacing="0" border="0">
        <tr><td width="140px">CardHolder name:</td>
        <td width="200px">
        <asp:TextBox Width="200px" ID="CreditCardHolderLabel"
        runat="server" Text='<%# Bind("CreditCardHolder") %>' />
        </td></tr>
        <tr><td>Card Type:</td><td>
        <asp:TextBox Width="200px" ID="CreditCardTypeLabel"
        runat="server" Text='<%# Bind("CreditCardType") %>' />
        </td></tr>
        <tr><td>Card Number:</td><td>
        <asp:TextBox Width="200px" ID="CreditCardNumberLabel"
        runat="server" Text='<%# Bind("CreditCardNumber") %>' />
        </td></tr>
        <tr><td>Issue Date:</td><td>
        <asp:TextBox Width="200px" ID="CreditCardIssueDateLabel"
        runat="server" Text='<%# Bind("CreditCardIssueDate") %>' />
        </td></tr>
        <tr><td>Expiry Date:</td><td>
        <asp:TextBox Width="200px" ID="CreditCardExpiryDateLabel"
        runat="server" Text='<%# Bind("CreditCardExpiryDate") %>' />
        </td></tr>
        <tr><td>Issue Number:</td><td>
        <asp:TextBox Width="200px" ID="CreditCardIssueNumberLabel"
        runat="server" Text='<%# Bind("CreditCardIssueNumber") %>' />
        </td></tr>
        </table>
       </td></tr>
       <tr><td>
       <asp:Button ID="UpdateButton" runat="server"
       CauseValidation="true" CommandName="Update"
       Text="Update" />&nbsp;<asp:Button ID="UpdateCancelButton"
       runat="server" CauseValidation="False" CommandName="Cancel"
       Text="Cancel" />
       </td></tr>
      </table>  
    </EditItemTemplate>
     <ItemTemplate>
        <table class ="UserDetailsTable">
        <tr><td>Address line 1:</td><td width="350px">
        <asp:Label ID="Address1Label" runat="server"
        Text='<%# Bind("Address1") %>' />
        </td></tr>
        <tr><td>Address line2:</td><td>
        <asp:Label ID="Address2Label" runat="server"
        Text='<%# Bind("Address2") %>' />
        </td></tr>
        <tr><td>City: </td><td>
        <asp:Label ID="CityLabel1" runat="server"
        Text='<%# Bind("City") %>' />
        </td></tr>
        <tr><td>Region:</td><td>
        <asp:Label ID="RegionLabel1" runat="server"
        Text='<%# Bind("Region") %>' />
        </td></tr>
        <tr><td>Zip / Postal Code:</td><td>
        <asp:Label ID="PostalCodeLabel" runat="server"
        Text='<%# Bind("PostalCode") %>' >
        </asp:Label>
        </td></tr>
        <tr><td>Country:</td><td>
        <asp:Label ID="CountryLabel" runat="server"
        Text='<%# Bind("Country") %>'/>
        </td></tr>
        <tr><td>Shipping Region:</td><td>
        <asp:DropDownList Width="350px" ID="ShippingRegionDropDown"
        runat="server"
        SelectedValue='<%# Bind("ShippingRegion") %>'
        DataSourceID="SqlDataSource1"
        DataTextField="ShippingRegion"
        DataValueField="ShippingRegionID"
        enabled="false">
        </asp:DropDownList>
        </td></tr>
        <tr><td>DayTime Phone no:</td><td>
        <asp:Label ID="DayPhoneLabel" runat="server"
        Text='<%# Bind("DayPhone") %>' />
        </td></tr>
        <tr><td>Evening Phone no:</td><td>
        <asp:Label ID="EvePhoneLabel" runat="server"
        Text='<%# Bind("EyePhone") %>' />
        </td></tr>
        <tr><td>Mobile Phone no:</td><td>
        <asp:Label ID="MobPhoneLabel" runat="server"
        Text='<%# Bind("MobPhone") %>' />
        </td></tr>
        <tr><td>Email:</td><td>
        <asp:Label ID="EmailLabel" runat="server"
        Text='<%# Bind("Email") %>' />
        </td></tr>
        <tr><td>Credit Card:</td><td>
        <asp:Label ID="CreditCardLabel" runat="server"
        Text='<%# Bind("CreditCard") %>' />
        </td></tr>
        <tr><td>
        <asp:Button ID="EditButton" runat="server"
        CauseValidation="False" CommandName="Edit"
        Text="Edit" />
        </td></tr>
        </table>
    </ItemTemplate>
</asp:FormView>
