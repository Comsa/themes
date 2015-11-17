$(document).ready(function ()
{


    $(window).scroll(function ()
    {
        checkNavbarFixed();
    })
});

function checkNavbarFixed()
{
    var navOffset = $('ul.nav-main').offset();
    var navHeight = $('ul.nav-main').height();


    if ($(document).scrollTop() > navOffset.top + navHeight)
    {
        //--Show fixed navbar
        $("div.nav-fixed-top").slideDown('fast');
    }
    else
    {
        //--Hide the fixed navbar
        $("div.nav-fixed-top").slideUp('fast');
    }
}