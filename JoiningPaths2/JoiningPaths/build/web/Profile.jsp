<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <link rel="icon" href="images/logononame.jpg" type="image/x-icon"/>
        <title>Your Profile</title>
        <style> 
            .img{
                height:200px;
            }
            
            .profile-pic{
    height: 200px;
    width: 200px;
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%,-50%);
    border-radius: 50%;
    overflow: hidden;
 

            }
           
            #photo{
                height: 200px;
                width: 200px;
                position: absolute;
                top: 50%;
                left: 50%;
                transform: translate(-50%,-50%);
                border-radius: 50%;
                overflow: hidden;
               }
            
            #filetype{
                display: none;
            }
            
            #uploadBtn{
               height: 40px;
               width: 100%;
               position: absolute;
               bottom: 0;
               left: 50%;
               transform: translateX(-50%);
               text-align: center;
               background: rgba(0, 0, 0, 0.7);
               color: #5CE1E6;
              font-family: Inter;
              cursor: pointer;
              display: none;
            }
              .button{
            position: absolute;
width: 200px;
height: 66px;
left: 40%;
top: 70%;

background:#00000;
border-radius: 20px;
        } 
        
        </style>
    </head>
    <body>
        <%@ include file="Template.html" %>
        <form action="ProfileServlet" method="post" enctype="multipart/form-data">
        <div class="profile-pic">   <img src="images/image.jpg" id="photo">
           <input type="file" name="imagine" id="filetype" >
       <label for="filetype" id="uploadBtn">Choose Photo</label></div>
           <input class="button" type="submit" value="Make your changes">
       </form>
       
       
       <script>
           const imgDiv=document.querySelector('.profile-pic')
           const img=document.querySelector('#photo');
           const file=document.querySelector('#filetype');
           const uploadBtn=document.querySelector('#uploadBtn');
           //if user hover on profile div, i made uploadeBtn display none
           imgDiv.addEventListener('mouseenter', function()
           {
               uploadBtn.style.display="block";
           });
           //if user hover out
           imgDiv.addEventListener('mouseleave', function(){
                uploadBtn.style.display="none";
           });
           //image showing functionality when we choose an image to upload
           //when we choose a photo to upload
           file.addEventListener('change', function(){
             const choosedFile=this.files[0];
             if(choosedFile){
                const reader=new FileReader();//predefine function of JS
                reader.addEventListener('load', function(){
                      img.setAttribute('src', reader.result);
           });
             reader.readAsDataURL(choosedFile);
             }
           });
           
           
       </script>
    </body>
</html>
