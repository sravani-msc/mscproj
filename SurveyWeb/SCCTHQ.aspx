<%@ Page Title="" Language="C#" MasterPageFile="~/SurveyClient.master" AutoEventWireup="true" CodeBehind="SCCTHQ.aspx.cs" Inherits="SurveyWeb.SCCTHQ" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table style="width: 100%; border-style: solid; border-width: 1px">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>1</td>
            <td>Do you have a lot of electical items at home  <asp:TextBox ID="TextBox1" runat="server" placeholder="[task]" ReadOnly="True" Visible="False"></asp:TextBox> is ?</td>
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
            <td>Do you own a lot of electical items <asp:TextBox ID="TextBox2" placeholder="[carried out the task]" runat="server" ReadOnly="True" Visible="False"></asp:TextBox>  ?</td>
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
            <td>Do you own a games machine (examples: xbox, playstation, nintendo ds ) <asp:TextBox placeholder="[times did you carry out the task]" ID="TextBox31" runat="server" ReadOnly="True" Visible="False"></asp:TextBox>
&nbsp; ?</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
               
                <asp:RadioButton ID="rb3yes" runat="server" GroupName="q3" Text="Yes" />
                <asp:RadioButton ID="rb3no" runat="server" GroupName="q3" Text="No" />
               
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
            <td>Do you have your own mobile phone <asp:TextBox placeholder="[doing the task]" ID="TextBox4" runat="server" ReadOnly="True" Visible="False"></asp:TextBox>
                &nbsp; ?</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
               
                <asp:RadioButton ID="rb4yes" runat="server" GroupName="q4" Text="Yes" />
                <asp:RadioButton ID="rb4no" runat="server" GroupName="q4" Text="No" />
               
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>5</td>
            <td>Chose the sentence below that you feel best describes you (chose one) <asp:TextBox placeholder="[doing the task]" ID="TextBox5" runat="server" ReadOnly="True" Visible="False"></asp:TextBox>
                 &nbsp;?</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList5" runat="server">
                    <asp:ListItem Value="1">I use electrical items as often as I can</asp:ListItem>
                    <asp:ListItem Value="2">I use electrical items to make things easier to do</asp:ListItem>
                    <asp:ListItem Value="3">I use electrical items when I am bored</asp:ListItem>
                    <asp:ListItem Value="4">I do not use electrical items very often</asp:ListItem>
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
            <td>Please tick which of the following you have ever used&nbsp; ?</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:CheckBoxList ID="CheckBoxList6" runat="server">
                </asp:CheckBoxList>
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
            <td>How easy do you find it to use electrical items&nbsp;
                 :</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:RadioButtonList ID="rb7" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Value="1">very easy</asp:ListItem>
                    <asp:ListItem Value="2">easy</asp:ListItem>
                    <asp:ListItem Value="3">ok</asp:ListItem>
                    <asp:ListItem Value="4">hard</asp:ListItem>
                    <asp:ListItem Value="5">very hard</asp:ListItem>
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
            <td><asp:Label ID="lblmsg" runat="server" Text="-" /></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>

</asp:Content>
