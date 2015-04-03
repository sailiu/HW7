<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT * FROM [hw7database_sailiu]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="VIN" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="VIN" HeaderText="VIN" ReadOnly="True" SortExpression="VIN" />
                <asp:BoundField DataField="make" HeaderText="make" SortExpression="make" />
                <asp:BoundField DataField="model" HeaderText="model" SortExpression="model" />
                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                <asp:BoundField DataField="year" HeaderText="year" SortExpression="year" />
                <asp:BoundField DataField="mileage" HeaderText="mileage" SortExpression="mileage" />
                <asp:BoundField DataField="body_style" HeaderText="body_style" SortExpression="body_style" />
                <asp:BoundField DataField="exterior_color" HeaderText="exterior_color" SortExpression="exterior_color" />
                <asp:BoundField DataField="interior_color" HeaderText="interior_color" SortExpression="interior_color" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
