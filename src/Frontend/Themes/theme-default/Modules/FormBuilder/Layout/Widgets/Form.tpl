{* Note: we can use general variables names here since this template is parsed within its own scope *}

<section>
    {option:successMessage}<div class="alert alert-success">{$successMessage}</div>{/option:successMessage}
    {option:formBuilderError}<p class="alert alert-danger">{$formBuilderError}</p>{/option:formBuilderError}

    {option:fields}
    <form id="{$formName}" method="post" action="{$formAction}">

        {option:formToken}
        <input type="hidden" name="form_token" id="formToken{$formName|ucfirst}" value="{$formToken}" />
        {/option:formToken}

        <input type="hidden" name="form" value="{$formName}" />

        <div class="row">


        {iteration:fields}
        <div class="{option:fields.classname}{$fields.classname}{/option:fields.classname}{option:!fields.classname}col-xs-12{/option:!fields.classname}">

        {* Headings and paragraphs *}
        {option:fields.plaintext}
        {$fields.html}
        {/option:fields.plaintext}

        {* Input fields, textarea's and dropdowns *}
        {option:fields.simple}

        <p class="form-group {option:fields.error} has-error{/option:fields.error}">

            <label for="{$fields.name}">
                {$fields.label}{option:fields.required}<abbr title="{$lblRequiredField}">*</abbr>{/option:fields.required}
            </label>

            {$fields.html}
            {option:fields.error}<span class="help-block">{$fields.error}</span>{/option:fields.error}

        </p>
        {/option:fields.simple}

        {* Radiobuttons and checkboxes *}
        {option:fields.multiple}
        <p class="form-group">
            <label for="">{$fields.label}</label>
            {option:fields.required}<abbr title="{$lblRequiredField}">*</abbr>{/option:fields.required}

            {iteration:fields.html}
            <label for="{$fields.html.id}" class="radio-inline">{$fields.html.field} {$fields.html.label}</label>
            {/iteration:fields.html}
        </p>

        {option:fields.error}<span class="help-block">{$fields.error}</span>{/option:fields.error}
        {/option:fields.multiple}
            </div>

            <!-- .col-xs-... -->

        {/iteration:fields}
        </div>
        <!-- /.row -->

        <p>
            <input type="submit" value="{$submitValue}" name="submit" class="btn btn-success btn-lg" />
        </p>
    </form>
    {/option:fields}
</section>