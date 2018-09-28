<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=utf-8" %>
<html>
<body>
<h1>
	Hello world!
</h1>
<h1>
	Let's git it!  
</h1>

<form name="post">
<input type="text" name="wrt" id="wrt">
<a href="#" id="" class="btn" onclick="">게시</a>
</form>
<!-- <script type="text/javascript" src="/resources/js/jquery-3.3.1.js"></script> -->
<script type="text/javascript">
$(function(){
	testing.init();
});
var testing = (function(){
	return{
		init : function(){
			console.log("init테스트 입니다.");
		}
	}
})();

</script>

</body>
</html>
