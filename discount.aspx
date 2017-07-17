<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void btnCalculate_Click(object sender, EventArgs e)
    {
        double amount, rate, discount;

        try
        {
            amount = Double.Parse(txtAmount.Text);
            rate = Double.Parse(txtRate.Text);
            discount = amount * rate / 100;

            if (cbRound.Checked)
                discount = Math.Round(discount);

            lblDiscount.Text = discount.ToString();
        }
        catch(FormatException ex)
        {
            lblDiscount.Text = "Invalid Amount or Rate!";
        }
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>Discount Calculation</title>
</head>
<body>
  <form id="form1" runat="server">
  
     <h2>Discount Calculation</h2>
     Amount <br />
     <asp:TextBox ID="txtAmount"  required="required" runat="server"></asp:TextBox>
     <p></p>
     Discount Rate <br />
     <asp:TextBox ID="txtRate" required="required" runat="server"></asp:TextBox>
     <p></p>
     <asp:CheckBox ID="cbRound" runat="server" />Round 
     <p></p>
     <asp:Button ID="btnCalculate" runat="server" Text="Calculate" OnClick="btnCalculate_Click" />
     <p></p>
     <asp:Label ID="lblDiscount" runat="server" Text=""></asp:Label>
  </form>
</body>
</html>
