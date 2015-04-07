<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="search.aspx.vb" Inherits="search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [member_name], [car_make], [car_model] FROM [hw7Database_sailiu]"></asp:SqlDataSource>
    <br />
   <%If Not IsPostBack Then%>

    Serach: <asp:TextBox placeholder="search by member name" ID="tb_serach"  runat="server"></asp:TextBox>
   <%Else%>
   Serach: <asp:TextBox placeholder="search by member name" ID="tb_serach1" runat="server"></asp:TextBox><br /><br /><br />
    
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" cssclass="cssdetailview" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="member_name" HeaderText="member_name" SortExpression="member_name" />
            <asp:BoundField DataField="car_make" HeaderText="car_make" SortExpression="car_make" />
            <asp:BoundField DataField="car_model" HeaderText="car_model" SortExpression="car_model" />
        </Columns>
    </asp:GridView>
   <%End If%>

</asp:Content>

