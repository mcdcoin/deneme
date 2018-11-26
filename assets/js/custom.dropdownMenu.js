/* *******************************************
** **** Conflex WHMCS 7.0 Premium WHMCS Tema *
** **** R10.NET @HasanHuseyin                *
** **** POSİstanbul Teknoloji                *
** **** www.posistanbul.com                  *
** **** Temanın tüm hakları tescillidir.     *
** **************************************** */

$(function() {
    $("header .menu li").hover(function() {
      $(this).closest("li").find(">.dropdownMenu").css({
          "opacity": 0,
          "margin-top": 25
      }).show().animate({
          "margin-top": 0,
          "opacity": 1
      }, 200);
    }, function() {
      $(this).closest("li").find(">.dropdownMenu").fadeOut(200, function() {
          $(this).hide();
      });
    });

    $(".musteriPaneliHeadMenu li").hover(function() {
      $(this).closest("li").find(".dm").css({
        "opacity": 0,
        "margin-top": 25
      }).show().animate({
        "margin-top": 0,
        "opacity": 1
      }, 200);
    }, function() {
      $(this).closest("li").find(".dm").fadeOut(200, function() {
        $(this).hide();
      });
    });
});
