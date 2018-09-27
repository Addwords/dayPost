<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!
</h1>
<h1>
	Let's git it!  
</h1>

<form name="post">
<input type="text" name="wrt" id="wrt">
<input>
</form>

<script>
$(function(){
	testing.second();
})
var testing = (function(){
	return{
		second : function(){
			console.log("init테스트 입니다.");
		}
	}
});

</script>

</body>
</html>
