<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Customers.aspx.cs" Inherits="MyStoreWebApp.Customers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MENU" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MESSAGE" runat="server">

    <div class="row">
        <div class="col-lg-8">
            <h1>Customers</h1>
        </div>
        <div class="col-lg-4">
            <asp:Image ID="Image1" runat="server" Height="60px" ImageUrl="~/Resources/my_logo.png" Width="59px" />
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="BODY" runat="server">
    <script>$("#liCustomers").addClass("active");</script>
    <div class="row">
        <div class="col-lg-12">
            <h5>Select Customer</h5>
        </div>
        <asp:DropDownList ID="ddlCustomers" runat="server" AppendDataBoundItems="True" AutoPostBack="True" DataSourceID="dsStoreCustomerDDL" DataTextField="CustomerName" DataValueField="CUSTOMER_CODE">
            <asp:ListItem Value="%">Select All</asp:ListItem>
        </asp:DropDownList>
        <asp:SqlDataSource ID="dsStoreCustomerDDL" runat="server" ConnectionString="<%$ ConnectionStrings:connectionstringStoreDB %>" SelectCommand="SELECT [CUSTOMER_CODE],
      rtrim(concat(CUSTOMER_FNAME,' '
	  ,[CUSTOMER_LNAME], ' ',iif(CUSTOMER_INITIAL!= ' ' ,CUSTOMER_INITIAL,'')
      )) as CustomerName
  FROM [SICI4266].[Store].[Customer]"></asp:SqlDataSource>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <asp:GridView ID="gvCustomers" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered" DataKeyNames="CUSTOMER_CODE" DataSourceID="dbStoreCustomers" OnPreRender="gvCustomers_PreRender" OnSelectedIndexChanged="gvCustomers_SelectedIndexChanged">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
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
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="dbStoreCustomers" runat="server" ConnectionString="<%$ ConnectionStrings:connectionstringStoreDB %>" SelectCommand="SELECT CUSTOMER_CODE, CUSTOMER_LNAME, CUSTOMER_FNAME, CUSTOMER_INITIAL, CUSTOMER_AREACODE, CUSTOMER_PHONE, CUSTOMER_CREDITLIMIT, CUSTOMER_BALANCE, CUSTOMER_DATELSTPMT, CUSTOMER_DATELSTPUR, RECORD_STATUS FROM Store.Customer
WHERE (CUSTOMER_CODE LIKE '%' + @CUSTOMER_CODE + '%')">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ddlCustomers" Name="CUSTOMER_CODE" PropertyName="SelectedValue" />
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