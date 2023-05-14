<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddFI.aspx.cs" Inherits="wangjiajun0724SkySharkWebApplication.BM.AddFI" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    BM
    <style type="text/css">
        .auto-style1 {
            height: 27px;
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
            <asp:MenuItem Text="Add Flight" Value="Add Flight"></asp:MenuItem>
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
                       <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td>
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
                   <td colspan ="3">
                       <asp:Label ID="lblMessage" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                   </td>
               </tr>
                              <tr>
                   <td>
                       <asp:Label ID="Label2" runat="server" Text="Flight Number"></asp:Label></td>
                   <td>
                       <asp:TextBox ID="txtFlightNumber" runat="server"></asp:TextBox></td>
                   <td>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFlightNumber" ErrorMessage="Flight Number Required"></asp:RequiredFieldValidator>
                                  </td>
               </tr>
                              <tr>
                   <td>
                       <asp:Label ID="Label3" runat="server" Text="Departure TIme"></asp:Label></td>
                   <td>
                       <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>  <asp:TextBox ID="txtDepartureTime" runat="server"></asp:TextBox>(HH:MM)</td>
                   <td>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtDepartureTime" ErrorMessage="Departure Time Required"></asp:RequiredFieldValidator>
                                  </td>
               </tr>
                              <tr>
                   <td class="auto-style1">
                       <asp:Label ID="Label4" runat="server" Text="Place"></asp:Label></td>
                   <td class="auto-style1">
                       <asp:TextBox ID="txtPlace" runat="server"></asp:TextBox></td>
                   <td class="auto-style1">
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPlace" ErrorMessage="Place Required"></asp:RequiredFieldValidator>
                                  </td>
               </tr>
                              <tr>
                   <td>
                       <asp:Label ID="Label5" runat="server" Text="Arrival Time"></asp:Label></td>
                   <td>
                       <asp:Calendar ID="Calendar2" runat="server"></asp:Calendar> <asp:TextBox ID="txtArrivalTime" runat="server"></asp:TextBox>(HH:MM)</td>
                   <td>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtArrivalTime" ErrorMessage="Arrival Time Required"></asp:RequiredFieldValidator>
                                  </td>
               </tr>
                              <tr>
                   <td>
                       <asp:Label ID="Label6" runat="server" Text="Destination"></asp:Label></td>
                   <td>
                       <asp:TextBox ID="txtDestination" runat="server"></asp:TextBox></td>
                   <td>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtDestination" ErrorMessage="Destination Required"></asp:RequiredFieldValidator>
                                  </td>
               </tr>
                       <tr>
                   <td>
                       <asp:Label ID="Label7" runat="server" Text="Aircraft Type"></asp:Label></td>
                   <td>
                       <asp:TextBox ID="txtAircraftType" runat="server"></asp:TextBox></td>
                   <td>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtAircraftType" ErrorMessage="Aircraft Type Required"></asp:RequiredFieldValidator>
                           </td>
                                   <tr>
                                       
                   <td>
                       <asp:Label ID="Label8" runat="server" Text="Number of Seats (Exceutive)"></asp:Label></td>
                   <td>
                       <asp:TextBox ID="txtNoOfExecSeats" runat="server"></asp:TextBox></td>
                   <td>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtNoOfExecSeats" ErrorMessage="No of Executive Seats Required"></asp:RequiredFieldValidator>
                                       </td>
                                               <tr>
                   <td>
                       <asp:Label ID="Label9" runat="server" Text="Executive Class fare"></asp:Label></td>
                   <td>
                       <asp:TextBox ID="txtExecutiveClassfare" runat="server"></asp:TextBox></td>
                   <td>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtExecutiveClassfare" ErrorMessage="Executive Class fare Required"></asp:RequiredFieldValidator>
                                                   </td>
                                                           <tr>
                   <td class="auto-style1">
                       <asp:Label ID="Label10" runat="server" Text="Number of Seats(Bussiness)"></asp:Label></td>
                   <td class="auto-style1">
                       <asp:TextBox ID="txtNoOfBusiSeats" runat="server"></asp:TextBox></td>
                   <td class="auto-style1">
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtNoOfBusiSeats" ErrorMessage="No of Business Seats Required"></asp:RequiredFieldValidator>
                                                               </td>
                                                                       <tr>
                   <td class="auto-style1">
                       <asp:Label ID="Label11" runat="server" Text="Business Class fare"></asp:Label></td>
                   <td class="auto-style1">
                       <asp:TextBox ID="txtBusinessClassfare" runat="server"></asp:TextBox></td>
                   <td class="auto-style1">
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtBusinessClassfare" ErrorMessage="Business Class fare Required"></asp:RequiredFieldValidator>
                                                                           </td>
                              <tr>
                   <td></td>
                   <td>
                       <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                       <asp:Button ID="Button2" runat="server" Text="Cancle" />
                                  </td>
                   <td></td>
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ARPDatabaseConnectionString %>" ProviderName="<%$ ConnectionStrings:ARPDatabaseConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [dtCancellations]"></asp:SqlDataSource>
       </form>
</asp:Content>
