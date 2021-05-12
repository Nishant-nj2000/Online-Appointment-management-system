<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Dashboard.Master"  CodeBehind="c_admincomplaints.aspx.cs" Inherits="OAMS.c_admincomplaints" %>
<asp:Content ID="Content2" ContentPlaceHolderID="cpmain" runat="server">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
</head>
<body>
    <form id="form1">
        <center><h3>Complaints</h3></center>
        <div>
            <asp:Repeater ID="ComplaintsRepeater" runat="server">  
            <HeaderTemplate>  
                <table border="1" style="border-radius:5px;" class="table table-striped">  
                    <thead class="thead-dark">
                    <tr>     
                            <th scope="col">  
                               Type  
                            </th> 

                            <th scope="col">  
                                Complaint Description 
                            </th> 
                            <th scope="col">  
                                Complaint To 
                            </th> 

                    </tr>
                   </thead>
            </HeaderTemplate>  
            <ItemTemplate>  
                <tr class="tblrowcolor">  

                    <td>  
                        <%#Eval("type")%>  
                    </td>  

                    <td>  
                        <%#Eval("description")%>  
                    </td>  
                    
                     <td>  
                        <%#Eval("From_UID")%>    
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