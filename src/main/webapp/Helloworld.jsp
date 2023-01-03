<%@page import="model.dataroom.DataRoomDAO"%>
<%@page import="model.BBSDao"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info="이 페이지는 JSP 및 Servlet 테스트 문서 입니다." %>
    

    
<%
	SimpleDateFormat dateFormat= new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	String dateString= dateFormat.format(new Date());
	
	//연결 확인용 new DataRoomDAO(application);

%>    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HelloWorld.jsp</title>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <script src="bootstrap/js/jquery.slim.min.js"></script>
    <script src="bootstrap/js/popper.min.js"></script>
    <script src="bootstrap/js/bootstrap.bundle.min.js"></script>
    <style>
      .jumbotron{
        padding-top:1rem;
        padding-bottom: 1rem;
        margin-bottom: .5rem;
      }
      
    </style>
</head>
<body>
    <div class="container">
        <div class="jumbotron bg-warning">
        <h1>JSP 및 Servlet테스트</h1>
        </div>
        <h2>HELLO WORLD(신수인)</h2>
        <fieldset class="form-group border p-3">
        	<legend class="w-auto px-3">JSP테스트</legend>
        	<h3>오늘의 현재는 <%= dateString %> 입니다</h3>
        </fieldset>
        
        <fieldset class="form-group border p-3">
        	<legend class="w-auto px-3">Servlet테스트</legend>
        	<a href="HelloServlet.do" class="btn btn-primary">HELLO SERVLET</a>			
			<span class="font-weight-bold text-danger" style="font-size:1.2em">${message}</span>
			<h2>계산기</h2>
			<form action="Calculator.kosmo">
				<div class="form-group">
					<input type="number" class="form-control form-control-sm w-50" name="firstNum"  />
				</div>
				<div class="form-group">
					<select	name="operator" class="form-control form-control-sm w-50">
						<option value="+">더하기</option>
						<option value="-">빼기</option>
						<option value="*">곱하기</option>
						<option value="/">나누기</option>
					</select>
				</div>
				<div class="form-group">
					<input class="form-control form-control-sm w-50" type="number" name="secondNum"/>
				</div>
				<!-- SSR방식이라 앞에 입력했던 값이 사라지고 서버에 새로운 페이지를 요청 받음 -->
				<input class="btn btn-success"	type="submit" value="결과는" />
				<span class="font-weight-bold text-danger" style="font-size:1.4em">${result}</span>
			</form>
        </fieldset>
    </div>
    
</body>
</html>