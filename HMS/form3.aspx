<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="form3.aspx.cs" Inherits="sheikh.Form1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<!DOCTYPE html>

    <title></title>
    <style>
        body{
            background-color: white;

        }
        #form1{
            background-color: white;
            width: 1200px;
            height: 400px;
            margin-top: 150px;
            margin-left: auto;
            margin-right: auto;

        }
        .auto-style1 {
           border-radius: 5px;
        }
        .container{
            margin-left: 50px;
            height:200px;
            width: 300px;
        }
        .auto-style2 {
            margin-left: 33px;
            height: 364px;
            width: 954px;
            margin-top: 0px;
            
            
        }
        .auto-style3 {
            background-color: dodgerblue;
            width: 987px;
            height: 64px;
            border-top-left-radius: 10px;
            border-top-right-radius: 10px;
        }

        .auto-style4 {
            width: 1147px;
            height: 387px;
            margin-left: 0px;
        }

        </style>
</head>
<body>
    <form id ="form1" runat="server" class="auto-style4">
    
        <div class="auto-style3" aria-autocomplete="none">
            <br />
            <asp:Label ID="Label1" runat="server" Text="Patient Registration" BorderColor="White" ForeColor="White" Font-Size="X-Large" Font-Bold="True" ></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <strong>
            <asp:TextBox ID="box1" runat="server" BorderColor="Transparent" BorderWidth="1px" CssClass="auto-style1" Height="22px" Width="180px" ForeColor="White" BackColor="Transparent"></asp:TextBox>
            </strong>
            &nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </div>
        <div class="auto-style2">
            <strong>
            <br />
            <br />
            &nbsp;Patient CNIC&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Patient Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Father Name</strong>/<strong>Husband Name</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>
            Blood Group&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Contact Number&nbsp;</strong>
            <br />
&nbsp;<asp:TextBox ID="idbox" runat="server" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CssClass="auto-style1" ForeColor="Black" Height="29px" Width="139px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="namebox" runat="server" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CssClass="auto-style1" Height="29px" Width="212px" ForeColor="Black"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="quantitybox" runat="server" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CssClass="auto-style1" Height="29px" Width="212px" ForeColor="Black"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList0" runat="server" AppendDataBoundItems="True" CssClass="auto-style1" Font-Overline="False" Font-Size="Medium" Font-Strikeout="False" Height="29px" Width="91px" ForeColor="Black">
                <asp:ListItem Text="A+" Value="A+"></asp:ListItem>
                <asp:ListItem Text="A-" Value="A-"></asp:ListItem>
                <asp:ListItem Text="B+" Value="B+"></asp:ListItem>
                <asp:ListItem Text="B-" Value="B-"></asp:ListItem>
                <asp:ListItem Text="O+" Value="O+"></asp:ListItem>
                <asp:ListItem Text="O-" Value="O-"></asp:ListItem>
                <asp:ListItem Text="AB+" Value="AB+"></asp:ListItem>
                <asp:ListItem Text="AB-" Value="AB-"></asp:ListItem>
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="pricebox" runat="server" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CssClass="auto-style1" Height="29px" Width="180px" ForeColor="Black" TextMode="Phone">03XX-XXXXXXX</asp:TextBox>
            <br />
            <br />
            <strong>&nbsp;Address:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
            &nbsp;<asp:TextBox ID="TextBox" runat="server" Height="94px" Width="375px" BorderStyle="Solid" ForeColor="Black" CssClass="auto-style1" TextMode="MultiLine" BorderColor="#999999"></asp:TextBox>
            &nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <br />
            Symtoms found&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Prescription&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Next visiting date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Text to be conducted&nbsp;<br />
            <asp:TextBox ID="TextBox1" runat="server" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CssClass="auto-style1" ForeColor="#CCCCCC" Height="25px" Width="136px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CssClass="auto-style1" ForeColor="#CCCCCC" Height="25px" Width="136px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox3" runat="server" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CssClass="auto-style1" ForeColor="#CCCCCC" Height="25px" Width="136px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox4" runat="server" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CssClass="auto-style1" ForeColor="#CCCCCC" Height="25px" Width="136px"></asp:TextBox>
            <br />
            </strong>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <asp:Button ID="submitbutton" runat="server" CssClass="auto-style1" Text="Submit" Height="38px" Width="89px" BackColor="#007AFF" BorderStyle="None" ForeColor="#CCCCCC" OnClick="submitbutton_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="logoutbutton" runat="server" CssClass="auto-style1" Text="logout" Height="38px" Width="89px" BackColor="Red" BorderStyle="None" ForeColor="#CCCCCC"  PostBackUrl="~/loginpage.aspx"  />
            <br />
            <br />
            <br />
        </div>

    </form>
 </body>
</html>
