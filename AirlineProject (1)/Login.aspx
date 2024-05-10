<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="AirlineProject.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style17 {
        width: 990px;
        height: 400px;
    }
</style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder7" runat="server">
    <p>
    <img alt="BannerLogin" class="auto-style17" src="Imgs/LoginBanner.png" style="width: 100%; height: 700px;" /></p>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <table style="width:100%;">
        <tr>
            <td style="background-color: #50B8E7">
                <asp:Label ID="LBLUsername" runat="server" Text="Username:"></asp:Label>
                <asp:TextBox ID="TxtUserName" runat="server" Height="22px" Width="123px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="background-color: #50B8E7">
                <asp:Label ID="LBLPassword" runat="server" Text="Password:"></asp:Label>
                <asp:TextBox ID="TxtPassword" runat="server" Height="22px" Width="123px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="BTNLogon" runat="server" BackColor="#50B8E7" BorderStyle="Solid" ForeColor="White" Height="29px" OnClick="BTNLogon_Click" Text="Login" Width="130px" />
                <asp:HyperLink ID="HPLForgot" runat="server" Font-Names="Arial" NavigateUrl="~/ForgotPassword.aspx">Forgot Your Password?</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Visible="False">
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                        <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IcarusDatabaseConnectionString %>" SelectCommand="SELECT [Id], [Username], [Password] FROM [AdminLogin]">
                </asp:SqlDataSource>
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
