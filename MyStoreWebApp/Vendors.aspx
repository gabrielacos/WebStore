<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Vendors.aspx.cs" Inherits="MyStoreWebApp.Vendors" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MENU" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MESSAGE" runat="server">

    <div class="row">
        <div class="col-lg-8">
            <h1>Vendors</h1>
        </div>
        <div class="col-lg-4">
            <asp:Image ID="Image1" runat="server" Height="60px" ImageUrl="~/Resources/my_logo.png" Width="59px" />
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="BODY" runat="server">

    <script>$("#liVendors").addClass("active");</script>
    <div class="row">
        <div class="col-lg-12">
            <h5>Select Vendors</h5>
        </div>
        <asp:DropDownList ID="ddlVendors" runat="server" AppendDataBoundItems="True" AutoPostBack="True" DataSourceID="dsStoreVendorDDL" DataTextField="VENDOR_NAME" DataValueField="VENDOR_CODE">
            <asp:ListItem Value="%">Select All</asp:ListItem>
        </asp:DropDownList>
        <asp:SqlDataSource ID="dsStoreVendorDDL" runat="server" ConnectionString="<%$ ConnectionStrings:connectionstringStoreDB %>" SelectCommand="SELECT VENDOR_CODE, VENDOR_NAME FROM Store.Vendor"></asp:SqlDataSource>
    </div>
    <div class="row">
        <div class="col-lg-12">
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <asp:GridView ID="gvVendors" runat="server" AutoGenerateColumns="False" class="table table-bordered" DataKeyNames="VENDOR_CODE" DataSourceID="dbStoreVendors" OnPreRender="gvVendors_PreRender" OnSelectedIndexChanged="gvVendors_SelectedIndexChanged">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="VENDOR_CODE" HeaderText="VENDOR_CODE" ReadOnly="True" SortExpression="VENDOR_CODE" />
                    <asp:BoundField DataField="VENDOR_NAME" HeaderText="VENDOR_NAME" SortExpression="VENDOR_NAME" />
                    <asp:BoundField DataField="VENDOR_CONTACT" HeaderText="VENDOR_CONTACT" SortExpression="VENDOR_CONTACT" />
                    <asp:BoundField DataField="VENDOR_AREACODE" HeaderText="VENDOR_AREACODE" SortExpression="VENDOR_AREACODE" />
                    <asp:BoundField DataField="VENDOR_PHONE" HeaderText="VENDOR_PHONE" SortExpression="VENDOR_PHONE" />
                    <asp:BoundField DataField="VENDOR_STATE" HeaderText="VENDOR_STATE" SortExpression="VENDOR_STATE" />
                    <asp:BoundField DataField="VENDOR_ORDER" HeaderText="VENDOR_ORDER" SortExpression="VENDOR_ORDER" />
                    <asp:BoundField DataField="RECORD_STATUS" HeaderText="RECORD_STATUS" SortExpression="RECORD_STATUS" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="dbStoreVendors" runat="server" ConnectionString="<%$ ConnectionStrings:connectionstringStoreDB %>" SelectCommand="SELECT VENDOR_CODE, VENDOR_NAME, VENDOR_CONTACT, VENDOR_AREACODE, VENDOR_PHONE, VENDOR_STATE, VENDOR_ORDER, RECORD_STATUS FROM Store.Vendor
WHERE VENDOR_CODE like '%' + @parmVendortCode + '%'">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ddlVendors" Name="parmVendortCode" PropertyName="SelectedValue" />
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