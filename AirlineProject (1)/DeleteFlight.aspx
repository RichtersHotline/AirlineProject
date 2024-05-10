<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="DeleteFlight.aspx.cs" Inherits="AirlineProject.DeleteFlight" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table style="width:100%;">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="LBLFlightNumber" runat="server" Font-Names="Arial" ForeColor="White" Text="Please Input Flight Number:"></asp:Label>
                <asp:TextBox ID="TxtFlightNumberInsertion" runat="server"></asp:TextBox>
                <asp:Button ID="BTNDeleteFlight" runat="server" Height="26px" OnClick="BTNDeleteFlight_Click" Text="DELETE" Width="74px" BackColor="#66347F" ForeColor="White" />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="100%" Style="width:100%; table-layout:fixed; word-wrap:break-word; font-size:xx-small; overflow:scroll;" BackColor="#37306B" ForeColor="White">
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="FlightNumber" HeaderText="FlightNumber" SortExpression="FlightNumber" />
                        <asp:BoundField DataField="TotalNumberOfSeats" HeaderText="TotalNumberOfSeats" SortExpression="TotalNumberOfSeats" />
                        <asp:BoundField DataField="AvailableSeats" HeaderText="AvailableSeats" SortExpression="AvailableSeats" />
                        <asp:BoundField DataField="DomesticOrInternational" HeaderText="DomesticOrInternational" SortExpression="DomesticOrInternational" />
                        <asp:BoundField DataField="DepartureAirport" HeaderText="DepartureAirport" SortExpression="DepartureAirport" />
                        <asp:BoundField DataField="ArrivalAirport" HeaderText="ArrivalAirport" SortExpression="ArrivalAirport" />
                        <asp:BoundField DataField="FlyBackDate" HeaderText="FlyBackDate" SortExpression="FlyBackDate" />
                        <asp:BoundField DataField="OneWayDesignation" HeaderText="OneWayDesignation" SortExpression="OneWayDesignation" />
                        <asp:BoundField DataField="Class" HeaderText="Class" SortExpression="Class" />
                        <asp:BoundField DataField="Destination" HeaderText="Destination" SortExpression="Destination" />
                        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                        <asp:BoundField DataField="ArrivalTime" HeaderText="ArrivalTime" SortExpression="ArrivalTime" />
                        <asp:BoundField DataField="DepartingTime" HeaderText="DepartingTime" SortExpression="DepartingTime" />
                        <asp:BoundField DataField="DepartingDate" HeaderText="DepartingDate" SortExpression="DepartingDate" />
                        <asp:BoundField DataField="FlightStatus" HeaderText="FlightStatus" SortExpression="FlightStatus" />
                        <asp:BoundField DataField="BaggageLimit" HeaderText="BaggageLimit" SortExpression="BaggageLimit" />
                        <asp:BoundField DataField="AirplaneDesignation" HeaderText="AirplaneDesignation" SortExpression="AirplaneDesignation" />
                        <asp:BoundField DataField="NumOfPassengers" HeaderText="NumOfPassengers" SortExpression="NumOfPassengers" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IcarusDatabaseConnectionString %>" DeleteCommand="DELETE FROM Flights WHERE (FlightNumber = @FlightNumber)" InsertCommand="INSERT INTO [Flights] ([Id], [FlightNumber], [TotalNumberOfSeats], [AvailableSeats], [DomesticOrInternational], [DepartureAirport], [ArrivalAirport], [FlyBackDate], [OneWayDesignation], [Class], [Destination], [Price], [ArrivalTime], [DepartingTime], [DepartingDate], [FlightStatus], [BaggageLimit], [AirplaneDesignation], [NumOfPassengers]) VALUES (@Id, @FlightNumber, @TotalNumberOfSeats, @AvailableSeats, @DomesticOrInternational, @DepartureAirport, @ArrivalAirport, @FlyBackDate, @OneWayDesignation, @Class, @Destination, @Price, @ArrivalTime, @DepartingTime, @DepartingDate, @FlightStatus, @BaggageLimit, @AirplaneDesignation, @NumOfPassengers)" SelectCommand="SELECT [Id], [FlightNumber], [TotalNumberOfSeats], [AvailableSeats], [DomesticOrInternational], [DepartureAirport], [ArrivalAirport], [FlyBackDate], [OneWayDesignation], [Class], [Destination], [Price], [ArrivalTime], [DepartingTime], [DepartingDate], [FlightStatus], [BaggageLimit], [AirplaneDesignation], [NumOfPassengers] FROM [Flights]" UpdateCommand="UPDATE [Flights] SET [FlightNumber] = @FlightNumber, [TotalNumberOfSeats] = @TotalNumberOfSeats, [AvailableSeats] = @AvailableSeats, [DomesticOrInternational] = @DomesticOrInternational, [DepartureAirport] = @DepartureAirport, [ArrivalAirport] = @ArrivalAirport, [FlyBackDate] = @FlyBackDate, [OneWayDesignation] = @OneWayDesignation, [Class] = @Class, [Destination] = @Destination, [Price] = @Price, [ArrivalTime] = @ArrivalTime, [DepartingTime] = @DepartingTime, [DepartingDate] = @DepartingDate, [FlightStatus] = @FlightStatus, [BaggageLimit] = @BaggageLimit, [AirplaneDesignation] = @AirplaneDesignation, [NumOfPassengers] = @NumOfPassengers WHERE [Id] = @Id">
                    <DeleteParameters>
                        <asp:ControlParameter ControlID="TxtFlightNumberInsertion" Name="FlightNumber" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                        <asp:Parameter Name="FlightNumber" Type="String" />
                        <asp:Parameter Name="TotalNumberOfSeats" Type="Int32" />
                        <asp:Parameter Name="AvailableSeats" Type="Int32" />
                        <asp:Parameter Name="DomesticOrInternational" Type="String" />
                        <asp:Parameter Name="DepartureAirport" Type="String" />
                        <asp:Parameter Name="ArrivalAirport" Type="String" />
                        <asp:Parameter Name="FlyBackDate" Type="String" />
                        <asp:Parameter Name="OneWayDesignation" Type="String" />
                        <asp:Parameter Name="Class" Type="String" />
                        <asp:Parameter Name="Destination" Type="String" />
                        <asp:Parameter Name="Price" Type="Decimal" />
                        <asp:Parameter Name="ArrivalTime" Type="String" />
                        <asp:Parameter Name="DepartingTime" Type="String" />
                        <asp:Parameter Name="DepartingDate" Type="String" />
                        <asp:Parameter Name="FlightStatus" Type="String" />
                        <asp:Parameter Name="BaggageLimit" Type="String" />
                        <asp:Parameter Name="AirplaneDesignation" Type="String" />
                        <asp:Parameter Name="NumOfPassengers" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="FlightNumber" Type="String" />
                        <asp:Parameter Name="TotalNumberOfSeats" Type="Int32" />
                        <asp:Parameter Name="AvailableSeats" Type="Int32" />
                        <asp:Parameter Name="DomesticOrInternational" Type="String" />
                        <asp:Parameter Name="DepartureAirport" Type="String" />
                        <asp:Parameter Name="ArrivalAirport" Type="String" />
                        <asp:Parameter Name="FlyBackDate" Type="String" />
                        <asp:Parameter Name="OneWayDesignation" Type="String" />
                        <asp:Parameter Name="Class" Type="String" />
                        <asp:Parameter Name="Destination" Type="String" />
                        <asp:Parameter Name="Price" Type="Decimal" />
                        <asp:Parameter Name="ArrivalTime" Type="String" />
                        <asp:Parameter Name="DepartingTime" Type="String" />
                        <asp:Parameter Name="DepartingDate" Type="String" />
                        <asp:Parameter Name="FlightStatus" Type="String" />
                        <asp:Parameter Name="BaggageLimit" Type="String" />
                        <asp:Parameter Name="AirplaneDesignation" Type="String" />
                        <asp:Parameter Name="NumOfPassengers" Type="String" />
                        <asp:Parameter Name="Id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td class="auto-style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
