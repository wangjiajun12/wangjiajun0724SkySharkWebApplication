<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="QueryStat.aspx.cs" Inherits="wangjiajun0724SkySharkWebApplication.LOB.QueryStat" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   Business Executive
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<form id="form1" runat="server" >
    <asp:Menu ID="Menu1" runat="server" BackColor="#F7F6F3" DynamicHorizontalOffset="2" EnableTheming="False" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#7C6F57" Orientation="Horizontal" StaticSubMenuIndent="10px">
        <DynamicHoverStyle BackColor="#7C6F57" ForeColor="White" />
        <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
        <DynamicMenuStyle BackColor="#F7F6F3" />
        <DynamicSelectedStyle BackColor="#5D7B9D" />
        <Items>
            <asp:MenuItem NavigateUrl="~/LOB/CreateRes.aspx" Text="Create Reservation" Value="Create Reservation"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/LOB/CancleRes.aspx" Text="Cancle Reservation" Value="Cancle Reservation"></asp:MenuItem>
            <asp:MenuItem Text="Quary Status" Value="Quary Status" Selected="True"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/LOB/ConfirmRes.aspx" Text="Confirm Reservation" Value="Confirm Reservation"></asp:MenuItem>
        </Items>
        <StaticHoverStyle BackColor="#7C6F57" ForeColor="White" />
        <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
        <StaticSelectedStyle BackColor="#5D7B9D" />
    </asp:Menu>
    <div class="tabContents">
        <table>
            <tr>
                <td colspan="2">
                    <asp:Label ID="Label1" runat="server" Text="Make a new Reservation"></asp:Label></td>
                <td></td>
               
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ChangePassword.aspx">Change Password</asp:HyperLink>
                </td>
                <td>
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Logoff.aspx">Logoff</asp:HyperLink>
                </td>
                <td></td>
            </tr>

            </table>
        <asp:Wizard ID="Wizard1" runat="server">
            <WizardSteps>
                <asp:WizardStep ID="WizardStep1" runat="server" Title="Query Flight Status">
                    <!-- 1-->
                    <table>
                        <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Enquiry Flight Status"></asp:Label></td>
                <td></td>
                <td></td>
                      </tr>
                        <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Flight Number"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtFlightNo" runat="server"></asp:TextBox>
                            </td>
                <td></td>
                      </tr>
                        <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Class"></asp:Label></td>
                <td>
                    <asp:ListBox ID="lstClass" runat="server">
                        <asp:ListItem>Executive</asp:ListItem>
                        <asp:ListItem Value="Business"></asp:ListItem>
                    </asp:ListBox></td>
                <td></td>
                      </tr>
                        <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Date"></asp:Label></td>
                <td>
                    <asp:Calendar ID="calDepDate" runat="server"></asp:Calendar>
                </td>
                <td></td>
                      </tr>
                        <tr>
                <td></td>
                <td></td>
                <td>
                    <asp:Button ID="btnFStatSubmit" runat="server" Text="Submit" /></td>
                      </tr>
                        <tr>
                <td></td>
                <td></td>
                <td></td>
                      </tr>
                    </table>
                </asp:WizardStep>
                <asp:WizardStep ID="WizardStep2" runat="server" Title="Query Ticket Status">
                    <!-- 2-->
                    <table>
                        <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="Enquiry Ticket Status"></asp:Label></td>
                <td></td>
                <td></td>
               </tr>
                         <tr>
                <td>
                    <asp:Label ID="Label7" runat="server" Text="Ticket No"></asp:Label></td>
                <td>    <asp:TextBox ID="txtTNo" runat="server"></asp:TextBox></td>
                <td></td>
                      </tr>
                         <tr>
                <td></td>
                <td></td>
                <td>
                    <asp:Button ID="btnTStatSubmit" runat="server" Text="Submit" /></td>
                      </tr>
                         <tr>
                <td></td>
                <td></td>
                <td></td>
                      </tr>
                    </table>
                </asp:WizardStep>
            </WizardSteps>
        </asp:Wizard>
        </div>
    </form>
</asp:Content>