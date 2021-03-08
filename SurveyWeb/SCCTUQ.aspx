<%@ Page Title="" Language="C#" MasterPageFile="~/SurveyClient.master" AutoEventWireup="true" CodeBehind="SCCTUQ.aspx.cs" Inherits="SurveyWeb.SCCTUQ" %>
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
            <td>Do you have your own <asp:TextBox ID="TextBox2" placeholder="[carried out the task]" runat="server" ReadOnly="True"></asp:TextBox>  ?</td>
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
            <td>Do you use a <asp:TextBox placeholder="[times did you carry out the task]" ID="TextBox31" runat="server" ReadOnly="True"></asp:TextBox>
&nbsp;at home ? (chose your answer) ?</td>
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
            <td>How many days a week do you use a <asp:TextBox placeholder="[doing the task]" ID="TextBox4" runat="server" ReadOnly="True"></asp:TextBox>
&nbsp; ?</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:RadioButtonList ID="rb4" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Value="1">o days</asp:ListItem>
                    <asp:ListItem Value="2">1 or 2 days</asp:ListItem>
                    <asp:ListItem Value="3">3 or 4 days</asp:ListItem>
                    <asp:ListItem Value="4">5 or 6 days</asp:ListItem>
                    <asp:ListItem Value="5">7 days</asp:ListItem>
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
            <td>How good do you think you are at using a <asp:TextBox placeholder="[doing the task]" ID="TextBox5" runat="server" ReadOnly="True"></asp:TextBox>
                 &nbsp;?</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:RadioButtonList ID="rb5" runat="server" RepeatDirection="Horizontal">
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
            <td>6</td>
            <td>Does your school have a <asp:TextBox placeholder="[carried out the task]" ID="TextBox61" runat="server" ReadOnly="True"></asp:TextBox>
                &nbsp;you can use in class&nbsp;?</td>
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
            <td>Do you use it with your teacher in your class ?:</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:RadioButton ID="rb7y" runat="server" GroupName="q7" Text="Yes" />
                <asp:RadioButton ID="rb7n" runat="server" GroupName="q7" Text="No" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>8</td>
            <td>Have you ever
                <asp:TextBox ID="TextBox81" placeholder="[carried out a task]" runat="server"></asp:TextBox>
&nbsp;on a&nbsp;
                <asp:TextBox ID="TextBox82" placeholder="[technology]" runat="server"></asp:TextBox>
&nbsp;?</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:RadioButton ID="rb8y" runat="server" GroupName="q8" Text="Yes" />
                <asp:RadioButton ID="rb8n" runat="server" GroupName="q8" Text="No" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>9</td>
            <td>Can you write down
                <asp:TextBox ID="TextBox91" placeholder="[n]" runat="server"></asp:TextBox>
&nbsp;things that you use your
                <asp:TextBox ID="TextBox92" placeholder="[technology]" runat="server"></asp:TextBox>
                &nbsp;for </td>
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
                <asp:TextBox ID="TextBox93" runat="server" Rows="4" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox93" ErrorMessage="RequiredFieldValidator" ForeColor="Red"></asp:RequiredFieldValidator>
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
