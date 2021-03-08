<%@ Page Title="" Language="C#" MasterPageFile="~/SurveyClient.master" AutoEventWireup="true" CodeBehind="SCCTEQ.aspx.cs" Inherits="SurveyWeb.SCCTEQ" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table style="width: 100%; border-style: solid; border-width: 1px">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>1</td>
            <td>Do you know what a  <asp:TextBox ID="TextBox1" runat="server" placeholder="[task]" ReadOnly="True"></asp:TextBox> is ?</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
               
                <asp:RadioButton ID="rb1yes" runat="server" GroupName="q1" Text="Yes" />
                <asp:RadioButton ID="rb1no" runat="server" GroupName="q1" Text="No" />
               
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>2</td>
            <td>Have you ever <asp:TextBox ID="TextBox2" placeholder="[carried out the task]" runat="server" ReadOnly="True"></asp:TextBox>  ?</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
               
                <asp:RadioButton ID="rb2yes" runat="server" GroupName="q2" Text="Yes" />
                <asp:RadioButton ID="rb2no" runat="server" GroupName="q2" Text="No" />
               
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>3</td>
            <td>How many <asp:TextBox placeholder="[times did you carry out the task]" ID="TextBox31" runat="server" ReadOnly="True"></asp:TextBox>
&nbsp;last week ? (chose your answer) ?</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:TextBox ID="TextBox32" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox32" ErrorMessage="RequiredFieldValidator" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>4</td>
            <td>How good are you at <asp:TextBox placeholder="[doing the task]" ID="TextBox4" runat="server" ReadOnly="True"></asp:TextBox>
&nbsp;(circle your answer) ?</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:RadioButtonList ID="rb4" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Value="1">very good</asp:ListItem>
                    <asp:ListItem Value="2">good</asp:ListItem>
                    <asp:ListItem Value="3">okay</asp:ListItem>
                    <asp:ListItem Value="4">not very good</asp:ListItem>
                    <asp:ListItem Value="5">poor</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>5</td>
            <td>How much do you enjoy <asp:TextBox placeholder="[doing the task]" ID="TextBox5" runat="server" ReadOnly="True"></asp:TextBox>
                 (circle your answer) ?</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:RadioButtonList ID="rb5" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Value="1">a lot</asp:ListItem>
                    <asp:ListItem Value="2">a little bit</asp:ListItem>
                    <asp:ListItem Value="3">not bothered</asp:ListItem>
                    <asp:ListItem Value="4">not much</asp:ListItem>
                    <asp:ListItem Value="5">don&#39;t enjoy</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>6</td>
            <td>Have you ever <asp:TextBox placeholder="[carried out the task]" ID="TextBox61" runat="server" ReadOnly="True"></asp:TextBox>
&nbsp;on a <asp:TextBox placeholder="[technology]" ID="TextBox62" runat="server" ReadOnly="True"></asp:TextBox> ?</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:RadioButton ID="rb6y" runat="server" GroupName="q6" Text="Yes" />
                <asp:RadioButton ID="rb6n" runat="server" GroupName="q6" Text="No" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>7</td>
            <td>Try to name <asp:TextBox placeholder="[n]" ID="TextBox71" runat="server" ReadOnly="True"></asp:TextBox>
                 other pieces of equipment you have used to <asp:TextBox placeholder="[carry out the task]" ID="TextBox72" runat="server" ReadOnly="True"></asp:TextBox>
                 :</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:TextBox ID="TextBox73" runat="server" Rows="4" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox71" ErrorMessage="RequiredFieldValidator" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>

</asp:Content>
