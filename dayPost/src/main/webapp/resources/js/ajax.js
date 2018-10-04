
/* Function Format
var A = (function(){
	return{
		 B : function(){
		 }
		,C : function(){
		}
	}
})();
 * */

/*.* * * * * * * *
 * script 모음
 * 1. AJAX
 * 2. MSG
 * * * * * * * * */


//AJAX 함수 설정
var ajax = (function(){ //post, cmm
	var type = 'GET';
	var defaultOp = {
				 dataType    : 'json'
				,contentType : 'application/json'
	};
	
	return{
		
		post : function(path, jsonObj, successFunction, failFunction, initData){
				type = 'POST';
				
				initData = $.extend({}, defaultOp, initData);
				ajax.cmm(type, path, jsonObj, successFunction, failFunction, initData);
		}//post End
		
		,cmm : function(method, path, jsonObj, successFunction, failFunction, initData){
			var base = {
					url   : path
					,type : method
					,data : jsonObj
					,success : function(data){
						if(data.errorYn == 'N'){
							if(seccessFunction !== undefined && successFunction !== ''){
								failFunction(data);
							}
						}else{
							if(data.errorYn = 'Y'){
								if(failFunction !== undefined && failFunction !== ''){
									failFunction(data);
								}else{
									alert(msg.get('ajaxError'));
									return false;
								}
							}else{
								alert(data.errMsg);
								if(data.errorYn =='Y003'){
									location.href='/';
								}
							}
						}
					}
					,error : function(xhr){
						console.error(xhr.responseJSON.errorYn);
						if(xhr.responseJSON.errorYn == 'Y005'){
							location.href = '/common/error.day'
						}
					}
			}
			
			$.ajax($.extend(base, initData));
		}//cmm End
		
	}//ajax return End
})();

//Message 함수 설정
var msg = (function(){//get
	return{
		 get : function(state){
			var value = '';
			
			switch(state){
			case 'ajaxError' : value = 'AJAX에러!'; break;
			//case '' : value = ''; break;
			}
			return value;
		 }//get End
	}//msg return End
})();