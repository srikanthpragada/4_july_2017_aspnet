<%@ Page Language="C#"  %>
<%@ Import Namespace="System.IO" %>
<!DOCTYPE html>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        DirectoryInfo dir = new DirectoryInfo(Request.PhysicalApplicationPath + "\\photos");
        string output = "<ul>";
        foreach(FileInfo f in dir.GetFiles())
        {
            output += String.Format("<li><a href='/photos/{0}'>{0}</a></li>", f.Name);
        }
        output += "</ul";
        lblPhotos.Text = output;
        Trace.Write("My text in trace!");
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title></title>
</head>
<body>
  <form id="form1" runat="server">
      <asp:Label ID="lblPhotos" runat="server" Text=""></asp:Label>
  </form>
</body>
</html>
