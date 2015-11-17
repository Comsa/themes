<div>
    <article itemscope itemtype="http://schema.org/Blog">
        <meta itemprop="interactionCount" content="UserComments:{$commentsCount}">
        <meta itemprop="author" content="{$item.user_id|usersetting:'nickname'}">
        <header>
            <h2 itemprop="name">{$item.title}
                <small>
                    <time itemprop="datePublished" datetime="{$item.publish_on|date:'Y-m-d\TH:i:s'}">{$item.publish_on|date:{$dateFormatLong}:{$LANGUAGE}}</time>
                </small>
            </h2>
        </header>
        <div class="row" itemprop="articleBody">
            {option:item.image}
            <div class="col-sm-9">
                {/option:item.image}

                {option:!item.image}
                <div class="col-sm-12">
                    {/option:!item.image}
                    {$item.text}
                </div>
                <!-- /.col-sm-9 -->
                {option:item.image}
                <div class="col-sm-3">
                    <a href="{$FRONTEND_FILES_URL}/blog/images/800x/{$item.image}" title="{$item.title}" class="colorbox">
                        <img src="{$FRONTEND_FILES_URL}/blog/images/800x/{$item.image}" alt="{$item.title}" title="{$item.title}" itemprop="image" class="img-responsive"/>
                    </a>
                </div>
                <!-- /.col-sm-3 -->
                {/option:item.image}
            </div>
            <!-- /.row -->
            <footer>
                {option:navigation}
                    <ul class="pagination">
                        {option:navigation.previous}
                            <li>
                                <a href="{$navigation.previous.url}" rel="prev">{$lblPreviousArticle|ucfirst}
                                    : {$navigation.previous.title}</a>
                            </li>
                        {/option:navigation.previous}
                        {option:navigation.next}
                            <li>
                                <a href="{$navigation.next.url}" rel="next">{$lblNextArticle|ucfirst}
                                    : {$navigation.next.title}</a>
                            </li>
                        {/option:navigation.next}
                    </ul>
                {/option:navigation}
            </footer>
    </article>
</div>
