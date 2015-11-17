{include:Core/Layout/Templates/Header.tpl}

<div class="content" style="min-height: 100%;" id="main">

    <div class="container">

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

            <div class="col-sm-6">
                {* TopLeft position *}
                {iteration:positionTopLeft}
                {option:positionTopLeft.blockIsHTML}
                    <section>
                        {$positionTopLeft.blockContent}
                    </section>
                {/option:positionTopLeft.blockIsHTML}
                {option:!positionTopLeft.blockIsHTML}
                {$positionTopLeft.blockContent}
                {/option:!positionTopLeft.blockIsHTML}
                {/iteration:positionTopLeft}
            </div>
            <!-- /.col-sm-6 -->

            <div class="col-sm-6">
                {* TopRight position *}
                {iteration:positionTopRight}
                {option:positionTopRight.blockIsHTML}
                    <section>
                        {$positionTopRight.blockContent}
                    </section>
                {/option:positionTopRight.blockIsHTML}
                {option:!positionTopRight.blockIsHTML}
                {$positionTopRight.blockContent}
                {/option:!positionTopRight.blockIsHTML}
                {/iteration:positionTopRight}
            </div>
            <!-- /.col-sm-6 -->
        </div>
        <!-- /.row -->

        {* Middle position *}
        {iteration:positionMiddle}
        {option:positionMiddle.blockIsHTML}
            <section>
                {$positionMiddle.blockContent}
            </section>
        {/option:positionMiddle.blockIsHTML}
        {option:!positionMiddle.blockIsHTML}
        {$positionMiddle.blockContent}
        {/option:!positionMiddle.blockIsHTML}
        {/iteration:positionMiddle}

        <div class="row">
            <div class="col-sm-4">
                {* MiddleLeft position *}
                {iteration:positionMiddleLeft}
                {option:positionMiddleLeft.blockIsHTML}
                    <section>
                        {$positionMiddleLeft.blockContent}
                    </section>
                {/option:positionMiddleLeft.blockIsHTML}
                {option:!positionMiddleLeft.blockIsHTML}
                {$positionMiddleLeft.blockContent}
                {/option:!positionMiddleLeft.blockIsHTML}
                {/iteration:positionMiddleLeft}
            </div>
            <!-- /.col-sm-4 -->
            <div class="col-sm-4">
                {* MiddleMiddle position *}
                {iteration:positionMiddleMiddle}
                {option:positionMiddleMiddle.blockIsHTML}
                    <section>
                        {$positionMiddleMiddle.blockContent}
                    </section>
                {/option:positionMiddleMiddle.blockIsHTML}
                {option:!positionMiddleMiddle.blockIsHTML}
                {$positionMiddleMiddle.blockContent}
                {/option:!positionMiddleMiddle.blockIsHTML}
                {/iteration:positionMiddleMiddle}
            </div>
            <!-- /.col-sm-4 -->
            <div class="col-sm-4">
                {* MiddleRight position *}
                {iteration:positionMiddleRight}
                {option:positionMiddleRight.blockIsHTML}
                    <section>
                        {$positionMiddleRight.blockContent}
                    </section>
                {/option:positionMiddleRight.blockIsHTML}
                {option:!positionMiddleRight.blockIsHTML}
                {$positionMiddleRight.blockContent}
                {/option:!positionMiddleRight.blockIsHTML}
                {/iteration:positionMiddleRight}
            </div>
            <!-- /.col-sm-4 -->
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
