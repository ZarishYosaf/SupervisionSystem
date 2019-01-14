<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="FinalProject.About" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
   <div style="position:absolute;background-color:rgba(0,0,0,.6);
top:55%;
left:50%;
transform:translate(-50%,-50%);
width:700px;
padding:10px;">
     <h2 style="color:#0094ff; text-align:center; font-family:serif; font-size:50px">About the System</h2>
    <p style="color:white; " class="auto-style1">An online web based system to reduce communication gape, effective two way information exchange and maintain records without any mess through internet </p>

          <p style="color:white; " class="auto-style1">Student And Supervisor can interact with one another.The admin will add the students, supervisors and second marker register them and login the system. The student will add their projects and their relevant Supervisor and Second Marker will be assigned to the them.
        Relavent Students Supervisors and Second Marker will be notified immediately about any news.
        They can virtually interact with one another through this system.The Supervisor Can see if the student have any kind of query. </p>
       <p style="color:white; " class="auto-style1">The supervisor can also virtually access the system of students and relavant changings can be done just a simple application has to be downloaded and then the student
           can tell the supervisor his problems and can ask for solution.
       </p>
   </div>
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="HeadContent">
    <style type="text/css">
        .auto-style1 {
            text-align: justify;
        }
    </style>
</asp:Content>
