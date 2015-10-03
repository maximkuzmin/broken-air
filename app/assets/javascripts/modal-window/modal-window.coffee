$ ->
  height_counter = () ->
    space_left = $(window).height() - ($(".date-wrapper").height() + $("#afisha").height() + $(".link-wrapper").height())
    return space_left/2
  $("#release").load ()->
    setTimeout (->
      $(".modal-window").css display: 'block'
      $(".frame").css {width: $("#afisha").width() + height_counter() * 2, 'padding-top': height_counter() }
      $(".modal-window").animate opacity: 1, 1500
    ), 3000
  $(".close-cross").click ()->
    $(".modal-window").hide()
  $(".modal-window").click ()->
    $(".modal-window").hide()
