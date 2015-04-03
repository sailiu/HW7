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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM [hw7database_sailiu] WHERE [VIN] = @VIN" InsertCommand="INSERT INTO [hw7database_sailiu] ([VIN], [make], [model], [price], [year], [mileage], [body_style], [exterior_color], [interior_color]) VALUES (@VIN, @make, @model, @price, @year, @mileage, @body_style, @exterior_color, @interior_color)" SelectCommand="SELECT * FROM [hw7database_sailiu]" UpdateCommand="UPDATE [hw7database_sailiu] SET [make] = @make, [model] = @model, [price] = @price, [year] = @year, [mileage] = @mileage, [body_style] = @body_style, [exterior_color] = @exterior_color, [interior_color] = @interior_color WHERE [VIN] = @VIN">
            <DeleteParameters>
                <asp:Parameter Name="VIN" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="VIN" Type="String" />
                <asp:Parameter Name="make" Type="String" />
                <asp:Parameter Name="model" Type="String" />
                <asp:Parameter Name="price" Type="Decimal" />
                <asp:Parameter Name="year" Type="Decimal" />
                <asp:Parameter Name="mileage" Type="Decimal" />
                <asp:Parameter Name="body_style" Type="String" />
                <asp:Parameter Name="exterior_color" Type="String" />
                <asp:Parameter Name="interior_color" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="make" Type="String" />
                <asp:Parameter Name="model" Type="String" />
                <asp:Parameter Name="price" Type="Decimal" />
                <asp:Parameter Name="year" Type="Decimal" />
                <asp:Parameter Name="mileage" Type="Decimal" />
                <asp:Parameter Name="body_style" Type="String" />
                <asp:Parameter Name="exterior_color" Type="String" />
                <asp:Parameter Name="interior_color" Type="String" />
                <asp:Parameter Name="VIN" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="VIN" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
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
