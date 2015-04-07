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
               
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:FormView ID="FormView1" runat="server" Cssclass="cssadmin" DataKeyNames="ID" DataSourceID="SqlDataSource1" DefaultMode="Insert">
            <EditItemTemplate>
              
            </EditItemTemplate>
            <InsertItemTemplate>
               
                <tr>
                    <td style="border-style:solid; border-color:white; border-width:thin;">
                        Member Name:
                    </td>
                    <td style="border-style:solid; border-color:white; border-width:thin;">
                        <asp:TextBox ID="tb_memberName" runat="server" Text='<%# Bind("member_name") %>' />
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ErrorMessage="Please enter memeber name" style="color:red; font-style:italic;"
                            ControlToValidate="tb_memberName"></asp:RequiredFieldValidator>
                    </td>
                       
                </tr>
                <tr>
                    <td style="border-style:solid; border-color:white; border-width:thin;">
                        Car Make:
                    </td>
                    <td style="border-style:solid; border-color:white; border-width:thin;">
                        <asp:TextBox ID="car_makeTextBox" runat="server" Text='<%# Bind("car_make") %>' />
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter car make" 
                            ControlToValidate="car_makeTextBox" style="color:red; font-style:italic;"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="border-style:solid; border-color:white; border-width:thin;">
                        Car Model:
                    </td>
                    <td style="border-style:solid; border-color:white; border-width:thin;">
                        <asp:TextBox ID="car_modelTextBox" runat="server" Text='<%# Bind("car_model") %>' />
                    </td>
                    <td >
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please enter car model" 
                            ControlToValidate="car_modelTextBox" style="color:red; font-style:italic;"></asp:RequiredFieldValidator>
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
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    </td>
                    <td style="border-style:solid; border-color:white; border-width:thin;">
                        <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </td>
                </tr>
                 
            </InsertItemTemplate>
            <ItemTemplate>
               
            </ItemTemplate>
    </asp:FormView>


</asp:Content>

