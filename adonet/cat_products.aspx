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
      <h1>Products</h1>
      <asp:GridView ID="GridView1" runat="server"  width="100%" 
          AutoGenerateColumns="False" DataKeyNames="prodid" DataSourceID="SqlDataSource1">
          <Columns>
              <asp:BoundField DataField="prodid" HeaderText="prodid" InsertVisible="False" ReadOnly="True" SortExpression="prodid" />
              <asp:BoundField DataField="prodname" HeaderText="prodname" SortExpression="prodname" />
              <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
              <asp:BoundField DataField="qoh" HeaderText="qoh" SortExpression="qoh" />
              <asp:BoundField DataField="remarks" HeaderText="remarks" SortExpression="remarks" />
              <asp:BoundField DataField="catcode" HeaderText="catcode" SortExpression="catcode" />
          </Columns>
      </asp:GridView>
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:localdb %>" SelectCommand="SELECT * FROM [products] WHERE ([catcode] = @catcode)">
          <SelectParameters>
              <asp:QueryStringParameter Name="catcode" QueryStringField="catcode" Type="String" />
          </SelectParameters>
      </asp:SqlDataSource>
  
  </form>
</body>
</html>
