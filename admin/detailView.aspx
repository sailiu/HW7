<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="detailView.aspx.vb" Inherits="admin_detailView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

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
         <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="ID" DataSourceID="SqlDataSource1">
             <EditItemTemplate>
                 ID:
                 <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
                 <br />
                 member_name:
                 <asp:TextBox ID="member_nameTextBox" runat="server" Text='<%# Bind("member_name") %>' />
                 <br />
                 car_make:
                 <asp:TextBox ID="car_makeTextBox" runat="server" Text='<%# Bind("car_make") %>' />
                 <br />
                 car_model:
                 <asp:TextBox ID="car_modelTextBox" runat="server" Text='<%# Bind("car_model") %>' />
                 <br />
                 member_phone:
                 <asp:TextBox ID="member_phoneTextBox" runat="server" Text='<%# Bind("member_phone") %>' />
                 <br />
                 member_email:
                 <asp:TextBox ID="member_emailTextBox" runat="server" Text='<%# Bind("member_email") %>' />
                 <br />
                 member_interests:
                 <asp:TextBox ID="member_interestsTextBox" runat="server" Text='<%# Bind("member_interests") %>' />
                 <br />
                 member_location:
                 <asp:TextBox ID="member_locationTextBox" runat="server" Text='<%# Bind("member_location") %>' />
                 <br />
                 <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                 &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
             </EditItemTemplate>
             <InsertItemTemplate>
                 member_name:
                 <asp:TextBox ID="member_nameTextBox" runat="server" Text='<%# Bind("member_name") %>' />
                 <br />
                 car_make:
                 <asp:TextBox ID="car_makeTextBox" runat="server" Text='<%# Bind("car_make") %>' />
                 <br />
                 car_model:
                 <asp:TextBox ID="car_modelTextBox" runat="server" Text='<%# Bind("car_model") %>' />
                 <br />
                 member_phone:
                 <asp:TextBox ID="member_phoneTextBox" runat="server" Text='<%# Bind("member_phone") %>' />
                 <br />
                 member_email:
                 <asp:TextBox ID="member_emailTextBox" runat="server" Text='<%# Bind("member_email") %>' />
                 <br />
                 member_interests:
                 <asp:TextBox ID="member_interestsTextBox" runat="server" Text='<%# Bind("member_interests") %>' />
                 <br />
                 member_location:
                 <asp:TextBox ID="member_locationTextBox" runat="server" Text='<%# Bind("member_location") %>' />
                 <br />
                 <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                 &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
             </InsertItemTemplate>
             <ItemTemplate>
                 ID:
                 <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                 <br />
                 member_name:
                 <asp:Label ID="member_nameLabel" runat="server" Text='<%# Bind("member_name") %>' />
                 <br />
                 car_make:
                 <asp:Label ID="car_makeLabel" runat="server" Text='<%# Bind("car_make") %>' />
                 <br />
                 car_model:
                 <asp:Label ID="car_modelLabel" runat="server" Text='<%# Bind("car_model") %>' />
                 <br />
                 member_phone:
                 <asp:Label ID="member_phoneLabel" runat="server" Text='<%# Bind("member_phone") %>' />
                 <br />
                 member_email:
                 <asp:Label ID="member_emailLabel" runat="server" Text='<%# Bind("member_email") %>' />
                 <br />
                 member_interests:
                 <asp:Label ID="member_interestsLabel" runat="server" Text='<%# Bind("member_interests") %>' />
                 <br />
                 member_location:
                 <asp:Label ID="member_locationLabel" runat="server" Text='<%# Bind("member_location") %>' />
                 <br />
                 <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                 &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                 &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
             </ItemTemplate>
     </asp:FormView>

</asp:Content>

