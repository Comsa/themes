{*
	variables that are available:
	- {$widgetGallery}: contains all the data for this widget
*}

{option:widgetGallery}
        <ul class="list-unstyled row gallery-gallery">
            {iteration:widgetGallery}
                <li class="col-md-3 col-sm-4 col-xs-6">
                    <a href="{$widgetGallery.image_800x}" title="{$widgetGallery.description}" class="colorbox"><img src="{$widgetGallery.image_400x300}" alt="{$widgetGallery.description} - {$widgetGallery.filename}" title="{$widgetGallery.description} - {$widgetGallery.filename}" class="img-responsive"></a>
                    <span>{$widgetGallery.description}</span>
                </li>
            {/iteration:widgetGallery}
        </ul>

    <!-- /.container-galleria -->
    <div class="clearfix"></div>
{/option:widgetGallery}
