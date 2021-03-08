<%@ Page Title="" Language="C#" MasterPageFile="~/SurveyAdmin.master" AutoEventWireup="true" CodeBehind="SAShowStudy.aspx.cs" Inherits="SurveyWeb.SAShowStudy" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%; border-style: solid; border-width: 1px">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:DropDownList Visible="false" ID="ddlStudytypes" runat="server">
                    <asp:ListItem>CTEQ</asp:ListItem>
                    <asp:ListItem>CTUQ</asp:ListItem>
                    <asp:ListItem>CTHQ</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Go" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:GridView ID="GridView1" runat="server">
                </asp:GridView>
                <br />
                <asp:GridView ID="GridView2" runat="server">
                </asp:GridView>
                <br />
                <asp:GridView ID="GridView3" runat="server">
                </asp:GridView>
                <br />
                <asp:GridView ID="GridView4" runat="server">
                </asp:GridView>
                <br />
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Download" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td><asp:Label ID="lblmsg" runat="server" Text="-" /></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
