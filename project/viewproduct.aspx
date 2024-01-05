<%@ Page Title="" Language="C#" MasterPageFile="~/Site4.Master" AutoEventWireup="true" CodeBehind="viewproduct.aspx.cs" Inherits="project.viewproduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        height: 26px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style1" style="font-family: 'Times New Roman'; font-size: large; font-weight: 300; color: #000000">
                <asp:Label ID="Label5" runat="server" Text="PRODUCTS"></asp:Label>
            </td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1" style="font-family: 'Times New Roman'; font-size: large; font-weight: 300; color: #000000">
            </td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td class="auto-style1" style="font-family: 'Times New Roman'; font-size: large; font-weight: 300; color: #000000">
                <asp:DataList ID="DataList1" runat="server" RepeatColumns="5" RepeatDirection="Horizontal">
                    <ItemTemplate>
                        <table class="w-100">
                            <tr>
                                <td>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("p_name") %>'></asp:Label>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("p_price") %>'></asp:Label>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:ImageButton ID="ImageButton1" runat="server" Height="76px" ImageUrl='<%# Eval("p_image") %>' Width="126px" CommandArgument='<%# Eval("p_id") %>' OnCommand="ImageButton1_Command" />
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("p_description") %>'></asp:Label>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("p_stock") %>'></asp:Label>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td style="font-family: 'Times New Roman'; font-size: large; font-weight: 300; color: #000000">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1" style="font-family: 'Times New Roman'; font-size: large; font-weight: 300; color: #000000"></td>
            <td class="auto-style1"></td>
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
</form>
</asp:Content>
