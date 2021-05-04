<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/Dashboard.Master" CodeBehind="View_consultants.aspx.cs" Inherits="OAMS.View_consultants" EnableEventValidation ="False"%>


<asp:Content ID="Content2" ContentPlaceHolderID="cpmain" runat="server">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
</head>
<body>
   <form id="form1">
       <center><h3>List of Consultants</h3></center>
    <div>  
        <asp:Repeater ID="RepeatInformation" runat="server">  
            <HeaderTemplate>  
                <table border="2" class="table" style="background-color:white;">  
                    <thead class="thead-dark">
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
                                Status 
                            </th> 
                         
                    </tr>
                   </thead>
            </HeaderTemplate>  
            <ItemTemplate>  
                <tr class="tblrowcolor">  
                    <td>  
                        <%#DataBinder.Eval(Container,"DataItem.Name")%>  
                    </td>  
                    <td>  
                        <%#DataBinder.Eval(Container,"DataItem.Email_ID")%>  
                    </td>  
                    <td>  
                        <%#DataBinder.Eval(Container,"DataItem.Phone_No")%>  
                    </td>  

                    <td>  
                        <%#DataBinder.Eval(Container,"DataItem.Gender")%>  
                    </td>  
                    <td>  
                        <%#DataBinder.Eval(Container,"DataItem.DOB")%>  
                    </td>  
                    <td>  
                        <%#DataBinder.Eval(Container,"DataItem.City")%>  
                    </td>  
                    <td>  
                        <%#DataBinder.Eval(Container,"DataItem.State")%>  
                    </td>  
                    <td>  
                        <%#DataBinder.Eval(Container,"DataItem.Pincode")%>  
                    </td>  
                    <td>
                        <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-primary"><%#DataBinder.Eval(Container,"DataItem.Activation")%></asp:LinkButton>
                    </td>
                </tr>  
            </ItemTemplate>  
           
          
            <FooterTemplate>  
               
                </table>  
            </FooterTemplate>  
        </asp:Repeater>  
    </div>  
    </form>  
</body>
</html>
</asp:Content>