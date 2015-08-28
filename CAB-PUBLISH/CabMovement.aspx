<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CabMovement.aspx.cs" Inherits="VDSI_CAB.CabMovement" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta charset="UTF-8">
    <title>CAB MOVEMENT</title>
    <link rel='stylesheet prefetch' href='http://cdn.jsdelivr.net/foundation/5.2.1/css/foundation.min.css'>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
  <div class="large-3 large-centered columns">
  <div class="login-box">
  <div class="row">
  <div class="large-12 columns">
      <form id="form2" runat="server">
       <div class="row">
         <div class="large-12 columns">
             <input type="text" name="cabregnbr" placeholder="CAB-REGISTRATION NBR" id="txtRegNbr" runat="server"/>
         </div>
       </div>      
      <div class="row">
        <div class="large-12 large-centered columns">
          &nbsp;<asp:Button ID="Button1" runat="server" Text="ARRIVED" class="button expand" OnClick="Button1_Click"/>
        </div>
      </div>
      <div class="row">
        <div class="large-12 large-centered columns">
          &nbsp;<asp:Button ID="Button2" runat="server" Text="DEPARTED"  class="button expand" OnClick="Button2_Click"/>
        </div>
      </div>
      </form>
  </div>
</div>
</div>
</div>

</body>
</html>
