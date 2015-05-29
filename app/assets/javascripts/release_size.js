function releasePositionControl() {
  required = ($(window).height() - $('.release-block').height() ) / 2 - 30
  $('.release-block').attr('style', 'margin-top:' +  required  + 'px')
};

function videoClassControl() {
  var proportion = $(window).width() / $(window).height(); 
  if (proportion > 1.7) {
  	$("#video").attr("class", "wide-video")
  }
  else {
  	$("#video").attr("class", "narrow-video")
  };
};

function triangleBottomControl() {
  var screenWidth = $('#release-container').width();
  $('.triangle-bottom').attr('style', 'border-left:' +  screenWidth + 'px solid transparent')
  $('.triangle-up').attr('style', 'border-right:' +  screenWidth + 'px solid transparent')
}


function releaseControl() {
  var squareSide = $(".release-header").width();
  $("#bandcamp-player").attr('style', 'border: 0; width: '+ squareSide + 'px; height:' + squareSide+'px;');
};

function imageControl() {
  var proportion = $('.band').width() / $('.band').height(); 
  if (proportion < 1.5) {
    $("#band-image").attr('class', "image-narrow");
  }
  else{
   $("#band-image").attr('class', "image-wide"); 
  }
}



$(document).ready(function() {
  releasePositionControl();
  videoClassControl();
  triangleBottomControl();
  imageControl();

});

$("video").ready(function() {
  releasePositionControl();
  videoClassControl();
  triangleBottomControl();
  releaseControl();
  imageControl();
});

$( window ).resize(function() {
  releasePositionControl();
  videoClassControl();
  triangleBottomControl();
  imageControl();
});
