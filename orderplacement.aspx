<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title></title>
</head>
<body>
  <form id="form1" runat="server">
   <h2>Place Order</h2>
    
   Mobile Number  <br />
   <asp:TextBox ID="txtMobile" MaxLength="10"  runat="server"></asp:TextBox>
   <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
       Display ="Dynamic"
       ControlToValidate="txtMobile"
       runat="server"
       ErrorMessage="Mobile Number Is Required!"></asp:RequiredFieldValidator>
      <asp:RegularExpressionValidator 
          ControlToValidate="txtMobile"
          ID="RegularExpressionValidator1" 
          runat="server"
          ValidationExpression="^[0-9]{10}$"
          ErrorMessage="Invalid Mobile Number"></asp:RegularExpressionValidator>
   <p></p>
   Quantity <br />
   <asp:TextBox ID="txtQty" runat="server"></asp:TextBox>
   <asp:RequiredFieldValidator ID="RequiredFieldValidator2"
       ControlToValidate="txtQty"
       Display ="Dynamic"
       runat="server"
       ErrorMessage="Quantity Is Required!"></asp:RequiredFieldValidator>
   <asp:RangeValidator 
       ControlToValidate="txtQty"
       ID="RangeValidator1" 
       Type="Integer"
       MinimumValue="1" MaximumValue="10"
       runat="server" 
       ErrorMessage="Quantity must be 1 to 10"></asp:RangeValidator>
   <p></p>
      <asp:Button ID="btnPlaceOrder" runat="server" Text="Place Order" />
  </form>
</body>
</html>
