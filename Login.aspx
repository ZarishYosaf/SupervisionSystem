<%@ Page Title="Log in" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="FinalProject.Account.Login" %>


<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">

        <div class="box">
            <h2 style="font-family:Helvetica">Login</h2>
            <div class="inputbox">
                <asp:TextBox ID="txtUserName" runat="server" required=""></asp:TextBox>
                <asp:Label ID="lblUserName" runat="server" Text="UserName" CssClass="label"></asp:Label>
            </div>
            <div class="inputbox">
                <asp:TextBox ID="txtPassword" runat="server" required="" TextMode="Password"></asp:TextBox>
                <asp:Label ID="lblPassword" runat="server" Text="Password" CssClass="label"></asp:Label>
            </div>
          
           <div style="float:left; font-size:14px; color:white; margin-top:1%">
               <asp:CheckBox ID="CheckBox1" runat="server" />Remember Me</div>
               <div style="float:right; color:white; font-size:14px; margin-top:3%">
               <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Account/ChangePassword.aspx" ForeColor="White" Font-Underline="False">Forgot Password?</asp:HyperLink>
           </div>
            <div style="margin-top:8%">
            <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click"  /></div>

          
        </div>
     
     
    

    
</asp:Content>
