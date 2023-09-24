<%@ page import="model.elecModel"%>
<%@ page import="model.fwdWorkerBean"%>
<%@ page import="model.fwdToWorkerModel"%>
<%@ page import="model.elecBean"%>
<%@ page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ include file="admin_nav.jsp"%>

<div class="container">

	
		<div>
			<h3 style="color: #337ab7;">#Electrical Services</h3>
			<div class="row">

		<form method="post">
			<table class="table table-hover">

				<tr>
					<th style="background-color: #4b95e8" class="col-md-1">UserID</th>
					<th style="background-color: #92bff1">Service ID</th>
					<th style="background-color: #4b95e8">Service Name</th>
					<th style="background-color: #92bff1">Date</th>
					<th style="background-color: #4b95e8">Time</th>
					<th style="background-color: #92bff1">Address</th>
					<th style="background-color: #92bff1; text-align: center"
						class="col-md-3">Action</th>
				</tr>
<%
   		elecModel dao=new elecModel();
   		List<elecBean> list=dao.getData("s03");
%>
				<tr>

					<%
	for(elecBean obj:list)
	{
%>
					<td><%=obj.getId()%></td>
					<td><%=obj.getBookId()%></td>
					<td><%=obj.getSe_name()%></td>
					<td><%=obj.getDate()%></td>
					<td><%=obj.getTime()%></td>
					<td><%=obj.getAddress()%></td>

					<td style="text-align: center">
					<a class="btn btn-primary btn-sm"
						href="fwd_elec.jsp?uid=<%=obj.getId()%>&id=<%=obj.getBookId()%>&se_name=<%=obj.getSe_name()%>&date=<%=obj.getDate()%>&time=<%=obj.getTime()%>&city=<%=obj.getCity()%>&area=<%=obj.getArea()%>&address=<%=obj.getAddress()%>">
							<i class="glyphicon glyphicon-edit icon-white"></i> Forward TO Worker
					</a></td>
				</tr>
				<%} %>

			</table>
		</form>
	</div>
</div>
</div>
<div class="container">

	
		<div>
			<h3 style="color: #337ab7;">#Forwarded to Worker Electrical Services</h3>
			<div class="row">

		<form method="post">
			<table class="table table-hover">

				<tr>
					<th style="background-color: #4b95e8" class="col-md-1">UserID</th>
					<th style="background-color: #92bff1">Service ID</th>
					<th style="background-color: #4b95e8">Service Name</th>
					<th style="background-color: #92bff1">Date</th>
					<th style="background-color: #4b95e8">Time</th>
					<th style="background-color: #92bff1">Address</th>
					<th style="background-color: #4b95e8">Worker ID</th>
					<th style="background-color: #92bff1; text-align: center"
						class="col-md-3">Action</th>
				</tr>
<%
   		fwdToWorkerModel fm=new fwdToWorkerModel();
   		List<fwdWorkerBean> lst=fm.getallData("s02");
%>
				<tr>

					<%
	for(fwdWorkerBean fw:lst)
	{
%>
					<td><%=fw.getUId()%></td>
					<td><%=fw.getBookId()%></td>
					<td><%=fw.getService()%></td>
					<td><%=fw.getDate()%></td>
					<td><%=fw.getTime()%></td>
					<td><%=fw.getAddress()%></td>
					<td><%=fw.getWorker()%></td>

					<td style="text-align: center">
					<a class="btn btn-primary btn-sm"
						href="del_s.jsp?uid=<%=fw.getUId()%>&id=<%=fw.getBookId()%>&se_name=<%=fw.getService()%>
						&date=<%=fw.getDate()%>&time=<%=fw.getTime()%>&city=<%=fw.getCity()%>&area=<%=fw.getArea()%>&address=<%=fw.getAddress()%>&workerid=<%=fw.getWorkerId()%>">
							<i class="glyphicon glyphicon-edit icon-white"></i> Forward TO Worker
					</a></td>
				</tr>
<%	} %>

			</table>
		</form>
	</div>
</div>
</div>


<%@ include file="admin_footer.jsp"%>