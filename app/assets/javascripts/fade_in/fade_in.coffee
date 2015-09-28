$ ->
  #ios = () ->
    #devices = [
      #'iPad Simulator',
      #'iPhone Simulator',
      #'iPod Simulator',
      #'iPad',
      #'iPhone',
      #'iPod'
    #]

    #for device in devices
      #return true if navigator.platform == device

    #return false

  #if ios()
    #$(".release-block").css {opacity: 1 }
    #$(".release-navigation").css {opacity: 1 }

  $("#release").load ()->
    $(".release-block").animate
      opacity: 1,
      1500,

    setTimeout (-> $(".navigation").animate opacity: 1, 1000),  1500
