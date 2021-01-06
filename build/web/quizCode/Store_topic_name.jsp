

<%@page import="java.sql.*"%>
<%
 String NewTopic=request.getParameter("topicEnter");

            try
            {
              

Class.forName("com.mysql.jdbc.Driver");
                
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","1234");

PreparedStatement ps=con.prepareStatement("insert into quizjavatopic values(?)");

ps.setString(1,NewTopic);

ps.executeUpdate();


                
            }
         catch(ClassNotFoundException e)
         {
            out.println("class not found exception");
         }
         catch(SQLException e)
         {
             out.println("sql exception");
         }
%>
<jsp:forward page="java.jsp"></jsp:forward>
