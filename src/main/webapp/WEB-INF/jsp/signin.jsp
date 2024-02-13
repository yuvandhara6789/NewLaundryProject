<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://kit.fontawesome.com/ae73087723.js" crossorigin="anonymous"></script>
    <title>Login Page</title>
</head>
<style>
    @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700;800;900&display=swap');

    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }

    body {
        font-family: 'Poppins', sans-serif;
    }

    .container {
        width: 100%;
        height: 100vh;
        background-image: linear-gradient(rgba(0, 0, 50, 0.8), rgba(0, 0, 50, 0.8)), url(loginBg.jpg);
        background-position: center;
        background-size: cover;
        /* position: relative; */
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .form-box {
        width: 90%;
        max-width: 450px;
        background: #fff;
        padding: 50px 60px 70px;
        text-align: center;
        border-radius: 10px;
    }

    .form-box h1 {
        font-size: 30px;
        margin-bottom: 50px;
        color: #3c00a0;
        position: relative;
    }

    .form-box h1::after {
        content: "";
        width: 30px;
        height: 4px;
        border-radius: 3px;
        background: #3c00a0;
        position: absolute;
        bottom: -12px;
        left: 50%;
        transform: translate(-50%);
    }

    .formHead {
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
        background-image: url(loginbg.png);
        background-position: center;
        background-size: cover;
    }

    .textfield {
        position: relative;
        border-bottom: 2px solid #adabad;
        margin: 20px 0;
        width: 270px;
    }

    .inputfield {
        width: 270px;
        padding: 0 5px;
        height: 40px;
        font-size: 16px;
        border: none;
        background: none;
        outline: none;
    }

    .inputlabels {
        position: absolute;
        top: 50%;
        left: 5px;
        color: #adadad;
        transform: translateY(-50%);
        font-size: 16px;
        pointer-events: none;
        transition: .4s;
    }

    .textfield span::before {
        content: '';
        position: absolute;
        top: 40px;
        left: 0;
        width: 0%;
        height: 2px;
        background: #3c00a0;
        transition: .4s;
    }

    .inputfield:focus~.inputlabels,
    .inputfield:valid~.inputlabels {
        top: -5px;
        color: #adabad;
    }

    .inputfield:focus~span::before,
    .inputfield:valid~span::before {
        width: 100%;
    }

    .enquirybtn {
        width: 120px;
        height: 40px;
        background-color: #3c00a0;
        color: white;
        cursor: pointer;
        border: none;
        font-size: 16.5px;
        font-weight: 500;
        border-radius: 8px;
        margin-top: 10px;
        letter-spacing: 1.2px;
    }

    .iconstyles{
        position: absolute;
        right: 0;
        font-size: 20px;
        cursor: pointer;
        transition: all .5s;
    }
</style>
<body>
    <div class="container">
        <div class="form-box">
            <h1>Login In</h1>
            <form method="post" action="adminLogin" id="form1">
                <div style="display: flex; justify-content: space-between; align-items: center;">
                    <div class="textfield">
                        <input class="inputfield" type="text" id="userName" name="userName" required>
                        <span></span>
                        <label class="inputlabels">Username</label>
                    </div>
                    <div style="position: relative; margin-bottom: 10px;">
                        <i class="fa-solid fa-user iconstyles"></i>
                    </div>
                </div>

                <div style="display: flex; justify-content: space-between; align-items: center;">
                    <div class="textfield">
                        <input class="inputfield" type="password" required id="passWord" name="passWord">
                        <span></span>
                        <label class="inputlabels">Password</label>
                    </div>
                    <div style="position: relative;  margin-bottom: 10px;">
                        <i class="fa-solid fa-eye-slash iconstyles" id="eyeicon"></i>
                    </div>
                </div>

                <div style="margin-top: 20px; display:flex; align-items: center; justify-content: center;">
                    <button type="submit" class="enquirybtn">Submit</button>
                </div>
            </form>
        </div>
    </div>

    <div class="container-fluid position-relative d-flex p-0">
        <!-- Spinner Start -->
        <div id="spinner" class="show bg-dark position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
            <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
                <span class="sr-only">Loading...</span>
            </div>
        </div>
       
      <%--   <!-- Sign In Start -->
        <div class="container-fluid">
            <div class="row h-100 align-items-center justify-content-center" style="min-height: 100vh;">
                <div class="col-12 col-sm-8 col-md-6 col-lg-5 col-xl-4">
                    <div class="bg-secondary rounded p-4 p-sm-5 my-4 mx-3">
                        <div class="d-flex align-items-center justify-content-between mb-3">

                                <h3 class="text-primary"><i class="fa fa-user-edit me-2"></i>Website Admin</h3>
                            </a>
                            <form method="post" action="adminLogin" id="form1" modelAttribute="login">
                            <h3>Sign In</h3>
                        </div>
                        <div class="form-floating mb-3">
                            <input  class="form-control" id="userName" name="userName" placeholder="username" style="color: antiquewhite;">
                            <label for="floatingInput" style="color: white;">Username</label>
                        </div>
                        <div class="form-floating mb-4">
                            <input type="password" class="form-control" id="passWord" name="passWord" placeholder="Password" style="color: antiquewhite;">
                            <label for="floatingPassword" style="color: white;">Password</label>
                        </div>
                        <div class="d-flex align-items-center justify-content-between mb-4">
                            <div class="form-check">
                                <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                <label class="form-check-label" for="exampleCheck1">Check me out</label>
                            </div>
                             <c:if test="${errorMsg}">
                          <div class="p-2 mb-2 bg-warning text-dark">${errorMsg}</div>
                        </c:if>
                        </div>
                        <button type="submit" class="btn btn-primary py-3 w-100 mb-4">Sign In</button>
                            </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- Sign In End --> --%>
        
     
    </div>

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/chart/chart.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="lib/tempusdominus/js/moment.min.js"></script>
    <script src="lib/tempusdominus/js/moment-timezone.min.js"></script>
    <script src="lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
    
       <script>
       
        let eyeicon = document.getElementById("eyeicon")
        let password = document.getElementById("passWord")

        eyeicon.onclick= function(){
            if(password.type == "password"){
                password.type = "text"
                eyeicon.classList.replace("fa-eye-slash", "fa-eye")
            }else{
                password.type = "passWord"
                eyeicon.classList.replace("fa-eye", "fa-eye-slash")

            }
        }
    </script>
    
</body>

</html>