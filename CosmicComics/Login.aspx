<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CosmicComics.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cosmic Comics</title>
    <link href="Styles/LoginStyle.css" rel="stylesheet" />
    <link href="Images/favicon.ico" rel="shortcut icon" type="image/x-icon" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <header>
                <h1><a href="Home.aspx"><img src="Images/cosmic_comics.png" width="200" height="80" alt="" /></a></h1>
            </header>
            <article>
                <h2>Login</h2>
                <p>
                    <asp:Label ID="lblUserID" runat="server" Text="Username:" CssClass="label"></asp:Label>
                    <asp:TextBox ID="txtUserID" runat="server" CssClass="textbox"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvUserID" runat="server" ErrorMessage="*Please Enter Username" ControlToValidate="txtUserID" ForeColor="Red"></asp:RequiredFieldValidator>
                </p>
                <p>
                    <asp:Label ID="lblPassword" runat="server" Text="Password:" CssClass="label"></asp:Label>
                    <asp:TextBox ID="txtPassword" runat="server" CssClass="textbox"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ErrorMessage="*Please Enter Password" ControlToValidate="txtPassword" ForeColor="Red"></asp:RequiredFieldValidator>
                </p>
                <p style="height: 45px">
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" CssClass="button" />
                    <asp:HyperLink ID="hplRegister" runat="server" CssClass="hplClass" NavigateUrl="~/Register.aspx">Create Account?</asp:HyperLink>
                </p>
                <p>
                    <asp:Label ID="lblMessage" runat="server" Text="Login failed! Please enter correct username and password." ForeColor="Red" Visible="False"></asp:Label>
                </p>
            </article>
            <footer>
                <p>© Copyright 2019 Cosmic Comics. All rights reserved.</p>
            </footer>
        </div>
    </form>
</body>
</html>
