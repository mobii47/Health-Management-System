<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loginpage.aspx.cs" Inherits="sheikh.loginpage" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<!DOCTYPE html>

    <title></title>
    <style>
        body{
            background-color: white;

        }
        #loginform{
            background-color: white;
            width: 400px;
            height: 300px;
            margin-top: 250px;
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
            margin-left: 27px;
            height: 239px;
            width: 342px;
            margin-top: 0px;
            
        }
        .auto-style3 {
            background-color: dodgerblue;
            width: 402px;
            height: 61px;
            border-top-left-radius: 10px;
            border-top-right-radius: 10px;
        }

    </style>
</head>
<body>
    <form id ="loginform" runat="server">
    
        <div class="auto-style3" aria-autocomplete="none">
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Text="Login" BorderColor="White" ForeColor="White" Font-Size="X-Large" Font-Bold="true" ></asp:Label>
        </div>
        <div class="auto-style2">
            <br />
            &nbsp;&nbsp;
            Username<br />
            &nbsp;&nbsp;
            <asp:TextBox ID="text1" runat="server" Width="308px" Height="29px" CssClass="auto-style1" BorderColor="#333333" BorderStyle="Solid" BorderWidth="1px" ></asp:TextBox>
            <br />
            <br />
            &nbsp;&nbsp;
            Password<br />
            &nbsp;&nbsp;
            <asp:TextBox ID="text2" runat="server" Width="308px" Height="29px" CssClass="auto-style1" BorderColor="#333333" BorderStyle="Solid" BorderWidth="1px" TextMode="Password"></asp:TextBox>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Login" runat="server" CssClass="auto-style1" Text="Login" Height="33px" Width="59px" BackColor="DodgerBlue" BorderStyle="None" ForeColor="#CCCCCC" OnClick="Login_Click" />
            <br />
        </div>

    </form>
 </body>
</html>
