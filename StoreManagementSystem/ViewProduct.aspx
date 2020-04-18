<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewProduct.aspx.cs" Inherits="StoreManagementSystem.ViewProduct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View-Product</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" Height="83px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="275px" DataSourceID="SqlDataSource1">
             <Columns>
                 <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                 <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                 <asp:ImageField HeaderText="image" DataImageUrlField="Image" SortExpression="image" />
                 <asp:BoundField DataField="Expr1" HeaderText="UserName" SortExpression="UserName" />
             </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
      
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:STOREConnectionString %>" SelectCommand="SELECT Product.*, [User].name AS Expr1 FROM Product CROSS JOIN [User] CROSS JOIN Product AS Product_1 CROSS JOIN [User] AS User_1"></asp:SqlDataSource>
      
        <br />
        <asp:Button ID="addProduct" runat="server" OnClick="Button2_Click" Text="AddProduct" Width="100px" />  <br /><br />
       <asp:Button ID="backToLogIn" runat="server" OnClick="Button1_Click" Text="GoBack " Width="100px" />
    </form>
</body>
</html>
