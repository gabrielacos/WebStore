<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ProductDetails.aspx.cs" Inherits="MyStoreWebApp.ProductDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MENU" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MESSAGE" runat="server">

    <div class="row">
        <div class="col-lg-8">
            <h1>Product Details</h1>
        </div>
        <div class="col-lg-4">
            <asp:Image ID="Image1" runat="server" Height="60px" ImageUrl="~/Resources/my_logo.png" Width="59px" />
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="BODY" runat="server">
    <div class="row">
        <div class="col-lg-2">
            &nbsp;
        </div>
        <div class="col-lg-8">

            <asp:DetailsView ID="dvProducts" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="PRODUCT_CODE" DataSourceID="ProductDetailDataSource" CssClass="table table-bordered">
                <Fields>
                    <asp:BoundField DataField="PRODUCT_CODE" HeaderText="PRODUCT_CODE" ReadOnly="True" SortExpression="PRODUCT_CODE" />
                    <asp:BoundField DataField="PRODUCT_DESCRIPTION" HeaderText="PRODUCT_DESCRIPTION" SortExpression="PRODUCT_DESCRIPTION" />
                    <asp:BoundField DataField="PRODUCT_INDATE" HeaderText="PRODUCT_INDATE" SortExpression="PRODUCT_INDATE" />
                    <asp:TemplateField HeaderText="PRODUCT_QTYOH" SortExpression="PRODUCT_QTYOH">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtProductQTYOH" runat="server" Text='<%# Bind("PRODUCT_QTYOH") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="reqProductQTYOH" runat="server"
                                ControlToValidate="txtProductQTYOH" ErrorMessage="Required."
                                ValidationGroup="val3"></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="txtProductQTYOH" runat="server" Text='<%# Bind("PRODUCT_QTYOH") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="reqProductQTYOH" runat="server"
                                ControlToValidate="txtProductQTYOH" ErrorMessage="Required."
                                ValidationGroup="val3"></asp:RequiredFieldValidator>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("PRODUCT_QTYOH") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="PRODUCT_MIN" HeaderText="PRODUCT_MIN" SortExpression="PRODUCT_MIN" />
                    <asp:TemplateField HeaderText="PRODUCT_PRICE" SortExpression="PRODUCT_PRICE">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtProductPrice" runat="server" Text='<%# Bind("PRODUCT_PRICE") %>'></asp:TextBox>
                            <asp:RangeValidator ID="reqProductPrice" MinimumValue="1" MaximumValue="2147483647" Type="Integer" ErrorMessage="Required" runat="server" ControlToValidate="txtProductPrice" ValidationGroup="val2" EnableClientScript="false">
                            </asp:RangeValidator>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="txtProductPrice" runat="server" Text='<%# Bind("PRODUCT_PRICE") %>'></asp:TextBox>
                            <asp:RangeValidator ID="reqProductPrice" MinimumValue="1" MaximumValue="2147483647" Type="Integer" ErrorMessage="Required" runat="server" ControlToValidate="txtProductPrice" ValidationGroup="val2" EnableClientScript="false">
                            </asp:RangeValidator>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("PRODUCT_PRICE") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="PRODUCT_DISCOUNT" HeaderText="PRODUCT_DISCOUNT" SortExpression="PRODUCT_DISCOUNT" />
                    <asp:TemplateField HeaderText="VENDOR_CODE" SortExpression="VENDOR_CODE">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtVendorCode" runat="server" Text='<%# Bind("VENDOR_CODE") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="reqVendorCode" runat="server"
                                ControlToValidate="txtVendorCode" ErrorMessage="Required."
                                ValidationGroup="val1"></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="txtVendorCode" runat="server" Text='<%# Bind("VENDOR_CODE") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="reqVendorCode" runat="server"
                                ControlToValidate="txtVendorCode" ErrorMessage="Required."
                                ValidationGroup="val1"></asp:RequiredFieldValidator>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("VENDOR_CODE") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="RECORD_STATUS" SortExpression="RECORD_STATUS">
                        <EditItemTemplate>
                            <asp:DropDownList ID="ddlRecordStatus" runat="server" Text='<%# Bind("RECORD_STATUS") %>'>
                                <asp:ListItem Value="A">Active</asp:ListItem>
                                <asp:ListItem Value="I">Inactive</asp:ListItem>
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:DropDownList ID="ddlRecordStatus" runat="server" Text='<%# Bind("RECORD_STATUS") %>'>
                                <asp:ListItem Value="A">Active</asp:ListItem>
                                <asp:ListItem Value="I">Inactive</asp:ListItem>
                            </asp:DropDownList>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("RECORD_STATUS") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
            <asp:SqlDataSource ID="ProductDetailDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:connectionstringStoreDB %>" SelectCommand="SELECT PRODUCT_CODE, PRODUCT_DESCRIPTION, PRODUCT_INDATE, PRODUCT_QTYOH, PRODUCT_MIN, PRODUCT_PRICE, PRODUCT_DISCOUNT, VENDOR_CODE, RECORD_STATUS FROM Store.Product WHERE (PRODUCT_CODE = @parmProductCode)" DeleteCommand="DELETE FROM Store.Product WHERE (PRODUCT_CODE = @parmProductCode)" InsertCommand="INSERT INTO Store.Product(PRODUCT_DESCRIPTION, PRODUCT_INDATE, PRODUCT_QTYOH, PRODUCT_MIN, PRODUCT_PRICE, PRODUCT_DISCOUNT, VENDOR_CODE, PRODUCT_CODE) VALUES ('@INS_PRODUCT_DESCRIPTION', @INS_PRODUCT_INDATE, @INS_PRODUCT_QTYOH, @INS_PRODUCT_MIN, @INS_PRODUCT_MIN, @INS_PRODUCT_DISCOUNT, @INS_VENDOR_CODE, @INS_PRODUCT_CODE)" UpdateCommand="UPDATE Store.Product SET PRODUCT_DESCRIPTION = @UPDProductDescription, PRODUCT_INDATE = @UPDProductInDate, PRODUCT_QTYOH = @UPDProductQTYOH, PRODUCT_MIN = @UPDProduct_MIN, PRODUCT_PRICE = @UPDRODUCT_PRICE, PRODUCT_DISCOUNT = @UPDPRODUCT_DISCOUNT, VENDOR_CODE = @UPDVENDOR_CODE WHERE (PRODUCT_CODE = @parmProductCode)">
                <DeleteParameters>
                    <asp:Parameter Name="parmProductCode" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="INS_PRODUCT_INDATE" />
                    <asp:Parameter Name="INS_PRODUCT_QTYOH" />
                    <asp:Parameter Name="INS_PRODUCT_MIN" />
                    <asp:Parameter Name="INS_PRODUCT_DISCOUNT" />
                    <asp:Parameter Name="INS_VENDOR_CODE" />
                    <asp:Parameter Name="INS_PRODUCT_CODE" />
                </InsertParameters>
                <SelectParameters>
                    <asp:SessionParameter Name="parmProductCode" SessionField="ssProductCode" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="UPDProductDescription" />
                    <asp:Parameter Name="UPDProductInDate" />
                    <asp:Parameter Name="UPDProductQTYOH" />
                    <asp:Parameter Name="UPDProduct_MIN" />
                    <asp:Parameter Name="UPDRODUCT_PRICE" />
                    <asp:Parameter Name="UPDPRODUCT_DISCOUNT" />
                    <asp:Parameter Name="UPDVENDOR_CODE" />
                    <asp:Parameter Name="parmProductCode" />
                </UpdateParameters>
            </asp:SqlDataSource>
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