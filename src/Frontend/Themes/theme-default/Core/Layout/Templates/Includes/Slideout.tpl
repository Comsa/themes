{** MENU contains the slideout and sticky navigation**}


{** SLIDE OUT **}
<nav id="menu">
    <a href="" class="pull-right slideout-close">
        <i class="fa fa-times fa-lg">
        </i>
        <!-- /.fa fa-times pull-right -->
    </a>
    <ul class="list-unstyled">
        {$var|getnavigation:'page':0:1:'':'/Core/Layout/Templates/Includes/NavigationResponsive.tpl'}
    </ul>
    <ul class="list-unstyled nav-small">
        {$var|getnavigation:'meta':0:1:'':'/Core/Layout/Templates/Includes/NavigationResponsive.tpl'}
    </ul>
    <ul class="list-unstyled nav-small nav-inline">
        {include:Core/Layout/Templates/Includes/Languages.tpl}
    </ul>
    <!-- /.nav-lang -->

    {include:Core/Layout/Templates/Includes/Social.tpl}

</nav>
<!-- /.facebook -->

{** END SLIDE OUT **}