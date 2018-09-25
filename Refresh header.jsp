<%@ page import = "java.io.*,java.util.*" %>

<html>
   
   <head>
      <title>Auto Refresh Header </title>
   </head>
   
   <body>
      <center>
         <h2>Auto Refresh Header</h2>
         <%
           
            response.setIntHeader("Refresh", 5);
            
            // Get current time
            Calendar calendar = new GregorianCalendar();
            
            String am_pm;
            int hour = calendar.get(Calendar.HOUR);
            int minute = calendar.get(Calendar.MINUTE);
            int second = calendar.get(Calendar.SECOND);
            
            if(calendar.get(Calendar.AM_PM) == 0) 
               am_pm = "AM";
            else
               am_pm = "PM";
               String CT = hour+":"+ minute +":"+ second +" "+ am_pm;
               out.println("Current Time is: " + CT + "\n");
         %>
      </center>
   
   </body>
</html>
