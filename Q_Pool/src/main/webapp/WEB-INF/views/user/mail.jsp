<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Q_Pool 이메일 발송</title>
</head>
<body>
	<h1>메일 발송</h1>

    <form action="/mail" method="POST">
        <input name="address" placeholder="이메일 주소"> <br>
        <input name="title" placeholder="제목"> <br>
        <textarea name="message" placeholder="메일 내용을 입력해주세요." cols="60" rows="20"></textarea>
        <button>발송</button>
    </form>
</body>
</html>