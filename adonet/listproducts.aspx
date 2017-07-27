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
  <div>
  
  </div>
      <h2>Products</h2>
      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
          DataKeyNames="prodid"  Width="100%" PageSize="4"
          DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True">
          <Columns>
              <asp:BoundField DataField="prodid" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="prodid" />
              <asp:BoundField DataField="prodname" HeaderText="Name" SortExpression="prodname" />
              <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price" />
              <asp:BoundField DataField="qoh" HeaderText="Quantity" SortExpression="qoh" />
              <asp:BoundField DataField="remarks" HeaderText="Remarks" SortExpression="remarks" />
              <asp:BoundField DataField="catcode" HeaderText="Category" SortExpression="catcode" />
              <asp:HyperLinkField DataNavigateUrlFields="prodid" 
                  DataNavigateUrlFormatString="sales_by_prod.aspx?id={0}" 
                  Text="Sales" />
          </Columns>
      </asp:GridView>
      <asp:SqlDataSource ID="SqlDataSource1" runat="server"
          ConnectionString="<%$ ConnectionStrings:localdb %>" 
          SelectCommand="SELECT * FROM [products]"></asp:SqlDataSource>

  </form>
</body>
</html>
