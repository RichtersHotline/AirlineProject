<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="FlightNumberSearch.aspx.cs" Inherits="AirlineProject.FlightStatus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style17 {
            width: 990px;
            height: 400px;
        }
        th {
            padding:5px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder7" runat="server">
    <p>
        <img alt="spooky" class="auto-style17" src="Imgs/We're-watching-you.png" style="width: 100%; height: 703px;" /></p>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <table style="width: 100%;">
        <tr>
            <td style="background-color: #50B8E7">
                <asp:Label ID="LBLflight" runat="server" Text="Please input Flight Number:"></asp:Label>
                <asp:TextBox ID="TxtFlightNumber" runat="server"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" BackColor="#84CDEE" ForeColor="White" Height="22px" Text="Search" Width="128px" BorderColor="#84CDEE" Font-Names="Arial" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Style="width:100%; table-layout:fixed; word-wrap:break-word; font-size:xx-small; overflow:scroll; background-color:#50b8e7">
                    <Columns>
                        <asp:BoundField DataField="FlightNumber" HeaderText="FlightNumber" SortExpression="FlightNumber" />
                        <asp:BoundField DataField="TotalNumberOfSeats" HeaderText="TotalNumberOfSeats" SortExpression="TotalNumberOfSeats" />
                        <asp:BoundField DataField="AvailableSeats" HeaderText="AvailableSeats" SortExpression="AvailableSeats" />
                        <asp:BoundField DataField="DomesticOrInternational" HeaderText="DomesticOrInternational" SortExpression="DomesticOrInternational" />
                        <asp:BoundField DataField="DepartureAirport" HeaderText="DepartureAirport" SortExpression="DepartureAirport" />
                        <asp:BoundField DataField="ArrivalAirport" HeaderText="ArrivalAirport" SortExpression="ArrivalAirport" />
                        <asp:BoundField DataField="FlyBackDate" HeaderText="FlyBackDate" SortExpression="FlyBackDate" />
                        <asp:BoundField DataField="Class" HeaderText="Class" SortExpression="Class" />
                        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                        <asp:BoundField DataField="OneWayDesignation" HeaderText="OneWayDesignation" SortExpression="OneWayDesignation" />
                        <asp:BoundField DataField="Destination" HeaderText="Destination" SortExpression="Destination" />
                        <asp:BoundField DataField="ArrivalTime" HeaderText="ArrivalTime" SortExpression="ArrivalTime" />
                        <asp:BoundField DataField="DepartingTime" HeaderText="DepartingTime" SortExpression="DepartingTime" />
                        <asp:BoundField DataField="DepartingDate" HeaderText="DepartingDate" SortExpression="DepartingDate" />
                        <asp:BoundField DataField="FlightStatus" HeaderText="FlightStatus" SortExpression="FlightStatus" />
                        <asp:BoundField DataField="BaggageLimit" HeaderText="BaggageLimit" SortExpression="BaggageLimit" />
                        <asp:BoundField DataField="NumOfPassengers" HeaderText="NumOfPassengers" SortExpression="NumOfPassengers" />
                        <asp:BoundField DataField="AirplaneDesignation" HeaderText="AirplaneDesignation" SortExpression="AirplaneDesignation" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IcarusDatabaseConnectionString %>" SelectCommand="SELECT DISTINCT [FlightNumber], [TotalNumberOfSeats], [AvailableSeats], [DomesticOrInternational], [DepartureAirport], [ArrivalAirport], [FlyBackDate], [Class], [Price], [OneWayDesignation], [Destination], [ArrivalTime], [DepartingTime], [DepartingDate], [FlightStatus], [BaggageLimit], [NumOfPassengers], [AirplaneDesignation] FROM [Flights] WHERE ([FlightNumber] = @FlightNumber)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TxtFlightNumber" Name="FlightNumber" PropertyName="Text" Type="String" />
                    </SelectParameters>
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
