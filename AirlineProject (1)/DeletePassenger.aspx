<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="DeletePassenger.aspx.cs" Inherits="AirlineProject.DeletePassenger" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table style="width:100%;">
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LBLPassenger" runat="server" Font-Names="Arial" ForeColor="White" Text="Enter Passenger Code:"></asp:Label>
                <asp:TextBox ID="TxtPassengerCode" runat="server"></asp:TextBox>
                <asp:Button ID="BTNDelete" runat="server" BackColor="#66347F" ForeColor="White" Text="DELETE" OnClick="BTNDelete_Click" />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" BackColor="#37306B" ForeColor="White">
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IcarusDatabaseConnectionString %>" DeleteCommand="DELETE FROM Passengers WHERE (PassengerCode = @PassengerCode)" InsertCommand="INSERT INTO [Passengers] ([Id], [FirstName], [Surname], [Age], [Address], [PassengerCode], [BirthDate], [EmailAddress], [MobileNumber], [IDNumber], [Gender], [Weight], [Disability]) VALUES (@Id, @FirstName, @Surname, @Age, @Address, @PassengerCode, @BirthDate, @EmailAddress, @MobileNumber, @IDNumber, @Gender, @Weight, @Disability)" SelectCommand="SELECT * FROM [Passengers]" UpdateCommand="UPDATE [Passengers] SET [FirstName] = @FirstName, [Surname] = @Surname, [Age] = @Age, [Address] = @Address, [PassengerCode] = @PassengerCode, [BirthDate] = @BirthDate, [EmailAddress] = @EmailAddress, [MobileNumber] = @MobileNumber, [IDNumber] = @IDNumber, [Gender] = @Gender, [Weight] = @Weight, [Disability] = @Disability WHERE [Id] = @Id">
                    <DeleteParameters>
                        <asp:ControlParameter ControlID="TxtPassengerCode" Name="PassengerCode" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                        <asp:Parameter Name="FirstName" Type="String" />
                        <asp:Parameter Name="Surname" Type="String" />
                        <asp:Parameter Name="Age" Type="String" />
                        <asp:Parameter Name="Address" Type="String" />
                        <asp:Parameter Name="PassengerCode" Type="String" />
                        <asp:Parameter Name="BirthDate" Type="String" />
                        <asp:Parameter Name="EmailAddress" Type="String" />
                        <asp:Parameter Name="MobileNumber" Type="String" />
                        <asp:Parameter Name="IDNumber" Type="String" />
                        <asp:Parameter Name="Gender" Type="String" />
                        <asp:Parameter Name="Weight" Type="String" />
                        <asp:Parameter Name="Disability" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="FirstName" Type="String" />
                        <asp:Parameter Name="Surname" Type="String" />
                        <asp:Parameter Name="Age" Type="String" />
                        <asp:Parameter Name="Address" Type="String" />
                        <asp:Parameter Name="PassengerCode" Type="String" />
                        <asp:Parameter Name="BirthDate" Type="String" />
                        <asp:Parameter Name="EmailAddress" Type="String" />
                        <asp:Parameter Name="MobileNumber" Type="String" />
                        <asp:Parameter Name="IDNumber" Type="String" />
                        <asp:Parameter Name="Gender" Type="String" />
                        <asp:Parameter Name="Weight" Type="String" />
                        <asp:Parameter Name="Disability" Type="String" />
                        <asp:Parameter Name="Id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
