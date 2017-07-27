<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .headers { background-color : blue; color : white; font-weight:bold}
        .empty { color : red; font-weight:bold ; font-size:14pt; font-family : verdana}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Product By Category</h2>
        Select Category : 
  <asp:DropDownList ID="DropDownList1" runat="server"
      DataSourceID="sdsCategories"
      DataTextField="catdesc"
      DataValueField="catcode"
      AutoPostBack="True">
  </asp:DropDownList>

        <asp:SqlDataSource ID="sdsCategories" runat="server" ConnectionString="<%$ ConnectionStrings:localdb %>" SelectCommand="SELECT * FROM [categories]"></asp:SqlDataSource>

        <p></p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            HeaderStyle-CssClass="headers"  Width="100%"
            DataKeyNames="prodid" DataSourceID="sdsProducts" 
            EmptyDataRowStyle-CssClass="empty"
            EmptyDataText="Sorry! No products found for the selected category">
            <Columns>
                <asp:BoundField DataField="prodid" HeaderText="prodid" InsertVisible="False" ReadOnly="True" SortExpression="prodid" />
                <asp:BoundField DataField="prodname" HeaderText="prodname" SortExpression="prodname" />
                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" 
                     DataFormatString  ="{0:#####}" ItemStyle-HorizontalAlign="Right" />
                <asp:BoundField DataField="qoh" HeaderText="qoh" SortExpression="qoh"
                     DataFormatString  ="{0:###}" ItemStyle-HorizontalAlign="Right"
                    />
                <asp:BoundField DataField="remarks" HeaderText="remarks" SortExpression="remarks" />
            </Columns>
            <HeaderStyle CssClass="headers" />
        </asp:GridView>
        <asp:SqlDataSource ID="sdsProducts" runat="server" ConnectionString="<%$ ConnectionStrings:localdb %>" SelectCommand="SELECT * FROM [products] WHERE ([catcode] = @catcode)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="catcode"
                    PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>

    </form>
</body>
</html>
