{* don't delete the bannerWidgetURL class, it is used in javascript *}

{option:item}
    <aside id="bannerWidget" class="mod">
        <div class="inner">
            <div class="bd">
                {option:isSWF}
                    <script src="/src/Frontend/Modules/Banners/Js/swfobject.js"></script>
                    <script type="text/javascript">
                        swfobject.embedSWF("/src/Frontend/Files/Banners/Original/{$item.id}_{$item.file}", "bannerWidgetSWFContent-{$item.id}-{$microtime}", "{$item.width}", "{$item.height}", "9.0.0");
                    </script>
                    <a class="bannerWidgetURL linkedImage" href="{$item.url}" title="{$item.name}" data-id="{$item.id}">
                        {* the Flash overlay is a dirty little 'hack' that makes it possible to click on the parent link when the swf contains a click action. *}
                        <div class="flashOverlay" style="width: {$item.width}px; height: {$item.height}px; position: absolute;"></div>
                        <div id="bannerWidgetSWFContent-{$item.id}-{$microtime}"></div>
                    </a>
                {/option:isSWF}

                {option:!isSWF}
                    <a class="bannerWidgetURL linkedImage" href="{$item.url}" title="{$item.name}" data-id="{$item.id}">
                        <img src="/src/Frontend/Files/Banners/Resized/{$item.id}_{$item.file}" alt="{$item.name}" width="{$item.width}" height="{$item.height}"/>
                    </a>
                {/option:!isSWF}
            </div>
        </div>
    </aside>
{/option:item}
{option:banners}
    <ul class="list-unstyled banners">
        {iteration:banners}
            <li id="banner-{$banners.id}">
                <div class="text">
                    <h4>{$banners.name}</h4>
                    {$banners.text}
                </div>
                <!-- /.text -->
                <a href="{$banners.url}" title="{$banners.name}">
                    <img src="/src/Frontend/Files/Banners/Resized/{$banners.id}_{$banners.file}" alt="{$banners.name}" class="img-responsive"/>
                </a>
            </li>
        {/iteration:banners}
    </ul>
    <!-- /.banners -->
    <div class="banners-small-container hidden-xs">
        <ul class="list-unstyled banners-small">
            {iteration:banners}
                <li>
                        {*<img src="/src/Frontend/Files/Banners/Resized/{$banners.id}_{$banners.file}" alt="{$banners.name}" class="img-responsive"/>*}
                    <a href="{$banners.url}" title="{$banners.name}"  id="banner-click-{$banners.id}">
                    <h5>{$banners.name}</h5>
                    </a>
                </li>
            {/iteration:banners}
        </ul>
        <!-- /.list-unstyled banners-small -->
    </div>
    <!-- /.banners-small -->
{/option:banners}