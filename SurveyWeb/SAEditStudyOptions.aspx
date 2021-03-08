<%@ Page Title="" Language="C#" MasterPageFile="~/SurveyAdmin.master" AutoEventWireup="true" CodeBehind="SAEditStudyOptions.aspx.cs" Inherits="SurveyWeb.SAEditStudyOptions" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <table style="width: 100%; border-style: solid; border-width: 1px">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:RadioButton ID="RadioButton1" runat="server" Text="Add More Clients" GroupName="opt" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:RadioButton ID="RadioButton2" runat="server" Text="Edit Questionaire" GroupName="opt" />
            &nbsp;Types of Studies
                <asp:DropDownList ID="ddlStudytypes" runat="server">
                    <asp:ListItem>CTEQ</asp:ListItem>
                    <asp:ListItem>CTUQ</asp:ListItem>
                    <asp:ListItem>CTHQ</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
            &nbsp;<asp:Button ID="Button5" runat="server" Text="If Other, Click for customizing" OnClick="Button5_Click" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:RadioButton ID="RadioButton3" runat="server" Text="Delete this Study" GroupName="opt" />
            &nbsp;
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                <asp:Label ID="lblmsg" runat="server" Text="--"></asp:Label>
            &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button2" runat="server" Text="Generate Logins" OnClick="Button2_Click" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" ReadOnly="True" Rows="5" TextMode="MultiLine"></asp:TextBox>
            &nbsp;<asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Download" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>



</asp:Content>
