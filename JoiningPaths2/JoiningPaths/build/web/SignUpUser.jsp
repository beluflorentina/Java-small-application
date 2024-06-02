<!-- 
    Document   : signupadmin
    Created on : 30.04.2023, 04:16:50
    Author     : Anda
-->
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>SignUp/JoiningPaths</title>
    <style>
        img{
            position: absolute;
width: 458px;
height: 458px;
left: 875px;
top: 115px;

        }  
        .SIGNUP{
            position: absolute;
width: 396px;
height: 156px;
left: 36.5%;
top: 60px;

font-family: 'Inter';
font-style: normal;
font-weight: 400;
font-size: 40px;
line-height: 48px;
text-align: center;

color: #FFFFFF;
        }
        
        .User{
          position: absolute;
width: 246px;
height: 49px;
left: 10px;
top: 10px;

font-family: 'Inter';
font-style: normal;
font-weight: 400;
font-size: 40px;
line-height: 48px;
/* identical to box height */

text-align: center;

color: #000000;

        }
        
        .button{
             position: absolute;
width: 272px;
height: 72px;
left: 25%;
top: 130px;

background: #D9D9D9;
border-radius: 20px;
border: 5px solid black;
        }
        
        .Admin{
            position: absolute;
width: 260px;
height: 40px;
left: 10px;
top: 10px;

font-family: 'Inter';
font-style: normal;
font-weight: 400;
font-size: 40px;
line-height: 48px;
text-align: center;

color: #000000;
        }
        
        .button2{
            position: absolute;
width: 272px;
height: 72px;
left: 56.5%;
top: 130px;

background: #7A7979;
border-radius: 20px;
border: 5px solid black;
        }
        
         .Username{
            position: absolute;
width: 454px;
height: 94px;
left: 295px;
top: 210px;

font-family: 'Inter';
font-style: normal;
font-weight: 400;
font-size: 40px;
line-height: 48px;

color: #FFFFFF;
        }
        
        .Password{
            position: absolute;
width: 345px;
height: 90px;
left: 774px;
top: 210px;

font-family: 'Inter';
font-style: normal;
font-weight: 400;
font-size: 40px;
line-height: 48px;

color: #FFFFFF;
        }
        
        .Email{
            position: absolute;
width: 345px;
height: 90px;
left: 299px;
top: 400px;

font-family: 'Inter';
font-style: normal;
font-weight: 400;
font-size: 40px;
line-height: 48px;

color: #FFFFFF;
        }
        
        .Phonenumber{
         position: absolute;
width: 345px;
height: 90px;
left: 774px;
top: 400px;

font-family: 'Inter';
font-style: normal;
font-weight: 400;
font-size: 40px;
line-height: 48px;

color: #FFFFFF;
        }
        
        .Create{
            position: static;
width: 481px;
height: 94px;
left: 494px;
top: 650px;

font-family: 'Inter';
font-style: normal;
font-weight: 400;
font-size: 40px;
line-height: 48px;
text-align: center;
text-decoration: none;

        }
        
        .button3{
            position: absolute;
width: 430px;
height: 84px;
left: 36%;
top: 600px;

background: #FFFFFF;
border-radius: 20px;
border:5px solid black;
        }
        input{
                 position: absolute;
width: 355px;
height: 72px;
left: 50px;
top: 66px;
font-size: 40px;

border-radius: 20px;
border: 5px solid black;

background: #D9D9D9;
        }
        .texts{
            position: relative;
            left:-1%;
            
        }    
    </style>
    <link rel="icon" href="images/logononame.jpg" type="image/x-icon"/>
  </head>
  <body bgcolor="#2A4E2D">
      <div class="SIGNUP"> <u>SIGN UP</u></div>
      <form action="RegistrationServlet" method="post">
      <div><button class="button"><label class="User">User</label></button></div>
      <div><button class="button2" onclick="location.href='SignUpAdmin.jsp';"><label class="Admin">Admin</label></button></div>
      <div class="texts">
       <div class="Username">Username<input id="floatingInput" type="text" placeholder="Username" name="username" required> </div>
      <div class="Password">Password<input id="floatingInput" type="password" placeholder="Password" name="password" required> </div>
      <div class="Email">Email<input id="floatingInput" type="email" placeholder="Your Email" name="email" required> </div>
      <div class="Phonenumber">Phone number<input id="floatingInput" placeholder="Phone Number" name="phone" required> </div>
      <input type="hidden" name="utype" value="User">
      </div>
      <div><button class="button3" type="submit"><label class="Create""><u>CREATE ACCOUNT</u></label></button></div>
      </form>
 </body>
</html>
