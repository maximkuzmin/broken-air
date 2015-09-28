$ ->
  control = () ->
    releasePositionControl = () ->
      required = ($(window).height() - $('.release-block').height() ) / 2 - 30
      $('.release-block').css 'margin-top': "#{required }px"

    videoClassControl = () ->
      result = if ($(window).width() / $(window).height()) > 1.7  then "wide" else "narrow"
      $("#video").attr class:"#{result}-video"
      $("#poster").attr class:"#{result}-poster"

    triangleControl = () ->
      screenWidth = $('#release-container').width()
      $('.triangle-bottom').css "border-left": "#{ screenWidth }px solid transparent"
      $('.triangle-up').css "border-right": "#{ screenWidth }px solid transparent"

    releaseControl = () ->
      squareSide = $(".release-header").width()
      $("#bandcamp-player").css border: 0,  width: "#{squareSide}px",  height: "#{squareSide}px"

    imageControl = () ->
      style = if $('.band').width() / $('.band').height() < 1.5 then 'narrow' else "wide"
      $("#band-image").attr class: "image-#{style}"

    releasePositionControl()
    videoClassControl()
    triangleControl()
    releaseControl()
    imageControl()

  #callbacks
  $(document).ready () -> control()
  $("video").ready  () -> control()
  $(window).resize  () -> control()
  return
