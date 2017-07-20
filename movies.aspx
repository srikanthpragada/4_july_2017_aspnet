<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        // find out city of the client through cookie - city
        HttpCookie c = Request.Cookies["city"];
        if (c == null)
            Response.Redirect("selectcity.aspx");
        else
            lblMovies.Text = "Movies in City - " + c.Value; 
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>List Of Movies</title>
</head>
<body>
  <form id="form1" runat="server">
  <h2>List of Movies</h2>

  <asp:Label ID="lblMovies" runat="server" Text=""></asp:Label>
  <p />
  <a href="selectcity.aspx">Change City</a>
  </form>
</body>
</html>
