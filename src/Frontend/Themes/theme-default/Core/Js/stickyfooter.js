$(window).resize(function ()
{
    //StickyFooter();
});


$(document).ready(function ()
{
//--Call Sticky Footer function
    //StickyFooter();
});
/**
 * resize Footer
 * footer back to the ground
 *
 */

function StickyFooter()
{
    var intHeaderHeight = $("div.pagehead").outerHeight(true);
    var intHeaderHeight = $("div.pagehead .logo").outerHeight(true);

    //--Get height of texture-container
    var intContentHeight = $("div.content").outerHeight(true);

    //--Get height of the window
    var intWindowHeight = $(window).outerHeight();

    //--Get height of the footer
    var intHeaderHeight = $("div.pagehead").outerHeight(true);
    var intFooterHeight = $("div.pagefoot").outerHeight(true);
    var intFooterMargin = parseInt($("div.pagefoot").css('margin-top'));

    //--Check if windowheight is smaller then the main height
    if (intWindowHeight < intContentHeight + intFooterHeight + intHeaderHeight - intFooterMargin)
    {
        intWindowHeight = intContentHeight + intFooterHeight + intHeaderHeight;
    }
    //--Check if the container is smaller then the window height - footer
    if (intContentHeight <= intWindowHeight - intFooterHeight - intHeaderHeight - intFooterMargin)
    {
        $("div.content").outerHeight(intWindowHeight - intFooterHeight - intHeaderHeight - intFooterMargin + "px");

    }

}