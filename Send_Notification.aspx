<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.Master" AutoEventWireup="true" CodeBehind="Send_Notification.aspx.cs" Inherits="FinalProject.admin.Send_Notification" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContent" runat="server">
    <div class="row" style="width:130%">
                            <!-- First Column -->
                            <div class="col-md-6 col-lg-7" >
                                <!-- Updates Block -->
                                <div class="block">
                                    <!-- Updates Title -->
                                    <div class="block-title">
                                        <div class="block-options pull-right">
                                           
                                        </div>
                                        <h2><strong>Send Notification</strong> </h2>
                                    </div>
                                    <!-- END Updates Title -->

                                    <!-- Information Form -->

                                
                                    <!-- END Information Form -->
                                    <br />
                                    <table class="table table-borderless table-striped">
                                        <tbody>
                                             <tr>
                                               <td style="font-family:serif; font-size:20px; width: 378px; background-color: #f1f1f1;" class="modal-sm">
                                                   <br /><br />
                                                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                   <asp:Label ID="lblTText" runat="server" Text="Type Text"></asp:Label></td>
                                               <td style="width: 741px; background-color: #f1f1f1;"> <asp:TextBox ID="txtTypeText" runat="server" Height="146px" Width="334px" TextMode="MultiLine" CssClass="form-control"></asp:TextBox></td>
                                            </tr>
                                            <tr>
                                                <td style="width: 378px; background-color: #f1f1f1;"></td>
                                                <td style="background-color: #f1f1f1">
                                                    <asp:Button ID="btnSend" runat="server" Text="Send"  CssClass="btn btn-primary" OnClick="btnSend_Click"/>
                                                    <br />
                                                    <br />
                                                    <asp:Label ID="Label" runat="server" Font-Size="Large" ForeColor="Red"></asp:Label>
                                                </td>
                                            </tr>
                                            </tbody>
                                   </table>
                                </div>
    </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content" runat="server">
</asp:Content>
