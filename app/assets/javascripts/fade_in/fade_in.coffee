$ ->
  $("#release").load ()->
    $(".release-block").animate
      opacity: 1,
      1500

    setTimeout (-> $(".navigation").animate opacity: 1, 1000),  1500
