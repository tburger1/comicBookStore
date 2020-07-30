<%@ Page Title="" Language="C#" MasterPageFile="~/MyComic.Master" AutoEventWireup="true" CodeBehind="Help.aspx.cs" Inherits="CosmicComics.Help" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Cosmic Comics
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentBody" runat="server">
    <h2>Contact Us</h2>
    <div class="contactContainer1">
        <p>
            <asp:Label ID="lblFirstName" runat="server" Text="First Name:" CssClass="contactLabel1"></asp:Label>
            <asp:TextBox ID="txtFirstName" runat="server" CssClass="contactText"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" ErrorMessage="*Enter First Name" ControlToValidate="txtFirstName" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        <p>
            <asp:Label ID="lblLastName" runat="server" Text="Last Name:" CssClass="contactLabel1"></asp:Label>
            <asp:TextBox ID="txtLastName" runat="server" CssClass="contactText"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvLastName" runat="server" ErrorMessage="*Enter Last Name" ControlToValidate="txtLastName" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        <p>
            <asp:Label ID="lblPhoneNumber" runat="server" Text="Phone Number:" CssClass="contactLabel1"></asp:Label>
            <asp:TextBox ID="txtPhoneNumber" runat="server" CssClass="contactText"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvPhoneNumber" runat="server" ErrorMessage="*Enter Phone Number" ControlToValidate="txtPhoneNumber" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        <p>
            <asp:Label ID="lblEmail" runat="server" Text="Email:" CssClass="contactLabel1"></asp:Label>
            <asp:TextBox ID="txtEmail" runat="server" CssClass="contactText"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ErrorMessage="*Enter Email Address" ControlToValidate="txtEmail" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        <p>
            <asp:Label ID="lblSubject" runat="server" Text="Subject:" CssClass="contactLabel1"></asp:Label>
            <asp:TextBox ID="txtSubject" runat="server" CssClass="contactText"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvSubject" runat="server" ErrorMessage="*Enter Subject" ControlToValidate="txtSubject" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        <p style="height: 225px">
            <asp:Label ID="lblMessage" runat="server" Text="Message:" CssClass="contactLabel1"></asp:Label>
            <asp:TextBox ID="txtMessage" runat="server" CssClass="contactText" Width="500px" Height="200px" TextMode="MultiLine" Font-Size="Medium" OnTextChanged="txtMessage_TextChanged"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvMessage" runat="server" ErrorMessage="*Enter Message" ForeColor="Red" ControlToValidate="txtMessage"></asp:RequiredFieldValidator>
        </p>
        <p style="height: 45px">
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="contactButton" OnClick="btnSubmit_Click" />
        </p>
        <p>
            <asp:Label ID="lblConfirmation" runat="server" Text="" Visible="False" ForeColor="Green"></asp:Label>
        </p>
    </div>
    <div class="contactContainer2">
        <h3>Contact Information</h3>
        <p>Cosmic Comics</p>
        <p>455 West Main Ave.</p>
        <p>Holland, MI 49424</p>
        <p>616 645 2000</p>
    </div>
</asp:Content>
