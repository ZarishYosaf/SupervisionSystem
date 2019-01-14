<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.Master" AutoEventWireup="true" CodeBehind="Student_Page.aspx.cs" Inherits="FinalProject.admin.Student_Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContent" runat="server">
    <div id="page-content">
                      

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
                                        <h2><strong>ADD Student </strong> </h2>
                                    </div>
                                    <!-- END Updates Title -->

                                    <!-- Information Form -->
                                    <form  method="post" class="block-content-full block-content-mini-padding" onsubmit="return false;">
                                        <div class="form">

                                            <div class="row">
                                       <div class="col-md-6 form-group"> 
                                           <asp:Label ID="lblFirstName" runat="server" Text="First Name"></asp:Label>
                                        <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control"></asp:TextBox>
                                      
                                           </div>
                                            <div class="col-md-6 form-group">
                                       
                                        <asp:Label ID="lblLastName" runat="server" Text="Last Name"></asp:Label>
                                        <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control"></asp:TextBox><br />
                                        </div>
                                            </div>

                                            <div class="row">
                                               <div class="col-md-6 form-group"> 
                                                   <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
                                                <asp:TextBox ID="txtEmail" runat="server"  CssClass="form-control"></asp:TextBox>
                                                   <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Email!" ControlToValidate="txtEmail" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                            </div>
                                                <div class="col-md-6 form-group"> 
                                        <asp:Label ID="lblDepartment" runat="server" Text="Department"></asp:Label>
                                                             
                                        <select id="Select"name="Department" style="width:100%; background-color:transparent; padding:1%; padding-left:30%; font-family:sans-serif;" class="form-control">
                                                   <option style="color:black">Select Department</option> 
                                              <option style="color:black">Information Technology</option>
                                                              <option style="color:black">Management</option> 
                                             <option style="color:black">Psycology</option> 
                                               <option style="color:black">BSCS</option>
                                               <option style="color:black">BSSE</option> 
                                                           </select>
                                        <br />
                                            </div>
                                                </div>

                                              <div class="row">
                                               <div class="col-md-6 form-group"> 
                                                   <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
                                                <asp:TextBox ID="txtPassword" runat="server"  CssClass="form-control" TextMode="Password"></asp:TextBox>
                                            </div>
                                                <div class="col-md-6 form-group"> 
                                        <asp:Label ID="lblUserName" runat="server" Text="UserName"></asp:Label>
                                        <asp:TextBox ID="txtUserName" runat="server"  CssClass="form-control"></asp:TextBox><br />
                                            </div>
                                                </div>

                                            <div class="row">
                                               <div class="col-md-6 form-group"> 
                                                   <asp:Label ID="lblNumber" runat="server" Text="Contact No"></asp:Label>
                                                <asp:TextBox ID="txtNumber" runat="server"  CssClass="form-control"></asp:TextBox>
                                            </div>
                                       
                                       
                                            <div class="col-md-6 form-group">
                                     <asp:Label ID="lblBatch" runat="server" Text="Batch"></asp:Label>
               <asp:TextBox ID="txtBatch" runat="server"  CssClass="form-control"></asp:TextBox>

                                            </div>
                                            </div>




                                            <div class="row">
                                             <div class="col-md-6 form-group">
                                        <asp:Label ID="lblUserType"  runat="server" Text="UserType"></asp:Label>
                                           
                                        <select id="UserType"name="UserType" style="width:100%; background-color:transparent; padding:1%; padding-left:30%; font-family:sans-serif;" class="form-control">
                                                   <option style="color:black">Select UserType</option> 
                                              <option style="color:black">Supervisor</option>
                                                              <option style="color:black">Student</option> 
                                             <option style="color:black">Second Marker</option> 
                                                           </select>
                                            </div>
                                                
                                            <div class="col-md-6 form-group">
                                          <asp:Label ID="lblGender" runat="server" Text="Gender"></asp:Label>
               <select id="Gender"name="Gender" style="width:100%; background-color:transparent; padding:1%; padding-left:30%; font-family:sans-serif;" class="form-control">
                                                   <option style="color:black">Select Gender</option> 
                                              <option style="color:black">Male</option>
                                                              <option style="color:black">Female</option> 
                                          
                                                           </select>

                                            </div>
                                                </div>
                                        <div style="margin:2%">
                                            <asp:Label ID="lblinfo" runat="server" Text="Info"></asp:Label>
                                        <textarea id="default-textarea" name="default-textarea" rows="2" class="form-control push-bit" placeholder="Write Something.."></textarea>
                                        </div>
                                            <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btn btn-primary" OnClick="btnSave_Click" />
                                            </div>
                                    </form>
                                    <!-- END Information Form -->
                                </div>
                                <!-- END Updates Block -->

                                <!-- Newsfeed Block -->
                                
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
                                                <td><strong>Password</strong></td>
                                                <td>
                                           <asp:Label ID="lblPass" runat="server" ></asp:Label>
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

                                
                                </div>
                                <!-- END Photos Block -->

                                <!-- Friends Block -->
                              
                                <!-- END Friends Block -->

                                <!-- Twitter Block -->
                                
                                <!-- END Twitter Block -->
                         
                            <!-- END Second Column -->
                        </div>
                        <!-- END User Profile Content -->
                   </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content" runat="server">
</asp:Content>
