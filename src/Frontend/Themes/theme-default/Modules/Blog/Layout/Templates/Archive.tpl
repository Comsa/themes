{*
	variables that are available:
	- {$archive}: contains an array with some dates
	- {$items}: contains an array with all items, each element contains data about the items
	- {$allowComments}: boolean to indicate that the archive may display comment info
*}
<h1>
{$lblNews} {$lblArchive}
</h1>

{option:!items}
    <section>
        <div class="alert alert-warning">
            <p>{$msgBlogNoItems}</p>
        </div>
    </section>
{/option:!items}
{option:items}
    <section id="blogArchive">

        <table class="table" width="100%">
            <thead>
            <tr>
                <th class="date">{$lblDate|ucfirst}</th>
                <th class="title">{$lblTitle|ucfirst}</th>
            </tr>
            </thead>
            <tbody>
            {iteration:items}
                <tr>
                    <td class="date">{$items.publish_on|date:{$dateFormatShort}:{$LANGUAGE}}</td>
                    <td class="title"><a href="{$items.full_url}" title="{$items.title}">{$items.title}</a></td>
                </tr>
            {/iteration:items}
            </tbody>
        </table>
    </section>
    {include:Core/Layout/Templates/Pagination.tpl}
{/option:items}
