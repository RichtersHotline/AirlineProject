<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="AirlineProject.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style17 {
            position:static;
            display:block;
            margin-left:auto;
            margin-right:auto;
            width:100%;
           
        }
        .auto-style18 {
            width: 400px;
            height: 400px;
         
          
        }
       
        .auto-style19 {
            width: 400px;
            height: 400px;
           
        }
        .column {
  float: left;
  width: 33%;
  padding: 5px;
  display:table;
 

}
        .row::after {
  content: "";
  clear: both;
  display: table;
}
        column {
            box-shadow:5px 5px black;
            
        }
        .column:hover {
            opacity:1;
            transform:scale(1.1);
            
            
        }
        .colorbg {

            background-color:#50b8e7;
        }
        .textcontent {
            text-align:center;
            padding-right:200px;
            text-shadow:1px 1px black;
           
        }
        
    </style>
   
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
 
<asp:Content ID="Content4" runat="server" contentplaceholderid="ContentPlaceHolder3">
    <div class="colorbg">
  <div class="row">
        <div class="column">
    <p>
        <img alt="Adios" class="auto-style18" src="Imgs/AdiosMuchachos.png"  /></p>  
            <div class="textcontent">
                <p>Cheap, affordable flights right at your fingertips</p>
            </div>
  </div>
      <div class="column">

          <img alt="" class="auto-style18" src="Imgs/may-chaos-take-the-world.png" />
          <div class="textcontent">
              <p>Get treated like royalty with our Midnight Membership Programme</p>
          </div>

          </div>
      <div class="column">
        <img alt="" class="auto-style19" src="Imgs/ManSittingWaiting.png" />
          <div class="textcontent">
              <p>In a rush? No problem. Check your flight status at anytime</p>
          </div>
          </div>
    </div>
        </div>

</asp:Content>
<asp:Content ID="Content5" runat="server" contentplaceholderid="ContentPlaceHolder5">
    
    
   
    <p>
    </p>
    
    
   
</asp:Content>
<asp:Content ID="Content6" runat="server" contentplaceholderid="ContentPlaceHolder4">
</asp:Content>
<asp:Content ID="Content7" runat="server" contentplaceholderid="ContentPlaceHolder6">
</asp:Content>


<asp:Content ID="Content8" runat="server" contentplaceholderid="ContentPlaceHolder7">
    <p>
    <img alt="" class="auto-style17" src="Imgs/BannerBlankWithTextandNoButton.png" /></p>
</asp:Content>



