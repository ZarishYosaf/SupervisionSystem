<%@ Page Title="" Language="C#" MasterPageFile="~/Student/Student.Master" AutoEventWireup="true" CodeBehind="MainStudent.aspx.cs" Inherits="FinalProject.Student.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContent" runat="server">
    
                        <!-- User Profile Content -->
                        <div class="row">
                            <!-- First Column -->
                            <div class="col-md-6 col-lg-7">
                                <!-- Updates Block -->
                                <div class="block">
                                    <!-- Updates Title -->
                                    <div class="block-title">
                                        <div class="block-options pull-right">
                                           
                                        </div>
                                        <h2><strong>ADD Project </strong> </h2>
                                    </div>
                                    <!-- END Updates Title -->

                                    <!-- Information Form -->
                                   <form  method="post" class="block-content-full block-content-mini-padding" onsubmit="return false;">
                                        <div class="form">

                                            <div class="row">
                                       <div class="col-md-6 form-group"> 
                                           <asp:Label ID="Label1" runat="server" Text="Project Type"></asp:Label>
                                <select id="Type"name="Type" style="width:100%; background-color:transparent; padding:1%; padding-left:30%; font-family:sans-serif;" class="form-control">
                                                   <option style="color:black">Select Type</option> 
                                              <option style="color:black">Research</option>
                                                              <option style="color:black">Project</option> 
                                         
                                                           </select>
                                      
                                           </div>
                                            <div class="col-md-6 form-group">
                                                <asp:Label ID="lblTopic" runat="server" Text="Project Title"></asp:Label>
                                                <asp:TextBox ID="txtTopic" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                            </div>
                           
                               
                            </div>
                                   <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btn btn-primary" OnClick="btnSave_Click"  />
                                            </div>

                                        </form>
                                    <!-- END Information Form -->
                         
                                <!-- END Updates Block -->


                                <!-- Newsfeed Block -->
                                <div class="block">
                                    <!-- Newsfeed Title -->
                                    <div class="block-title">
                                        <div class="block-options pull-right">
                                         
                                          
                                        </div>
                                        <h2><strong>Student Dashboard </strong></h2>
                                    </div>
                                    <table class="table table-borderless table-striped">
                                        <tbody>
                                            <tr>
                                                <td style="width: 20%;"><strong>Project Topic</strong></td>
                                               <td> <asp:Label ID="lblProjectTopic" runat="server" ></asp:Label></td>
                                            </tr>
                                            <tr>
                                                <td><strong>Type</strong></td>
                                                <td><asp:Label ID="lblProjectType" runat="server" ></asp:Label></td>
                                            </tr>
                                            <tr>
                                                <td><strong>Submission Date</strong></td>
                                                <td><asp:Label ID="lblSubmissionDate" runat="server" ></asp:Label></td>
                                            </tr>
                                            <tr>
                                                <td><strong>Supervisor Assign</strong></td>
                                                <td><asp:Label ID="lblSupervisor" runat="server" ></asp:Label></td>
                                            </tr>
                                             <tr>
                                                <td><strong>Second Marker Assign</strong></td>
                                                <td><asp:Label ID="lblSecondMarker" runat="server" ></asp:Label></td>
                                            </tr>
                                            </tbody>
                                            </table>
                                </div>
                                <!-- END Newsfeed Block -->
                            </div>
                            <!-- END First Column -->
                         


                            <!-- Second Column -->
                            <div class="col-md-6 col-lg-5">
                                <!-- Info Block -->
                                <div class="block">
                                    <!-- Info Title -->
                                    <div class="block-title">
                                        <div class="block-options pull-right">
                                           
                                        </div>
                                        <h2>About <strong></strong> <small>&bull; <i class="fa fa-file-text text-primary"></i> <a href="javascript:void(0)" data-toggle="tooltip" title="Download Bio in PDF">Bio</a></small></h2>
                                    </div>
                                    <!-- END Info Title -->

                                    <!-- Info Content -->
                                    <table class="table table-borderless table-striped">
                                        <tbody>
                                            <tr>
                                                <td style="width: 20%;"><strong>Info</strong></td>
                                               <td> <asp:Label ID="lblIn" runat="server" ></asp:Label></td>
                                            </tr>
                                            <tr>
                                                <td><strong>FirstName</strong></td>
                                                <td><asp:Label ID="lblFName" runat="server" ></asp:Label></td>
                                            </tr>
                                            <tr>
                                                <td><strong>Lastname</strong></td>
                                                <td><asp:Label ID="lblLName" runat="server" ></asp:Label></td>
                                            </tr>
                                            <tr>
                                                <td><strong>Email</strong></td>
                                                <td><asp:Label ID="lblmail" runat="server" ></asp:Label></td>
                                            </tr>
                                            <tr>
                                                <td><strong>Department</strong></td>
                                                <td>
                                           <asp:Label ID="lblDept" runat="server" ></asp:Label>
                                                </td>
                                            </tr>
                                          
                                             <tr>
                                                <td><strong>UserName</strong></td>
                                                <td>
                                           <asp:Label ID="lblUName" runat="server" ></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td><strong>Contact No</strong></td>
                                                <td>
                                           <asp:Label ID="lblNum" runat="server" ></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td><strong>Batch</strong></td>
                                                <td>
                                           <asp:Label ID="lblBat" runat="server" ></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td><strong> Type</strong></td>
                                                <td>
                                           <asp:Label ID="lblPType" runat="server" ></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td><strong>Project Title</strong></td>
                                                <td>
                                                   <asp:Label ID="lblPT" runat="server" ></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td><strong>Gender</strong></td>
                                                <td>
                                           <asp:Label ID="lblGend" runat="server" ></asp:Label>
                                                </td>
                                            </tr>
                                             <tr>
                                                <td><strong>UserType</strong></td>
                                                <td>
                                           <asp:Label ID="lblUType" runat="server" ></asp:Label>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <!-- END Info Content -->
                                </div>
                                <!-- END Info Block -->

                                <!-- Photos Block -->
                                <div class="block">
                                    <!-- Photos Title -->
                                    <div class="block-title">
                                        <div class="block-options pull-right">
                                           
                                        </div>
                                        <h2><strong>Virtual Access</strong></h2>
                                        
                                    </div>
                                    <div>
                                            <p style="font-family:sans-serif; font-size:16px">If you want to virtually interact with the Supervisor</p> 
                                                <p style="font-family:serif; font-size:20px">click The Button!</p>
                                     
                                        </div>
                                    <div style="text-align:center; width:100%" >    <a href="https://drive.google.com/open?id=1NR68K7pYYX4jMmjolwDa_VyHWS_jqN9k" class="btn btn-primary" style="width:50%" >Download</a></div>
                                   
                                    
                                    <!-- END Photos Title -->

                                </div>
                                <!-- END Photos Block -->

                                <!-- Notification  Block -->
                                <div class="block">
                                    <div class="block-title">
                                        <div class="block-options pull-right">
                                           
                                        </div>
                                         <h2><strong>Notifications</strong></h2>
                                        
                                    </div>
                                    <div>
                                <!-- END Notification Block -->

                                <!-- Twitter Block -->
                                
                                <!-- END Twitter Block -->
                                        
                                                    <div id="notificationsdiv" runat="server">

                                                        

                                                    </div>
                                                    <br />
                                                    <br />
                                                    <br />
                                                    <br />
                                                    <asp:HyperLink ID="HyperLink" runat="server" NavigateUrl="~/Student/AllNotifications.aspx">View All Notification</asp:HyperLink>
                                                
                                                
                                            
                            </div>
                            <!-- END Second Column -->
                        </div>
                        <!-- END User Profile Content -->
                    
                        </div>
                        </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
