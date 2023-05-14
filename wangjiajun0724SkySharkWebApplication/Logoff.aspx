<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Logoff.aspx.cs" Inherits="wangjiajun0724SkySharkWebApplication.Logoff" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    HOME
    <style type="text/css">
        #TextArea1 {
            height: 104px;
            width: 1127px;
        }
    </style>
    <style type="text/css">
        #TextArea1 {
            height: 144px;
            width: 533px;
            margin-bottom: 64px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <div>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/default.aspx">Click here to logon</asp:HyperLink>
      <textarea id="TextArea1">
        Thank you for using SkyShark Airline.
        Looking forward for serving you again.
    </textarea>
    </div>
    </form>
</asp:Content>
