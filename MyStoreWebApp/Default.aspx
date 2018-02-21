<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MyStoreWebApp.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MENU" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MESSAGE" runat="server">
    <asp:Label ID="lblMensaje" runat="server" Text=""></asp:Label>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="BODY" runat="server">
    <script>$("#liHome").addClass("active");</script>
    <div class="row">
        <div class="col-lg-2">
            &nbsp;
        </div>

        <div class="col-lg-8">
            <h3>
                <p>
                    Welcome to the Store home page!<br />
                    <br />
                    Here you can see all products, customer and visitor as well as details for each of your selection.</h3>
            <asp:Image ID="Image1" runat="server" Height="250px" ImageUrl="~/Resources/my_logo.png" Width="249px" CssClass="center-block" />
        </div>
        <div class="col-lg-2">
            &nbsp;
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="FOOTER" runat="server">
</asp:Content>