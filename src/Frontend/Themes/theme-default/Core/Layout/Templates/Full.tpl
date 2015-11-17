{include:Core/Layout/Templates/Header.tpl}

<div class="content" id="main">
    <div class="container">

        {include:Core/Layout/Templates/Includes/Breadcrumb.tpl}
        <div class="content-main">

            {option:positionMain}
                {* Main position *}
            {iteration:positionMain}
            {option:positionMain.blockIsHTML}
                <section>
                    {$positionMain.blockContent}
                </section>
            {/option:positionMain.blockIsHTML}
            {option:!positionMain.blockIsHTML}
            {$positionMain.blockContent}
            {/option:!positionMain.blockIsHTML}
            {/iteration:positionMain}
            {/option:positionMain}
        </div>
        <!-- /.content-main -->

    </div>
    <!-- /.container -->
</div>
<!-- /#main.content -->

{include:Core/Layout/Templates/Footer.tpl}