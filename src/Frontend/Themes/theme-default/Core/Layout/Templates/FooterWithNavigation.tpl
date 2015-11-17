</div>
<div class="pagefoot">
    <footer>
        <div class="container">


            <div class="row">
                <div class="col-sm-4">
                    <a class="logo" href="/">
                        <img src="{$THEME_URL}/Core/Layout/Images/build/logo.jpg" class="img-responsive" alt="{$siteTitle}" title="{$siteTitle}"/>
                        {*<img src="holder.js/350x100?auto=yes&text=Logo" class="img-responsive" alt="{$siteTitle}" title="{$siteTitle}"/>*}
                    </a>
                    <!-- /.logo -->
                </div>
                <!-- /.col-xs-4 -->
                <div class="col-sm-4">
                    <nav>
                        <ul class="list-unstyled nav-footer">
                            {$var|getnavigation:'page':0:1:1}
                        </ul>
                        <!-- /.nav-footer -->
                    </nav>

                </div>
                <!-- /.col-xs-4 -->

                <div class="col-sm-4">
                    <nav>

                        <ul class="list-unstyled nav-footer pull-right">
                            {$var|getnavigation:'meta':0:1:1}
                        </ul>
                        <!-- /.nav-footer -->
                    </nav>
                    <div class="clearfix"></div>
                    <nav>
                        <small>
                            <ul class="list-unstyled nav-footer pull-right">
                                {$var|getnavigation:'footer':0:1:''}
                            </ul>
                            <!-- /.nav-footer -->
                        </small>
                    </nav>
                </div>
                <!-- /.col-xs-4 -->

                <div class="clearfix"></div>
                <!-- /.clearfix -->

                <div class="col-sm-6">
                    <p>&copy; {$now|date:'Y'} {$siteTitle}</p>
                    <!-- /.copyright -->
                </div>
                <!-- /.col-sm-6  -->
                <div class="col-sm-6">
                    <p class="text-right">
                        <small>Made by <a href="http://www.comsa.be" target="_blank">Comsa!</a></small>
                    </p>
                    <!-- /.text-right -->
                </div>
                <!-- /.col-sm-6 -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /.container -->
    </footer>
</div>
<!-- /.pagefoot -->

<!-- /#body -->
{** MENU contains the slideout and sticky navigation**}
{include:Core/Layout/Templates/Includes/StickyNav.tpl}
{include:Core/Layout/Templates/Includes/Slideout.tpl}

{* END BODY , is started in Header.tpl*}

<noscript>
    <div class="text-error">
        <h4 class="sr-only">{$lblEnableJavascript|ucfirst}</h4>

        <p>{$msgEnableJavascript}</p>
    </div>
</noscript>

{* General Javascript *}
{iteration:jsFiles}
    <script src="{$jsFiles.file}"></script>
{/iteration:jsFiles}
<script src="/src/Frontend/Themes/theme-default/Core/Js/build/backbone.min.js"></script>

{* Site wide HTML *}
{$siteHTMLFooter}