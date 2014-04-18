sliderint=1;
sliderNext=2;

$(document).ready(function(){
$("#slider > img#1").fadeIn("fast");
startSlider()

});

function startSlider(){
count=$("#slider>img").size();

loop=setInterval(function(){

if(sliderNext>count){
sliderNext=1;
sliderint=1;

}

$("#slider>img").fadeOut("slow");
$("#slider>img#"+sliderNext).fadeIn(3000);

sliderint=sliderNext;
sliderNext=sliderNext+1;

},4000)

}


