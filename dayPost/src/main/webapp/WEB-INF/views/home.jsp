<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=utf-8" %>
<html>
<body>
<style></style>

<hr>

	<div class="contain">
		<ul>
			<li class="postcnt"><b>0</b>건</li>
		</ul>
		<ul>
			<li> <a href="writing" class="button has-icon" id="wrtbtn">글쓰기</a> </li>
			<li> <a href="list" class="button has-icon" id="addlist">목록</a> </li>
			<li> <a href="list" class="button has-icon" id="listup">할일</a> </li>
		</ul>
		<div class='camo'>
		<form name="wrt" id='wrt'>
		<table id='post'>
			<tr>
			<th></th>
				<td>
					<select class="dropbox borderset">
						<option value="Diary">일기</option>
						<option value="Post">포스팅</option>
						<option value="Info">정보</option>
						<option value="Tasty">맛집 </option>
					</select>
				</td>
				<!-- <td><a href="#" onclick="wrtoff();">X</a></td> -->
			</tr>
			<tr>
				<th class="post_th">제목</th>
				<td><input type="text" name="post_title" id="post_title" class="post_title borderset w300 h30"></td>
				
			</tr>
			<tr>
				<th class="post_th">내용</th>
				<td><textarea class="contents borderset w300 h50" placeholder="끄적끄적" ></textarea></td>
			</tr>
			<tr>
				<th></th>
				<td></td>
				<td><a href="#" id="postbtn" class="button has-icon" onclick="">등록</a></td>
			</tr>
		</table>
		</form>
		</div>
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

$(document).on('click','#wrtbtn',function(e){
	//e.preventDefault();
	var wrtb = document.getElementById('wrtbtn'),
		wrts = document.getElementsByClassName('wrt');
	
	if($('.camo').hasClass('camo')){
		$('.camo').addClass('active');
		$('.camo').removeClass('camo');
	}else{
		$('.active').addClass('camo');
		$('.active').removeClass('active');
	}
	return false;
});

function wrtoff(){
	$('.wrt').css('display','none');
}

</script>

</body>
</html>
