{include:Core/Layout/Templates/Header.tpl}
<div class="content" id="main">

    <div class="container">
        {* BREADCRUMB *}
        {include:Core/Layout/Templates/Includes/Breadcrumb.tpl}

        {* Top position *}
        {iteration:positionTop}
        {option:positionTop.blockIsHTML}
            <section>
                {$positionTop.blockContent}
            </section>
        {/option:positionTop.blockIsHTML}
        {option:!positionTop.blockIsHTML}
        {$positionTop.blockContent}
        {/option:!positionTop.blockIsHTML}
        {/iteration:positionTop}

        <div class="row">

            <div class="col-sm-3">

                {* Subnavigation *}
                <nav>
                    <h4 class="sr-only">{$lblSubnavigation|ucfirst}</h4>
                    <ul class="list-unstyled nav-sub">
                        {$var|getsubnavigation:'page':{$page.id}:2}
                    </ul>
                </nav>
                <div class="clearfix">&nbsp;</div>

                {* Left position *}
                {iteration:positionLeft}
                {option:positionLeft.blockIsHTML}
                    <section>
                        {$positionLeft.blockContent}
                    </section>
                {/option:positionLeft.blockIsHTML}
                {option:!positionLeft.blockIsHTML}
                {$positionLeft.blockContent}
                {/option:!positionLeft.blockIsHTML}
                {/iteration:positionLeft}
            </div>
            <!-- /.col-sm-3 -->

            <div class="col-sm-9 content-main">
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
            </div>
            <!-- /.col-sm-9 -->
        </div>
        <!-- /.row -->

        {* Footer position *}
        {iteration:positionFooter}
        {option:positionFooter.blockIsHTML}
            <section>
                {$positionFooter.blockContent}
            </section>
        {/option:positionFooter.blockIsHTML}
        {option:!positionFooter.blockIsHTML}
        {$positionFooter.blockContent}
        {/option:!positionFooter.blockIsHTML}
        {/iteration:positionFooter}
    </div>
    <!-- /.container -->
</div>
<!-- /#main.content -->

{include:Core/Layout/Templates/Footer.tpl}
