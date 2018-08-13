$(window).load(function(){
	if($(document).width() > 750){ 
			
			if($(document).scrollTop() > 420){
				$(".fixo").css({"position":"fixed","bottom":"100px"});
			}
			else if($(document).scrollTop() <= 420){
				$(".fixo").css({"position":"static","bottom":"auto"});
			}
		}
		else if($(document).width() <=750){
			$(".fixo").css({"position":"static","top":"auto"});
		}
	$(window).resize(function(){
		if($(document).width() > 750){ 
			
			if($(document).scrollTop() > 420){
				$(".fixo").css({"position":"fixed","bottom":"100px"});
			}
			else if($(document).scrollTop() <= 420){
				$(".fixo").css({"position":"static","bottom":"auto"});
			}
		}
		else if($(document).width() <=750){
			$(".fixo").css({"position":"static","top":"auto"});
		}
	});
	$(window).scroll(function(){
		if($(document).width() > 750){ 
			
			if($(document).scrollTop() > 420){
				$(".fixo").css({"position":"fixed","bottom":"100px"});
			}
			else if($(document).scrollTop() <= 420){
				$(".fixo").css({"position":"static","bottom":"auto"});
			}
		}
		else if($(document).width() <=750){
			$(".fixo").css({"position":"static","top":"auto"});
		}
	});
	/*$(window).scroll(function(){
		$(".fixo").css("top",Math.max(0,250-$(this).scrollTop()));
	});*/
});