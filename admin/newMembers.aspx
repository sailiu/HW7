<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="newMembers.aspx.vb" Inherits="admin_newMembers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [hw7Database_sailiu] WHERE [ID] = @ID" InsertCommand="INSERT INTO [hw7Database_sailiu] ([member_name], [car_make], [car_model], [member_phone], [member_email], [member_interests], [member_location]) VALUES (@member_name, @car_make, @car_model, @member_phone, @member_email, @member_interests, @member_location)" SelectCommand="SELECT * FROM [hw7Database_sailiu]" UpdateCommand="UPDATE [hw7Database_sailiu] SET [member_name] = @member_name, [car_make] = @car_make, [car_model] = @car_model, [member_phone] = @member_phone, [member_email] = @member_email, [member_interests] = @member_interests, [member_location] = @member_location WHERE [ID] = @ID">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="member_name" Type="String"/>
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
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" Width="394px">
            <Fields>
                <asp:BoundField DataField="member_name" HeaderText="Member Name:" SortExpression="member_name" />
                <asp:BoundField DataField="car_make" HeaderText="Car Make:" SortExpression="car_make" />
                <asp:BoundField DataField="car_model" HeaderText="Car Model:" SortExpression="car_model" />
                <asp:BoundField DataField="member_phone" HeaderText="Member Phone:" SortExpression="member_phone" />
                <asp:BoundField DataField="member_email" HeaderText="Member Email:" SortExpression="member_email" />
                <asp:BoundField DataField="member_interests" HeaderText="Member Interests:" SortExpression="member_interests" />
                <asp:BoundField DataField="member_location" HeaderText="Member Location:" SortExpression="member_location" />
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>


</asp:Content>

