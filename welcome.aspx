<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        lblMessage.Text = "Welcome " + txtName.Text;
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>Welcome</title>
</head>
<body>
  <form id="form1" runat="server">
     Name : <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
     <p></p>
     <asp:Button ID="btnSubmit" runat="server" Text="Submit" 
          OnClick ="btnSubmit_Click" />
     <p></p>
     <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
  </form>
</body>
</html>
