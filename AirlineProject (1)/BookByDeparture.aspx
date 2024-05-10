<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="BookByDeparture.aspx.cs" Inherits="AirlineProject.BookByDeparture" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style17 {
            width: 990px;
            height: 400px;

        }
        th {
            padding:5px;
            color:black;
           
           
        }
       


    .auto-style18 {
        width: 2194px;
    }
    .auto-style19 {
        height: 33px;
        width: 2194px;
    }
       


    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder7" runat="server">
    <img alt="Banner" class="auto-style17" src="Imgs/FlightsBanner.png" style="width: 100%; height: 700px;" />
  
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder5" runat="server">


    <table style="width:100%;">
       
        <tr>
            <td style="background-color: #50B8E7; border-collapse: collapse; border-spacing: 0px;" class="auto-style18">
         
                <asp:Label ID="LBLDepart" runat="server" Text="Departure Airport:"></asp:Label>
                <asp:DropDownList ID="DDLDepart" runat="server" Height="31px" Width="97px" DataSourceID="SqlDataSource3" DataTextField="DepartureAirport" DataValueField="DepartureAirport">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:IcarusDatabaseConnectionString %>" SelectCommand="SELECT DISTINCT [DepartureAirport] FROM [Flights]"></asp:SqlDataSource>
                <asp:Label ID="LBLArrive" runat="server" Text="Arrival Airport:"></asp:Label>
                <asp:DropDownList ID="DDLArrival" runat="server" Height="31px" Width="97px" DataSourceID="SqlDataSource4" DataTextField="ArrivalAirport" DataValueField="ArrivalAirport">
                </asp:DropDownList>
                <asp:Button ID="BTNConfirm" runat="server" BackColor="#50B8E7" Font-Names="Arial" ForeColor="White" Height="31px" Text="Search" Width="120px" OnClick="BTNConfirm_Click" />
            </td>
            <td style="background-color: #50B8E7; border-collapse: collapse; border-spacing: 0px;">
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:IcarusDatabaseConnectionString %>" SelectCommand="SELECT DISTINCT [ArrivalAirport] FROM [Flights]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style16"></td>
        </tr>
        <tr>
            <td class="auto-style18">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IcarusDatabaseConnectionString %>" SelectCommand="SELECT DISTINCT [FlightNumber], [TotalNumberOfSeats], [AvailableSeats], [DomesticOrInternational], [ArrivalAirport], [DepartureAirport], [FlyBackDate], [OneWayDesignation], [Class], [Destination], [Price], [ArrivalTime], [DepartingTime], [DepartingDate], [FlightStatus], [BaggageLimit], [AirplaneDesignation], [NumOfPassengers] FROM [Flights]"></asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style18">
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:IcarusDatabaseConnectionString %>" SelectCommand="SELECT [FlightNumber], [TotalNumberOfSeats], [AvailableSeats], [DomesticOrInternational], [DepartureAirport], [ArrivalAirport], [OneWayDesignation], [FlyBackDate], [Destination], [Class], [Price], [ArrivalTime], [DepartingTime], [DepartingDate], [FlightStatus], [BaggageLimit], [NumOfPassengers], [AirplaneDesignation] FROM [Flights] WHERE (([DepartureAirport] = @DepartureAirport) AND ([ArrivalAirport] = @ArrivalAirport))">
        <SelectParameters>
            <asp:ControlParameter ControlID="DDLDepart" Name="DepartureAirport" PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="DDLArrival" Name="ArrivalAirport" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
                </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" Style="width:100%; table-layout:fixed; word-wrap:break-word; font-size:xx-small; overflow:scroll; background-color:#50b8e7">
        <Columns>
            <asp:BoundField DataField="FlightNumber" HeaderText="FlightNumber" SortExpression="FlightNumber" />
            <asp:BoundField DataField="TotalNumberOfSeats" HeaderText="TotalNumberOfSeats" SortExpression="TotalNumberOfSeats" />
            <asp:BoundField DataField="AvailableSeats" HeaderText="AvailableSeats" SortExpression="AvailableSeats" />
            <asp:BoundField DataField="DomesticOrInternational" HeaderText="DomesticOrInternational" SortExpression="DomesticOrInternational" />
            <asp:BoundField DataField="DepartureAirport" HeaderText="DepartureAirport" SortExpression="DepartureAirport" />
            <asp:BoundField DataField="ArrivalAirport" HeaderText="ArrivalAirport" SortExpression="ArrivalAirport" />
            <asp:BoundField DataField="OneWayDesignation" HeaderText="OneWayDesignation" SortExpression="OneWayDesignation" />
            <asp:BoundField DataField="FlyBackDate" HeaderText="FlyBackDate" SortExpression="FlyBackDate" />
            <asp:BoundField DataField="Destination" HeaderText="Destination" SortExpression="Destination" />
            <asp:BoundField DataField="Class" HeaderText="Class" SortExpression="Class" />
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
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder4" runat="server">
    <div class="grid">
        </div>
    </asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="ContentPlaceHolder6" runat="server">
</asp:Content>
<asp:Content ID="Content8" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
