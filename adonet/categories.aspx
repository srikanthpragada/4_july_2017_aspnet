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
  
    <asp:DataList ID="DataList1" runat="server" DataSourceID="sdsCategories">
        <HeaderTemplate> 
            <h2>Categories</h2>
        </HeaderTemplate>

        <ItemTemplate>
           <h3><%# Eval("catdesc") %></h3>  
           <a href='cat_products.aspx?catcode=<%# Eval("catcode") %>'>Show Products</a>
        </ItemTemplate>

    </asp:DataList>

      <asp:SqlDataSource ID="sdsCategories" runat="server" ConnectionString="<%$ ConnectionStrings:localdb %>" 
          SelectCommand="SELECT * FROM [categories]"></asp:SqlDataSource>

  </form>
</body>
</html>
