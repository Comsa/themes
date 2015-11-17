<div class="row">
    <div class="col-sm-3">
        {include:Modules/Catalog/Layout/Templates/CategoriesTree.tpl}
    </div>
    <!-- /.col-sm-3 -->
    <div class="col-sm-9">

        {option:subcategoriesTree}
            <ul class="list-unstyled row catalog-categories">

                {iteration:subcategoriesTree}
                    <li class="col-xs-12 col-sm-6 col-md-4">
                        {option:subcategoriesTree.hours_heat}
                            <span class="button-heat" style="background-color:#{$subcategoriesTree.hours_heat_color};">
                                {$lblTill}
                                <strong>{$subcategoriesTree.hours_heat} h</strong>
                                {$lblHeat}
                            </span>
                            <!-- /.heat -->
                        {/option:subcategoriesTree.hours_heat}
                        {option:subcategoriesTree.image}
                            <a href="{$subcategoriesTree.full_url}" title="{$subcategoriesTree.title}">
                                <img src="{$FRONTEND_FILES_URL}/Catalog/categories/200x225/{$subcategoriesTree.image}" alt="{$subcategoriesTree.title}" title="{$subcategoriesTree.title}" class="img-responsive"/>
                            </a>
                        {/option:subcategoriesTree.image}
                        <h3>
                            <a href="{$subcategoriesTree.full_url}" title="{$subcategoriesTree.title}">
                                {$subcategoriesTree.title}
                            </a>
                        </h3>
                        {option:subcategoriesTree.summary}
                            <div class="summary">
                                {$subcategoriesTree.summary}
                            </div>
                            <!-- /.summary -->
                        {/option:subcategoriesTree.summary}

                    </li>
                {/iteration:subcategoriesTree}
            </ul>
            <!-- /.list-unstyled categories -->
        {/option:subcategoriesTree}

        {option:products}
            <h1>
                {$title}

                {option:parentCategories}
                    <span class="sr-only">
                    {iteration:parentCategories}
                        - {$parentCategories.title}
                    {/iteration:parentCategories}
                </span>
                {/option:parentCategories}
            </h1>
            <ul class="list-unstyled row catalog-products">
                {iteration:products}
                    <li class="col-xs-12 col-sm-6 col-md-4">
                        {option:products.hours_heat}
                            <span class="button-heat" style="background-color:#{$products.hours_heat_color};">
                                {$lblTill}
                                <strong>{$products.hours_heat} h</strong>
                                {$lblHeat}
                            </span>
                            <!-- /.heat -->
                        {/option:products.hours_heat}
                        <div>
                            <a href="{$products.full_url}">
                                {option:products.image}
                                    <img class="img-responsive" src="/src/Frontend/Files/Media/Images/200x225/{$products.image.filename}" alt="{$products.title}" title="{$products.title}"/>
                                {/option:products.image}
                            </a>

                            <h3>
                                <a href="{$products.full_url}" title="{$products.title}">{$products.title}{*: {$products.price|formatcurrency}*}</a>
                            </h3>
                        </div>
                    </li>
                {/iteration:products}
            </ul>
        {/option:products}


    </div>
    <!-- /.col-sm-9 -->
</div>
<!-- /.row -->







