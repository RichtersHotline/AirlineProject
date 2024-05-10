<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="SearchViaPassengerCode.aspx.cs" Inherits="AirlineProject.SearchViaPassengerCode" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <table style="width:100%;">
    <tr>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="background-color: #37306B">
            <asp:Label ID="LBLInputCode" runat="server" Font-Names="Arial" ForeColor="White" Text="Please Input Passenger Code:"></asp:Label>
            <asp:TextBox ID="TxtPassengerCode" runat="server"></asp:TextBox>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#66347F" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="White">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                    <asp:BoundField DataField="Surname" HeaderText="Surname" SortExpression="Surname" />
                    <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                    <asp:BoundField DataField="PassengerCode" HeaderText="PassengerCode" SortExpression="PassengerCode" />
                    <asp:BoundField DataField="EmailAddress" HeaderText="EmailAddress" SortExpression="EmailAddress" />
                    <asp:BoundField DataField="BirthDate" HeaderText="BirthDate" SortExpression="BirthDate" />
                    <asp:BoundField DataField="MobileNumber" HeaderText="MobileNumber" SortExpression="MobileNumber" />
                    <asp:BoundField DataField="IDNumber" HeaderText="IDNumber" SortExpression="IDNumber" />
                    <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                    <asp:BoundField DataField="Weight" HeaderText="Weight" SortExpression="Weight" />
                    <asp:BoundField DataField="Disability" HeaderText="Disability" SortExpression="Disability" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IcarusDatabaseConnectionString %>" SelectCommand="SELECT [Id], [FirstName], [Surname], [Age], [Address], [PassengerCode], [EmailAddress], [BirthDate], [MobileNumber], [IDNumber], [Gender], [Weight], [Disability] FROM [Passengers] WHERE ([PassengerCode] = @PassengerCode)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TxtPassengerCode" Name="PassengerCode" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>

