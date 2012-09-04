<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="OpenGarage.Account.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Register</h1>
    <br />
    <div class="row">
        <div class="span7">
            <div class="form">
                <div class="control-group">
                    <label class="control-label" for="inputName">Name</label>
                    <div class="controls">
                        <input type="text" id="inputName" placeholder="Name">
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label" for="inputEmailAddress">Email Address</label>
                    <div class="controls">
                        <input type="text" id="inputEmailAddress" placeholder="Email Address">
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label" for="inputPassword">Password</label>
                    <div class="controls">
                        <input type="password" id="inputPassword" placeholder="Password">
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label" for="inputConfirmPassword">Confirm Password</label>
                    <div class="controls">
                        <input type="password" id="inputConfirmPassword" placeholder="Confirm Password">
                    </div>
                </div>
                <div class="control-group">
                    <div class="controls">
                        <label class="checkbox">
                            <input type="checkbox">
                            I agree to the Terms of Service and License Agreement.
                        </label>
                    </div>
                </div>
                <br />
                <div class="control-group">
                    <div class="controls">
                        <button type="submit" class="btn">Create Account</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
