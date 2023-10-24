﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddFoodItems.aspx.cs" Inherits="Admin_AddFoodItems" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1" 
        style="border:1px solid #808080; width: 80%; margin-left: 38px;">
        <tr>
            <td style="text-align: right; width: 266px;">
                <asp:Label ID="Label5" runat="server" Text="Category ItemType:"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Height="25px" Width="200px" 
                    AutoPostBack="True" onselectedindexchanged="DropDownList1_SelectedIndexChanged">

                   
  
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 266px;">
                <asp:Label ID="Label6" runat="server" Text="Subcategory ItemType:"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server" Height="25px" Width="200px">

                   
  
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 266px;">
                <asp:Label ID="Label1" runat="server" Text="ItemName:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtItemName" runat="server" Height="25px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 266px;">
                <asp:Label ID="Label4" runat="server" Text="Rate:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtRate" runat="server" Height="25px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 266px;">
                <asp:Label ID="Label7" runat="server" Text="Quantity:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtquntity" runat="server" Height="25px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 266px;">
                <asp:Label ID="Label3" runat="server" Text="Select Image:"></asp:Label>
            </td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" Height="25px" Width="200px" />
            </td>
        </tr>
        <tr>
            <td style="width: 266px; height: 49px;" >
                </td>
            <td style="height: 49px">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" 
                    onclick="btnSubmit_Click" Height="45px" Width="100px" />
            </td>
        </tr>
        </table>
        <table>
        <tr>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
            <center>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" AllowPaging="True"
        OnRowCancelingEdit="GridView1_RowCancelingEdit"  CellPadding="4" DataKeyNames="ItemId"
        OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" 
                    ForeColor="#333333" AutoGenerateDeleteButton="True" 
                    onrowdeleting="GridView1_RowDeleting" Width="681px" 
                    onpageindexchanging="GridView1_PageIndexChanging">
        <Columns>
        <asp:TemplateField HeaderStyle-Width="100px">
            <ItemTemplate>
                <asp:LinkButton ID="LkB1" runat="server" CommandName="Edit">Edit</asp:LinkButton>
            </ItemTemplate>
            <EditItemTemplate>
                <asp:LinkButton ID="LkB2" runat="server" CommandName="Update" >Update</asp:LinkButton>
                <asp:LinkButton ID="LkB3" runat="server" CommandName="Cancel">Cancel</asp:LinkButton>
            </EditItemTemplate>
        </asp:TemplateField>
 
        <asp:TemplateField HeaderText="ItemId" HeaderStyle-Width="100px" Visible="false">
            <ItemTemplate>
                <asp:Label ID="lblItemId" runat="server" Text='<%# Eval("ItemId") %>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="txtItemId" runat="server" Text='<%# Eval("ItemId") %>'></asp:TextBox>
            </EditItemTemplate>
        </asp:TemplateField>            



 <asp:TemplateField HeaderText="ItemName" HeaderStyle-Width="100px">
            <ItemTemplate>
                <asp:Label ID="lblItemName" runat="server" Text='<%# Eval("ItemName") %>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="txtItemName" runat="server" Text='<%# Eval("ItemName") %>'></asp:TextBox>
            </EditItemTemplate>
        </asp:TemplateField>
        <%-- <asp:TemplateField HeaderText="quantity" HeaderStyle-Width="100px">
            <ItemTemplate>
                <asp:Label ID="lblquantity" runat="server" Text='<%# Eval("quantity") %>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="txtquantity" runat="server" Text='<%# Eval("quantity") %>'></asp:TextBox>
            </EditItemTemplate>
        </asp:TemplateField>--%>
         <asp:TemplateField HeaderText="Rate" HeaderStyle-Width="100px">
            <ItemTemplate>
                <asp:Label ID="lblRate" runat="server" Text='<%# Eval("Rate") %>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="txtRate" runat="server" Text='<%# Eval("Rate") %>'></asp:TextBox>
            </EditItemTemplate>
        </asp:TemplateField>


        <asp:TemplateField HeaderText="Image" HeaderStyle-Width="100px">
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("ItemPath") %>'
                     Height="80px" Width="100px" />
            </ItemTemplate>
            <EditItemTemplate>
                <asp:Image ID="img_user" runat="server" ImageUrl='<%# Eval("ItemPath") %>'
                     Height="80px" Width="100px" /><br />
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </EditItemTemplate>
        </asp:TemplateField>
        </Columns> 
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    </asp:GridView></center>
            </td>
        </tr>
        <tr>
            <td style="width: 335px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

