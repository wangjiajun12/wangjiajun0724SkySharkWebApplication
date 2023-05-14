<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="RequestID.aspx.cs" Inherits="wangjiajun0724SkySharkWebApplication.BM.RequestID" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 31px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <asp:Menu ID="Menu1" runat="server" BackColor="#FFFBD6" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#990000" Orientation="Horizontal" StaticSubMenuIndent="10px">
        <DynamicHoverStyle BackColor="#990000" ForeColor="White" />
        <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
        <DynamicMenuStyle BackColor="#FFFBD6" />
        <DynamicSelectedStyle BackColor="#FFCC66" />
        <Items>
            <asp:MenuItem Text="Add Flight" NavigateUrl="~/BM/AddFI.aspx" Value="Add Flight"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/BM/RequestID.aspx" Text="Request ID" Value="Request ID"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/BM/Reports.aspx" Text="Reports" Value="Reports"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/BM/FreqFI.aspx" Text="Frequent Fliers" Value="Frequent Fliers"></asp:MenuItem>
        </Items>
        <StaticHoverStyle BackColor="#990000" ForeColor="White" />
        <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
        <StaticSelectedStyle BackColor="#FFCC66" />
    </asp:Menu>
       <div class="tabContents">
           <table>
               <tr>
                   <td></td>
                   <td>
                       <asp:Label ID="Label1" runat="server" Text="Request New UserID"></asp:Label></td>
                   <td></td>
               </tr>
                <tr>
                   <td></td>
                   <td>
                       <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Change Password.aspx">Change Password</asp:HyperLink>
</td>
                   <td>
                       <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Logoff.aspx">Logoff</asp:HyperLink></td>
               </tr>
                              <tr>
                   <td>
                       <asp:Label ID="Label2" runat="server" Text="Flight Number" NavigateUrl="~/ChangePassword.aspx"></asp:Label></td>
                   <td>
                       <asp:TextBox ID="txtUserID" runat="server"></asp:TextBox></td>
                   <td>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUserID" ErrorMessage="Please spicify a valid user name"></asp:RequiredFieldValidator>
                                  </td>
               </tr>
                <tr>
                   <td>
                       <asp:Label ID="Label3" runat="server" Text="Role"></asp:Label>
                    </td>
                   <td>
                       <asp:ListBox ID="lstRole" runat="server" >
                           <asp:ListItem>Admin</asp:ListItem>
                           <asp:ListItem>BM</asp:ListItem>
                           <asp:ListItem>NA</asp:ListItem>
                       </asp:ListBox>
                    </td>
                   <td></td>
               </tr>
               <tr>
                   <td class="auto-style1"></td>
                   <td class="auto-style1">
                       <asp:Button ID="btnSubmit" runat="server" BackColor="Silver" BorderColor="Blue" Text="Submit Mail" />
                   </td>
                   <td class="auto-style1"></td>
               </tr>
               <tr>
                   <td></td>
                   <td></td>
                   <td></td>
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