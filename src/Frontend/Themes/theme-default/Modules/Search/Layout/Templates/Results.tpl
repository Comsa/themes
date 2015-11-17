{*
	variables that are available:
	- {$searchResults}: contains an array with all items, each element contains data about the item
	- {$searchTerm}: the term that has been searched for
*}
{option:searchTerm}
    <section id="searchResults">
        <div>
            {option:!searchResults}
                <p class="alert alert-warning">{$msgSearchNoItems}</p>
            {/option:!searchResults}
            {option:searchResults}
            {iteration:searchResults}
                <section>
                    <header>
                        <h3>
                            <a href="{$searchResults.full_url}" title="{$searchResults.title}">
                                {$searchResults.title}
                            </a>
                        </h3>
                    </header>
                    <div>
                        {option:!searchResults.introduction}{$searchResults.text|truncate:200}{/option:!searchResults.introduction}
                        {option:searchResults.introduction}{$searchResults.introduction}{/option:searchResults.introduction}
                    </div>
                </section>
            {/iteration:searchResults}
            {/option:searchResults}
        </div>
    </section>
    {include:Core/Layout/Templates/Pagination.tpl}
{/option:searchTerm}