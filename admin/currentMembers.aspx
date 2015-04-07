<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="currentMembers.aspx.vb" Inherits="admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [hw7Database_sailiu] WHERE [ID] = @ID" InsertCommand="INSERT INTO [hw7Database_sailiu] ([member_name], [car_make], [car_model]) VALUES (@member_name, @car_make, @car_model)" SelectCommand="SELECT [member_name], [car_make], [car_model], [ID] FROM [hw7Database_sailiu]" UpdateCommand="UPDATE [hw7Database_sailiu] SET [member_name] = @member_name, [car_make] = @car_make, [car_model] = @car_model WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="member_name" Type="String" />
            <asp:Parameter Name="car_make" Type="String" />
            <asp:Parameter Name="car_model" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="member_name" Type="String" />
            <asp:Parameter Name="car_make" Type="String" />
            <asp:Parameter Name="car_model" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
</asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Cssclass="cssdetailview" DataKeyNames="ID" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True">
        <Columns>
            <asp:BoundField DataField="member_name" HeaderText="Member Name" SortExpression="member_name" />
            <asp:BoundField DataField="car_make" HeaderText="Car Make" SortExpression="car_make" />
            <asp:BoundField DataField="car_model" HeaderText="Car Model" SortExpression="car_model" />
            <asp:HyperLinkField DataNavigateUrlFields="id" DataNavigateUrlFormatString="~/admin/detailView.aspx?id={0}" HeaderText="Member Details" Text="View" />
        </Columns>
</asp:GridView>
</asp:Content>

