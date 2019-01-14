<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.Master" AutoEventWireup="true" CodeBehind="Admin_Page.aspx.cs" Inherits="FinalProject.admin.Admin_Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContent" runat="server">
    <div class="row" style="width:200%">
                            <div class="col-md-6">
                                <!-- Web Server Block -->
                                <div class="block full">
                                    <!-- Web Server Title -->
                                     <div class="block-title">
                                        <div class="block-options pull-right">
                                        </div>
                                        <h2><strong>Supervisor/ Second Marker Available</strong> </h2>
                                    </div>
                                    <!-- END Web Server Title -->

                                    <!-- Web Server Content -->
                                    <!-- Flot Charts (initialized in js/pages/index2.js), for more examples you can check out http://www.flotcharts.org/ -->
                                    <asp:GridView ID="SupervisorGrid" runat="server" DataKeyNames="UserID" AutoGenerateColumns="False"  EmptyDataText="No data has been created yet." OnRowCancelingEdit="SupervisorGrid_RowCancelingEdit" OnRowDeleting="SupervisorGrid_RowDeleting" OnRowEditing="SupervisorGrid_RowEditing" OnRowUpdating="SupervisorGrid_RowUpdating" CellPadding="4" ForeColor="#333333" GridLines="None">
                                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                        <Columns>
                                            <asp:TemplateField HeaderText="UserID">
                                                <ItemTemplate>
                                                     <asp:Label ID="lblUserID" runat="server" Text='<%# Eval("UserID") %>'></asp:Label>
                                                </ItemTemplate>
                                                <EditItemTemplate>
                                                     <asp:TextBox ID="txtUserID" runat="server" Width="100" Text='<%# Eval("UserID") %>'></asp:TextBox>
                                                </EditItemTemplate>
                                            </asp:TemplateField>

                                             <asp:TemplateField HeaderText="FirstName">
                                                <ItemTemplate>
                                                     <asp:Label ID="lblFirstName" runat="server" Text='<%# Eval("FirstName") %>'></asp:Label>
                                                </ItemTemplate>
                                                <EditItemTemplate>
                                                     <asp:TextBox ID="txtFirstName" runat="server" Width="100" Text='<%# Eval("FirstName") %>'></asp:TextBox>
                                                </EditItemTemplate>
                                            </asp:TemplateField>

                                             <asp:TemplateField HeaderText="Lastname">
                                                <ItemTemplate>
                                                     <asp:Label ID="lblLastName" runat="server" Text='<%# Eval("LastName") %>'></asp:Label>
                                                </ItemTemplate>
                                                <EditItemTemplate>
                                                     <asp:TextBox ID="txtlastName" runat="server" Width="100" Text='<%# Eval("LastName") %>'></asp:TextBox>
                                                </EditItemTemplate>
                                            </asp:TemplateField>

                                             <asp:TemplateField HeaderText="Email">
                                                <ItemTemplate>
                                                     <asp:Label ID="lblEmail" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
                                                </ItemTemplate>
                                                <EditItemTemplate>
                                                     <asp:TextBox ID="txtEmail" runat="server" Width="100" Text='<%# Eval("Email") %>'></asp:TextBox>
                                                </EditItemTemplate>
                                            </asp:TemplateField>

                                             <asp:TemplateField HeaderText="Password">
                                                <ItemTemplate>
                                                     <asp:Label ID="lblPassword" runat="server" Text='<%# Eval("Password") %>'></asp:Label>
                                                </ItemTemplate>
                                                <EditItemTemplate>
                                                     <asp:TextBox ID="txtPassword" runat="server" Width="100" Text='<%# Eval("Password") %>'></asp:TextBox>
                                                </EditItemTemplate>
                                            </asp:TemplateField>

                                             <asp:TemplateField HeaderText="UserName">
                                                <ItemTemplate>
                                                     <asp:Label ID="lblUserName" runat="server" Text='<%# Eval("UserName") %>'></asp:Label>
                                                </ItemTemplate>
                                                <EditItemTemplate>
                                                     <asp:TextBox ID="txtUserName" runat="server" Width="100" Text='<%# Eval("UserName") %>'></asp:TextBox>
                                                </EditItemTemplate>
                                            </asp:TemplateField>

                                             <asp:TemplateField HeaderText="UserType">
                                                <ItemTemplate>
                                                     <asp:Label ID="lblUserType" runat="server" Text='<%# Eval("UserType") %>'></asp:Label>
                                                </ItemTemplate>
                                                <EditItemTemplate>
                                                     <asp:TextBox ID="txtUserType" runat="server" Width="100" Text='<%# Eval("UserType") %>'></asp:TextBox>
                                                </EditItemTemplate>
                                            </asp:TemplateField>

                                             <asp:TemplateField HeaderText="Gender">
                                                <ItemTemplate>
                                                     <asp:Label ID="lblGender" runat="server" Text='<%# Eval("Gender") %>'></asp:Label>
                                                </ItemTemplate>
                                                <EditItemTemplate>
                                                     <asp:TextBox ID="txtGender" runat="server" Width="100" Text='<%# Eval("Gender") %>'></asp:TextBox>
                                                </EditItemTemplate>
                                            </asp:TemplateField>
                                            
                               <asp:TemplateField HeaderText="Events" >
                                     <ItemTemplate>
                                         <asp:Button ID="btnEdit" runat="server" Text="Edit" CommandName="Edit" />
                                         <asp:Button ID="btnDelete" runat="server" Text="Delete" CommandName="Delete" />
                                     </ItemTemplate>
                                     <EditItemTemplate>
                                         <asp:Button ID="btnUpdate" runat="server" Text="Update" CommandName="Update" />
                                         <asp:Button ID="btnCancel" runat="server" Text="Cancel"  CommandName="Cancel"/>
                                     </EditItemTemplate>
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
                                    <!-- END Web Server Content -->
                                </div>
                                <!-- END Web Server Block -->

                                <!-- Mini Sales Charts Block -->
                                <!-- Jquery Sparkline (initialized in js/pages/index2.js), for more examples you can check out http://omnipotent.net/jquery.sparkline/#s-about -->
                                <div class="block full">
                                    <!-- Mini Sales Charts Title -->
                                    <div class="block-title">
                                        <div class="block-options pull-right">
                                            <div class="btn-group btn-group-sm">
                                                <a href="javascript:void(0)" class="btn btn-alt btn-default dropdown-toggle" data-toggle="dropdown"><span class="caret"></span></a>
                                                <ul class="dropdown-menu dropdown-custom dropdown-menu-right">
                                                   
                                                </ul>
                                            </div>
                                        </div>
                                        <h2><strong>Students Available</strong> </h2>
                                    </div>
                                    <!-- END Mini Sales Charts Title -->

                                    <!--GridView Content -->
                                  <asp:GridView ID="grd" runat="server" DataKeyNames="UserID" AutoGenerateColumns="False" EmptyDataText="No data has been created yet." OnRowCancelingEdit="grd_RowCancelingEdit" OnRowEditing="grd_RowEditing" OnRowUpdating="grd_RowUpdating" OnRowDeleting="grd_RowDeleting" CellPadding="4" ForeColor="#333333" GridLines="None" >
                                      <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                          <Columns>
                                   
                              <asp:TemplateField HeaderText="UserID" >
                                       <ItemTemplate>
                                           <asp:Label ID="lblUserID" runat="server" Text='<%# Eval("UserID") %>'></asp:Label>
                                       </ItemTemplate>
                                       <EditItemTemplate>
                                           <asp:TextBox ID="txtUserID" runat="server" Width="100" Text='<%# Eval("UserID") %>'></asp:TextBox>
                                       </EditItemTemplate>
                                   </asp:TemplateField>
                                   
                              <asp:TemplateField HeaderText="First Name" >
                                       <ItemTemplate>
                                           <asp:Label ID="lblFirstName" runat="server" Text='<%# Eval("FirstName") %>'></asp:Label>
                                       </ItemTemplate>
                                       <EditItemTemplate>
                                           <asp:TextBox ID="txtFirstName" runat="server" Width="100" Text='<%# Eval("FirstName") %>'></asp:TextBox>
                                       </EditItemTemplate>
                                   
                              </asp:TemplateField>
                                         <asp:TemplateField HeaderText="Last Name" >
                                       <ItemTemplate>
                                           <asp:Label ID="lblLastName" runat="server" Text='<%# Eval("LastName") %>'></asp:Label>
                                       </ItemTemplate>
                                       <EditItemTemplate>
                                           <asp:TextBox ID="txtLastName" runat="server" Width="100" Text='<%# Eval("LastName") %>'></asp:TextBox>
                                       </EditItemTemplate>
                                   </asp:TemplateField>
                                   
                                   
                              <asp:TemplateField HeaderText="Email" >
                                       <ItemTemplate>
                                           <asp:Label ID="lblEmail" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
                                       </ItemTemplate>
                                       <EditItemTemplate>
                                           <asp:TextBox ID="txtEmail" runat="server" Width="180" Text='<%# Eval("Email") %>' ></asp:TextBox>
                                       </EditItemTemplate>
                                   </asp:TemplateField>

                               <asp:TemplateField HeaderText="Password" >
                                   <ItemTemplate>
                                       <asp:Label ID="lblPassword" runat="server" Text='<%# Eval("Password") %>'></asp:Label>
                                   </ItemTemplate>
                                   <EditItemTemplate>
                                       <asp:TextBox ID="txtPassword" runat="server" Width="100" Text='<%# Eval("Password") %>'></asp:TextBox>
                                   </EditItemTemplate>
                               </asp:TemplateField>
                               
                                 <asp:TemplateField HeaderText="UserName" >
                                   <ItemTemplate>
                                       <asp:Label ID="lblUserName" runat="server" Text='<%# Eval("UserName") %>'></asp:Label>
                                   </ItemTemplate>
                                   <EditItemTemplate>
                                       <asp:TextBox ID="txtUserName" runat="server" Width="100" Text='<%# Eval("UserName") %>' ></asp:TextBox>
                                   </EditItemTemplate>
                               </asp:TemplateField>
                               
                                 <asp:TemplateField HeaderText="UserType" >
                                   <ItemTemplate>
                                       <asp:Label ID="lblUserType" runat="server" Text='<%# Eval("UserType") %>'></asp:Label>
                                   </ItemTemplate>
                                   <EditItemTemplate>
                                       <asp:TextBox ID="txtUserType" runat="server" Width="100" Text='<%# Eval("UserType") %>' ></asp:TextBox>
                                   </EditItemTemplate>
                               </asp:TemplateField>
                               
                                     <asp:TemplateField HeaderText="Gender" >
                                   <ItemTemplate>
                                       <asp:Label ID="lblGender" runat="server" Text='<%# Eval("Gender") %>'></asp:Label>
                                   </ItemTemplate>
                                   <EditItemTemplate>
                                       <asp:TextBox ID="txtGender" runat="server" Width="100" Text='<%# Eval("Gender") %>'></asp:TextBox>
                                   </EditItemTemplate>
                               </asp:TemplateField>

                               <asp:TemplateField HeaderText="Events" >
                                     <ItemTemplate>
                                         <asp:Button ID="btnEdit" runat="server" Text="Edit" CommandName="Edit" />
                                         <asp:Button ID="btnDelete" runat="server" Text="Delete" CommandName="Delete" />
                                     </ItemTemplate>
                                     <EditItemTemplate>
                                         <asp:Button ID="btnUpdate" runat="server" Text="Update" CommandName="Update" />
                                         <asp:Button ID="btnCancel" runat="server" Text="Cancel"  CommandName="Cancel"/>
                                     </EditItemTemplate>
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
                                    
                                    <!-- END GridView Content -->
                                </div>
                                <!-- END Mini Sales Charts Block -->

                                <!-- Mini Earnings Charts Block -->
                                <!-- Jquery Sparkline (initialized in js/pages/index2.js), for more examples you can check out http://omnipotent.net/jquery.sparkline/#s-about -->
                               
                             </div>
                                <!-- END Quick Post Block -->
                         
                        <!-- END Dashboard 2 Content -->
                    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content" runat="server">
</asp:Content>
