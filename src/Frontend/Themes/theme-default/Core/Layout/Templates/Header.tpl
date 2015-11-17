{include:Core/Layout/Templates/Includes/Html-head.tpl}

<body class="{$LANGUAGE}" itemscope itemtype="http://schema.org/WebPage">
{* STARTBODY , is enden in Footer.tpl*}

<div id="body">


    <div class="container">


        {include:Core/Layout/Templates/Includes/Cookies.tpl}

        <header>
            <div class="pagehead">
                <div class="row">
                    <div class="col-sm-6">
                        <a href="/" class="logo">
                            <img src="{$THEME_URL}/Core/Layout/Images/build/logo.jpg" class="img-responsive" alt="{$siteTitle}" title="{$siteTitle}"/>
                            {*<img src="holder.js/350x100?auto=yes&text=Logo" class="img-responsive" alt="{$siteTitle}" title="{$siteTitle}"/>*}
                        </a>
                        <!-- /.logo -->
                    </div>
                    <!-- /.col-sm-6 -->

                    <div class="col-sm-6">
                        <ul class="list-unstyled nav-lang pull-right hidden-xs">
                            {include:Core/Layout/Templates/Includes/Languages.tpl}
                        </ul>
                        <!-- /.nav-lang -->

                        <ul class="list-unstyled nav-top pull-right hidden-xs">
                            {$var|getnavigation:'meta':0:1:'':'/Core/Layout/Templates/Includes/NavigationResponsive.tpl'}
                        </ul>
                        <!-- /.nav-top -->
                        <div class="clearfix"></div>
                        <!-- /.clearfix -->
                    </div>
                    <!-- /.col-sm-6 -->

                </div>
                <!-- /.row -->
                <a href="#menu" class="slideout-toggle responsive-menu pull-right visible-xs" title="{$siteTitle}">
                    <span class="fa fa-bars"></span>
                    <span>Menu</span>
                </a>
                <!-- /.responsive-menu -->
                <div class="row">
                    <div class="col-md-9 hidden-xs">
                        <ul class="nav-main list-unstyled">
                            {$var|getnavigation:'page':0:2}
                        </ul>


                    </div>
                    <div class="col-md-3">
                        <a class="facebook pull-right hidden-sm hidden-xs" href="https://www.facebook.com/AtheneumVeurne?fref=ts" target="_blank">
                            <i class="fa fa-facebook-official fa-2x"></i>
                            <!-- /.fa fa-facebook-official -->
                        </a>
                        <!-- /.facebook -->
                    </div>
                    <!-- /.col-lg-3 -->
                    <!-- /.col-sm-9 -->


                </div>
                <!-- /.row -->
            </div>
            <!-- /.pagehead -->
        </header>

    </div>
    <!-- /.container-->


