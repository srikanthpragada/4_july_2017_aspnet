<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        Session.Add(txtName.Text, txtValue.Text);
    }

    protected void lbList_Click(object sender, EventArgs e)
    {
        string output = "";
        foreach(string name in Session.Keys)
        {
            output += name + ":" + Session[name] +"<p/>";
        }
        lblAttributes.Text = output;
    }

    protected void btnRemove_Click(object sender, EventArgs e)
    {
        Session.Remove(txtName.Text);
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title></title>
</head>
<body>
  <form id="form1" runat="server">
  <h2>Session Attributes Demo</h2>
  Attribute Name <br />
  <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
  <p></p>
  Attribute Value <br />
  <asp:TextBox ID="txtValue" runat="server"></asp:TextBox>
  <p />
  <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" />
  <asp:Button ID="btnRemove" runat="server" Text="Remove" OnClick="btnRemove_Click"  />
  <p />
  <asp:LinkButton ID="lbList" runat="server" OnClick="lbList_Click">List Attributes</asp:LinkButton>
  <p /> 
  <asp:Label ID="lblAttributes" runat="server" Text=""></asp:Label>
  </form>
</body>
</html>
