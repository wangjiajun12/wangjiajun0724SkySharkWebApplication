<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="wangjiajun0724SkySharkWebApplication.ChangePassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 27px;
        }
        .auto-style2 {
            height: 27px;
            width: 211px;
        }
        .auto-style3 {
            width: 211px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form2" runat="server">
        <fomr id="form1" runat="server">
        <div>
            <table >
                <tr>
                    <td style="margin-left: 40px" class="auto-style2">
                        <asp:Label ID="txtUser" runat="server" Text="Changing Password for:"></asp:Label>
                    </td>
                    <td class="auto-style1"></td>
                    <td class="auto-style1"></td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label1" runat="server" Text="Password"></asp:Label>  &nbsp;</td>
                    <td>
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="Please specify a valid password"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label runat="server" Text="Confirm Password"></asp:Label>
                        </td>
                    <td>
                        <asp:TextBox ID="txtConfPassword" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtConfPassword" ErrorMessage="Please specify a valid Confirm password."></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="The passwords specified by you do not much.Please try again." ControlToCompare="txtPassword" ControlToValidate="txtConfPassword"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td>
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" /></td>
                    <td></td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td></td>
                    <td></td>
                </tr>
            </table>
        </div>
    </fomr>
    </form>
</asp:Content>
