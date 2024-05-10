<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AllFlights.aspx.cs" Inherits="AirlineProject.AllFlights" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type ="text/css">

    
        th {

            padding:5px;
            /*padding-right:100px;*/
           
           
        }

        td {
     
           
        }
        






    </style>
</asp:Content>
<asp:Content ID="Content8" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content9" runat="server" contentplaceholderid="ContentPlaceHolder7">
    
        <asp:Button ID="BTNSearchFlights" runat="server" Height="39px" OnClick="BTNSearchFlights_Click" Text="Search All Flights" Width="214px" BackColor="#50B8E7" ForeColor="White" />
  
</asp:Content>
<asp:Content ID="Content10" runat="server" contentplaceholderid="ContentPlaceHolder3">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="100%" Style="width:100%; table-layout:fixed; word-wrap:break-word; font-size:xx-small; overflow:scroll;" BackColor="#84CDEE" Visible="False">
        <Columns>
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IcarusDatabaseConnectionString %>" SelectCommand="SELECT [FlightNumber], [TotalNumberOfSeats], [AvailableSeats], [DomesticOrInternational], [DepartureAirport], [ArrivalAirport], [FlyBackDate], [OneWayDesignation], [Class], [Destination], [Price], [ArrivalTime], [DepartingTime], [DepartingDate], [FlightStatus], [BaggageLimit], [NumOfPassengers], [AirplaneDesignation] FROM [Flights]"></asp:SqlDataSource>
</asp:Content>


