<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="productmnt.aspx.cs" Inherits="project.productmnt" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 880px;
            margin-right: 0px;
        }
        .auto-style2 {
            height: 24px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td style="font-family: 'Times New Roman'; font-size: large; font-weight: 300; color: #000000">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="p_id" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
                    <Columns>
                        <asp:BoundField DataField="c_name" HeaderText="Category Name" />
                        <asp:BoundField DataField="p_name" HeaderText="Product Name" />
                        <asp:BoundField DataField="p_price" HeaderText="Product Price" />
                        <asp:ImageField DataImageUrlField="p_image" HeaderText="Product Image">
                            <ControlStyle Height="150px" Width="150px" />
                        </asp:ImageField>
                        <asp:BoundField DataField="p_description" HeaderText="Product Description" />
                        <asp:BoundField DataField="p_status" HeaderText="Product Status" />
                        <asp:BoundField DataField="p_stock" HeaderText="Product Stock" />
                        <asp:CommandField HeaderText="Edit" ShowEditButton="True" />
                        <asp:TemplateField HeaderText="Block/Unblock">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("p_id") %>' OnCommand="LinkButton2_Command">click here</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="font-family: 'Times New Roman'; font-size: large; font-weight: 300; color: #000000">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="font-family: 'Times New Roman'; font-size: large; font-weight: 300; color: #000000">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="font-family: 'Times New Roman'; font-size: large; font-weight: 300; color: #000000">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="font-family: 'Times New Roman'; font-size: large; font-weight: 300; color: #000000">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2" style="font-family: 'Times New Roman'; font-size: large; font-weight: 300; color: #000000">
                <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/addproduct.aspx" Font-Size="X-Large">Add Products</asp:LinkButton>
            </td>
            <td class="auto-style2"></td>
        </tr>
        <tr>
            <td style="font-family: 'Times New Roman'; font-size: large; font-weight: 300; color: #000000">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="font-family: 'Times New Roman'; font-size: large; font-weight: 300; color: #000000">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="font-family: 'Times New Roman'; font-size: large; font-weight: 300; color: #000000">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="font-family: 'Times New Roman'; font-size: large; font-weight: 300; color: #000000">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
