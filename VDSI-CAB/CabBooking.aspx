<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CabBooking.aspx.cs" Inherits="VDSI_CAB.CabBooking" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta charset="UTF-8">
    <title>CAB BOOKING</title>
    <link rel='stylesheet prefetch' href='http://cdn.jsdelivr.net/foundation/5.2.1/css/foundation.min.css'>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <form id="form1" runat="server">

  <div class="large-3 large-centered columns">
  <div class="login-box">
  <div class="row">
  <div class="large-12 columns">
       <div class="row">
         <div class="large-12 columns"> 
              &nbsp;<asp:DropDownList ID="CmbSlot" runat="server">
                  <asp:ListItem>SELECT SLOT</asp:ListItem>
                  <asp:ListItem Value="8-9">08PM - 09PM</asp:ListItem>
                  <asp:ListItem Value="9-10">09PM - 10PM</asp:ListItem>
                  <asp:ListItem Value="10 - 11">10PM - 11PM</asp:ListItem>
              </asp:DropDownList>
         </div>
       </div>
      <div class="row">         
         <div class="large-12 columns">
          &nbsp;<asp:DropDownList ID="CmbRoute" runat="server">
                 <asp:ListItem>SELECT ROUTE</asp:ListItem>
                 <asp:ListItem>1</asp:ListItem>
                 <asp:ListItem>2</asp:ListItem>
                 <asp:ListItem Value="3"></asp:ListItem>
                 <asp:ListItem>4</asp:ListItem>
             </asp:DropDownList>
         </div>
      </div>
      <div class="row">
        <div class="large-12 large-centered columns">
          &nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="BOOK CAB" class="button expand" />
            
        </div>
      </div>
           <div class="row">
        <div class="large-12 large-centered columns">
        </div>
      </div>      
  </div>
</div>
</div>
</div>
    </form>
</body>
</html>
