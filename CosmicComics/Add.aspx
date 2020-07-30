<%@ Page Title="" Language="C#" MasterPageFile="~/MyComic.Master" AutoEventWireup="true" CodeBehind="Add.aspx.cs" Inherits="CosmicComics.Add" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Cosmic Comics
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentBody" runat="server">
    <h2>Add Comic To Library</h2>
    <p>
        <asp:Label ID="lblId" runat="server" Text="ID:" CssClass="libraryLabel"></asp:Label>
        <asp:TextBox ID="txtId" runat="server" CssClass="libraryText"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvId" runat="server" ErrorMessage="*Enter ID" ControlToValidate="txtId" ForeColor="Red"></asp:RequiredFieldValidator>
    </p>
    <p>
        <asp:Label ID="lblTitle" runat="server" Text="Title:" CssClass="libraryLabel"></asp:Label>
        <asp:TextBox ID="txtTitle" runat="server" CssClass="libraryText"></asp:TextBox>
        <br>
    </p>
    <p>
        <asp:Label ID="lblPublisher" runat="server" Text="Publisher:" CssClass="libraryLabel"></asp:Label>
        <asp:TextBox ID="txtPublisher" runat="server" CssClass="libraryText"></asp:TextBox>
        <br>
    </p>
    <p>
        <asp:Label ID="lblVolume" runat="server" Text="Volume:" CssClass="libraryLabel"></asp:Label>
        <asp:TextBox ID="txtVolume" runat="server" CssClass="libraryText"></asp:TextBox>
        <br>
    </p>
    <p>
        <asp:Label ID="lblIssue" runat="server" Text="Issue:" CssClass="libraryLabel"></asp:Label>
        <asp:TextBox ID="txtIssue" runat="server" CssClass="libraryText"></asp:TextBox>
        <br>
    </p>
    <p>
        <asp:Label ID="lblReleaseDate" runat="server" Text="Release Date:" CssClass="libraryLabel"></asp:Label>
        <asp:TextBox ID="txtReleaseDate" runat="server" CssClass="libraryText"></asp:TextBox>
        <br>
    </p>
     <p>
        <asp:Label ID="lblPrice" runat="server" Text="Price:" CssClass="libraryLabel"></asp:Label>
        <asp:TextBox ID="txtPrice" runat="server" CssClass="libraryText"></asp:TextBox>
        <br>
    </p>
    <p>
        <asp:Label ID="lblRating" runat="server" Text="Rating:" CssClass="libraryLabel"></asp:Label>
        <asp:TextBox ID="txtRating" runat="server" CssClass="libraryText"></asp:TextBox>
        <br>
    </p>
    <p>
        <asp:Label ID="lblCover" runat="server" Text="Image Cover:" CssClass="libraryLabel"></asp:Label>
        <asp:FileUpload ID="fulCover" runat="server" />
        <br>
    </p>
    <p style="height: 45px">
        <asp:Button ID="btnSubmit" runat="server" Text="Add" CssClass="libraryButton" OnClick="btnSubmit_Click" />
    </p>
    <p>
        <asp:Label ID="lblUserMessage" runat="server" Text="" Visible="false"></asp:Label>
    </p>
</asp:Content>
