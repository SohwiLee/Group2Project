<%--
  Created by IntelliJ IDEA.
  User: SH
  Date: 2022-01-05
  Time: 오전 12:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="/css/common.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script type='text/javascript' src='https://code.jquery.com/jquery-3.5.1.min.js'></script>
    <script type='text/javascript' src="https://cdn.rawgit.com/abdmob/x2js/master/xml2json.js"></script>
    <title>FestivalInfo</title>
</head>
<body>

<h2>Convert XML to JSON - <a href="https://codepremix.com/" target="_blank" rel="noopener noreferrer">Code Premix</a></h2>
<div>
    <h4>XML:</h4>
    <textarea id="xmlString" cols="55" rows="15"></textarea>
</div>
<button id="xmlToJSON">Convert XML to JSON</button>

<script>
    $(document).ready(function () {
        $("#xmlToJSON").click(function () {
            var data = $("#xmlString").val();
            var xmlData = "";
            if (data !== null && data.trim().length !== 0) {
                try {
                    xmlData = $.parseXML(data);
                } catch (e) {
                    throw e;
                }
                var x2js = new X2JS();
                data = x2js.xml2json(xmlData);
                console.log(data);
            }
        });
    });


    let arr=[];
    $.ajax({
        url:"http://api.kcisa.kr/openapi/service/rest/meta/KOLfest?serviceKey=457527fa-9844-48ec-a918-51c8fdb31866&numOfRows=5&pageNo=1",
        type:"get",
        dataType:"json",
        data:{
            numOfRows:5,
            pageNo:1
        },
        contentType:"application/json"
    }).done(response =>{

        console.log(JSON.stringify(response.items))


    });

</script>
</body>
</html>
