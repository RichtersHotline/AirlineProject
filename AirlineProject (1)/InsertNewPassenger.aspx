<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="InsertNewPassenger.aspx.cs" Inherits="AirlineProject.InsertNewPassenger" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            height: 22px;
            text-align: center;
        }
        .auto-style4 {
            height: 29px;
            text-align: center;
        }
        .auto-style5 {
            text-align: center;
        }
        .auto-style6 {
            text-align: center;
            height: 17px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table style="width:100%;">
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3" colspan="2">
                <asp:Label ID="Label13" runat="server" Font-Names="Arial" ForeColor="White" Text="ID"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Label ID="Label1" runat="server" Font-Names="Arial" ForeColor="White" Text=" Name:"></asp:Label>
                <asp:TextBox ID="TxtID" runat="server" Enabled="False"></asp:TextBox>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="TxtName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Label ID="Label2" runat="server" Font-Names="Arial" ForeColor="White" Text="Surname"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="TxtSurname" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Label ID="Label3" runat="server" Font-Names="Arial" ForeColor="White" Text="Age"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="TxtAge" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Label ID="Label4" runat="server" Font-Names="Arial" ForeColor="White" Text="Address:"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="TxtAddress" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Label ID="Label5" runat="server" Font-Names="Arial" ForeColor="White" Text="Passenger Code:"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="TxtPassengerCode" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Label ID="Label6" runat="server" Font-Names="Arial" ForeColor="White" Text="Birth Date:"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="TxtBirthDate" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Label ID="Label7" runat="server" Font-Names="Arial" ForeColor="White" Text="Email Address"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="TxtEmailAddress" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Label ID="Label8" runat="server" Font-Names="Arial" ForeColor="White" Text="Mobile Number"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="TxtMobileNumber" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label9" runat="server" Font-Names="Arial" ForeColor="White" Text="IDNumber"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:TextBox ID="TxtIDNumber" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Label ID="Label10" runat="server" Font-Names="Arial" ForeColor="White" Text="Gender:"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="TxtGender" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Label ID="Label11" runat="server" Font-Names="Arial" ForeColor="White" Text="Weight"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="TxtWeight" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Label ID="Label12" runat="server" Font-Names="Arial" ForeColor="White" Text="Disability"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="TxtDis" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Button ID="BTNUpdate" runat="server" OnClick="BTNUpdate_Click" Text="Add" Height="19px" Width="100px" BackColor="#66347F" ForeColor="White" />
            </td>
            <td class="auto-style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IcarusDatabaseConnectionString %>" DeleteCommand="DELETE FROM [Passengers] WHERE [Id] = @Id" InsertCommand="INSERT INTO Passengers(Id, FirstName, Surname, Age, Address, PassengerCode, BirthDate, EmailAddress, MobileNumber, IDNumber, Gender, Weight, Disability) VALUES (@Id, @FirstName, @Surname, @Age, @Address, @PassengerCode, @BirthDate, @EmailAddress, @MobileNumber, @IDNumber, @Gender, @Weight, @Disability)" SelectCommand="SELECT [Id], [FirstName], [Surname], [Age], [Address], [PassengerCode], [BirthDate], [EmailAddress], [MobileNumber], [IDNumber], [Gender], [Weight], [Disability] FROM [Passengers]" UpdateCommand="UPDATE [Passengers] SET [FirstName] = @FirstName, [Surname] = @Surname, [Age] = @Age, [Address] = @Address, [PassengerCode] = @PassengerCode, [BirthDate] = @BirthDate, [EmailAddress] = @EmailAddress, [MobileNumber] = @MobileNumber, [IDNumber] = @IDNumber, [Gender] = @Gender, [Weight] = @Weight, [Disability] = @Disability WHERE [Id] = @Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:ControlParameter ControlID="TxtID" Name="Id" Type="Int32" />
                        <asp:ControlParameter ControlID="TxtName" Name="FirstName" Type="String" />
                        <asp:ControlParameter ControlID="TxtSurname" Name="Surname" Type="String" />
                        <asp:ControlParameter ControlID="TxtAge" Name="Age" Type="String" />
                        <asp:ControlParameter ControlID="TxtAddress" Name="Address" Type="String" />
                        <asp:ControlParameter ControlID="TxtPassengerCode" Name="PassengerCode" Type="String" />
                        <asp:ControlParameter ControlID="TxtBirthDate" Name="BirthDate" Type="String" />
                        <asp:ControlParameter ControlID="TxtEmailAddress" Name="EmailAddress" Type="String" />
                        <asp:ControlParameter ControlID="TxtMobileNumber" Name="MobileNumber" Type="String" />
                        <asp:ControlParameter ControlID="TxtIDNumber" Name="IDNumber" Type="String" />
                        <asp:ControlParameter ControlID="TxtGender" Name="Gender" Type="String" />
                        <asp:ControlParameter ControlID="TxtWeight" Name="Weight" Type="String" />
                        <asp:ControlParameter ControlID="TxtDis" Name="Disability" Type="String" />
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
            <td class="auto-style5">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
