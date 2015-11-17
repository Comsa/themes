{** NAVBAR FIXED **}

<div class="nav-fixed-top hidden-xs">
    <div class="container">
        <div class="row">
            <div class="col-sm-2">
                <a href="/" class="logo">
                    <img src="{$THEME_URL}/Core/Layout/Images/build/logo.jpg" class="img-responsive" alt="{$siteTitle}" title="{$siteTitle}"/>
                    {*<img src="holder.js/350x100?auto=yes&text=Logo" class="img-responsive" alt="{$siteTitle}" title="{$siteTitle}"/>*}
                </a>
                <!-- /.logo -->

            </div>
            <!-- /.col-sm-3 -->
            <div class="col-sm-10">
                <ul class="list-unstyled nav-main">
                    {$var|getnavigation:'page':0:1}
                </ul>

            </div>
            <!-- /.col-sm-9 -->
        </div>
        <!-- /.row -->
    </div>
    <!-- /.container -->
</div>
<!-- /.navbar-fixed-top -->
{** END NAVBAR FIXED **}
