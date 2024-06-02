	
<%@page contentType="text/html"%>

<%@page pageEncoding="UTF-8"%>

 

<html>

  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>LogIn/JoiningPaths</title>
    <style>
        body{
            overflow-x:hidden;
        }

        img{
            position: relative;
width: 458px;
height: 458px;
left: 50px;
top: 100px;

        }  
      
        .LogIn{
            position: absolute;
width: 538px;
height: 72px;
left: 17.5%;
top: 100px;

font-family: 'Inter';
font-style: normal;
font-weight: 400;
font-size: 40px;
line-height: 48px;
text-align: center;


color: #FFFFFF;


        }
        .Username{
 position: relative;
width: 150px;
height: 70px;
left: 23%;
top: 150px;

font-family: 'Inter';
font-size: 30px;
line-height: 48px;

color: #FFFFFF;
        }
        
        .Password{
            position: relative;
width: 228px;
height: 47px;
left: 23%;
top: 175px;

font-family: 'Inter';
font-size: 30px;
line-height: 48px;

color: #FFFFFF;
        }
        .boxpassword{
           
        }
        .SignUp{
            position: absolute;
    left: 21.5%;
    top: 500px;
    font-size:5px;

font-family: 'Inter';
font-style: normal;
font-weight: 400;
font-size: 40px;
line-height: 48px;
text-align: center;

color: #FFFFFF;
        }
        .rect{
     position: absolute;
width: 37%;
height: 100%;
left: 980px;
top: 0px;

background: #001E1D;
        }
        input{
                 position: absolute;
width: 250px;
height: 50px;
left: 50px;
top: 50px;
font-size: 25px;

background: #D9D9D9;
        }
        .buton{
            position: relative;
            left: 29.5%;
            top: 275px;
            width: 150px;
            height: 50px;
            color:#2A4D2E;
            justify-content: center;
            border-radius: 20px;
            background-color: white; 
            border: 10px inset black;
            font-familly:'Inter'
        } 
    </style>
    <link rel="icon" href="images/logononame.jpg" type="image/x-icon"/>
  </head>
  <body bgcolor="#2A4E2D" > 
    <input type="hidden" id="status" value="<%=request.getAttribute("status")%>">
    <input type="hidden" id="status1" value="<%= request.getParameter("statusLogin") %>">
        <form action="LoginServlet" method="post">
    <div class="LogIn"><u>LOG IN</u></div>
    <div class="Username">Username<input id="floatingInput" type="text" name="userName" required></div>
    <div class="Password">Password<input id="floatingInput" type="password" name="passWord" required></div>
    <input class="buton" type="submit" value="LogIN">
        </form>     
    <div class="SignUp">New to this site?<a href="SignUpUser.jsp" style="color:#FFFFFF;"> <u>Sign Up</u</a></div>     
     <div class="rect"><img src="images/LOGO.jpg" alt="LOGO"><div/>
     
     <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
       
         <script type="text/javascript">
             var status = document.getElementById("status").value;
             if (status == "success"){
                 swal("Congrats!","Account has been created successfully");
             }
             else if (status == "failed")
             {
                 swal("Sadly, the account couldn't be created. Some of the data you provided may correspond to an existing account.")
             }
             </script>
     
     <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
             
    <script type="text/javascript">
         var statusLogin = document.getElementById("status1").value;
          if (statusLogin == "failed") {
           swal("Wrong username or password.");
     }
    </script>
    

    
  </body>
</html>
