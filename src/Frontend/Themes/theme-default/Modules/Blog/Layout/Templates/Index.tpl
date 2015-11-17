{*
	variables that are available:
	- {$items}: contains an array with all posts, each element contains data about the post
*}

{option:!items}
    <section>
        <div class="alert alert-warning">
            <p>{$msgBlogNoItems}</p>
        </div>
    </section>
{/option:!items}
{option:items}
{iteration:items}
    <article>
        <header>
            <h3>
                <a href="{$items.full_url}" title="{$items.title}">{$items.title}</a>
                <small>{$items.publish_on|date:{$dateFormatShort}:{$LANGUAGE}}</small>
            </h3>
        </header>
        <div class="row">

            <div class="col-sm-9">
                {option:!items.introduction}{$items.text}{/option:!items.introduction}
                {option:items.introduction}{$items.introduction}{/option:items.introduction}
                <a href="{$items.full_url}" title="{$lblReadMoreAbout} {$items.title}" class="btn btn-default">{$lblReadMoreAbout} {$items.title}</a>
            </div>
            <!-- /.col-sm-9 -->

            <div class="col-sm-3">
                {option:items.image}
                    <img src="{$FRONTEND_FILES_URL}/blog/images/400x300/{$items.image}" alt="{$items.title}" class="img-responsive img-border"/>
                {/option:items.image}
            </div>
            <!-- /.col-sm-3 -->
        </div>
        <!-- /.row -->
        <hr/>
    </article>
{/iteration:items}
    {include:Core/Layout/Templates/Pagination.tpl}
{/option:items}
