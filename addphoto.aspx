<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void btnUpload_Click(object sender, EventArgs e)
    {
        if (!FileUpload1.HasFile)
        {
            Response.Write("<h4>Sorry! No file is selected. Please select a file and then click on Upload button!</h4>");
            return; 
        }
        
        string filename = Request.PhysicalApplicationPath + "photos\\" + FileUpload1.FileName;

        FileUpload1.SaveAs(filename);
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>Add Photo</title>
</head>
<body>
  <form id="form1" runat="server">
    Select Photo : <asp:FileUpload ID="FileUpload1" runat="server" />
    <p></p>
      <asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="btnUpload_Click" />
  </form>
</body>
</html>
