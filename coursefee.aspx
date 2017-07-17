<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>Course Fee Calculator</title>
</head>
<body>
  <form id="form1" runat="server">
   Select Course <br />  
   <asp:DropDownList ID="ddlCourse" runat="server">
       <asp:ListItem Value ="5000" Text="Java EE (Advanced Java)"></asp:ListItem>
       <asp:ListItem Value ="2000" Text="Angular (Not AngularJS)"></asp:ListItem>
       <asp:ListItem Value ="4000" Text="Java SE (Core Java)"></asp:ListItem>
   </asp:DropDownList>

  </form>
</body>
</html>
