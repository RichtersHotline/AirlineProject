<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="SearchViaSurname.aspx.cs" Inherits="AirlineProject.SearchViaSurname" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <table style="width:100%; border-collapse: collapse; border-spacing: 0px;">
    <tr>
        <td style="background-color: #37306B">
            <table style="width:100%;">
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="LBLSurname" runat="server" Font-Names="Arial" ForeColor="White" Text="Please input Passenger Surname:"></asp:Label>
                        <asp:TextBox ID="TxtSurname" runat="server"></asp:TextBox>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#66347F" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="White" Height="40px">
                            <Columns>
                                <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                                <asp:BoundField DataField="Surname" HeaderText="Surname" SortExpression="Surname" />
                                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                                <asp:BoundField DataField="PassengerCode" HeaderText="PassengerCode" SortExpression="PassengerCode" />
                                <asp:BoundField DataField="BirthDate" HeaderText="BirthDate" SortExpression="BirthDate" />
                                <asp:BoundField DataField="EmailAddress" HeaderText="EmailAddress" SortExpression="EmailAddress" />
                                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                                <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                                <asp:BoundField DataField="MobileNumber" HeaderText="MobileNumber" SortExpression="MobileNumber" />
                                <asp:BoundField DataField="IDNumber" HeaderText="IDNumber" SortExpression="IDNumber" />
                                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                                <asp:BoundField DataField="Weight" HeaderText="Weight" SortExpression="Weight" />
                                <asp:BoundField DataField="Disability" HeaderText="Disability" SortExpression="Disability" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IcarusDatabaseConnectionString %>" SelectCommand="SELECT DISTINCT [Age], [Surname], [Address], [PassengerCode], [BirthDate], [EmailAddress], [Id], [FirstName], [MobileNumber], [IDNumber], [Gender], [Weight], [Disability] FROM [Passengers] WHERE ([Surname] = @Surname)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="TxtSurname" Name="Surname" PropertyName="Text" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>


