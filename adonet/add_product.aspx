<%@ Page Language="C#" %>
<%@ Import Namespace="System.Data.SqlClient" %>

<!DOCTYPE html>

<script runat="server">

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        try
        {
            using (SqlConnection con = new SqlConnection
                 (@"data source=(localdb)\MsSqlLocalDb;integrated security=true;initial catalog=msdb"))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand
                    ("insert into products values(@prodname,@price,@qoh,@remarks,@catcode)", con);

                cmd.Parameters.AddWithValue("@prodname", txtProdName.Text);
                cmd.Parameters.AddWithValue("@price", txtPrice.Text);
                cmd.Parameters.AddWithValue("@qoh", txtQoh.Text);
                cmd.Parameters.AddWithValue("@remarks", txtRemarks.Text);
                cmd.Parameters.AddWithValue("@catcode", ddlCategory.SelectedItem.Value);

                int count = cmd.ExecuteNonQuery();

                if (count == 1)
                    lblMsg.Text = "Added Product Successfully!";
                else
                    lblMsg.Text = "Sorry! Prodid not added due to errro!";
            }
        }
        catch(Exception ex)
        {
            Trace.Write(ex.Message);
            lblMsg.Text = "Sorry! Could not add new product due to error!";
        }

    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
            return; 

        // populate ddlCategory

        using (SqlConnection con = new SqlConnection
              (@"data source=(localdb)\MsSqlLocalDb;integrated security=true;initial catalog=msdb"))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand
                ("select * from categories order by catdesc", con);

            SqlDataReader dr = cmd.ExecuteReader();
            while(dr.Read())
            {
                ddlCategory.Items.Add(
                    new ListItem(dr["catdesc"].ToString(), dr["catcode"].ToString()));
            }
        }

    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title></title>
</head>
<body>
  <form id="form1" runat="server">
      <h2>Add Product</h2>
      Product Name : <br />
      <asp:TextBox ID="txtProdName" runat="server"></asp:TextBox>
      <p></p>
      Price : <br />
      <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
      <p></p>
      Quantity : <br />
      <asp:TextBox ID="txtQoh" runat="server"></asp:TextBox>
      <p></p>
      Remarks  : <br />
      <asp:TextBox ID="txtRemarks" Width="300px" runat="server"></asp:TextBox>
      <p></p>
      Select Category: <br />
      <asp:DropDownList ID="ddlCategory" runat="server"></asp:DropDownList>
      <p /> 
      <asp:Button ID="btnAdd" runat="server" Text="Add " OnClick="btnAdd_Click" />
      <p></p>
      <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
   
  </form>
</body>
</html>
