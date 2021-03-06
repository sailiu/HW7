﻿<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="detailView.aspx.vb" Inherits="admin_detailView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [hw7Database_sailiu] WHERE [ID] = @ID" InsertCommand="INSERT INTO [hw7Database_sailiu] ([member_name], [car_make], [car_model], [member_phone], [member_email], [member_interests], [member_location]) VALUES (@member_name, @car_make, @car_model, @member_phone, @member_email, @member_interests, @member_location)" SelectCommand="SELECT * FROM [hw7Database_sailiu] WHERE ([ID] = @ID)" UpdateCommand="UPDATE [hw7Database_sailiu] SET [member_name] = @member_name, [car_make] = @car_make, [car_model] = @car_model, [member_phone] = @member_phone, [member_email] = @member_email, [member_interests] = @member_interests, [member_location] = @member_location WHERE [ID] = @ID">
             <DeleteParameters>
                 <asp:Parameter Name="ID" Type="Int32" />
             </DeleteParameters>
             <InsertParameters>
               
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
         <asp:FormView ID="FormView1" runat="server" AllowPaging="True" Cssclass="cssadmin" DataKeyNames="ID" DataSourceID="SqlDataSource1" BorderStyle="None">
             <EditItemTemplate>
                 <tr>
                     <td style="border-style:solid; border-color:white; border-width:thin;">
                         Member Name:
                     </td>
                     <td style="border-style:solid; border-color:white; border-width:thin;">
                         <asp:TextBox ID="tb_memberName" runat="server" Text='<%# Bind("member_name") %>' />
                     </td>
                     <td>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
                             ControlToValidate="tb_memberName" style="color:red; font-style:italic; " 
                             runat="server" ErrorMessage="Please enter member name"></asp:RequiredFieldValidator>
                     </td>
                 </tr>
                 <tr>
                     <td style="border-style:solid; border-color:white; border-width:thin;">
                         Car Make:
                     </td>
                     <td style="border-style:solid; border-color:white; border-width:thin;">
                         <asp:TextBox ID="tb_carmake" runat="server" Text='<%# Bind("car_make") %>' />
                     </td>
                     <td>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
                            ControlToValidate="tb_carmake" style="color:red; font-style:italic;"
                             runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                     </td>
                 </tr>
                <tr>
                     <td style="border-style:solid; border-color:white; border-width:thin;">
                         Car Model:
                     </td>
                     <td style="border-style:solid; border-color:white; border-width:thin;">
                         <asp:TextBox ID="car_modelTextBox" runat="server" Text='<%# Bind("car_model") %>' />
                     </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3"
                            ControlToValidate="car_modelTextBox" style="color:red; font-style:italic;"
                             runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                    </td>
                 </tr>
                 <tr>
                     <td style="border-style:solid; border-color:white; border-width:thin;">
                         Member Phone:
                     </td>
                     <td style="border-style:solid; border-color:white; border-width:thin;">
                         <asp:TextBox ID="member_phoneTextBox" runat="server" Text='<%# Bind("member_phone") %>' />
                     </td>
                 </tr>
                 <tr>
                     <td style="border-style:solid; border-color:white; border-width:thin;">
                         Member Email:
                     </td>
                     <td style="border-style:solid; border-color:white; border-width:thin;">
                         <asp:TextBox ID="member_emailTextBox" runat="server" Text='<%# Bind("member_email") %>' />
                     </td>
                 </tr>
                 <tr>
                     <td style="border-style:solid; border-color:white; border-width:thin;">
                         Member Interest:
                     </td>
                     <td style="border-style:solid; border-color:white; border-width:thin;">
                         <asp:TextBox ID="member_interestsTextBox" runat="server" Text='<%# Bind("member_interests") %>' />
                     </td>
                 </tr>
                 <tr>
                     <td style="border-style:solid; border-color:white; border-width:thin;">
                         Member Location:
                     </td>
                     <td style="border-style:solid; border-color:white; border-width:thin;">
                          <asp:TextBox ID="member_locationTextBox" runat="server" Text='<%# Bind("member_location") %>' />
                     </td>
                 </tr>
                 <tr>
                     <td style="border-style:solid; border-color:white; border-width:thin;">
                         <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                         &nbsp;&nbsp;&nbsp;&nbsp; <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                     </td>
                     <td style="border-style:solid; border-color:white; border-width:thin;">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Admin/currentMembers.aspx">Back</asp:HyperLink>
                     </td>
                 </tr>
            
                 
                
             </EditItemTemplate>
             <InsertItemTemplate>
                 
             </InsertItemTemplate>
             <ItemTemplate>
                
                 <tr>
                     <td style="border-style:solid; border-color:white; border-width:thin;">
                         Member Name:
                     </td>
                     <td style="border-style:solid; border-color:white; border-width:thin;">
                         <asp:Label ID="member_nameLabel" runat="server" Text='<%# Bind("member_name") %>' />
                     </td>
                 </tr>
                 <tr>
                     <td style="border-style:solid; border-color:white; border-width:thin;">
                         Car Make:
                     </td>
                     <td style="border-style:solid; border-color:white; border-width:thin;">
                          <asp:Label ID="car_makeLabel" runat="server" Text='<%# Bind("car_make") %>' />
                     </td>
                 </tr>
                 <tr>
                     <td  style="border-style:solid; border-color:white; border-width:thin;">
                         Car Model:
                     </td>
                     <td style="border-style:solid; border-color:white; border-width:thin;">
                         <asp:Label ID="car_modelLabel" runat="server" Text='<%# Bind("car_model") %>' />
                     </td>
                 </tr>
                 <tr>
                     <td style="border-style:solid; border-color:white; border-width:thin;">
                         Member Phone:
                     </td>
                     <td style="border-style:solid; border-color:white; border-width:thin;">
                         <asp:Label ID="member_phoneLabel" runat="server" Text='<%# Bind("member_phone") %>' />
                     </td>
                 </tr>
                 <tr>
                     <td style="border-style:solid; border-color:white; border-width:thin;">
                         Member Email:
                     </td>
                     <td style="border-style:solid; border-color:white; border-width:thin;">
                          <asp:Label ID="member_emailLabel" runat="server" Text='<%# Bind("member_email") %>' />
                     </td>
                 </tr>
                 <tr>
                     <td style="border-style:solid; border-color:white; border-width:thin;">
                         Member Interest:
                     </td>
                     <td style="border-style:solid; border-color:white; border-width:thin;">
                          <asp:Label ID="member_interestsLabel" runat="server" Text='<%# Bind("member_interests") %>' />
                     </td>
                 </tr>
                 <tr>
                     <td style="border-style:solid; border-color:white; border-width:thin;">
                         Member Location
                     </td>
                     <td style="border-style:solid; border-color:white; border-width:thin;">
                         <asp:Label ID="member_locationLabel" runat="server" Text='<%# Bind("member_location") %>' />
                     </td>
                 </tr>
                 <tr>
                     <td style="border-style:solid; border-color:white; border-width:thin;">
                          <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                         &nbsp;&nbsp;&nbsp;&nbsp;
                         <asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                     </td>
                     <td style="border-style:solid; border-color:white; border-width:thin;">
                         
                         <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Admin/currentMembers.aspx">Back</asp:HyperLink>
                     </td>
                 </tr>
             </ItemTemplate>
     </asp:FormView>

</asp:Content>

