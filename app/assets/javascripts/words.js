$(document).on('turbolinks:load', function() {

    $(function () {
      $('[data-toggle="popover"]').popover({
        html:true,
      }).on('click', function(){
        $('span').not(this).popover('hide');
      })
    })

    $('.flip').click(function(){
    $(this).find('.cardtest').toggleClass('flipped');

});

});
