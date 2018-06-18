;$(function () {

    'use strict';

    var sidebar = $('#sidebar'),
        mask = $('.mask'),
        sidebar_trigger = $('#sidebar_trigger'),
        back_to_top = $('.back-to-top');

    function showSideBar() {
        mask.fadeIn();
        sidebar.css('right',0);
    }

    function hiddenSideBar() {
        mask.fadeOut();
        sidebar.css('right',-sidebar.width());
    }
    sidebar_trigger.on('click',showSideBar);

    mask.on('click',hiddenSideBar);

    back_to_top.on('click',function () {
        $('html,body').animate({
            scrollTop:0
        },600)
    });

    $(window).on('scroll',function () {
        if($(window).scrollTop() > $(window).height()){
            back_to_top.fadeIn();
        }else{
            back_to_top.fadeOut();
        }
    })

    $(window).trigger('scroll');
})