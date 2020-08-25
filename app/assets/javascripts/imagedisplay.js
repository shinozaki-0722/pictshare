$(function(){
  $('.thumbnail-image').click(function(){
    var imgSrc = $(this).attr('src');
    $('.bigimg').children().attr('src', imgSrc);
    console.log(imgSrc);
    $('.image-modal-wrapper').fadeIn();
  });

  $('.fa-times').click(function(){
    $('.image-modal-wrapper').fadeOut();
  });


});