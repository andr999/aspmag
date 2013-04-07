<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdminDepartments.aspx.cs" Inherits="AdminDepartments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="titlePlaceHolder" Runat="Server">
<span class="AdminTitle">
 BalloonShop Admin
 <br />
 Departments
</span>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="adminPlaceHolder" runat="server">
<p>
 <asp:Label ID="statusLabel" runat="server" Test=""></asp:Label>
 </p>
  <asp:GridView ID="grid" runat="server" DataKeyNames="DepartmentID" 
        Width="100%" AutoGenerateColumns="False" 
        onrowcancelingedit="grid_RowCancelingEdit" onrowediting="grid_RowEditing" 
        onrowdeleting="grid_RowDeleting" onrowupdating="grid_RowUpdating">
      <Columns>
          <asp:BoundField DataField="name" HeaderText="Department Name" 
              SortExpression="name" />
          <asp:TemplateField HeaderText="Department Description" 
              SortExpression="Description">
              <EditItemTemplate>
                  <asp:TextBox ID="descriptionTextBox" runat="server" 
                      Text='<%# Bind("Description") %>' Height="70px" TextMode="MultiLine" 
                      Width="400px"></asp:TextBox>
              </EditItemTemplate>
              <ItemTemplate>
                  <asp:Label ID="Label1" runat="server" Text='<%# Bind("Description") %>'></asp:Label>
              </ItemTemplate>
          </asp:TemplateField>
          <asp:HyperLinkField DataNavigateUrlFields="DepartmentID" 
              DataNavigateUrlFormatString="AdminCategories.aspx?DepartmentID={0}" 
              HeaderText="View Ctegories" Text="View Categories" />
          <asp:CommandField ShowEditButton="True" />
          <asp:ButtonField ButtonType="Button" CommandName="Delete" Text="Delete" />
      </Columns>
    </asp:GridView>
  <p>Create a new department:</p>
  <p>Name:</p>
  <asp:TextBox ID="newName" runat="server" Width="400px" />
  <p>Description:</p>
  <asp:TextBox ID="newDescription" runat="server" Width="400px" 
     Height="70px" TextMode="MultiLine" />
  <p><asp:Button ID="createDepartment" Text="Create Department" runat="server" 
          onclick="createDepartment_Click" /></p>
</asp:Content>

