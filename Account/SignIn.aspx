<%@ Page Title="Sign In" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="OpenGarage.Account.SignIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Sign In</h1>
    <div class="row">
        <div class="span7">
            Content on the left.
        </div>
        <div class="span4">
            <div class="well">
                <label>Email Address</label>
                <input type="text" />
                <label>Password</label>
                <input type="text" />
            </div>
        </div>
    </div>
</asp:Content>
