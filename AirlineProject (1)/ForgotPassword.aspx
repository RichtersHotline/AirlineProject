<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="AirlineProject.ForgotPassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder7" runat="server">
    <table style="width:100%;">
        <tr>
            <td>
                <asp:Label ID="LBLWarning" runat="server" Font-Names="Stencil" Font-Size="XX-Large" ForeColor="Red" Text="ATTENTION UNAUTORISED PERSONNEL WILL BE TRACED AND LOCATED IF YOU ARE NOT AN EMPLOYEE OF ICARUS™ DO NOT ATTEMPT TO LOGIN."></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <table style="width:100%;">
        <tr>
            <td style="background-color: #50B8E7; border-collapse: collapse; border-spacing: 0px;">
                <asp:Label ID="LBLDoit" runat="server" Font-Names="Arial" Text="Input your Username Now:"></asp:Label>
                <asp:TextBox ID="TxtConfirmation" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="background-color: #50B8E7; border-collapse: collapse; border-spacing: 0px;">
                <asp:Label ID="LBLID" runat="server" Text="Enter your Unique ID:"></asp:Label>
                <asp:TextBox ID="TxtUID" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="background-color: #50B8E7; border-collapse: collapse; border-spacing: 0px;">
                <asp:Label ID="Label2" runat="server" Text="I am an authorised Employee of Icarus Flights™ and take responsibility if I am not"></asp:Label>
                <asp:CheckBox ID="CHKEmployee" runat="server" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="BTNNewPassword" runat="server" BackColor="#50B8E7" ForeColor="White" Height="41px" Text="Request New Password" Width="154px" />
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder5" runat="server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder4" runat="server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="ContentPlaceHolder6" runat="server">
</asp:Content>
<asp:Content ID="Content8" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
