<%@ Page Title="" Language="C#" MasterPageFile="~/SecondMarker/SecondMarker.Master" AutoEventWireup="true" CodeBehind="MainSecondMarker.aspx.cs" Inherits="FinalProject.SecondMarker.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContent" runat="server">
     <!-- Page content -->
                    <div id="page-content">
                      

                        <!-- User Profile Content -->
                        <div class="row">
                            <!-- First Column -->
                            <div class="col-md-6 col-lg-7">
                                <!-- Updates Block -->
                                
                                <!-- END Updates Block -->

                                <!-- Newsfeed Block -->
                                <div class="block">
                                    <!-- Newsfeed Title -->
                                    <div class="block-title">
                                        <div class="block-options pull-right">
                                         
                                          
                                        </div>
                                        <h2><strong>SecondMarker Dashboard</strong></h2>
                                    </div>
                                    <asp:GridView ID="GridView" runat="server" AutoGenerateColumns="False"  EmptyDataText="No data has been created yet." CellPadding="4" ForeColor="#333333" GridLines="None" Height="159px" Width="538px">
                                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                        <Columns>
                                            <asp:TemplateField HeaderText="Project Type">
                                                <ItemTemplate >
                                               <asp:Label ID="lblProjecType" runat="server" Text='<%# Eval("ProjectType") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                               <asp:TemplateField HeaderText="Project Topic">
                                                <ItemTemplate >
                                               <asp:Label ID="lblProjecTopic" runat="server" Text='<%# Eval("ProjectTopic") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Submission Date">
                                                <ItemTemplate >
                                               <asp:Label ID="lblSubmission" runat="server" Text='<%# Eval("SubmissionDate") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                             <asp:TemplateField HeaderText="Student Assign">
                                                <ItemTemplate >
                                               <asp:Label ID="lblStudent" runat="server" Text='<%# Eval("StudentName") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                             <asp:TemplateField HeaderText="Supervisor Name">
                                                <ItemTemplate >
                                               <asp:Label ID="lblSupervisor" runat="server" Text='<%# Eval("SupervisorName") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                        <EditRowStyle BackColor="#999999" />
                                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                    </asp:GridView>
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
                                            <p style="font-family:sans-serif; font-size:16px">If you want to virtually interact with the user</p> 
                                                <p style="font-family:serif; font-size:20px">click The Button!</p>
                                     
                                        </div>
                                    <div style="text-align:center; width:100%" >     <a href="https://drive.google.com/open?id=1QJh2TJdNpJ4yD8aRE2fbFZ9wB1Himknx" class="btn btn-primary" style="width:50%" >Download</a></div>
                                    <!-- END Photos Title -->

                                    <!-- Photos Content -->
                                    
                                    <!-- END Photos Content -->
                                </div>
                                <!-- END Photos Block -->

                                <!-- Friends Block -->
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
                                </div>
                                                    <asp:HyperLink ID="HyperLink" runat="server" NavigateUrl="~/SecondMarker/All Notification SM.aspx">View All Notification</asp:HyperLink>
                                </div>
                                <!-- END Friends Block -->

                                <!-- Twitter Block -->
                                
                                <!-- END Twitter Block -->
                            </div>
                            <!-- END Second Column -->
                        </div>
                        <!-- END User Profile Content -->
                    </div>
                    <!-- END Page Content -->
</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
