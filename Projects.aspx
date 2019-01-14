<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.Master" AutoEventWireup="true" CodeBehind="Projects.aspx.cs" Inherits="FinalProject.admin.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContent" runat="server">
     <div class="block">
    <div class="block-title">
              <div class="block-options pull-right">           
                  </div>
               <h2><strong>Assign projects</strong> </h2>
                  </div>
    <asp:DropDownList ID="DropDownDepartment" runat="server" CssClass="dropdown">
         <asp:ListItem>Select Department</asp:ListItem>
                                              <asp:ListItem>Information Technology</asp:ListItem>
                                              <asp:ListItem Value="Management">Management</asp:ListItem>
                                              <asp:ListItem>Psycology</asp:ListItem>

                                                <asp:ListItem>BSCS</asp:ListItem>
                                              <asp:ListItem>BSSE</asp:ListItem></asp:DropDownList>
                                      
         <asp:Button ID="getprojects" runat="server" Text="Submit" OnClick="getprojects_Click"  CssClass="btn  btn-primary" />
         <div class="row" >
           
             <div class ="clo-md-6" style ="width:500px; float :left ">
         <asp:GridView ID="Grid" runat="server" AutoGenerateColumns="False"  EmptyDataText="No data has been created yet." CellPadding="4" ForeColor="#333333" GridLines="None" Width="200px" Height="200px">
             <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
             <Columns>
                 <asp:TemplateField HeaderText="Project ID">
                     <ItemTemplate>
                         <asp:Label ID="lblPTitle" runat="server" Text='<%# Eval("ProjectID") %>' Width="100"></asp:Label>
                     </ItemTemplate>
                 </asp:TemplateField>
                  <asp:TemplateField HeaderText="Project Topic">
                     <ItemTemplate>
                         <asp:Label ID="lblPTopic" runat="server" Text='<%# Eval("ProjectTopic") %>' Width="100"></asp:Label>
                     </ItemTemplate>
                 </asp:TemplateField>
                  <asp:TemplateField HeaderText="Project Type">
                     <ItemTemplate>
                         <asp:Label ID="lblPType" runat="server" Text='<%# Eval("ProjectType") %>' Width="100"></asp:Label>
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

         </asp:GridView></div>
                                  <div class ="clo-md-6">              
                                          
                                      <asp:Label ID="lblProject" runat="server" Text="Projects"></asp:Label>
                                         <asp:DropDownList ID="DropDownProject" runat="server">
                                                
                                                    </asp:DropDownList>

                                      <asp:Label ID="lblSupervisor" runat="server" Text="Supervisors"></asp:Label>
                                               <asp:DropDownList ID="DropDownSupervisor"  runat="server">
                                                   
                                                    </asp:DropDownList>
                                      <asp:Label ID="lblSecondMarker" runat="server" Text="Second Markers"></asp:Label>
                                               
                                               <asp:DropDownList ID="DropDownSecondMarker" runat="server">

                                               </asp:DropDownList>
                                         <asp:Label ID="lblSubmission" runat="server" Text="Submission Date"></asp:Label>
                                         <asp:TextBox ID="TextBox1" runat="server" TextMode="Date" ></asp:TextBox>
                                         <asp:Button ID="Assign" runat="server" OnClick="Assign_Click" Text="Assign" CssClass="btn btn-primary" />
             </div>

                  </div>                      
         

                                       
                                       
         </div>                                
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content" runat="server">
</asp:Content>
