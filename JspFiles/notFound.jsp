<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <title>404 Error Page</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta https-equiv="X-UA-Compatible" content="ie=edge" />
  <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@900&display=swap" rel="stylesheet">
<style>
   *{
    padding: 0;
    margin: 0;
    box-sizing: border-box;
    font-family: sans-serif;
}
body{
    background-color: #ffb000;
}
.container{
    padding-left: 20px;
    padding-right: 20px;
    margin-top: auto;
    margin-bottom:auto ;
}
.card{
    background-color: #ffb000;
    margin-top: 100px;
    position: relative;  

}
.star{
    position: absolute;
}
.star img{
    width: 100%;
}

.top{
    left: 37px;
    top: -71px;
    width: 300px;
}
.top-rg{
    right: 37px;
    width: 83px;
    top: -71px

}
.bottom-lf{
    bottom: -160px;
    width: 300px;
    left: 37px;
}
.bottom-rg{
    right: 37px;
    bottom: -160px;
    width: 83px;

}
.flex{
    display: flex;
    justify-content: center;
    align-items: center;
}


.error{
    z-index: 1;
    position: relative;
}

.error span{
    font-size: 90px;
    color: #150035;
    font-weight: 900;
    white-space: pre-line;
    line-height: 1;
    letter-spacing: 3px;
    text-shadow: 1px 7px 1px #fff;
}
.error p{
    color: #fff;
    white-space: pre-line;
    padding-top: 25px;
    font-size: 15px;
    line-height: 1.3;
}

.img img{
    width: 570px;
}
button{
    width: 100px;
    padding: 8px;
    font-size: 18px;
    font-weight: 700;
    margin-top: 25px;
    border: none;
    background-color:#150035 ;
    color:#ffb000 ;
    position: relative;
   
}
button::after{
    content: '';
    width: 96px;
    height: 35px;
    border: 3px solid #fff;
    position: absolute;
    top: 7px;
    left: 5px;
    z-index: -1;
}
a{
    text-decoration: none;
    color:#ffb000 ;
}
.nav{
    background: #DA4453;  /* fallback for old browsers */
    background: -webkit-linear-gradient(to right, #480048, #C04848);  /* Chrome 10-25, Safari 5.1-6 */
    background: linear-gradient(to right, #480048, #C04848); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
     width: 100%;
     display: flex;
     height: 80px;
     position: fixed;
     top: 0px;
     justify-content: space-between;
}
h1{
    margin-top: 10px;
    padding: 15px;
    margin-left: 10px;
    color: white;
    font-weight: bold;
    font-size: 28px;
}
.btn1{
    font-size: 15px;
    padding: 10px;
    border-radius: 4px;
    margin-top: 23px;
    margin-right: 28px;
    width: 110px;
    height: 45px;
    background-color: #868E96;
    border: none;
    color: white;
    font-weight: bolder;
    cursor: pointer;

}
</style>
</head>

<body>
   
    <div class="card">
        <nav class="nav">
            <h1>ALIGARH INSTITUTE OF TECHNOLOGY</h1>
            <button class="btn1"><a href="../index.html">Home</a></button>
    
        </nav>
        
        <!-- <div class="star top">
            <img src="https://svgshare.com/i/YdG.svg">
        </div>
        <div class="star top-rg">
          <img src="https://svgshare.com/i/Ydc.svg">
        </div> -->
        <div class="star bottom-lf">
          <img src="https://svgshare.com/i/YdG.svg">
        </div>
        <div class="star bottom-rg">
          <img src="https://svgshare.com/i/Ydo.svg">
        </div>
          <div class="container flex">
              <div class="error">
                  <span>404
                      error
                  </span>
                  <p>It Seems Like You Entered Wrong Details</p>
                  
                  <button> 
                    <a href="../htmlfiles/login.html">Login</a>
                </button>
              </div>
              <div class="img">
                <img src="https://svgshare.com/i/Ye7.svg">
            </div>
    
              
          </div>
      </div
</body>
</html>