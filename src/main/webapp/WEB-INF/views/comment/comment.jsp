<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@page language="java" pageEncoding="utf-8" contentType="text/html; ISO-8859-1" %>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<%--    <link type="text/css" rel="stylesheet" href="css/comments.css">--%>
    <script type="text/javascript" src="js/comment.js"></script>
    <title>Document</title>
</head>
<body>
<form>
<section class="sectionComment">
    <textarea name="comment" id="idComment" class="comment"></textarea>
    <input type="button" value="등록" class="buttonWrite" onclick="commentWrite(form)">
</section>
</form>
</body>
</html>