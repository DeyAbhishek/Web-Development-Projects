<%@page import="util.DBConnector"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.util.Properties"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.*"%>
  <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" />
<br><br><br><br>
<table cellpadding="10" class="table table-striped" >
<tr>
	<th>Status </th>
	<th>Chemical ID</th>
	<th>STD Type</th>
	<th>STD Value</th>
	<th>Manufacturer Name</th>
	<th> LOT</th>
	<th> Expiration Date</th>
	<th> Date of Receipt   </th>
	<th>Date of First Use    </th>
	<th>Purity Grade    </th>
	<th>  Date of Preparation  </th>
	<th>Location    </th>
	<th>Action</th>
</tr>
<tbody>


<%
 try{
	    Connection connection = DBConnector.getConnection();				
		Statement st = connection.createStatement();
		 PrintWriter o = response.getWriter();
  String query="select * from wqcs_standards where rownum <= 30";
  ResultSet rs = st.executeQuery(query);
  while(rs.next()){
	  String status = rs.getString(1);
	  String chemical_id = rs.getString(2);
	  String std_type = rs.getString(3);
	  String std_value = rs.getString(4);
	  String manufacturer_name = rs.getString(5);
	  String lot = rs.getString(6);
	  String expiration_date = rs.getString(7);
	  String date_of_receipt = rs.getString(8);
	  String date_of_first_use = rs.getString(9);
	  String purity_grade = rs.getString(10);
	  String date_of_preparation = rs.getString(11);
	  String location = rs.getString(12);
	  %>
	<tr>  <td><%= status %></td>
	<td><%= chemical_id %></td>
	<td><%= std_type %></td>
	<td><%= std_value %></td>
	<td><%= manufacturer_name %></td>
	<td><%= lot %></td>
	<td><%= expiration_date %></td>
	<td><%= date_of_receipt %></td>
	<td><%= date_of_first_use %></td>
	<td><%= purity_grade %></td>
	<td><%= date_of_preparation %></td>
	<td><%= location %></td>
	<td><img src="images/update.png" height="30" /><img src="images/delete.png" height="30" /></td>
	</tr>
	  <%
	
  }
  
 
 }catch(Exception e){
  out.write("Exception : "+e);
 }
%>



</tbody>
</table>
