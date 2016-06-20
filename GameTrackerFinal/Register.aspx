<%@ Page Title="Register Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="GameTrackerFinal.Register" %>
<%--
File Name: Register.aspx
Author Name: Mansi Patel(200303640) & Shweta Chavda(200326347)
Website Name: http://gametrackerproject.azurewebsites.net/Default.aspx
Description: In order to get log in User must get registered on this page.
 @date: June 8, 2016
 @version: 0.0.1
 @date: June 15, 2016
 @version: 0.0.2
      --%>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div class="container">
        <div class="row">
            <div class="col-md-offset-3 col-md-6">
                <h1>Registration</h1>
                <h5>All Fields are Required</h5>
                <br />
                <div class="form-group">
                    <label class="control-label" for="EmailTextBox">Email: </label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="EmailTextBox" placeholder="Email" required="true"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label class="control-label" for="UserNameTextBox">UserName: </label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="UserNameTextBox" placeholder="UserName" required="true"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label class="control-label" for="PasswordTextBox">Password: </label>
                    <asp:TextBox runat="server" TextMode="Password" CssClass="form-control" ID="PasswordTextBox" placeholder="Password" required="true"></asp:TextBox>
                    
                </div>
                <div class="form-group">
                    <label class="control-label" for="DisplayNameTextBox">DisplayName: </label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="DisplayNameTextBox" placeholder="DisplayName" required="true"></asp:TextBox>
                </div>
                <div class="text-right">
                    <asp:Button Text="Cancel" ID="CancelButton" CssClass="btn btn-warning btn-lg" runat="server" 
                        UseSubmitBehavior="false" CausesValidation="false" OnClick="CancelButton_Click" />
                    <asp:Button Text="Save" ID="SaveButton" CssClass="btn btn-primary btn-lg" runat="server" OnClick="SaveButton_Click" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
