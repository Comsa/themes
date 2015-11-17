{*
	variables that are available:
	- {$searchResults}: contains an array with all items, each element contains data about the item
	- {$searchTerm}: the term that has been searched for
*}

<section id="searchIndex" class="mod">
    <header>
        <h4>{$lblSearchAgain|ucfirst}</h4>
    </header>
    {form:search}
        <div class="row">

            <div class="col-sm-3">
                <div class="form-group {option:txtQError} has-error{/option:txtQError}">
                    <label for="q">{$lblSearchTerm|ucfirst}<abbr title="{$lblRequiredField}">*</abbr></label>
                    {$txtQ} {$txtQError}
                </div>
                <!-- div.form-group -->

                <div class="form-group">
                    <input id="submit" class="btn btn-primary" type="submit" name="submit" value="{$lblSearch|ucfirst}"/>
                </div>
                <!-- div.form-group -->
            </div>
            <!-- div.col-sm-3 -->
        </div>
        <!-- div.row -->
    {/form:search}
</section>

{* don't remove this container nor replace the id - it'll be used to populate the search results live as you type *}
<div id="searchContainer">
    {include:Modules/Search/Layout/Templates/Results.tpl}
</div>
