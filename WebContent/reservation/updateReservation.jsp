<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page  import="java.util.*"%>
<%@ page  import="com.reservation.model.*"%>
<%
ReservationVO reservationVO =(ReservationVO) request.getAttribute("reservationVO");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
		<title>修改預約資料</title>
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
		<link rel="stylesheet" type="text/css" href="<%= request.getContextPath()%>/css/offermain.css">
		<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/themes/smoothness/jquery-ui.css" />
		<!--[if lt IE 9]>
			<script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.min.js"></script>
			<script src="https://cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.min.js"></script>
		<![endif]-->
		
		
		<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

    	<script type="text/javascript" src="<%= request.getContextPath()%>/js/jquery.timepicker.js"></script>
	    <link rel="stylesheet" type="text/css" href="<%= request.getContextPath()%>/css/jquery.timepicker.css" />
	
	
	    <script type="text/javascript" src="<%= request.getContextPath()%>/js/site.js"></script>
	    <link rel="stylesheet" type="text/css" href="<%= request.getContextPath()%>/css/site.css" />
	</head>
	<body>
	<c:if test="${not empty errorMsgs}">
		<font color="red">請修正以下錯誤
			<c:forEach var="message" items="${errorMsgs}">
				<li>${message}</li>
			</c:forEach> 
		</font>
	</c:if>	
		
			<div class="container">
				<form  method="post" action="<%= request.getContextPath()%>/reservation/reservationServlet.do">
					<div class="addoffer">	
						<H3 class="addoffertitle">修改預約資料</H3>
					</div>
					<div class="input-group">
					  	<span class="input-group-addon" id="basic-addon1">預約編號</span>
					 	<input type="text" name="res_no" class="form-control" value="${reservationVO.res_no}" readonly>
					</div>
					<div class="input-group">
					  	<span class="input-group-addon" id="basic-addon1">會員編號</span>
					 	<input type="text" name="mem_no" class="form-control" value="${reservationVO.memberVO.mem_no}" readonly>
					</div>
					<div class="input-group">
					  	<span class="input-group-addon" id="basic-addon1">預約日期</span>
					    <input  type="date" name="res_date" class="form-control" value="${reservationVO.res_date}" aria-describedby="basic-addon1">
					</div>
					<script>
					</script>	
					<div class="input-group">
					  	<span class="input-group-addon" id="basic-addon1">預約開始時間</span>
					    <input id="timestart" type="text" name="res_timestart" class="form-control" value="${reservationVO.res_timestart}" aria-describedby="basic-addon1">
					</div>
					<script>
					 $(function() {
					     $('#timestart').timepicker();
					});					 
					</script>	
					<div class="input-group">
						<span class="input-group-addon" id="basic-addon1">預約結束時間</span>
						<input id="timeend" type="text" name="res_timeend" class="form-control" value="${reservationVO.res_timeend}" aria-describedby="basic-addon1">
					</div>
					<script>
					 $(function() {
					     $('#timeend').timepicker();
					});					 
					</script>	
					<div class="input-group">
					  	<span class="input-group-addon" id="basic-addon1">預約項目</span>
					 	<input type="text" name="res_content" class="form-control" value="${reservationVO.res_content}" aria-describedby="basic-addon1">
					</div>				
					<div class="input-group btndiv">
						<input type="hidden" name="action" value="update">
						<button type="submit" class="btn btn-primary btn-lg">修改預約時間</button>  	
					</div>	
				</form>	
			</div>

		
		
		<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
	</body>
</html>