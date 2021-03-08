<%@ Page Title="" Language="C#" MasterPageFile="~/SurveySupervisor.master" AutoEventWireup="true" CodeBehind="SSDashboard.aspx.cs" Inherits="SurveyWeb.SSDashboard" %>


 <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <table style="width: 100%; border-style: solid; border-width: 1px">
        <tr>
            <td>&nbsp;</td>
            <td>WELCOME&nbsp; <asp:Label ID="lbluname" Text="ADMIN" runat="server" /> </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
      
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;&nbsp;<asp:GridView ID="GridView1" runat="server" OnRowDeleting="GridView1_RowDeleting">
                <Columns>
                    <asp:ButtonField CommandName="Delete" Text="delete" />
                </Columns>
                </asp:GridView>
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

