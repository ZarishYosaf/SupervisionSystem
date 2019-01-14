<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="FinalProject.Contact" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    
   <div style="position:absolute; background-color:rgba(0,0,0,.6);top:55%;
left:50%;
transform:translate(-50%,-50%);
width:700px;padding:5px;">
       <h2 style="color:#0094ff; text-align:center; font-family:serif; font-size:50px">Contact Us</h2>
          <h3 style="color:#0094ff; font-family:serif; font-size:27px">Email:</h3>
      <p>
          
            <span><a href="mailto:Support@example.com" style="color: #FFFFFF">Support@example.com</a></span>
        </p>
        <p>
           
            <span><a href="mailto:Marketing@example.com"style="color: #FFFFFF">Marketing@example.com</a></span>
        </p>
        <p>
          
            <span><a href="mailto:General@example.com"style="color: #FFFFFF">General@example.com</a></span>
        </p>
       <header>
            <h3 style="color:#0094ff; font-family:serif; font-size:27px">Address:</h3>
        </header>
        <p style="color: #FFFFFF">
            One Microsoft Way<br />
            Redmond, WA 98052-6399
        </p>
   </div>
  

    
</asp:Content>