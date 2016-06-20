<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="GameTrackerFinal.Login" %>
<%--
File Name: Login.aspx
Author Name: Mansi Patel(200303640) & Shweta Chavda(200326347)
Website Name: http://gametrackerproject.azurewebsites.net/Default.aspx
Description: To create a tracker user must be Logged in on this page.
 @date: June 8, 2016
 @version: 0.0.1
 @date: June 15, 2016
 @version: 0.0.2
      --%>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-offset-3 col-md-6">
                <h1>Login</h1>
                <br />
                <div class="form-group">
                    <label class="control-label" for="UserNameTextBox">UserName: </label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="UserNameTextBox" placeholder="UserName" required="true"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label class="control-label" for="PasswordTextBox">Password: </label>
                    <asp:TextBox runat="server" TextMode="Password" CssClass="form-control" ID="PasswordTextBox" placeholder="Password" required="true"></asp:TextBox>
                    <a href="Register.aspx" class="text" id="Register">OR Register</a>
                </div>
                <div class="text-right">
                    <asp:Button Text="Cancel" ID="CancelButton" CssClass="btn btn-warning btn-lg" runat="server" 
                        UseSubmitBehavior="false" CausesValidation="false"  OnClick="CancelButton_Click"/>
                    <asp:Button Text="Login" ID="SaveButton" CssClass="btn btn-primary btn-lg" runat="server" OnClick="SaveButton_Click" />
                </div>
            </div>
        </div>
    </div>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>
