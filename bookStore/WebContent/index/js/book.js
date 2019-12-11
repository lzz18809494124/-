/**
 * 加入购物车
 */
function buy(bookId){
	$.post("buy", {bookId:bookId}, function(data){
		if(data=="ok"){
			layer.msg("加入购物车成功");
			location.reload();
		}else if(data=="login"){
			location.href="log";
		}else{
			alert("请求失败!");
		}
	});
}