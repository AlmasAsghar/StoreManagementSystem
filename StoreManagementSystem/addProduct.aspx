<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addProduct.aspx.cs" Inherits="StoreManagementSystem.addProduct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add-Product</title>
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
            Name    <asp:TextBox ID="id" runat="server" Width="175px" style="margin-left: 54px" Height="26px" OnTextChanged="id_TextChanged"></asp:TextBox><br /><br />
            Price <asp:TextBox ID="price" runat="server" Width="177px" style="margin-left: 59px" Height="26px"></asp:TextBox><br /><br />

            Image Upload:  <asp:FileUpload ID="UploadImgSave" runat="server" onchange="ImagePreview(this);" Width="273px" Height="26px" /><br /><br />
            <asp:Image ID="Image1" runat="server" Height="177px" Width="204px" /><br /><br />
            <asp:Button ID="saveBtn" runat="server" Text="Save Data" OnClick="saveBtn_Click" /><br /><br />
            <asp:Button ID="ViewProduct" runat="server" OnClick="Button1_Click" Text="ViewProduct" Width="100px" />

            <p><asp:Literal ID="ListMsg" runat="server"></asp:Literal></p>

        </div>
    </form>
</body>
</html>
