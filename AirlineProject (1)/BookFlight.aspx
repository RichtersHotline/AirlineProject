<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="BookFlight.aspx.cs" Inherits="AirlineProject.BookFlight" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style17 {
            height: 33px;
            width: 503px;
        }
        .auto-style18 {
            width: 503px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content8" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content9" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <table style="width:100%; border-collapse: collapse; border-spacing: 0px; margin-right: 0px;">
        <tr>
            <td class="auto-style11" style="background-color: #50B8E7; background-image: none; border-collapse: inherit; empty-cells: hide; border-spacing: 0px;">
                <img alt="AirLogoAgain" class="auto-style10" src="Imgs/Airlinelogo3.png" /></td>
        </tr>
        <tr>
            <td class="auto-style9" style="background-color: #b9e2f5; border-collapse: inherit; border-spacing: 0px; margin-left:auto; ">
                <asp:Menu ID="MNUNav" runat="server" Orientation="Horizontal" Width="100%" StaticSubMenuIndent="16px" style="text-align: center" >
                    <DynamicMenuItemStyle Font-Names="Arial" BackColor="White" VerticalPadding="5px" />
                    <Items>
                        <asp:MenuItem Text="Book" Value="Search For Flights">
                            <asp:MenuItem Text="Flights" Value="Flights">
                                <asp:MenuItem Text="Book Flight"></asp:MenuItem>
                                <asp:MenuItem Text="All Flights" Value="All Flights"></asp:MenuItem>
                                <asp:MenuItem Text="Pre Book" Value="Pre Book"></asp:MenuItem>
                                <asp:MenuItem Text="Airports near me" Value="Airports near me"></asp:MenuItem>
                            </asp:MenuItem>
                            <asp:MenuItem Text="Flight Status" Value="New Item"></asp:MenuItem>
                        </asp:MenuItem>
                        <asp:MenuItem Text="Travel Guide" Value="New Item">
                            <asp:MenuItem Text="Red Alert Countries" Value="Red Alert Countries"></asp:MenuItem>
                            <asp:MenuItem Text="Hotels" Value="Hotels"></asp:MenuItem>
                            <asp:MenuItem Text="Popular Destinations" Value="Popular Destinations"></asp:MenuItem>
                            <asp:MenuItem Text="Passport" Value="Passport"></asp:MenuItem>
                            <asp:MenuItem Text="Safety Tips" Value="Safety Tips"></asp:MenuItem>
                            <asp:MenuItem Text="Luggage Service" Value="Luggage Service"></asp:MenuItem>
                            <asp:MenuItem Text="Car Rental Service" Value="Car Rental Service"></asp:MenuItem>
                        </asp:MenuItem>
                        <asp:MenuItem Text="Help " Value="Help">
                            <asp:MenuItem Text="About Us" Value="About Us"></asp:MenuItem>
                            <asp:MenuItem Text="Our Services" Value="Our Services"></asp:MenuItem>
                            <asp:MenuItem Text="Support" Value="Support"></asp:MenuItem>
                            <asp:MenuItem Text="Lost and Found" Value="Lost and Found"></asp:MenuItem>
                            <asp:MenuItem Text="Get a Refund" Value="Get a Refund"></asp:MenuItem>
                            <asp:MenuItem Text="Change Booking" Value="Change booking"></asp:MenuItem>
                            <asp:MenuItem Text="Track Your Child" Value="Track your child"></asp:MenuItem>
                            <asp:MenuItem Text="Contact Passenger" Value="Contact Passenger"></asp:MenuItem>
                            <asp:MenuItem Text="Lodge Complaint" Value="Lodge Complaint"></asp:MenuItem>
                            <asp:MenuItem Text="Support" Value="Support"></asp:MenuItem>
                        </asp:MenuItem>
                        <asp:MenuItem Text="Midnight Membership Program" Value="Midnight Membership Program">
                            <asp:MenuItem Text="Become a Member" Value="Become a Member"></asp:MenuItem>
                            <asp:MenuItem Text="Replace Lost Card" Value="Replace Lost Card"></asp:MenuItem>
                        </asp:MenuItem>
                    </Items>
                    <LevelSubMenuStyles>
                        <asp:SubMenuStyle Font-Underline="False" />
                        <asp:SubMenuStyle Font-Underline="False" />
                    </LevelSubMenuStyles>
                    <StaticHoverStyle ForeColor="#50B8E7" />
                    <StaticMenuItemStyle HorizontalPadding="30px" ItemSpacing="10px" Font-Names="Copperplate Gothic Light" ForeColor="White" />
                </asp:Menu>
            </td>
        </tr>
        <tr style="padding: inherit">
            <td class="auto-style6" style="max-width: 100%; width: 100%; height: 100px; background-color: #84CDEE; table-layout: auto; border-collapse: inherit; border-spacing: 0px; empty-cells: hide;">&nbsp;&nbsp;</td>
        </tr>
        <tr style="padding: inherit">
            <td class="auto-style6" style="max-width: 100%; width: 100%; height: 100px; background-color: #84CDEE; table-layout: auto; border-collapse: inherit; border-spacing: 0px; empty-cells: hide;"></td>
        </tr>
        <tr style="padding: inherit">
            <td class="auto-style6" style="max-width: 100%; width: 100%; height: 100px; background-color: #84CDEE; table-layout: auto; border-collapse: inherit; border-spacing: 0px; empty-cells: hide;"></td>
        </tr>
        <tr style="padding: inherit">
            <td class="auto-style6" style="max-width: 100%; width: 100%; height: 100px; background-color: #84CDEE; table-layout: auto; border-collapse: inherit; border-spacing: 0px; empty-cells: hide;"></td>
        </tr>
        <tr style="padding: inherit">
            <td class="auto-style6" style="max-width: 100%; width: 100%; height: 100px; background-color: #84CDEE; table-layout: auto; border-collapse: inherit; border-spacing: 0px; empty-cells: hide;"></td>
        </tr>
    </table>
</asp:Content>

