<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="SearchViaAgeGroup.aspx.cs" Inherits="AirlineProject.SearchViaAgeGroup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <table style="width:100%;">
    <tr>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="background-color: #37306B">
            <asp:Label ID="LBLAge" runat="server" Font-Names="Arial" ForeColor="White" Text="Passengers who match or who are younger than:"></asp:Label>
            <asp:DropDownList ID="DDLMin" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Age" DataValueField="Age">
                <asp:ListItem>Minor</asp:ListItem>
                <asp:ListItem>Adult</asp:ListItem>
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:IcarusDatabaseConnectionString %>" SelectCommand="SELECT DISTINCT [Age] FROM [Passengers]"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td style="background-color: #37306B">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#66347F" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="White">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                    <asp:BoundField DataField="Surname" HeaderText="Surname" SortExpression="Surname" />
                    <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                    <asp:BoundField DataField="PassengerCode" HeaderText="PassengerCode" SortExpression="PassengerCode" />
                    <asp:BoundField DataField="BirthDate" HeaderText="BirthDate" SortExpression="BirthDate" />
                    <asp:BoundField DataField="EmailAddress" HeaderText="EmailAddress" SortExpression="EmailAddress" />
                    <asp:BoundField DataField="MobileNumber" HeaderText="MobileNumber" SortExpression="MobileNumber" />
                    <asp:BoundField DataField="IDNumber" HeaderText="IDNumber" SortExpression="IDNumber" />
                    <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                    <asp:BoundField DataField="Weight" HeaderText="Weight" SortExpression="Weight" />
                    <asp:BoundField DataField="Disability" HeaderText="Disability" SortExpression="Disability" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IcarusDatabaseConnectionString %>" SelectCommand="SELECT DISTINCT [Id], [FirstName], [Surname], [Age], [Address], [PassengerCode], [BirthDate], [EmailAddress], [MobileNumber], [IDNumber], [Gender], [Weight], [Disability] FROM [Passengers] WHERE ([Age] &lt;= @Age)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DDLMin" Name="Age" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
</table>
</asp:Content>

