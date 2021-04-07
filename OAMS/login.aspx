<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site1.Master" CodeBehind="login.aspx.cs" Inherits="OAMS.login" %>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br /><br />
<div class="container">
      <div class="row">
         <div class="col-md-4 mx-auto">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="150px" src="images/generaluser.png"/>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h3>Login</h3>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Email id" TextMode="Email"></asp:TextBox>
                        </div>
                   
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                        </div>
                     </div>
                </div>
                      
                   <br />
                   <div class="row">
                     <div class="col">
                           <div class="form-group">
                              <asp:Button class="btn btn-primary btn-block btn-lg d-block" ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
                           </div>
                     </div>
                      <div class="col">
                           <div class="form-group">
                               <asp:Button class="btn btn-danger btn-block btn-lg d-block" ID="Button4" runat="server" Text="Cancel"/>
                           </div>
                     </div>
                  </div>
                  
               </div>
            </div>
            <br /><br /><br />
         </div>
      </div>
   </div>
</asp:Content>