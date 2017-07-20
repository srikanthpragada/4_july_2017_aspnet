<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        // send city as cookie to client
        HttpCookie c = new HttpCookie("city", ddlCities.SelectedItem.Value);
        c.Expires = DateTime.Now.AddDays(7);
        Response.Cookies.Add(c);
        Response.Write("City saved. Now click <a href='movies.aspx'>here</a> to get list of movies!");
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title></title>
</head>
<body>
  <form id="form1" runat="server">
   <h2>Select city</h2>
   Select City :  <asp:DropDownList ID="ddlCities" runat="server">
          <asp:ListItem>Vizag</asp:ListItem>
          <asp:ListItem>Hyderabad</asp:ListItem>
          <asp:ListItem>Chennai</asp:ListItem>
          <asp:ListItem>Bangalore</asp:ListItem>
          <asp:ListItem>Mumbai</asp:ListItem>
      </asp:DropDownList>
   <p></p>
   <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
  </form>
</body>
</html>
