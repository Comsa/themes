{*
	variables that are available:
	- {$widgetBlogRecentArticlesList}: contains an array with all posts, each element contains data about the post
*}

{option:widgetBlogRecentArticlesList}
	<section id="blogRecentArticlesListWidget" class="mod">
		<div>
			<header>
				<h3>{$lblRecentArticles|ucfirst}</h3>
			</header>
			<div>
				<ul>
					{iteration:widgetBlogRecentArticlesList}
						<li><a href="{$widgetBlogRecentArticlesList.full_url}" title="{$widgetBlogRecentArticlesList.title}">{$widgetBlogRecentArticlesList.title}</a></li>
					{/iteration:widgetBlogRecentArticlesList}
				</ul>
			</div>
			{*<footer>*}
				{*<p>*}
					{*<a id="RSSfeed" href="{$widgetBlogRecentArticlesFullRssLink}">{$lblSubscribeToTheRSSFeed|ucfirst}</a>*}
				{*</p>*}
			{*</footer>*}
		</div>
	</section>
	<hr/>
{/option:widgetBlogRecentArticlesList}
