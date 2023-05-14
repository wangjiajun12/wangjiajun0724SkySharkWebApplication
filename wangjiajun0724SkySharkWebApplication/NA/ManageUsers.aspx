<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ManageUsers.aspx.cs" Inherits="wangjiajun0724SkySharkWebApplication.NA.ManageUsers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    NA-> MANAGE USER
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
           <p>Manage User Account</p>
           <table>
               
                   <tr>
                       <td>
                           <asp:Label ID="lblMessage" runat="server"></asp:Label>
                       </td>
                        <td>
                            <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="Red" NavigateUrl="~/ChangePassword.aspx">Change Password</asp:HyperLink></td>
                        <td></td>
                       <td>
                           <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="Red" NavigateUrl="~/Logoff.aspx">Logoff</asp:HyperLink></td>
                        <td></td>
                        <td></td>
                   </tr>
                <tr>
                       <td>
                           <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label></td>
                        <td>
                            <asp:TextBox ID="txtAddUsername" runat="server"></asp:TextBox>
                       </td>
                        <td></td>
                    <td><asp:Label ID="Label2" runat="server" Text="Delete Username"></asp:Label></td>
                        <td><asp:TextBox ID="txtDelUsername" runat="server"></asp:TextBox></td>
                        <td></td>
                   </tr>
                <tr>
                       <td><asp:Label ID="Label3" runat="server" Text="Password"></asp:Label></td>
                        <td><asp:TextBox ID="txtAddPassword" runat="server" TextMode="Password"></asp:TextBox></td>
                        <td></td>
                    <td></td>
                        <td>
                            <asp:Button ID="btnDeleteUsername" runat="server" Text="Delete" />
                       </td>
                        <td></td>
                   </tr>
                <tr>
                       <td><asp:Label ID="Label4" runat="server" Text="Confirm Password"></asp:Label></td>
                        <td>
                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                       </td>
                        <td></td>
                   </tr>
                <tr>
                       <td><asp:Label ID="Label5" runat="server" Text="Role"></asp:Label></td>
                        <td>
                            <asp:ListBox ID="lstAddRole" runat="server">
                                <asp:ListItem>BM</asp:ListItem>
                                <asp:ListItem>NA</asp:ListItem>
                                <asp:ListItem>LOB</asp:ListItem>
                            </asp:ListBox>
                       </td>
                        <td></td>
                   </tr>
                <tr>
                       <td>
                           <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
                       </td>
                        <td>
                            <asp:Button ID="BtnAddSubmit" runat="server" Text="Submit" OnClick="btnAddSubmit_Click1" />
                       </td>
                        <td></td>
                   </tr>
               </table>

           
       </div>
       </form>
</asp:Content>