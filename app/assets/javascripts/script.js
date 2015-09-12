var ready;
ready = function() {

 var right = false
 $('.next').on('click', function(){
    if(right == false){
      $('.specie').find('img').animate({
        left: '-=200'
      });
      $('.specie').find('.drogan').fadeOut(900, function(){
        $('.specie').find('.cynode').fadeIn(900);
      });

      right = true
    }
 });

 $('.previous').on('click', function(){
    if(right == true){
      $('.specie').find('img').animate({
        left: '+=200'
      });
      $('.specie').find('.cynode').fadeOut(900, function(){
        $('.specie').find('.drogan').fadeIn(900);
      });
      right = false
    }
 })

}

$(document).ready(ready);
$(document).on('page:load', ready);