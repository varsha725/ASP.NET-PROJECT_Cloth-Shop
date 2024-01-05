<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="addproduct.aspx.cs" Inherits="project.addproduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 362px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100" style="font-size: x-large; font-family: 'Arial Narrow'; font-weight: 300;">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Category"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                </asp:DropDownList>
            </td>
            <td class="auto-style1" style="font-family: 'Times New Roman'; font-size: x-large; font-weight: 400; font-style: normal; color: #000000">&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Product Name"></asp:Label>
            </td>
            <td style="font-size: x-large">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style1" style="font-family: 'Times New Roman'; font-size: x-large; font-weight: 400; font-style: normal; color: #000000">&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Product Price"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style1" style="font-family: 'Times New Roman'; font-size: x-large; font-weight: 400; font-style: normal; color: #000000">&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Product Image"></asp:Label>
            </td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
            <td class="auto-style1" style="font-family: 'Times New Roman'; font-size: x-large; font-weight: 400; font-style: normal; color: #000000">&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Product Description"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style1" style="font-family: 'Times New Roman'; font-size: x-large; font-weight: 400; font-style: normal; color: #000000">&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label6" runat="server" Text="Product Status"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style1" style="font-family: 'Times New Roman'; font-size: x-large; font-weight: 400; font-style: normal; color: #000000">&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label7" runat="server" Text="Stock"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style1" style="font-family: 'Times New Roman'; font-size: x-large; font-weight: 400; font-style: normal; color: #000000">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style1" style="font-family: 'Times New Roman'; font-size: x-large; font-weight: 400; font-style: normal; color: #000000">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
            </td>
            <td class="auto-style1" style="font-family: 'Times New Roman'; font-size: x-large; font-weight: 400; font-style: normal; color: #000000">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style1" style="font-family: 'Times New Roman'; font-size: xx-large; font-weight: 400; font-style: normal; color: #000000">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add" Font-Size="X-Large" />
            </td>
            <td class="auto-style1" style="font-family: 'Times New Roman'; font-size: x-large; font-weight: 400; font-style: normal; color: #000000">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style1" style="font-family: 'Times New Roman'; font-size: x-large; font-weight: 400; font-style: normal; color: #000000">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
