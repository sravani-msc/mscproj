<%@ Page Title="" Language="C#" MasterPageFile="~/SurveyClient.master" AutoEventWireup="true" CodeBehind="SCOther.aspx.cs" Inherits="SurveyWeb.SCOther" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table style="width: 100%; border-style: solid; border-width: 1px">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>1</td>
            <td>&nbsp;<asp:TextBox ID="TextBox1" runat="server" placeholder="[task]" ReadOnly="True" Width="331px"></asp:TextBox> &nbsp;?</td>
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
            <td>&nbsp;<asp:TextBox ID="TextBox2" placeholder="[carried out the task]" runat="server" ReadOnly="True" Width="331px"></asp:TextBox>  ?</td>
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
            <td>&nbsp;<asp:TextBox placeholder="[times did you carry out the task]" ID="TextBox31" runat="server" ReadOnly="True" Width="303px"></asp:TextBox>
                &nbsp;&nbsp; ?</td>
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
            <td>&nbsp;<asp:TextBox placeholder="[doing the task]" ID="TextBox4" runat="server" ReadOnly="True" Width="304px"></asp:TextBox>
                &nbsp;?</td>
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
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>5</td>
            <td>&nbsp;<asp:TextBox placeholder="[doing the task]" ID="TextBox5" runat="server" ReadOnly="True" Width="293px"></asp:TextBox>
                ?</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
               
                <asp:RadioButton ID="rb5yes" runat="server" GroupName="q5" Text="Yes" />
                <asp:RadioButton ID="rb5no" runat="server" GroupName="q5" Text="No" />
               
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
            <td>&nbsp;<asp:TextBox placeholder="[carried out the task]" ID="TextBox61" runat="server" ReadOnly="True" Width="325px"></asp:TextBox>
                &nbsp; ?</td>
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
            <td>&nbsp;<asp:TextBox placeholder="[n]" ID="TextBox71" runat="server" ReadOnly="True" Width="288px"></asp:TextBox>
                 &nbsp;:</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
               
                <asp:RadioButton ID="rb7yes" runat="server" GroupName="q7" Text="Yes" />
                <asp:RadioButton ID="rb7no" runat="server" GroupName="q8" Text="No" />
               
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
