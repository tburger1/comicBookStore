<%@ Page Title="" Language="C#" MasterPageFile="~/MyComic.Master" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="CosmicComics.Edit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Cosmic Comics
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentBody" runat="server">
    <h2>Modify Comic In Library</h2>
    <p>
        <asp:Label ID="lblId" runat="server" Text="ID:" CssClass="libraryLabel"></asp:Label>
        <asp:DropDownList ID="ddlId" runat="server" DataSourceID="CosmicComicsSqlDataSource" DataTextField="ComicID" DataValueField="ComicID" CssClass="libraryDropDownList" OnSelectedIndexChanged="ddlId_SelectedIndexChanged" AutoPostBack="True">
        </asp:DropDownList>
        <asp:SqlDataSource ID="CosmicComicsSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:CosmicComicsConnectionString %>" ProviderName="<%$ ConnectionStrings:CosmicComicsConnectionString.ProviderName %>" SelectCommand="SELECT [ComicID] FROM [tblComics]"></asp:SqlDataSource>
        <br>
    </p>
    <p>
        <asp:Label ID="lblTitle" runat="server" Text="Title:" CssClass="libraryLabel"></asp:Label>
        <asp:TextBox ID="txtTitle" runat="server" CssClass="libraryText" AutoPostBack="False" ReadOnly="True"></asp:TextBox>
        <br>
    </p>
    <p>
        <asp:Label ID="lblPublisher" runat="server" Text="Publisher:" CssClass="libraryLabel"></asp:Label>
        <asp:TextBox ID="txtPublisher" runat="server" CssClass="libraryText" ReadOnly="True" AutoPostBack="False"></asp:TextBox>
        <br>
    </p>
    <p>
        <asp:Label ID="lblVolume" runat="server" Text="Volume:" CssClass="libraryLabel"></asp:Label>
        <asp:TextBox ID="txtVolume" runat="server" CssClass="libraryText" AutoPostBack="False" ReadOnly="True"></asp:TextBox>
        <br>
    </p>
    <p>
        <asp:Label ID="lblIssue" runat="server" Text="Issue:" CssClass="libraryLabel"></asp:Label>
        <asp:TextBox ID="txtIssue" runat="server" CssClass="libraryText" AutoPostBack="False" ReadOnly="True"></asp:TextBox>
        <br>
    </p>
    <p>
        <asp:Label ID="lblReleaseDate" runat="server" Text="Release Date:" CssClass="libraryLabel"></asp:Label>
        <asp:TextBox ID="txtReleaseDate" runat="server" CssClass="libraryText" AutoPostBack="False" ReadOnly="True"></asp:TextBox>
        <br>
    </p>
     <p>
        <asp:Label ID="lblPrice" runat="server" Text="Price:" CssClass="libraryLabel"></asp:Label>
        <asp:TextBox ID="txtPrice" runat="server" CssClass="libraryText" AutoPostBack="False" ReadOnly="True"></asp:TextBox>
        <br>
    </p>
    <p>
        <asp:Label ID="lblRating" runat="server" Text="Rating:" CssClass="libraryLabel"></asp:Label>
        <asp:TextBox ID="txtRating" runat="server" CssClass="libraryText" AutoPostBack="False" ReadOnly="True"></asp:TextBox>
        <br>
    </p>
    <p style="height: 45px; width: 50%;">
        <asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="libraryButton" OnClick="btnUpdate_Click" />
        <asp:Button ID="btnDelete" runat="server" Text="Delete" CssClass="libraryButton" OnClick="btnDelete_Click" />
        <br />
    </p>
    <p>
        <asp:Label ID="lblUserMessage" runat="server" Text="" Visible="false"></asp:Label>
    </p>
</asp:Content>
