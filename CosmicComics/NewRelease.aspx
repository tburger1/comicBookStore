<%@ Page Title="" Language="C#" MasterPageFile="~/MyComic.Master" AutoEventWireup="true" CodeBehind="NewRelease.aspx.cs" Inherits="CosmicComics.NewRelease" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Cosmic Comics
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentBody" runat="server">
    <h2>Newly Released Comics</h2>
    <h3>Display All:</h3>
    <asp:GridView ID="gridViewNewReleases" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="NewReleasesSqlDataSource" ForeColor="#333333" GridLines="None" CssClass="GridPosition">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="ComicTitle" HeaderText="Title" SortExpression="ComicTitle" ItemStyle-Width="300px" ItemStyle-HorizontalAlign="left" />
            <asp:BoundField DataField="ComicPublisher" HeaderText="Publisher" SortExpression="ComicPublisher" ItemStyle-Width="100px" ItemStyle-HorizontalAlign="center" />
            <asp:BoundField DataField="ComicVolume" HeaderText="Volume" SortExpression="ComicVolume" ItemStyle-Width="100px" ItemStyle-HorizontalAlign="center" />
            <asp:BoundField DataField="ComicIssue" HeaderText="Issue" SortExpression="ComicIssue" ItemStyle-Width="100px" ItemStyle-HorizontalAlign="center" />
            <asp:BoundField DataField="ComicReleaseDate" HeaderText="Release Date" SortExpression="ComicReleaseDate" ItemStyle-Width="200px" ItemStyle-HorizontalAlign="center" />
            <asp:BoundField DataField="ComicPrice" HeaderText="Price" SortExpression="ComicPrice" ItemStyle-Width="100px" ItemStyle-HorizontalAlign="center" />
            <asp:BoundField DataField="ComicRating" HeaderText="Rating" SortExpression="ComicRating" ItemStyle-Width="100px" ItemStyle-HorizontalAlign="center" />
            <asp:TemplateField HeaderText="Cover" SortExpression="ComicCover">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("ComicCover") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" Height="350px" ImageUrl='<%# Eval("ComicCover") %>' Width="250px" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Expr1008" HeaderText="Count" SortExpression="Expr1008" ItemStyle-Width="200px" ItemStyle-HorizontalAlign="left" Visible="False" />
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
    <asp:SqlDataSource ID="NewReleasesSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:CosmicComicsConnectionString %>" ProviderName="<%$ ConnectionStrings:CosmicComicsConnectionString.ProviderName %>"
        SelectCommand="SELECT ComicTitle, ComicPublisher, ComicVolume, ComicIssue, ComicReleaseDate, ComicPrice, ComicRating,  ComicCover, COUNT(*)
            FROM [tblComics], [tblCategoryType]
            WHERE tblComics.ComicID = tblCategoryType.ComicID
            AND tblCategoryType.NewRelease = -1
            GROUP BY ComicTitle, ComicPublisher, ComicVolume, ComicIssue, ComicReleaseDate, ComicPrice, ComicRating, ComicCover
            HAVING COUNT(*) &gt;= 1;">
    </asp:SqlDataSource>
</asp:Content>
