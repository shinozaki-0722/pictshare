$(document).on('turbolinks:load', function(){
  $('.thumbnail-image').click(function(){
    var imgSrc = $(this).attr('src');
    $('.bigimg').children().attr('src', imgSrc);
    $('.image-modal-wrapper').fadeIn();
  });

  $('.fa-times').click(function(){
    $('.image-modal-wrapper').fadeOut();
  });

});