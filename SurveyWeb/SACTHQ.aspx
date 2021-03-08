<%@ Page Title="" Language="C#" MasterPageFile="~/SurveyAdmin.master" AutoEventWireup="true" CodeBehind="SACTHQ.aspx.cs" Inherits="SurveyWeb.SACTHQ" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table style="width: 100%; border-style: solid; border-width: 1px">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>1</td>
            <td>Do you have a lot of electical items at home&nbsp;  <asp:TextBox ID="TextBox1" runat="server" placeholder="[task]" Visible="False">-</asp:TextBox> is ?<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
               
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
            <td>Do you own a lot of electical items <asp:TextBox ID="TextBox2" placeholder="[carried out the task]" runat="server" Visible="False">-</asp:TextBox>  ?<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="RequiredFieldValidator" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
               
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
            <td>Do you own a games machine (examples: xbox, playstation, nintendo ds )&nbsp; <asp:TextBox placeholder="[times did you carry out the task]" ID="TextBox31" runat="server" Visible="False">-</asp:TextBox>
                &nbsp; ?<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox31" ErrorMessage="RequiredFieldValidator" ForeColor="Red"></asp:RequiredFieldValidator>
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
        <tr>
            <td>4</td>
            <td>&nbsp;Do you have your own mobile phone&nbsp; <asp:TextBox placeholder="[doing the task]" ID="TextBox4" runat="server" Visible="False">-</asp:TextBox>
                &nbsp; ?<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox4" ErrorMessage="RequiredFieldValidator" ForeColor="Red"></asp:RequiredFieldValidator>
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
        <tr>
            <td>5</td>
            <td>Tick the sentence below that you feel best describes you (chose one) <asp:TextBox placeholder="[doing the task]" ID="TextBox5" runat="server" Visible="False">-</asp:TextBox>
                 &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox5" ErrorMessage="RequiredFieldValidator" ForeColor="Red"></asp:RequiredFieldValidator>
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
        <tr>
            <td>6</td>
            <td>Please tick which of the following you have ever used
                <br />
                <asp:TextBox placeholder="[carried out the task]" ID="TextBox61" runat="server"></asp:TextBox>
                <asp:TextBox placeholder="[technology]" ID="TextBox62" runat="server"></asp:TextBox> 
                <br />
                <asp:TextBox placeholder="[carried out the task]" ID="TextBox63" runat="server"></asp:TextBox>
                <asp:TextBox placeholder="[technology]" ID="TextBox64" runat="server"></asp:TextBox> 
                <br />
                <asp:TextBox placeholder="[carried out the task]" ID="TextBox65" runat="server"></asp:TextBox>
                <asp:TextBox placeholder="[technology]" ID="TextBox66" runat="server"></asp:TextBox> 
                <br />
                <asp:TextBox placeholder="[carried out the task]" ID="TextBox67" runat="server"></asp:TextBox>
                <asp:TextBox placeholder="[technology]" ID="TextBox68" runat="server"></asp:TextBox> ?<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox61" ErrorMessage="RequiredFieldValidator" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox62" ErrorMessage="RequiredFieldValidator" ForeColor="Red"></asp:RequiredFieldValidator>
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
        <tr>
            <td>7</td>
            <td>How easy do you find it to use electrical items ? <asp:TextBox placeholder="[n]" ID="TextBox71" runat="server" Visible="False">-</asp:TextBox>
                 &nbsp;<asp:TextBox placeholder="[carry out the task]" ID="TextBox72" runat="server" Visible="False">-</asp:TextBox>
                 :<asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox71" ErrorMessage="RequiredFieldValidator" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox72" ErrorMessage="RequiredFieldValidator" ForeColor="Red"></asp:RequiredFieldValidator>
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
            <td><asp:Label ID="lblmsg" runat="server" /></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>

</asp:Content>
