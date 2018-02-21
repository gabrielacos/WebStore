<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="VendorDetails.aspx.cs" Inherits="MyStoreWebApp.VendorDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MENU" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MESSAGE" runat="server">

    <div class="row">
        <div class="col-lg-8">
            <h1>Vendor Details</h1>
        </div>
        <div class="col-lg-4">
            <asp:Image ID="Image1" runat="server" Height="60px" ImageUrl="~/Resources/my_logo.png" Width="59px" />
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="BODY" runat="server">
    <div class="row">
        <div class="col-lg-12">
            &nbsp;
        </div>
    </div>
    <div class="row">
        <div class="row">
            <div class="col-lg-2">
                &nbsp;
            </div>
            <div class="col-lg-8">
                <asp:DetailsView ID="dvVendors" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="VENDOR_CODE" DataSourceID="dvStoreVendors" CssClass="table table-bordered">
                    <Fields>
                        <asp:BoundField DataField="VENDOR_CODE" HeaderText="VENDOR_CODE" ReadOnly="True" SortExpression="VENDOR_CODE" />
                        <asp:BoundField DataField="VENDOR_NAME" HeaderText="VENDOR_NAME" SortExpression="VENDOR_NAME" />
                        <asp:BoundField DataField="VENDOR_CONTACT" HeaderText="VENDOR_CONTACT" SortExpression="VENDOR_CONTACT" />
                        <asp:BoundField DataField="VENDOR_AREACODE" HeaderText="VENDOR_AREACODE" SortExpression="VENDOR_AREACODE" />
                        <asp:BoundField DataField="VENDOR_PHONE" HeaderText="VENDOR_PHONE" SortExpression="VENDOR_PHONE" />
                        <asp:BoundField DataField="VENDOR_STATE" HeaderText="VENDOR_STATE" SortExpression="VENDOR_STATE" />
                        <asp:BoundField DataField="VENDOR_ORDER" HeaderText="VENDOR_ORDER" SortExpression="VENDOR_ORDER" />
                        <asp:BoundField DataField="RECORD_STATUS" HeaderText="RECORD_STATUS" SortExpression="RECORD_STATUS" />
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                    </Fields>
                </asp:DetailsView>
                <asp:SqlDataSource ID="dvStoreVendors" runat="server" ConnectionString="<%$ ConnectionStrings:connectionstringStoreDB %>" SelectCommand="SELECT VENDOR_CODE, VENDOR_NAME, VENDOR_CONTACT, VENDOR_AREACODE, VENDOR_PHONE, VENDOR_STATE, VENDOR_ORDER, RECORD_STATUS FROM Store.Vendor WHERE (VENDOR_CODE = @parmVendorCode)" DeleteCommand="DELETE FROM Store.Vendor WHERE (VENDOR_CODE = @parmVendorCode)" InsertCommand="INSERT INTO Store.Vendor(VENDOR_CODE, VENDOR_NAME, VENDOR_CONTACT, VENDOR_AREACODE, VENDOR_PHONE, VENDOR_STATE, VENDOR_ORDER, RECORD_STATUS) VALUES (@ins_VendorCode, @insVendorName, @insVendorContanct, @insVEndorAreaCode, @insVendorPhone, @insVendorState, @insVendorOder, @insRecorStatus)" UpdateCommand="UPDATE Store.Vendor SET VENDOR_CODE = @updvendorcode, VENDOR_NAME = @updVendorName, VENDOR_CONTACT = @updVender, VENDOR_AREACODE = @upd_VendorArea, VENDOR_PHONE = @updVendorPhone, VENDOR_STATE = @updVendorState, VENDOR_ORDER = @updVendorOder, RECORD_STATUS = @updVendorStatus
WHERE (VENDOR_CODE = @parmVendorCode)">
                    <DeleteParameters>
                        <asp:Parameter Name="parmVendorCode" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="ins_VendorCode" />
                        <asp:Parameter Name="insVendorName" />
                        <asp:Parameter Name="insVendorContanct" />
                        <asp:Parameter Name="insVEndorAreaCode" />
                        <asp:Parameter Name="insVendorPhone" />
                        <asp:Parameter Name="insVendorState" />
                        <asp:Parameter Name="insVendorOder" />
                        <asp:Parameter Name="insRecorStatus" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:SessionParameter Name="parmVendorCode" SessionField="ssVendorCode" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="updvendorcode" />
                        <asp:Parameter Name="updVendorName" />
                        <asp:Parameter Name="updVender" />
                        <asp:Parameter Name="upd_VendorArea" />
                        <asp:Parameter Name="updVendorPhone" />
                        <asp:Parameter Name="updVendorState" />
                        <asp:Parameter Name="updVendorOder" />
                        <asp:Parameter Name="updVendorStatus" />
                        <asp:Parameter Name="parmVendorCode" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="dbStore" runat="server"></asp:SqlDataSource>
            </div>

            <div class="col-lg-2">
                &nbsp;
            </div>
        </div>
        <div class="col-lg-12">
            &nbsp;
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="FOOTER" runat="server">
</asp:Content>