var ready;
ready = function() {

 var right = false
 $('.next').on('click', function(){
    if(right == false){
      $('.specie').find('img').animate({
        left: '-=200'
      });
      right = true
    }
 });

 $('.previous').on('click', function(){
    if(right == true){
      $('.specie').find('img').animate({
        left: '+=200'
      });
      right = false
    }
 })

}

$(document).ready(ready);
$(document).on('page:load', ready);