<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=utf-8" %>
<html>
<body>


<hr>

	<div class="contain">
		<ul>
			<li class="postcnt"><b>0</b>건</li>
		</ul>
		
		
		<form name="wrt" class='wrt' id='wrt'>
		<table id='post'>
			<tr>
				<th class="post_th">제목</th>
				<td><input type="text" name="post_title" id="post_title" class="post_title"></td>
				<td>
					<select>
						<option value="Diary">일기 </option>
						<option value="Post">포스팅</option>
						<option value="Info">정보   </option>
						<option value="Tasty">맛집  </option>
					</select>
				</td>
			</tr>
			<tr>
				<th class="post_th">내용</th>
				<td><textarea id="contents" placeholder="끄적끄적"></textarea></td>
			</tr>
			<tr>
				<th></th>
				<td><a href="#" id="postbtn" class="btn black" onclick="">등록</a></td>
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
