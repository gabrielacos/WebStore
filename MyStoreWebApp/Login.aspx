<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MyStoreWebAppVer2.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
</head>
<body>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/jquery-3.3.1.min.js"></script>
    <div class="container">
        <form id="form1" runat="server">
            <div class="container">

                <div class="row">
                    <div class="col-lg-1">&nbsp; </div>
                    <div class="col-lg-2">Username* </div>
                    <div class="col-lg-7">
                        <asp:TextBox ID="txtUser" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="reqUsername" runat="server"
                            ControlToValidate="txtUser" ErrorMessage="Required."
                            ValidationGroup="val1"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-1">&nbsp; </div>
                    <div class="col-lg-2">Password* </div>
                    <div class="col-lg-7">
                        <asp:TextBox ID="txtPass" runat="server" TextMode="Password">
                        </asp:TextBox>
                        <asp:RequiredFieldValidator ID="reqPassword" runat="server"
                            ControlToValidate="txtPass" ErrorMessage="Required."
                            ValidationGroup="val1"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-1">&nbsp; </div>
                    <div class="col-lg-2">&nbsp; </div>
                    <div class="col-lg-7">
                        <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
                    </div>
                </div>
            </div>
        </form>
    </div>
</body>
</html>