<%@ Page Language="C#" %>
<%@ Import Namespace="System.Data.SqlClient" %>

<!DOCTYPE html>

<script runat="server">

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection
             (@"data source=(localdb)\MsSqlLocalDb;integrated security=true;initial catalog=msdb");
        con.Open();
        SqlCommand cmd = new SqlCommand("update products set price =" + txtNewPrice.Text +
                   " where prodid = " + txtProdid.Text, con);
        int count = cmd.ExecuteNonQuery();

        if (count == 1)
            lblMsg.Text = "Updated Successfully!";
        else
            lblMsg.Text = "Sorry! Prodid not found!";
        con.Close();

    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title></title>
</head>
<body>
  <form id="form1" runat="server">
      <h2>Update Price</h2>
      Product Id : <br />
      <asp:TextBox ID="txtProdid" runat="server"></asp:TextBox>
      <p></p>
      New Price : <br />
      <asp:TextBox ID="txtNewPrice" runat="server"></asp:TextBox>
      <p></p>
      <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />
      <p></p>
      <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
   
  </form>
</body>
</html>
