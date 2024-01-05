<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="categorymnt.aspx.cs" Inherits="project.categorymnt" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 26px;
        }
        .auto-style2 {
            width: 89px;
        }
        .auto-style3 {
            height: 26px;
            width: 89px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="c_id" Width="720px" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" Font-Size="Large">
                    <Columns>
                        <asp:BoundField DataField="c_name" HeaderText="Category Name" />
                        <asp:ImageField DataImageUrlField="c_image" HeaderText="Category Image">
                            <ControlStyle Height="200px" Width="150px" />
                        </asp:ImageField>
                        <asp:BoundField DataField="c_description" HeaderText="Category Description" />
                        <asp:BoundField DataField="c_status" HeaderText="Category Status" />
                        <asp:TemplateField HeaderText="Block Or Unblock">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("c_id") %>'>Click Here</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField ShowEditButton="True" HeaderText="Edit" />
                    </Columns>
                </asp:GridView>
            </td>
            <td class="auto-style2">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
            <td class="auto-style2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1"></td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td>
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" PostBackUrl="~/addcategory.aspx" Font-Size="X-Large">ADD CATEGORY</asp:LinkButton>
            </td>
            <td class="auto-style2">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
