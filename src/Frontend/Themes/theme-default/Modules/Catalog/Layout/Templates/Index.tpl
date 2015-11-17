<div class="row">
    <div class="col-sm-3">
        {include:Modules/Catalog/Layout/Templates/CategoriesTree.tpl}
    </div>
    <!-- /.col-sm-3 -->
    <div class="col-sm-9">
        {option:categoriesTree}
            <ul class="list-unstyled row catalog-categories">

                {iteration:categoriesTree}
                    <li class="col-xs-12 col-sm-6 col-md-4">
                        {option:categoriesTree.hours_heat}
                            <span class="button-heat" style="background-color:#{$categoriesTree.hours_heat_color};">
                                {$lblTill}
                                <strong>{$categoriesTree.hours_heat} h</strong>
                                {$lblHeat}
                            </span>
                            <!-- /.heat -->
                        {/option:categoriesTree.hours_heat}
                        {option:categoriesTree.image}
                            <a href="{$categoriesTree.full_url}" title="{$categoriesTree.title}">
                                <img src="{$FRONTEND_FILES_URL}/Catalog/categories/200x225/{$categoriesTree.image}" alt="{$categoriesTree.title}" title="{$categoriesTree.title}" class="img-responsive"/>
                            </a>
                        {/option:categoriesTree.image}
                        <h3>
                            <a href="{$categoriesTree.full_url}" title="{$categoriesTree.title}">
                                {$categoriesTree.title}
                            </a>
                        </h3>
                        {option:categoriesTree.summary}
                            <div class="summary">
                                {$categoriesTree.summary}
                            </div>
                            <!-- /.summary -->
                        {/option:categoriesTree.summary}

                    </li>
                {/iteration:categoriesTree}
            </ul>
            <!-- /.list-unstyled categories -->
        {/option:categoriesTree}
    </div>
    <!-- /.col-sm-9 -->
</div>
<!-- /.row -->


