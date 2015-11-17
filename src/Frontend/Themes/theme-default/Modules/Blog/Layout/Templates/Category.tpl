{*
	variables that are available:
	- {$category}: contains data about the category
	- {$items}: contains an array with all posts, each element contains data about the post
*}

{option:items}
	<section>
		{iteration:items}
			<article>
				<header>
					<h3><a href="{$items.full_url}" title="{$items.title}">{$items.title}</a>
						<small>{$items.publish_on|date:{$dateFormatShort}:{$LANGUAGE}}</small>
					</h3>
				</header>

				<div class="row">
					<div class="col-sm-9">
						{option:!items.introduction}{$items.text}{/option:!items.introduction}
						{option:items.introduction}{$items.introduction}{/option:items.introduction}

						<a href="{$items.full_url}" class="btn btn-default" title="{$lblReadMoreAbout} {$items.title}">{$lblReadMoreAbout} {$items.title}</a>

					</div>
					<!-- /.col-sm-9 -->
					<div class="col-sm-3">

						{option:items.image}
							<img src="{$FRONTEND_FILES_URL}/blog/images/source/{$items.image}" alt="{$items.title}" class="img-responsive"/>{/option:items.image}
					</div>
					<!-- /.col-sm-3 -->
				</div>
				<!-- /.row -->
				<hr/>
			</article>
		{/iteration:items}
	</section>
	{include:Core/Layout/Templates/Pagination.tpl}
{/option:items}
