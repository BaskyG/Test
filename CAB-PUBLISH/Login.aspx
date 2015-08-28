<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="VDSI_CAB.Login" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta charset="UTF-8">
    <title>Employee Login</title>    
    <link rel='stylesheet prefetch' href='http://cdn.jsdelivr.net/foundation/5.2.1/css/foundation.min.css'>
    <link rel="stylesheet" href="css/style.css"> 
</head>
<body>
  <div class="large-3 large-centered columns">
  <div class="login-box">
  <div class="row">
  <div class="large-12 columns">
      <form id="form1" runat="server">
       <div class="row">
         <div class="large-12 columns">
             <input id="txtuid" type="text" name="username" placeholder="Username" runat="server"/>
         </div>
       </div>
      <div class="row">
         <div class="large-12 columns">
             <input id="txtpwd" type="password" name="password" placeholder="Password" runat="server"/>
         </div>
      </div>
      <div class="row">
         <div class="large-12 columns">
             <input id="txtmobile" name="mobile" placeholder="Mobile Nbr" runat="server"/>
         </div>
      </div>
      <div class="row">
        <div class="large-12 large-centered columns">
          &nbsp;<asp:Button ID="Button1" runat="server" Text="Log In"  class="button expand" OnClick="Button1_Click"/>
        </div>
      </div>
      </form>
  </div>
</div>
</div>
</div>
    
</body>
</html>
