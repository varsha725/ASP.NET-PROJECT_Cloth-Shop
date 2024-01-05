<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="viewcart.aspx.cs" Inherits="project.viewcart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            width: 541px;
        }
        .auto-style4 {
            height: 23px;
            width: 541px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style3">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  DataKeyNames="cart_id" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
                    <Columns>
                        <asp:BoundField DataField="p_name" HeaderText="Product Name" />
                        <asp:ImageField DataImageUrlField="p_image" HeaderText="Product Image">
                            <ControlStyle Height="200px" Width="150px" />
                        </asp:ImageField>
                        <asp:BoundField DataField="quantity" HeaderText="Product Quantity" />
                        <asp:BoundField DataField="total_price" HeaderText="Total Price" />
                        <asp:TemplateField HeaderText="Delete">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("cart_id") %>' OnCommand="LinkButton2_Command">Remove From Cart</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField HeaderText="Edit" ShowEditButton="True" />
                    </Columns>
                    <EmptyDataTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("cart_id") %>'>Remove From Cart</asp:LinkButton>
                    </EmptyDataTemplate>
                </asp:GridView>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style2"></td>
        </tr>
        <tr>
            <td class="auto-style4"></td>
            <td class="auto-style2"></td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Back To Home" />
            </td>
            <td class="auto-style2">
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="BUY NOW" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
