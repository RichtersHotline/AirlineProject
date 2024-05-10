<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="AddNewFlight.aspx.cs" Inherits="AirlineProject.AddNewFlight" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            text-align: center;
            display:block;
        }
        .auto-style4 {
            text-align: center;
            display: block;
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table style="width:100%;">
        <tr>
            <td class="auto-style3">
                <asp:Label ID="LBLID" runat="server" Font-Names="Arial" ForeColor="White" Text="ID:"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="TxtID" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="LBLFlightNumber" runat="server" Font-Names="Arial" ForeColor="White" Text="Flight Number"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="TxtFlightNumber" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="LBLTotalNumberOfSeats" runat="server" Font-Names="Arial" ForeColor="White" Text="Total Number Of Seats"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="TxtTotalNumberOfSeats" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="LBLSeats" runat="server" Font-Names="Arial" ForeColor="White" Text="Available Seats"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="TxtSeats" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="LBLDomestic" runat="server" Font-Names="Arial" ForeColor="White" Text="Domestic Or International"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="TxtInternational" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label6" runat="server" Font-Names="Arial" ForeColor="White" Text="Departure Airport"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="TxtDeparture" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label7" runat="server" Font-Names="Arial" ForeColor="White" Text="Arrival Airport"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="TxtArrivalAirport" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label8" runat="server" Font-Names="Arial" ForeColor="White" Text="Fly Back Date"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="TxtFlyBackDate" runat="server" TextMode="Date"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label9" runat="server" Font-Names="Arial" ForeColor="White" Text="One Way Designation"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:TextBox ID="TxtOneWayDesi" runat="server" TextMode="Search"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label10" runat="server" Font-Names="Arial" ForeColor="White" Text="Class"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:DropDownList ID="DDLClass" runat="server" DataSourceID="SqlDataSource2" DataTextField="Class" DataValueField="Class">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:IcarusDatabaseConnectionString %>" SelectCommand="SELECT DISTINCT [Class] FROM [Flights]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label11" runat="server" Font-Names="Arial" ForeColor="White" Text="Destination"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:TextBox ID="TxtDestination" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label12" runat="server" Font-Names="Arial" ForeColor="White" Text="Price"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="TxtPrice" runat="server" TextMode="Number"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label13" runat="server" Font-Names="Arial" ForeColor="White" Text="Arrival Time"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="TxtArrival" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label14" runat="server" Font-Names="Arial" ForeColor="White" Text="Departing Time"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="TxtDeparting" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label15" runat="server" Font-Names="Arial" ForeColor="White" Text="Departing Date"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="TxtDepDate" runat="server" TextMode="Date"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label16" runat="server" Font-Names="Arial" ForeColor="White" Text="Flight Status"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="TxtFlightStatus" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label17" runat="server" Font-Names="Arial" ForeColor="White" Text="Baggage Limit"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="TxtBaggageLine" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label18" runat="server" Font-Names="Arial" ForeColor="White" Text="Number of Passengers"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="TxtNumOfPassengers" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label19" runat="server" Font-Names="Arial" ForeColor="White" Text="Airplane Designation"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="TxtAirplane" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Button ID="BTNFlightAdd" runat="server" BackColor="#66347F" ForeColor="White" Text="Add" OnClick="BTNFlightAdd_Click" Height="19px" Width="100px" />
            </td>
            <td class="auto-style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="100%"  Style="width:100%; table-layout:fixed; word-wrap:break-word; font-size:xx-small; overflow:scroll;" BackColor="#37306B" ForeColor="White">
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
                        <asp:BoundField DataField="NumOfPassengers" HeaderText="NumOfPassengers" SortExpression="NumOfPassengers" />
                        <asp:BoundField DataField="AirplaneDesignation" HeaderText="AirplaneDesignation" SortExpression="AirplaneDesignation" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IcarusDatabaseConnectionString %>" DeleteCommand="DELETE FROM [Flights] WHERE [Id] = @Id" InsertCommand="INSERT INTO Flights(Id, FlightNumber, TotalNumberOfSeats, AvailableSeats, DomesticOrInternational, DepartureAirport, ArrivalAirport, FlyBackDate, OneWayDesignation, Class, Destination, Price, ArrivalTime, DepartingTime, DepartingDate, FlightStatus, BaggageLimit, NumOfPassengers, AirplaneDesignation) VALUES (@Id, @FlightNumber, @TotalNumberOfSeats, @AvailableSeats, @DomesticOrInternational, @DepartureAirport, @ArrivalAirport, @FlyBackDate, @OneWayDesignation, @Class, @Destination, @Price, @ArrivalTime, @DepartingTime, @DepartingDate, @FlightStatus, @BaggageLimit, @NumOfPassengers, @AirplaneDesignation)" SelectCommand="SELECT [Id], [FlightNumber], [TotalNumberOfSeats], [AvailableSeats], [DomesticOrInternational], [DepartureAirport], [ArrivalAirport], [FlyBackDate], [OneWayDesignation], [Class], [Destination], [Price], [ArrivalTime], [DepartingTime], [DepartingDate], [FlightStatus], [BaggageLimit], [NumOfPassengers], [AirplaneDesignation] FROM [Flights]" UpdateCommand="UPDATE [Flights] SET [FlightNumber] = @FlightNumber, [TotalNumberOfSeats] = @TotalNumberOfSeats, [AvailableSeats] = @AvailableSeats, [DomesticOrInternational] = @DomesticOrInternational, [DepartureAirport] = @DepartureAirport, [ArrivalAirport] = @ArrivalAirport, [FlyBackDate] = @FlyBackDate, [OneWayDesignation] = @OneWayDesignation, [Class] = @Class, [Destination] = @Destination, [Price] = @Price, [ArrivalTime] = @ArrivalTime, [DepartingTime] = @DepartingTime, [DepartingDate] = @DepartingDate, [FlightStatus] = @FlightStatus, [BaggageLimit] = @BaggageLimit, [NumOfPassengers] = @NumOfPassengers, [AirplaneDesignation] = @AirplaneDesignation WHERE [Id] = @Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:ControlParameter ControlID="TxtID" Name="Id" Type="Int32" />
                        <asp:ControlParameter ControlID="TxtFlightNumber" Name="FlightNumber" Type="String" />
                        <asp:ControlParameter ControlID="TxtTotalNumberOfSeats" Name="TotalNumberOfSeats" Type="Int32" />
                        <asp:ControlParameter ControlID="TxtSeats" Name="AvailableSeats" Type="Int32" />
                        <asp:ControlParameter ControlID="TxtInternational" Name="DomesticOrInternational" Type="String" />
                        <asp:ControlParameter ControlID="TxtDeparture" Name="DepartureAirport" Type="String" />
                        <asp:ControlParameter ControlID="TxtArrival" Name="ArrivalAirport" Type="String" />
                        <asp:ControlParameter ControlID="TxtFlyBackDate" Name="FlyBackDate" Type="String" />
                        <asp:ControlParameter ControlID="TxtOneWayDesi" Name="OneWayDesignation" Type="String" />
                        <asp:ControlParameter ControlID="TxtDestination" Name="Destination" Type="String" />
                        <asp:ControlParameter ControlID="TxtPrice" Name="Price" Type="Decimal" />
                        <asp:ControlParameter ControlID="TxtArrival" Name="ArrivalTime" Type="String" />
                        <asp:ControlParameter ControlID="TxtDeparting" Name="DepartingTime" Type="String" />
                        <asp:ControlParameter ControlID="TxtDepDate" Name="DepartingDate" Type="String" />
                        <asp:ControlParameter ControlID="TxtFlightStatus" Name="FlightStatus" Type="String" />
                        <asp:ControlParameter ControlID="TxtBaggageLine" Name="BaggageLimit" Type="String" />
                        <asp:ControlParameter ControlID="TxtNumOfPassengers" Name="NumOfPassengers" Type="String" />
                        <asp:ControlParameter ControlID="TxtAirplane" Name="AirplaneDesignation" Type="String" />
                        <asp:ControlParameter ControlID="DDLClass" Name="Class" Type="String" />
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
                        <asp:Parameter Name="NumOfPassengers" Type="String" />
                        <asp:Parameter Name="AirplaneDesignation" Type="String" />
                        <asp:Parameter Name="Id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td class="auto-style3">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
