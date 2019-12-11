/**
 * 加入购物车
 */
function buy(bookId){
	$.post("buy", {bookId:bookId}, function(data){
		if(data=="ok"){
			layer.msg("操作成功");
			location.reload();
		}else if(data=="login"){
			layer.msg("请登录后购买");
			location.href="log";
		}else{
			alert("请求失败!");
		}
	});
}
/**
 * 购物车减去
 */
function lessen(bookId){
	$.post("lessen", {bookId:bookId}, function(data){
		if(data=="ok"){
			layer.msg("操作成功");
			location.reload();
		}else if(data=="login"){
			alert("请登录后操作!");
			location.href="log";
		}else{
			alert("请求失败!");
		}
	});
}
/**
 * 购物车删除
 */
function deletes(bookId){
	$.post("delete", {bookId:bookId}, function(data){
		if(data=="ok"){
			layer.msg("操作成功");
			location.reload();
		}else if(data=="login"){
			alert("请登录后操作!");
			location.href="log";
		}else{
			alert("请求失败!");
		}
	});
}