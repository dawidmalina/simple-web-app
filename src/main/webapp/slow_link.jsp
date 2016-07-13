<%
    if (request.getParameter("time") == null) {
        Thread.sleep(10000); // sleep 10 seconds
    } else {
        Thread.sleep(Integer.parseInt(request.getParameter("time")) * 1000);
    }
%>

<html>
<body>
<h2>SimpleWebApp!</h2>
<p>Your current session id: <%= session.getId() %></p>
<b>Damn it! That was really slow [ 
<%
    if (request.getParameter("time") == null) {
        out.println("10");
    } else {
        out.println(Integer.parseInt(request.getParameter("time")));
    }
%>
 seconds ]</b>

<ul>
  <li><a href="index.jsp">Home</a></li>
</ul>

</body>
</html>
