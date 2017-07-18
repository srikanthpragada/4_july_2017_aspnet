<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void btnCalculate_Click(object sender, EventArgs e)
    {
        int fee;

        fee = Int32.Parse (ddlCourse.SelectedItem.Value);

        if (rbMorning.Checked)
            fee = fee - fee * 10 / 100;
        else
            if (rbAfternoon.Checked)
              fee = fee - fee * 20 / 100;

        if(cbExistingStudent.Checked)
              fee = fee - fee * 10 / 100;

        lblFee.Text = fee.ToString();
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Course Fee Calculator</title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Course Fee Calculator</h2>
        Select Course  
   <asp:DropDownList ID="ddlCourse" runat="server">
       <asp:ListItem Value="5000" Text="Java EE (Advanced Java)"></asp:ListItem>
       <asp:ListItem Value="2000" Text="Angular (Not AngularJS)"></asp:ListItem>
       <asp:ListItem Value="4000" Text="Java SE (Core Java)"></asp:ListItem>
   </asp:DropDownList>
        <p></p>
        Select Timings 
   <asp:RadioButton ID="rbMorning" runat="server" GroupName="timing" />Morning
   <asp:RadioButton ID="rbAfternoon" runat="server" GroupName="timing" />Afternoon
   <asp:RadioButton ID="rbEvening" runat="server" Checked="true" GroupName="timing" />Evening
   <p></p>
        <asp:CheckBox ID="cbExistingStudent" runat="server" />Existing Student
   <p></p>
        <asp:Button ID="btnCalculate" runat="server" Text="Calculate Fee" OnClick="btnCalculate_Click" />
        <p></p>
        <asp:Label ID="lblFee"  runat="server" 
             Font-Bold="True" Font-Size="16pt" ForeColor="Red"></asp:Label>


    </form>
</body>
</html>
