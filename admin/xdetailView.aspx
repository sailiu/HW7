<%@ Page Language="VB" AutoEventWireup="false" CodeFile="xdetailView.aspx.vb" Inherits="HW_materials_detailView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Member Details</title>
</head>
<body>
    <form id="form1" runat="server">

         <h1>AECC Clab</h1>
         <h3>AECC car clab introduce you to other drivers who are pursuing speed and challenge</h3>
         <img src="logo.png" height="150px"/>

        <h4><a href="Default.aspx">Home Page</a>
        <a href="newMembers.aspx">Create New Membership</a>
        <a href="aboutUs.aspx">About Us</a>
        <a href="contactUs.aspx">Contact Us</a></h4>
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [hw7Database_sailiu] WHERE [ID] = @ID" InsertCommand="INSERT INTO [hw7Database_sailiu] ([member_name], [car_make], [car_model], [member_phone], [member_email], [member_interests], [member_location]) VALUES (@member_name, @car_make, @car_model, @member_phone, @member_email, @member_interests, @member_location)" SelectCommand="SELECT * FROM [hw7Database_sailiu] WHERE ([ID] = @ID)" UpdateCommand="UPDATE [hw7Database_sailiu] SET [member_name] = @member_name, [car_make] = @car_make, [car_model] = @car_model, [member_phone] = @member_phone, [member_email] = @member_email, [member_interests] = @member_interests, [member_location] = @member_location WHERE [ID] = @ID">
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
             <SelectParameters>
                 <asp:QueryStringParameter Name="ID" QueryStringField="id" Type="Int32" />
             </SelectParameters>
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
         <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" Height="50px" Width="301px" AllowPaging="True">
             <Fields>
                 <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                 <asp:BoundField DataField="member_name" HeaderText="member_name" SortExpression="member_name" />
                 <asp:BoundField DataField="car_make" HeaderText="car_make" SortExpression="car_make" />
                 <asp:BoundField DataField="car_model" HeaderText="car_model" SortExpression="car_model" />
                 <asp:BoundField DataField="member_phone" HeaderText="member_phone" SortExpression="member_phone" />
                 <asp:BoundField DataField="member_email" HeaderText="member_email" SortExpression="member_email" />
                 <asp:BoundField DataField="member_interests" HeaderText="member_interests" SortExpression="member_interests" />
                 <asp:BoundField DataField="member_location" HeaderText="member_location" SortExpression="member_location" />
                 <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
             </Fields>
         </asp:DetailsView>
&nbsp;<div>
    
    </div>
    </form>
</body>
</html>
