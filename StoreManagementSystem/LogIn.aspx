<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="StoreManagementSystem.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>LogIn</title>
    <style type="text/css">
        #form1 {
            height: 441px;
            width: 855px;
        }
    </style>
</head>
<body>
  <form id="form1" runat="server">
     <div>
         Email <asp:TextBox ID="email" runat="server" style="margin-left: 107px; margin-top: 0px" Width="272px" OnTextChanged="TextBox1_TextChanged1" Height="26px"></asp:TextBox><br /><br />
         Pasword<asp:TextBox ID="paswd" runat="server" style="margin-left: 89px; margin-top: 0px" Width="277px" Height="26px" OnTextChanged="paswd_TextChanged"></asp:TextBox><br/><br />
         <asp:Button ID="submit" runat="server" Text="Submit" Height="31px" Width="165px" OnClick="submit_Click" /><br /><br />
          <br /><br />
         
         
         
         <p><asp:Literal ID="ListMsg" runat="server"></asp:Literal></p> 
     </div>
      </form>   
</body>
</html>
