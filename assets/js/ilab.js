if(jQuery().materialCard) {
  options = {
      icon_close     : 'fa-arrow-left', //string
      icon_open      : 'fa-bars',       //string
      icon_spin      : 'fa-spin-fast',  //string
      card_activator : 'click'          //string: click or hover
  };
  $('.material-card').materialCard(options);
}

$(document).ready(function () {
    // Highlight the active nav link.
    var url = window.location.pathname;
    // var filename = url.substr(url.lastIndexOf('/') + 1);
    // console.log(url.indexOf('aula'));
    if (url.indexOf('aula') == -1) {
      $('.navbar a[href$="' + url + '"]').parent().addClass("active");
    }
    else{
      $('.navbar a[href$="' + 'aula' + '"]').parent().addClass("active");
    }
    $('.active').closest('li.dropdown').addClass('active');
});