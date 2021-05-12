﻿<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/Dashboard.Master"  CodeBehind="View_users.aspx.cs" Inherits="OAMS.View_users" EnableEventValidation ="False"%>

<asp:Content ID="Content2" ContentPlaceHolderID="cpmain" runat="server">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
</head>
<body>
   
       <center><h3>List of Users</h3></center>
    <div>  
        <asp:Repeater ID="RepeatInformation" runat="server">  
            <HeaderTemplate>  
                <table border="1" style="border-radius:5px;" class="table table-responsive table-striped table-borderless">  
                    <thead class="thead-dark ">
                    <tr>  
                            <th scope="col">  
                                Name  
                            </th>  
                            
                            <th scope="col">  
                               Email_ID 
                            </th>  
                            
                            <th scope="col">  
                               Phone_No 
                            </th> 

                            <th scope="col">  
                                Gender 
                            </th> 

                            <th scope="col">  
                                DOB 
                            </th> 

                            <th scope="col">  
                                City 
                            </th> 

                            <th scope="col">  
                                State 
                            </th> 

                            <th scope="col">  
                                Pincode 
                            </th> 

                            <th scope="col">  
                                 Current Status 
                            </th> 
                            
                            <th scope="col">  
                                Change Status 
                            </th>
                            
                            <th scope="col">  
                                View Complaints  
                            </th>
                    </tr>
                   </thead>
            </HeaderTemplate>  
            <ItemTemplate>  
                <tr class="tblrowcolor">  
                   
                    <td class="text-nowrap">  
                        <%#Eval("Name")%>  
                        <asp:TextBox class="form-group" ID="name" Visible="false" name="name" text='<%#Eval("Name")%>'  runat="server"></asp:TextBox>
                    </td>  
                    <td>  
                        <%#Eval("Email_ID")%>  
                    </td>  
                    <td>  
                        <%#Eval("Phone_No")%>  
                    </td>  

                    <td>  
                        <%#Eval("Gender")%>  
                    </td>  
                    <td class="text-nowrap">  
                        <%#Eval("DOB","{0:dd-MM-yyyy}")%>  
                    </td>  
                    <td>  
                        <%#Eval("City")%>  
                    </td>  
                    <td>  
                        <%#Eval("State")%>  
                    </td>  
                    <td>  
                        <%#Eval("Pincode")%>  
                    </td>   

                    <td>
                        <%# Eval("Activation").ToString()=="Activated" ? "<asp:LinkButton id='LinkButton1' runat='server' class='btn btn-block btn-primary'> Activated </asp:LinkButton>" : "<asp:LinkButton id='LinkButton2' class='btn btn-block btn-danger' runat='server'> Deactivated </asp:LinkButton>" %>
                    </td> 

                    <td>
                         
                        <asp:button class="btn btn-dark" runat="server" name="change" type="submit" Text="Change" OnClick="changestatus" ></asp:button>
                        <asp:TextBox class="form-group" ID="uid" Visible="false" name="uid" text='<%#Eval("UID")%>'  runat="server"></asp:TextBox>
                        <asp:TextBox class="form-group" ID="activation" Visible="false" name="activation" text='<%#Eval("Activation")%>'  runat="server"></asp:TextBox>
                        
                    </td>

                     <td>
                        <asp:button class="btn btn-info" runat="server" name="complaints" type="button" Text="Complaints" OnClick="c_admincomplaints"></asp:button>
                    </td>
                </tr>  
            </ItemTemplate>   
            
            <FooterTemplate>  
               
                </table>  
            </FooterTemplate>  
        </asp:Repeater>  
    </div>  
   
</body>
</html>

</asp:Content>