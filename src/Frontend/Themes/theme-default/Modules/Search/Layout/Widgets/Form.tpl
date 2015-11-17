<form action="{$var|geturlforblock:'Search'}" class="form-inline pull-right search hidden-xs" accept-charset="UTF-8" method="get">
    <input type="hidden" value="search" id="formSearch" name="form" />
    <div class="form-group">
        <label class="sr-only" for="search">{$lblSearchingFor}</label>
        <input type="text" class="form-control" id="qWidget" name="q_widget" maxlength="255" placeholder="Zoek in deze site">
        <button type="submit" class="sr-only btn">{$lblSearch|ucfirst}</button>
    </div>
    <!-- div.form-group -->
</form>

{*<div id="headerSearch">
	<h4>{$lblSearch|ucfirst}</h4>

	{form:search}
		<div class="oneLiner">
			<p>{$txtQWidget}</p>
			<p><input id="submit" class="inputSubmit" type="submit" name="submit" value="{$lblSearch|ucfirst}" /></p>
		</div>
	{/form:search}
</div>*}