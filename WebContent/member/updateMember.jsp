<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sx" uri="/struts-dojo-tags"%>
<!DOCTYPE html>
<html lang=""><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Title Page</title>
    <link rel="stylesheet" href="<%= request.getContextPath()%>/css/member/bootstrap.min.css">

    <style type="text/css">
      #regContainer{
    margin-top: 3%;  
}

.panel-login {
    border-color: #ccc;
     background-color: #f9f8f8;
    -webkit-box-shadow: 0px 2px 3px 0px rgba(0,0,0,0.2);
    -moz-box-shadow: 0px 2px 3px 0px rgba(0,0,0,0.2);
    box-shadow: 0px 2px 3px 0px rgba(0,0,0,0.2);
}
.panel-login>.panel-heading {
    text-align:center;
}
.panel-login>.panel-heading a{
    text-decoration: none;
    font-weight: bold;
    font-size: 28px;
    -webkit-transition: all 0.1s linear;
    -moz-transition: all 0.1s linear;
    transition: all 0.1s linear;
}
.panel-login>.panel-heading a.active{
    font-size: 34px;
}
.panel-login>.panel-heading hr{
    margin-top: 10px;
    margin-bottom: 0px;
    clear: both;
    border: 0;
    height: 1px;
    background-image: -webkit-linear-gradient(left,rgba(0, 0, 0, 0),rgba(0, 0, 0, 0.15),rgba(0, 0, 0, 0));
    background-image: -moz-linear-gradient(left,rgba(0,0,0,0),rgba(0,0,0,0.15),rgba(0,0,0,0));
    background-image: -ms-linear-gradient(left,rgba(0,0,0,0),rgba(0,0,0,0.15),rgba(0,0,0,0));
    background-image: -o-linear-gradient(left,rgba(0,0,0,0),rgba(0,0,0,0.15),rgba(0,0,0,0));
}
.panel-login input[type="text"],.panel-login input[type="email"],.panel-login input[type="password"] {
    height: 45px;
    border: 1px solid #ddd;
    font-size: 16px;
    -webkit-transition: all 0.1s linear;
    -moz-transition: all 0.1s linear;
    transition: all 0.1s linear;
}
.panel-login input:hover,
.panel-login input:focus {
    outline:none;
    -webkit-box-shadow: none;
    -moz-box-shadow: none;
    box-shadow: none;
    border-color: #ccc;
}
.btn-login {
    background-color:#3D9DB3;
    outline: none;
    color: #fff;
    font-size: 14px;
    height: auto;
    font-weight: normal;
    padding: 14px 0;
    text-transform: uppercase;
    border-color: #2d92a9;
}
.btn-login:hover,
.btn-login:focus {
    color: #fff;
    background-color: #198da8;
    border-color: #53A3CD;
}
.btn-register {
    background-color: #17ae47;
    outline: none;
    color: #fff;
    font-size: 14px;
    height: auto;
    font-weight: normal;
    padding: 14px 0;
    text-transform: uppercase;
    border-color: #1CB94A;
}
.btn-register:hover,
.btn-register:focus {
    color: #fff;
    background-color: #1CA347;
    border-color: #1CA347;
}

.fullscreen_bg {
    position: fixed;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    background-size: cover;
    background-position: 50% 50%;
    background-image: url('https://jointgroup.es/wp-content/uploads/2016/11/joint-network-group.jpg');
    background-repeat:repeat;
  }

.panel-heading a{
    font-size: 48px;
    color: rgb(6, 106, 117);
    padding: 2px 0 10px 0;
    font-family: 'FranchiseRegular','Arial Narrow',Arial,sans-serif;
    font-weight: bold;
    text-align: center;
    padding-bottom: 30px;
}

.panel-heading a{
    background: -webkit-repeating-linear-gradient(-45deg, 
    rgb(18, 83, 93) , 
    rgb(18, 83, 93) 20px, 
    rgb(64, 111, 118) 20px, 
    rgb(64, 111, 118) 40px, 
    rgb(18, 83, 93) 40px);
    -webkit-text-fill-color: transparent;
    -webkit-background-clip: text;
}
    </style>
   

  </head>
  <body>
  
  <div id="fullscreen_bg" class="fullscreen_bg">
<div id="regContainer" class="container">
      <div class="row">
      <div class="col-md-6 col-md-offset-3">
        <div class="panel panel-login">
          <div class="panel-heading">
            <div class="row">
              <div class="col-xs-6">
               <a href="#" class="active" id="login-form-link">修改會員資料</a>
              </div>
              
            </div>
            <hr>
          </div>
          
          
          <%-- 錯誤表列 --%>
          <s:fielderror cssStyle="color: red" />
<%--           <s:fielderror fieldName="mem_id" cssStyle="color: red" /> 取個別錯誤訊息--%> 
        
          <div class="panel-body">
            <div class="row">
              <div class="col-lg-12">
				<s:form  action="updateMember" namespace="/member">
				                 
                  <div class="form-group">
                    <label for="username">姓名</label>                 
                   <input type="text" name="memberVO.mem_name" tabindex="1" class="form-control" placeholder="中文姓名" value="${memberVO.mem_name}">                 
                  </div>

                  <div class="form-group">
                    <label for="ID">帳號</label>
                    <input type="text" name="memberVO.mem_id" tabindex="1" class="form-control" placeholder="登入帳號" value="${memberVO.mem_id}" readonly>
                  </div>
                  
                  <div class="form-group">
                    <label for="ID">密碼</label>
                    <input type="text" name="memberVO.mem_psw" tabindex="1" class="form-control" placeholder="登入密碼" value="${memberVO.mem_psw}">
                  </div>

                  <div class="form-group">
                    <label for="password">生日</label>
                    <input type="date" name="memberVO.mem_birthday" tabindex="2" class="form-control" placeholder="生日" value="${memberVO.mem_birthday}">
                  </div>

                  <div class="form-group">
                    <label for="username">電子郵件</label>
                    <input type="text" name="memberVO.mem_email" tabindex="1" class="form-control" placeholder="Ex:123@gmail.co" value="${memberVO.mem_email}">
                  </div>

                  <div class="form-group">
                    <label for="password">行動電話</label>
                    <input type="tel" name="memberVO.mem_mobile" tabindex="2" class="form-control" placeholder="0912345678" value="${memberVO.mem_mobile}">
                  </div>             
                  <div class="form-group">
                    <div class="row">
                      <div class="col-sm-6 col-sm-offset-3">
                        <input type="hidden" name="memberVO.mem_no" value="${memberVO.mem_no}">
						<input type="hidden" name="memberVO.mem_joindate" value="${memberVO.mem_joindate}">
                        <input type="submit" name="login-submit" id="login-submit" tabindex="4" class="form-control btn btn-login" value="修改會員資料">
                      </div>
                    </div>
                  </div>
               </s:form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

</div>
</body>
</html>
