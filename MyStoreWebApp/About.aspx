<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="MyStoreWebApp.About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MENU" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MESSAGE" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-lg-10">
                <h1>About</h1>
            </div>
            <div class="col-lg-2">
                <asp:Image ID="Image1" runat="server" Height="60px" ImageUrl="~/Resources/my_logo.png" Width="59px" />
            </div>
        </div>
        <table class="table table-bordered">
            <tbody>
                <tr>
                    <th scope="col">Name</th>
                    <td>Gabriel Acosta Muller</td>
                </tr>
                <tr>
                    <th scope="row">Course</th>
                    <td>SICI-4266</td>
                </tr>
                <tr>
                    <th scope="row">Course Section</th>
                    <td>001</td>
                </tr>
                <tr>
                    <th scope="row">Semester</th>
                    <td>August-December 2017 </td>
                </tr>
                <tr>
                    <th scope="row">Version</th>
                    <td>4</td>
                </tr>
            </tbody>
        </table>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="BODY" runat="server">
    <script>$("#liAbout").addClass("active");</script>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="FOOTER" runat="server">
</asp:Content>