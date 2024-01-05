<%@ Page Title="" Language="C#" MasterPageFile="~/Site4.Master" AutoEventWireup="true" CodeBehind="userhome.aspx.cs" Inherits="project.userhome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <table class="w-100">
        <tr>
            <td style="font-size: large; font-family: 'Arial Narrow'; color: #000000; font-weight: 300; font-style: normal">
                <asp:DataList ID="DataList1" runat="server" RepeatColumns="5" RepeatDirection="Horizontal">
                    <ItemTemplate>
                        <table class="w-100">
                            <tr>
                                <td>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("c_name") %>'></asp:Label>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='<%# Eval("c_image") %>' OnCommand="ImageButton1_Command" Width="150px" CommandArgument='<%# Eval("c_id") %>' Height="150px" />
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("c_description") %>'></asp:Label>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("c_status") %>'></asp:Label>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="font-size: large; font-family: 'Arial Narrow'; color: #000000; font-weight: 300; font-style: normal">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="font-size: large; font-family: 'Arial Narrow'; color: #000000; font-weight: 300; font-style: normal">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="font-size: large; font-family: 'Arial Narrow'; color: #000000; font-weight: 300; font-style: normal">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="font-size: large; font-family: 'Arial Narrow'; color: #000000; font-weight: 300; font-style: normal">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="font-size: large; font-family: 'Arial Narrow'; color: #000000; font-weight: 300; font-style: normal">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="font-size: large; font-family: 'Arial Narrow'; color: #000000; font-weight: 300; font-style: normal">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="font-size: large; font-family: 'Arial Narrow'; color: #000000; font-weight: 300; font-style: normal">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="font-size: large; font-family: 'Arial Narrow'; color: #000000; font-weight: 300; font-style: normal">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="font-size: large; font-family: 'Arial Narrow'; color: #000000; font-weight: 300; font-style: normal">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</form>
</asp:Content>
