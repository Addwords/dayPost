<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=utf-8" %>
<html>
<body>

<div>
	<h1>Let's git it!</h1>
</div>
<hr>


<form name="post">
<input type="text" name="wrt" id="wrt">
<a href="#" id="" class="btn black" onclick="">게시</a>
</form>

<script type="text/javascript">
$(function(){
	main.init();
});
var main = (function(){
	
	return{
		init : function(){
			var htmstr = '';
			console.log("init실행.");
		}
	}
})();

</script>

</body>
</html>
