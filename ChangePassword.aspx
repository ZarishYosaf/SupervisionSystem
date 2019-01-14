<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="FinalProject.Account.ChangePassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    
    <p style="text-align:center; padding-top:8%; color:white">Use The Form Below To Change Password</p>
    <div class="box" style="margin-top:4%">
            
            <div class="inputbox">
                <asp:TextBox ID="txtUserName" runat="server" required=""></asp:TextBox>
                <asp:Label ID="lblUserName" runat="server" Text="UserName" CssClass="label"></asp:Label>
            </div>
            <div class="inputbox">
                <asp:TextBox ID="txtPassword" runat="server" required="" TextMode="Password"></asp:TextBox>
                <asp:Label ID="lblPassword" runat="server" Text="Password" CssClass="label"></asp:Label>
            </div>
         <div class="inputbox">
                <asp:TextBox ID="txtNewPassword" runat="server" required="" TextMode="Password"></asp:TextBox>
                <asp:Label ID="lblNewPassword" runat="server" Text=" New Password" CssClass="label"></asp:Label>
            </div>
         <div class="inputbox">
                <asp:TextBox ID="txtConfirmPassword" runat="server" required="" TextMode="Password"></asp:TextBox>
                <asp:Label ID="lblConfirmPassword" runat="server" Text=" Confirm Password" CssClass="label"></asp:Label>
         

        <div style="margin-top:1%">
            <asp:Button ID="btnChangePassword" runat="server" Text="Change Password" OnClick="btnChangePassword_Click"   />
             <a style="color:white; text-decoration:underline; font:bolder; float:right" href="Login.aspx">Back To Login</a></div>
        </div>
      
        </div>
</asp:Content>
