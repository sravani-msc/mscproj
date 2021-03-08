<%@ Page Title="" Language="C#" MasterPageFile="~/SurveyAdmin.master" AutoEventWireup="true" CodeBehind="SACreateStudy.aspx.cs" Inherits="SurveyWeb.SACreateStudy" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table style="width: 100%">
                  <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
                  <tr>
            <td>&nbsp;</td>
            <td colspan="2">
                 <h2 class="text-center">CREATE STUDY</h2>
                      </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="text-align: right">&nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="text-align: right">Enter Study Name </td>
            <td>
                <asp:TextBox ID="tbStudyname" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbStudyname" ErrorMessage="RequiredFieldValidator" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="text-align: right">&nbsp;</td>
            <td>
                &nbsp;&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="text-align: right">Enter Number of Students</td>
            <td>
                <asp:TextBox ID="tbNumstudents" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbNumstudents" ErrorMessage="RequiredFieldValidator" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="text-align: right">&nbsp;</td>
            <td>
                &nbsp;&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="text-align: right">Enter Clients School Name</td>
            <td>
                <asp:TextBox ID="tbClientschoolname" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tbClientschoolname" ErrorMessage="RequiredFieldValidator" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="text-align: right">&nbsp;</td>
            <td>
                &nbsp;&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="text-align: right">&nbsp;</td>
            <td>
            &nbsp;
                </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="text-align: right">&nbsp;</td>
            <td>
                &nbsp;&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                &nbsp;&nbsp;</td>
            <td>&nbsp;</td>
        </tr>

        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                &nbsp;&nbsp;</td>
            <td>&nbsp;</td>
        </tr>

        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                &nbsp;&nbsp;</td>
            <td>&nbsp;</td>
        </tr>

        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                &nbsp;&nbsp;
            </td>
            <td>&nbsp;</td>
        </tr>

        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                &nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
            &nbsp;<asp:Label ID="lblmsg" runat="server"></asp:Label>
&nbsp;<asp:HiddenField ID="hdnstudy" runat="server" />
            </td>
            <td>&nbsp;</td>
        </tr>

        <tr>
            <td>&nbsp;</td>
            <td style="background-color: #000000">&nbsp;</td>
            <td style="background-color: #000000">
                &nbsp; &nbsp;</td>
            <td>&nbsp;</td>
        </tr>

        <tr>
            <td>&nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;&nbsp;</td>
            <td>&nbsp;</td>
        </tr>

        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button2" runat="server" Text="Generate Logins" OnClick="Button2_Click" />
            </td>
            <td>
                <asp:Button ID="Button3" runat="server" Text="Create Consent Form" OnClick="Button3_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>

        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>

        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" ReadOnly="True" Rows="5" TextMode="MultiLine"></asp:TextBox>
            &nbsp;<asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Download" />
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Columns="40" Rows="5" TextMode="MultiLine">I agree to participate in this survey.</asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>

        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                &nbsp;&nbsp;</td>
            <td>&nbsp;</td>
        </tr>

                </table>

</asp:Content>
