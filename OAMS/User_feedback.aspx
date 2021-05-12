<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Dashboard.Master" CodeBehind="User_feedback.aspx.cs" Inherits="OAMS.User_feedback" EnableEventValidation="false" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cpmain" runat="server">
 <!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
</head>
<body>
   <form id="form2">
       <center><h3>Register Feedback</h3></center>
    <div> 
        <asp:Repeater ID="feedback" runat="server">
    <HeaderTemplate>
		
    </HeaderTemplate>
            <ItemTemplate>
			
                
	<!-- Card Start -->
	<div class="card" >
		<div class="card-body">		
			<table class="tabel table-striped table-hover">
							<thead>
								<tr>
									<th>
									Consultant Name :
								</th>
								<th>
								<%#DataBinder.Eval(Container,"DataItem.Name")%>
								</th>
								</tr>
								
							</thead>
							<tbody>
								<tr>
									<td>
										Email Id :
									</td>
									<td>
										<%#DataBinder.Eval(Container,"DataItem.Email_Id")%> 
									</td>
								</tr>
								<tr>
									<td>
										Appointment Date :
									</td>
									<td>
										<%#DataBinder.Eval(Container,"DataItem.AppDate")%> 
									</td>
								</tr>
								<tr>
									<td>
										Appointment Time :
									</td>
									<td>
										<%#DataBinder.Eval(Container,"DataItem.time")%> 
									</td>
								</tr>
								   
							<tr>
								<th scope="row">Rating :</th>
								<td>
									<asp:DropDownList ID="ratings" name="ratings" runat="server">
									<asp:ListItem Value="0" >-- Select --</asp:ListItem>
									<asp:ListItem Value="1" Text="1">1</asp:ListItem>
									<asp:ListItem Value="2">2</asp:ListItem>
									<asp:ListItem Value="3">3</asp:ListItem>
									<asp:ListItem Value="4">4</asp:ListItem>
									<asp:ListItem Value="5">5</asp:ListItem>
								</asp:DropDownList>
								</td>
							</tr>
								
								
				                <tr>
									<th scope="row">
										Comments :
									</th>
									<td>
									<asp:TextBox class="form-group" ID="comment" name="comment" runat="server" ></asp:TextBox>
								<asp:TextBox class="form-group" ID="uid" Visible="false" name="uid" text='<%#DataBinder.Eval(Container,"DataItem.uid")%>'  runat="server"></asp:TextBox>
				
									</td>
				                </tr>
								
								<tr>
									<td colspan="2"> <asp:button class="btn btn-success" name="bttn" type="submit" Text="submit" runat="server" OnClick="Feedback_insert" ></asp:button></td>
								</tr>
										

								</tbody>
				</table>
								
								   
					</div>
			</div>
		

            </ItemTemplate>
			<FooterTemplate>
				
			</FooterTemplate>
            </asp:Repeater>
	      </div>  
    </form>  
</body>
</html>




</asp:Content>