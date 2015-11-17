

$(document).ready(function ()
{

    var slideout = new Slideout({
        'panel': document.getElementById('body'),
        'menu': document.getElementById('menu'),
        'padding': 256,
        'tolerance': 70,
        'side':'right'
    });

    //event handlers
    $('a.slideout-toggle').click(function ()
    {
        slideout.toggle();
    });

    //event handlers
    $('a.slideout-close').click(function (e)
    {
        e.preventDefault();

        slideout.close();
    });

    //--Colorbox
    $("a.colorbox, a.fancybox").colorbox({maxWidth: '90%', maxHeight: '90%'});

    //--Responsive menu
    $("a.plus").click(function (e)
    {
        e.preventDefault();

        var a = $(this);
        $(this).siblings('ul').slideToggle('fast', function ()
        {

            if ($(this).css('display') == 'block')
            {
                $(a).removeClass('fa-plus');
                $(a).addClass('fa-minus');
            }
            else
            {
                $(a).removeClass('fa-minus');
                $(a).addClass('fa-plus');
            }
        });
    });



    $('.content').css('padding-bottom', $('.pagefoot').outerHeight());
    $('.content-background').css('padding-bottom', $('.pagefoot').outerHeight());
    $('.pagefoot').css('margin-top', -$('.pagefoot').outerHeight());
});

$(window).resize(function ()
{
    $('.content').css('padding-bottom', $('.pagefoot').outerHeight());
    $('.content-background').css('padding-bottom', $('.pagefoot').outerHeight());
    $('.pagefoot').css('margin-top', -$('.pagefoot').outerHeight());
});

