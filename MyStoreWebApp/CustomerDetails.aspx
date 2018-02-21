<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="CustomerDetails.aspx.cs" Inherits="MyStoreWebApp.CustomerDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MENU" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MESSAGE" runat="server">

    <div class="row">
        <div class="col-lg-8">
            <h1>Customer Detail</h1>
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
            <asp:DetailsView ID="dvCustomerDetails" runat="server" Height="50px" Width="125px" DataSourceID="dbStoreCustomer" CssClass="table table-bordered" AutoGenerateRows="False" DataKeyNames="CUSTOMER_CODE" OnItemUpdated="dvCustomerDetails_ItemUpdated">
                <Fields>
                    <asp:BoundField DataField="CUSTOMER_CODE" HeaderText="CUSTOMER_CODE" ReadOnly="True" SortExpression="CUSTOMER_CODE" />
                    <asp:BoundField DataField="CUSTOMER_LNAME" HeaderText="CUSTOMER_LNAME" SortExpression="CUSTOMER_LNAME" />
                    <asp:BoundField DataField="CUSTOMER_FNAME" HeaderText="CUSTOMER_FNAME" SortExpression="CUSTOMER_FNAME" />
                    <asp:BoundField DataField="CUSTOMER_INITIAL" HeaderText="CUSTOMER_INITIAL" SortExpression="CUSTOMER_INITIAL" />
                    <asp:BoundField DataField="CUSTOMER_AREACODE" HeaderText="CUSTOMER_AREACODE" SortExpression="CUSTOMER_AREACODE" />
                    <asp:BoundField DataField="CUSTOMER_PHONE" HeaderText="CUSTOMER_PHONE" SortExpression="CUSTOMER_PHONE" />
                    <asp:BoundField DataField="CUSTOMER_CREDITLIMIT" HeaderText="CUSTOMER_CREDITLIMIT" SortExpression="CUSTOMER_CREDITLIMIT" />
                    <asp:BoundField DataField="CUSTOMER_BALANCE" HeaderText="CUSTOMER_BALANCE" SortExpression="CUSTOMER_BALANCE" />
                    <asp:BoundField DataField="CUSTOMER_DATELSTPMT" HeaderText="CUSTOMER_DATELSTPMT" SortExpression="CUSTOMER_DATELSTPMT" />
                    <asp:BoundField DataField="CUSTOMER_DATELSTPUR" HeaderText="CUSTOMER_DATELSTPUR" SortExpression="CUSTOMER_DATELSTPUR" />
                    <asp:BoundField DataField="RECORD_STATUS" HeaderText="RECORD_STATUS" SortExpression="RECORD_STATUS" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="dbStoreCustomer" runat="server" ConnectionString="<%$ ConnectionStrings:connectionstringStoreDB %>" SelectCommand="SELECT CUSTOMER_CODE, CUSTOMER_LNAME, CUSTOMER_FNAME, CUSTOMER_INITIAL, CUSTOMER_AREACODE, CUSTOMER_PHONE, CUSTOMER_CREDITLIMIT, CUSTOMER_BALANCE, CUSTOMER_DATELSTPMT, CUSTOMER_DATELSTPUR, RECORD_STATUS FROM Store.Customer WHERE (CUSTOMER_CODE = @parmCustomerCode)" InsertCommand="INSERT INTO Store.Customer(CUSTOMER_LNAME, CUSTOMER_FNAME, CUSTOMER_INITIAL, CUSTOMER_AREACODE, CUSTOMER_PHONE, CUSTOMER_CREDITLIMIT, CUSTOMER_BALANCE, CUSTOMER_DATELSTPMT, CUSTOMER_DATELSTPUR, RECORD_STATUS, CUSTOMER_CODE) VALUES ('@INS_CUSTOMER_LNAME', @INS_CUSTOEMR_FNAME, @INS_CUSTOMER__INITIAL, @INSCUSTOMER_AREACODE, @INSCUSTOMER_PHONE, @INSCUSTOMER_CREDITLIMIT, @INSCUSTOMER_BALANCE, @INSCUSTOMER_DATESTPMT, @INSCUSTOMER_DATELSTPUR, @INSRECORDSTATUS, @INSCUSTOMERCODE)" UpdateCommand="UPDATE Store.Customer SET CUSTOMER_LNAME = @UPDCUSTOMER_LNAME, CUSTOMER_FNAME = @UPDCUSTOMER_FNAME, CUSTOMER_INITIAL = @UPDCUSTOMER_INITIAL, CUSTOMER_AREACODE = @UPDCUSTOMER_AREACODE, CUSTOMER_PHONE = @UPDCUSTOMER_PHONE, CUSTOMER_CREDITLIMIT = @UPDCUSTOMER_CREDITLIMIT, CUSTOMER_BALANCE = @UPDCUSTOMER_BALANCE, CUSTOMER_DATELSTPMT = @UPDCUSTOMER_DATELSTPMT, CUSTOMER_DATELSTPUR = @UPDCUSTOEMR_DATELSTPUR, RECORD_STATUS = @UPDRECORD_STATUS WHERE (CUSTOMER_CODE = @parmCustomerCode)" DeleteCommand="DELETE FROM Store.Customer WHERE (CUSTOMER_CODE = @parmCustomerCode)">
                <DeleteParameters>
                    <asp:Parameter Name="parmCustomerCode" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="INS_CUSTOEMR_FNAME" />
                    <asp:Parameter Name="INS_CUSTOMER__INITIAL" />
                    <asp:Parameter Name="INSCUSTOMER_AREACODE" />
                    <asp:Parameter Name="INSCUSTOMER_PHONE" />
                    <asp:Parameter Name="INSCUSTOMER_CREDITLIMIT" />
                    <asp:Parameter Name="INSCUSTOMER_BALANCE" />
                    <asp:Parameter Name="INSCUSTOMER_DATESTPMT" />
                    <asp:Parameter Name="INSCUSTOMER_DATELSTPUR" />
                    <asp:Parameter Name="INSRECORDSTATUS" />
                    <asp:Parameter Name="INSCUSTOMERCODE" />
                </InsertParameters>
                <SelectParameters>
                    <asp:SessionParameter Name="parmCustomerCode" SessionField="ssCustomerCode" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="UPDCUSTOMER_LNAME" />
                    <asp:Parameter Name="UPDCUSTOMER_FNAME" />
                    <asp:Parameter Name="UPDCUSTOMER_INITIAL" />
                    <asp:Parameter Name="UPDCUSTOMER_AREACODE" />
                    <asp:Parameter Name="UPDCUSTOMER_PHONE" />
                    <asp:Parameter Name="UPDCUSTOMER_CREDITLIMIT" />
                    <asp:Parameter Name="UPDCUSTOMER_BALANCE" />
                    <asp:Parameter Name="UPDCUSTOMER_DATELSTPMT" />
                    <asp:Parameter Name="UPDCUSTOEMR_DATELSTPUR" />
                    <asp:Parameter Name="UPDRECORD_STATUS" />
                    <asp:Parameter Name="parmCustomerCode" />
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