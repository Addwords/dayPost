<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=utf-8" %>
<html>
<body>


<hr>

	<div class="contain">
		<ul>
			<li class="postcnt"><b>0</b>건</li>
		</ul>
		
		
		<form name="wrt">
		<table>
			<tr>
				<th>제목</th>
				<td><input type="text" name="title" id="title" class="title"></td>
			</tr>
			<tr>
				<th>내용</th>
				<td><textarea id="contents"></textarea></td>
			</tr>
			<tr>
				<th></th>
				<td><a href="#" id="" class="btn black" onclick="">등록</a></td>
			</tr>
		</table>
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
			ajax.post('/di/selectPostList.day', {}, main.postcnt);
		}
		,postcnt : function(data){
			if(data.result && data.result != ''){
				//var pcnt = validVal(data.result.listcnt) ? data.result.listcnt : 0;
				var pcnt = data.result.listcnt ? data.result.listcnt : 0;
				$('.postcnt b').text(pcnt.toLocaleString());
			}
		}
	}
})();

</script>

</body>
</html>
