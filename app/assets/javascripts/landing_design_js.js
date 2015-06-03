(function() {

  /* Контроль позиции блока с релизом на странице по высоте 
     Дает блоку релиза высчитанный из высоты окна margin
  */
  function releasePositionControl() {
    required = ($(window).height() - $('.release-block').height() ) / 2 - 30
    $('.release-block').attr('style', 'margin-top:' +  required  + 'px')
  };


  /* вычисляет пропорции окна и задает нужный класс видео*/
  function videoClassControl() {
    var proportion = $(window).width() / $(window).height(); 
    if (proportion > 1.7) {
    	$("#video").attr("class", "wide-video")
    }
    else {
    	$("#video").attr("class", "narrow-video")
    };
  };

  /* задает ширину треугольникам при загрузке страницы и дальнейшем ресайзе */
  function triangleBottomControl() {
    var screenWidth = $('#release-container').width();
    $('.triangle-bottom').attr('style', 'border-left:' +  screenWidth + 'px solid transparent')
    $('.triangle-up').attr('style', 'border-right:' +  screenWidth + 'px solid transparent')
  }

  /* задает ширину плееру бэндкэмпа по надписи. кажется, не работает */
  function releaseControl() {
    var squareSide = $(".release-header").width();
    $("#bandcamp-player").attr('style', 'border: 0; width: '+ squareSide + 'px; height:' + squareSide+'px;');
  };

  /*  вычисляет пропорции экрана и меняет класс изображению на странице */
  function imageControl() {
    var proportion = $('.band').width() / $('.band').height(); 
    if (proportion < 1.5) {
      $("#band-image").attr('class', "image-narrow");
    }
    else{
     $("#band-image").attr('class', "image-wide"); 
    }
  }

/* коллбэки */
  $(document).ready(function() {
    releasePositionControl();
    videoClassControl();
    triangleBottomControl();
    imageControl();
    $(window).stellar();
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

}) ();