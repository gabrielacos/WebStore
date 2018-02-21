<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="MyStoreWebApp.Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MENU" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MESSAGE" runat="server">

    <div class="row">
        <div class="col-lg-8">
            <h1>Products</h1>
        </div>
        <div class="col-lg-4">
            <asp:Image ID="Image1" runat="server" Height="60px" ImageUrl="~/Resources/my_logo.png" Width="59px" />
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="BODY" runat="server">
    <script>$("#liProducts").addClass("active");</script>
    <div class="row">
        <div class="col-lg-12">
            <h5>Select Product</h5>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <asp:DropDownList ID="ddlProduct" runat="server" AutoPostBack="True" AppendDataBoundItems="true" DataSourceID="dsDtoreProductDDL" DataTextField="PRODUCT_DESCRIPTION" DataValueField="PRODUCT_CODE">
                <asp:ListItem Value="%" Selected="True">SelectAll</asp:ListItem>
            </asp:DropDownList>
            <asp:SqlDataSource ID="dsDtoreProductDDL" runat="server" ConnectionString="<%$ ConnectionStrings:connectionstringStoreDB %>" SelectCommand="SELECT PRODUCT_CODE, PRODUCT_DESCRIPTION FROM Store.Product"></asp:SqlDataSource>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <asp:GridView ID="gvProducts" runat="server" AutoGenerateColumns="False"
                class="table table-bordered" DataKeyNames="PRODUCT_CODE" DataSourceID="dssStoreProduct" OnSelectedIndexChanged="gvProducts_SelectedIndexChanged" OnPreRender="gvProducts_PreRender1" Width="1485px">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="PRODUCT_CODE" HeaderText="PRODUCT_CODE" ReadOnly="True" SortExpression="PRODUCT_CODE" />
                    <asp:BoundField DataField="PRODUCT_DESCRIPTION" HeaderText="PRODUCT_DESCRIPTION" SortExpression="PRODUCT_DESCRIPTION" />
                    <asp:BoundField DataField="PRODUCT_INDATE" HeaderText="PRODUCT_INDATE" SortExpression="PRODUCT_INDATE" />
                    <asp:BoundField DataField="PRODUCT_QTYOH" HeaderText="PRODUCT_QTYOH" SortExpression="PRODUCT_QTYOH" />
                    <asp:BoundField DataField="PRODUCT_MIN" HeaderText="PRODUCT_MIN" SortExpression="PRODUCT_MIN" />
                    <asp:BoundField DataField="PRODUCT_PRICE" HeaderText="PRODUCT_PRICE" SortExpression="PRODUCT_PRICE" />
                    <asp:BoundField DataField="PRODUCT_DISCOUNT" HeaderText="PRODUCT_DISCOUNT" SortExpression="PRODUCT_DISCOUNT" />
                    <asp:BoundField DataField="VENDOR_CODE" HeaderText="VENDOR_CODE" SortExpression="VENDOR_CODE" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="dssStoreProduct" runat="server" ConnectionString="<%$ ConnectionStrings:connectionstringStoreDB %>" SelectCommand="SELECT PRODUCT_CODE, PRODUCT_DESCRIPTION, PRODUCT_INDATE, PRODUCT_QTYOH, PRODUCT_MIN, PRODUCT_PRICE,
PRODUCT_DISCOUNT, VENDOR_CODE FROM Store.Product WHERE PRODUCT_CODE like '%' + @parmProductCode + '%'">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ddlProduct" Name="parmProductCode" PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-2">
            &nbsp;
        </div>
        <!-- Text and a Label Control to display totals -->
        <div class="col-lg-8">
            <h5>Total Products listed
 <asp:Label ID="lblTotal" runat="server"></asp:Label>
            </h5>
        </div>
        <div class="col-lg-2">
            &nbsp;
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            &nbsp;
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            &nbsp;
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="FOOTER" runat="server">
</asp:Content>