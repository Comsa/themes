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

            <div class="col-sm-3">
                <div class="pageright">
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
                <!-- /.pageright -->
            </div>
            <!-- /.col-sm-3 -->

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

</body>
</html>
