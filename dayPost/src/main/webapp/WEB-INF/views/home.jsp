<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=utf-8" %>
<html>
<body>

<div class="header">
	<h1>Let's git it!</h1>
</div>
<hr>

	<div class="">
		<ul>
			<li><b class="cnt">0</b>건</li>
		</ul>
		<form name="wrt">
		
			<input type="text" name="title" id="title" class="">
			<textarea id=""></textarea>
		<a href="#" id="" class="btn black" onclick="">등록</a>
		</form>
	</div>
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
