// Parallax
if ('ontouchstart' in window == false) {
    $('body').mousemove(function (e) {
        var moveX = (e.pageX * -1 / 25);
        var moveY = (e.pageY * -1 / 25);
        $('.outer').css('background-position', moveX + 'px ' + moveY + 'px');
    });
}
