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

            <div class="col-sm-6 content-main">
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
            <!-- /.col-sm-6 -->

            <div class="col-sm-6 content-main">
                {* Right position *}
                {iteration:positionRight}
                {option:positionRight.blockIsHTML}
                    <section>
                        {$positionRight.blockContent}
                    </section>
                {/option:positionRight.blockIsHTML}
                {option:!positionRight.blockIsHTML}
                {$positionRight.blockContent}
                {/option:!positionRight.blockIsHTML}
                {/iteration:positionRight}
            </div>
            <!-- /.col-sm-6 -->
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
