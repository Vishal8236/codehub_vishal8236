

<%@page import="java.sql.*"%>
<%
 String topicn1=request.getParameter("topicN");   
 String ques1=request.getParameter("ques");
 String option11 = request.getParameter("op1");
 String option22 = request.getParameter("op2");
 String option33 = request.getParameter("op3");
 String option44 = request.getParameter("op4");
 String ans1 = request.getParameter("ans");
            try
            {
              

Class.forName("com.mysql.jdbc.Driver");
                
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/quiz1","root","1234");

PreparedStatement ps=con.prepareStatement("insert into QuizJavaTopicQues values(?,?,?,?,?,?,?)");


ps.setString(1,ques1);
ps.setString(2,option11);
ps.setString(3,option22);
ps.setString(4,option33);
ps.setString(5,option44);
ps.setString(6,ans1);
ps.setString(7,topicn1);
        
ps.executeUpdate();
               
RequestDispatcher rd=request.getRequestDispatcher("Q_java.jsp");  
rd.forward(request, response);

                
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