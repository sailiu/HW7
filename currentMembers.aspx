<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="currentMembers.aspx.vb" Inherits="currentMembers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [hw7Database_sailiu] WHERE [ID] = @ID" InsertCommand="INSERT INTO [hw7Database_sailiu] ([member_name], [car_make], [car_model], [member_phone], [member_email], [member_interests], [member_location]) VALUES (@member_name, @car_make, @car_model, @member_phone, @member_email, @member_interests, @member_location)" SelectCommand="SELECT * FROM [hw7Database_sailiu]" UpdateCommand="UPDATE [hw7Database_sailiu] SET [member_name] = @member_name, [car_make] = @car_make, [car_model] = @car_model, [member_phone] = @member_phone, [member_email] = @member_email, [member_interests] = @member_interests, [member_location] = @member_location WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="member_name" Type="String" />
            <asp:Parameter Name="car_make" Type="String" />
            <asp:Parameter Name="car_model" Type="String" />
            <asp:Parameter Name="member_phone" Type="String" />
            <asp:Parameter Name="member_email" Type="String" />
            <asp:Parameter Name="member_interests" Type="String" />
            <asp:Parameter Name="member_location" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="member_name" Type="String" />
            <asp:Parameter Name="car_make" Type="String" />
            <asp:Parameter Name="car_model" Type="String" />
            <asp:Parameter Name="member_phone" Type="String" />
            <asp:Parameter Name="member_email" Type="String" />
            <asp:Parameter Name="member_interests" Type="String" />
            <asp:Parameter Name="member_location" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" AllowPaging="True" Width="453px">
            <Columns>
                <asp:BoundField DataField="member_name" HeaderText="Member Name" SortExpression="member_name" />
                <asp:BoundField DataField="car_make" HeaderText="Car Make" SortExpression="car_make" />
                <asp:BoundField DataField="car_model" HeaderText="Car Model" SortExpression="car_model" />
                <asp:HyperLinkField DataNavigateUrlFields="ID" DataNavigateUrlFormatString="detailView.aspx?id={0}" Text="Member Deatil" HeaderText="View Member Deatils" />
            </Columns>
        </asp:GridView>

</asp:Content>

