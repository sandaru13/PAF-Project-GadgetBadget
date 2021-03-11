var swiper = new Swiper('.swiper-container', {
    initialSlide: 4,
    loop: true,
    slidesPerView: 3,
    effect: 'coverflow',
    grabCursor: true,
    centeredSlides: true,
    slidesPerView: 'auto',
    coverflowEffect: {
        rotate: 10,
        stretch: 0,
        depth: 160,
        modifier: 1,
        slideShadows: true,
    },

});




$(window).scroll(function () {

    $('nav').toggleClass('topnavScroll', $(this).scrollTop() > 0);

    if ($(this).scrollTop() > 3150) {
        $('.isolateAd').addClass('isolateAd_inani animated zoomIn slow');
    };

});

