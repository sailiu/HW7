﻿<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="currentMembers.aspx.vb" Inherits="currentMembers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    
  
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [hw7Database_sailiu] WHERE [ID] = @ID" InsertCommand="INSERT INTO [hw7Database_sailiu] ([member_name], [car_make], [car_model], [member_phone], [member_email], [member_interests], [member_location]) VALUES (@member_name, @car_make, @car_model, @member_phone, @member_email, @member_interests, @member_location)" SelectCommand="SELECT * FROM [hw7Database_sailiu]" UpdateCommand="UPDATE [hw7Database_sailiu] SET [member_name] = @member_name, [car_make] = @car_make, [car_model] = @car_model, [member_phone] = @member_phone, [member_email] = @member_email, [member_interests] = @member_interests, [member_location] = @member_location WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
           
        </InsertParameters>
        <UpdateParameters>
            
        </UpdateParameters>
        </asp:SqlDataSource>
    <div id="current">
        <asp:GridView ID="currentMember" runat="server" AutoGenerateColumns="False" Cssclass="cssdetailview" DataKeyNames="ID" DataSourceID="SqlDataSource1" AllowPaging="True" Width="453px" AllowSorting="True">
            <Columns>
                <asp:BoundField DataField="member_name" HeaderText="Member Name" SortExpression="member_name" />
                <asp:BoundField DataField="car_make" HeaderText="Car Make" SortExpression="car_make" />
                <asp:BoundField DataField="car_model" HeaderText="Car Model" SortExpression="car_model" />
                <asp:HyperLinkField DataNavigateUrlFields="ID" DataNavigateUrlFormatString="detailView.aspx?id={0}" Text="Member Deatil" HeaderText="View Member Deatils" />
            </Columns>
        </asp:GridView>
    </div>
    

</asp:Content>

