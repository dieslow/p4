<%-- 
    Document   : DataMahasiswa
    Created on : Oct 27, 2014, 10:02:25 PM
    Author     : dieslow
--%>

<%@page import="com.utsp4.tanzah.model.Mahasiswa"%>
<%@page import="java.util.List"%>
<%@page import="com.utsp4.tanzah.dao.MahasiswaDao"%>
<%@page import="com.utsp4.tanzah.database.KoneksiDatabase"%>
<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<!DOCTYPE html>
<%
String rowData = "";
String exist = "";
try {
            String driver = "oracle.jdbc.driver.OracleDriver";
            String url = "jdbc:oracle:thin:@localhost:1521:xe";
            String user = "belajar";
            String pass = "orcl";

            KoneksiDatabase conn = new KoneksiDatabase(driver, url, user, pass);
            MahasiswaDao md = new MahasiswaDao(conn);
            List<Mahasiswa> isiDb =  null;
		try {
			isiDb = md.cari();
			for(Mahasiswa ls : isiDb){
			request.setAttribute("npm", ls.getNpm());
                        request.setAttribute("nama", ls.getNama());
                        rowData += "<tr>"
                                    + "<td></td>"
                                    + "<td>"+(ls.getNpm() != null ? ls.getNpm() : "")+"</td>"
                                    + "<td>"+(ls.getNama() != null ? ls.getNama() : "")+"</td>"
                                    + "<td>"+(ls.getTempatLahir() != null ? ls.getTempatLahir() : "")+","+(ls.getTglLahir() != null ? ls.getTglLahir() : "")+"</td>"
                                    + "<td>"+(ls.getJenisKelamin() != null ? ls.getJenisKelamin() : "")+"</td>"
                                    + "<td>"+(ls.getAlamat() != null ? ls.getAlamat() : "")+"</td>"
                                    + "</tr>";
                            exist = "true";
	        	
	        }
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        } catch (Exception e) {
        }
%>
<script language="javascript">
    function doAdd(){
        location.href = "FormMahasiswaPanel.html";
    }
    
</script>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Dashboard Template for Bootstrap</title>

    <link href="<%= request.getContextPath() %>/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="<%= request.getContextPath() %>/css/aplikasi.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="<%= request.getContextPath() %>/css/dashboard.css" rel="stylesheet">
  </head>

  <body>

    <div class="container">
      <div class="row">
        
          <h2 class="sub-header">Data Mahasiswa</h2>
          <div class="table-responsive">
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>#</th>
                  <th>NPM</th>
                  <th>Nama</th>
                  <th>TTL</th>
                  <th>Jenis Kelamin</th>
                  <th>Alamat</th>
                </tr>
              </thead>
              <tbody>
                <% out.println(rowData);%>
              </tbody>
            </table>
              <form action="FormMahasiswaPanel.html">
                  <input type="submit" value="Add New Mahasiswa" class="btn" id="btnAdd" style="margin-left:5%;"/>
              </form>
              
          </div>
      </div>
    </div>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="<%= request.getContextPath() %>/js/bootstrap.min.js"></script>
    <script src="<%= request.getContextPath() %>/js/jquery.min.js"></script>
    <script src="<%= request.getContextPath() %>/js/docs.min.js"></script>
    
  </body>
</html>

