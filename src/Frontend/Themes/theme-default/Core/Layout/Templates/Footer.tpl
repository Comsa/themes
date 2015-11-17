</div>
<div class="pagefoot">
    <footer>
        <div class="container">


            <div class="row">
                <div class="col-md-2 col-sm-4">
                    <a class="logo" href="/">
                        <img src="{$THEME_URL}/Core/Layout/Images/build/logo.jpg" class="img-responsive" alt="{$siteTitle}" title="{$siteTitle}"/>
                        {*<img src="holder.js/350x100?auto=yes&text=Logo" class="img-responsive" alt="{$siteTitle}" title="{$siteTitle}"/>*}
                    </a>
                    <!-- /.logo -->
                </div>
                <!-- /.col-xs-2 -->
                <div class="col-md-3 col-sm-4">
                    <h4 class="hidden-xs">Contact</h4>
                    <address>
                        Comsa! bvba <br/>
                        Slableedstraat 16g, 8630 Veurne <br/>
                        <a href="/{$LANGUAGE}/contact">info@comsa.be</a> <br/>
                        T 058 28 96 66
                    </address>
                    <hr class="visible-xs"/>
                </div>
                <!-- /.col-sm-3 -->
                <div class="col-md-3 col-sm-4">
                    <h4>Openingsuren</h4>
                    Maandat t.e.m. vrijdag <br/>
                    8u30 - 12u en 13u-17u
                    <hr class="visible-xs"/>
                </div>
                <!-- /.col-sm-3 -->
                <div class="clearfix visible-sm"></div>
                <!-- /.clearfix visible-sm -->
                <div class="col-md-2 col-md-offset-0 col-sm-offset-4 col-xs-offset-0 col-sm-4">
                    <h4 class="hidden-xs">Links</h4>
                    <nav>
                        <ul class="list-unstyled">
                            {$var|getnavigation:'page':0:1:1}
                        </ul>
                        <!-- /.nav-footer -->
                    </nav>
                    <hr class="visible-xs"/>

                </div>
                <!-- /.col-xs-2 -->
                <div class="col-md-2 col-sm-4">
                    <h4 class="hidden-xs">Social</h4>
                    {include:Core/Layout/Templates/Includes/Social.tpl}
                    <nav>
                        <small>
                            <ul class="list-unstyled nav-footer pull-right">
                                {$var|getnavigation:'footer':0:1:''}
                            </ul>
                            <!-- /.nav-footer -->
                        </small>
                    </nav>

                </div>
                <!-- /.col-sm-2 -->
                <div class="clearfix visible-sm visible-xs"></div>
                <!-- /.clearfix visible-sm -->
                <div class="col-md-6">
                    <p class="text-left">&copy; {$now|date:'Y'} {$siteTitle}</p>
                    <!-- /.copyright -->
                </div>
                <!-- /.col-sm-6  -->
                <div class="col-md-6">
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