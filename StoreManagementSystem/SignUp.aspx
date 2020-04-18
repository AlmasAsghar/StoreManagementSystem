<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="StoreManagementSystem.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>logIn</title>

     <script src="http://code.jquery.com/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script type="text/javascript">
          function ImagePreview(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    $('#<%=Image1.ClientID%>').prop('src', e.target.result)
                        .width(200)
                        .height(200);
                };
                reader.readAsDataURL(input.files[0]);
                }
            }

    </script>

</head>
<body>
    <form id="form1" runat="server">
    <div>
     <div>
         Name      <asp:TextBox ID="name" runat="server" Height="26px" style="margin-left: 98px" Width="163px"></asp:TextBox><br/><br />
         Email     <asp:TextBox ID="email" runat="server" Height="26px" style="margin-left: 99px" Width="162px"></asp:TextBox>
         <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email" ErrorMessage="InvalidEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
         <br/><br />
         Password  <asp:TextBox ID="paswd" runat="server" Height="26px" style="margin-left: 74px" Width="162px"></asp:TextBox><br/><br />
         Confirm Password  <asp:TextBox ID="confirm" runat="server" Height="26px" style="margin-left: 19px" Width="160px"></asp:TextBox><br/><br />
         Image Upload:  <asp:FileUpload ID="UploadImgSave" runat="server"  onchange="ImagePreview(this);" Height="26px" style="margin-left: 43px" Width="254px"/><br /> 
         <asp:Image ID="Image1" runat="server" Height="206px" Width="242px"  />
         <br /><br/>
         <asp:Button ID="saveBtn" runat="server" Text="Save Data" OnClick="Butsave_Click" />
         <p><asp:Literal ID="ListMsg" runat="server"></asp:Literal></p>
        
        </div>
    </div>
    </form>
</body>
</html>
