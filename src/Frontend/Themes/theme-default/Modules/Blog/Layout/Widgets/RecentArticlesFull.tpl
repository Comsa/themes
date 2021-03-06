{*
	variables that are available:
	- {$widgetBlogRecentArticlesFull}: contains an array with all posts, each element contains data about the post
*

{option:widgetBlogRecentArticlesFull}
	<section id="blogRecentArticlesFullWidget" class="mod">
		<div class="inner">
			<header class="hd">
				<h3>{$lblRecentArticles|ucfirst}</h3>
			</header>
			<div class="bd">
				{iteration:widgetBlogRecentArticlesFull}
					<article class="mod article">
						<div class="inner">
							<header class="hd">
								<h4><a href="{$widgetBlogRecentArticlesFull.full_url}" title="{$widgetBlogRecentArticlesFull.title}">{$widgetBlogRecentArticlesFull.title}</a></h4>
								<ul>
									<li>{$msgWrittenBy|ucfirst|sprintf:{$widgetBlogRecentArticlesFull.user_id|usersetting:'nickname'}} {$lblOn} {$widgetBlogRecentArticlesFull.publish_on|date:{$dateFormatLong}:{$LANGUAGE}}</li>
									{option:widgetBlogRecentArticlesFull.allow_comments}
										<li>
											{option:!widgetBlogRecentArticlesFull.comments}<a href="{$widgetBlogRecentArticlesFull.full_url}#{$actComment}">{$msgBlogNoComments|ucfirst}</a>{/option:!widgetBlogRecentArticlesFull.comments}
											{option:widgetBlogRecentArticlesFull.comments}
												{option:widgetBlogRecentArticlesFull.comments_multiple}<a href="{$widgetBlogRecentArticlesFull.full_url}#{$actComments}">{$msgBlogNumberOfComments|sprintf:{$widgetBlogRecentArticlesFull.comments_count}}</a>{/option:widgetBlogRecentArticlesFull.comments_multiple}
												{option:!widgetBlogRecentArticlesFull.comments_multiple}<a href="{$widgetBlogRecentArticlesFull.full_url}#{$actComments}">{$msgBlogOneComment}</a>{/option:!widgetBlogRecentArticlesFull.comments_multiple}
											{/option:widgetBlogRecentArticlesFull.comments}
										</li>
									{/option:widgetBlogRecentArticlesFull.allow_comments}
									<li><a href="{$widgetBlogRecentArticlesFull.category_full_url}" title="{$widgetBlogRecentArticlesFull.category_title}">{$widgetBlogRecentArticlesFull.category_title}</a></li>
								</ul>
							</header>
							<div class="bd content">
								{option:!widgetBlogRecentArticlesFull.introduction}{$widgetBlogRecentArticlesFull.text}{/option:!widgetBlogRecentArticlesFull.introduction}
								{option:widgetBlogRecentArticlesFull.introduction}{$widgetBlogRecentArticlesFull.introduction}{/option:widgetBlogRecentArticlesFull.introduction}
							</div>
						</div>
					</article>
				{/iteration:widgetBlogRecentArticlesFull}
			</div>
			<footer class="ft">
				<p>
					<a href="{$var|geturlforblock:'Blog'}">{$lblBlogArchive|ucfirst}</a>
					<a id="RSSfeed" href="{$widgetBlogRecentArticlesFullRssLink}">{$lblSubscribeToTheRSSFeed|ucfirst}</a>
				</p>
			</footer>
		</div>
	</section>
{/option:widgetBlogRecentArticlesFull}
*}

{option:widgetBlogRecentArticlesFull}
    <ul class="list-unstyled blog">

        {iteration:widgetBlogRecentArticlesFull}
            <li class="row">
                <article>
                    <div class="col-sm-8">
                        <header>
                            <h3>
                                <a href="{$widgetBlogRecentArticlesFull.full_url}" title="{$widgetBlogRecentArticlesFull.title}">{$widgetBlogRecentArticlesFull.title}
                                    {*- {$widgetBlogRecentArticlesFull.publish_on|date:{$dateFormatLong}:{$LANGUAGE}}</a>*}
                            </h3>
                        </header>
                        {option:!widgetBlogRecentArticlesFull.introduction}{$widgetBlogRecentArticlesFull.text|truncate:100:'...'}{/option:!widgetBlogRecentArticlesFull.introduction}
                        {option:widgetBlogRecentArticlesFull.introduction}{$widgetBlogRecentArticlesFull.introduction}{/option:widgetBlogRecentArticlesFull.introduction}
						<a href="{$widgetBlogRecentArticlesFull.full_url}" class="more">> Lees meer</a>
                    </div>
                    <!-- /.col-xs-6 -->
                    <div class="col-sm-4">
                        <img src="{$FRONTEND_FILES_URL}/blog/images/400x300/{$widgetBlogRecentArticlesFull.image}" alt="{$widgetBlogRecentArticlesFull.title}" title="{$widgetBlogRecentArticlesFull.title}" class="img-responsive"/>
                    </div>

                    <!-- /.col-xs-6 -->
                    <div class="col-xs-12">
                        <hr/>
                    </div>
                    <!-- /.col-xs-12 -->

                </article>
            </li>
        {/iteration:widgetBlogRecentArticlesFull}
    </ul>
    <!-- /.news -->
{/option:widgetBlogRecentArticlesFull}