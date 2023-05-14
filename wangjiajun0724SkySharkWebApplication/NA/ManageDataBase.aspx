<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ManageDataBase.aspx.cs" Inherits="wangjiajun0724SkySharkWebApplication.NA.ManageDataBase" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    NA- MANAGE DATABASE
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <form id="form1" runat="server">
    <asp:Menu ID="Menu1" runat="server" BackColor="#FFFBD6" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#990000" Orientation="Horizontal" StaticSubMenuIndent="10px">
        <DynamicHoverStyle BackColor="#990000" ForeColor="White" />
        <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
        <DynamicMenuStyle BackColor="#FFFBD6" />
        <DynamicSelectedStyle BackColor="#FFCC66" />
        <Items>
            <asp:MenuItem NavigateUrl="~/NA/ManageUsers.aspx" Text="Manage Users" Value="Manage Users"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/NA/ManageDatabase.aspx" Text="Manage Database" Value="Manage Database"></asp:MenuItem>
        </Items>
        <StaticHoverStyle BackColor="#990000" ForeColor="White" />
        <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
        <StaticSelectedStyle BackColor="#FFCC66" />
    </asp:Menu>
       <div class="tabContents">

           <table>
               
                   <tr>
                       <td>
                           <asp:Label ID="Label1" runat="server" Text="Manage User Account"></asp:Label>
                       </td>
                        
                   </tr>
               <tr>
                       
                        <td>
                            <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="Red" NavigateUrl="~/ChangePassword.aspx">Change Password</asp:HyperLink></td>
                        <td></td>
                       <td>
                           <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="Red" NavigateUrl="~/Logoff.aspx">Logoff</asp:HyperLink></td>
                        <td></td>
                        <td></td>
                   </tr>
               <tr> <td colspan="2">
                   <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
                   <td></td><td><td></td> </tr>
                <tr>
                       <td colspan ="3">
                           <asp:Button ID="btnArchive" runat="server" Text="Archive information perraining to flights that have departed" BackColor="Silver" BorderColor="Blue" Font-Names="Bookman Old Style" />
                       </td>
                        
                   </tr>
               <tr> <td><td></td><td><td></td> </tr>
                <tr>
                       <td colspan ="3">
                           <asp:Button ID="btnUpdate" runat="server" Text="Update Customer information for the frequent fliers program" BackColor="Silver" BorderColor="Blue" Font-Names="Bookman Old Style" /></td>
                        
                   </tr>
                <tr>
                       <td></td>
                        <td></td>
                        <td></td>
                   </tr>
               </table>

           
       </div>
       </form>
</asp:Content>