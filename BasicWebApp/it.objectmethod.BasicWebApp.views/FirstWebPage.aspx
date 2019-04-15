<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FirstWebPage.aspx.cs" Inherits="BasicWebApp.FirstWebPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <strong class="x-hidden-focus" style="font-weight: 600; box-sizing: inherit; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, SegoeUI, &quot;Segoe WP&quot;, &quot;Helvetica Neue&quot;, Helvetica, Tahoma, Arial, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;">Calcolatrice</strong></div>
        <p>
            <asp:TextBox ID="txt_operatorePrimo" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txt_simbolo" runat="server" ReadOnly="True" Width="19px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txt_operatoreSecondo" runat="server"></asp:TextBox>
        </p>
        <p>
&nbsp;
            <asp:Button ID="btn_piu" runat="server" BackColor="Yellow" BorderColor="#CC66FF" BorderStyle="Double" ForeColor="#660066" OnClick="btn_piu_Click" Text="+" Width="98px" />
            <asp:Button ID="btn_meno" runat="server" BackColor="Yellow" BorderColor="#CC66FF" BorderStyle="Double" ForeColor="#660066" OnClick="btn_meno_Click" Text="-" Width="97px" />
            <asp:Button ID="btn_diviso" runat="server" BackColor="Yellow" BorderColor="#CC66FF" BorderStyle="Double" ForeColor="#660066" OnClick="btn_diviso_Click" Text=":" Width="98px" />
            <asp:Button ID="btn_per" runat="server" BackColor="Yellow" BorderColor="#CC66FF" BorderStyle="Double" ForeColor="#660066" OnClick="btn_per_Click" Text="x" Width="98px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txt_risultato" runat="server" ReadOnly="True"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btn_risultato" runat="server" BackColor="#000066" BorderColor="#660066" ForeColor="White" OnClick="btn_risultato_Click" Text="Risultato" Width="123px" />
        </p>
        <asp:GridView ID="GridViewClienti" runat="server" Height="247px" Width="398px">
        </asp:GridView>
    </form>
</body>
</html>
