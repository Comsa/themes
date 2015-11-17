{option:navigation}
{iteration:navigation}
    <li{option:navigation.selected} class="selected"{/option:navigation.selected}>
        <a href="{$navigation.link}" title="{$navigation.navigation_title}"{option:navigation.nofollow} rel="nofollow"{/option:navigation.nofollow}><span>{$navigation.navigation_title}</span></a>
        {*{option:navigation.selected}*}
        {option:navigation.children}
            <ul class="list-unstyled">
                {$navigation.children}
            </ul>

        {/option:navigation.children}
        {*{/option:navigation.selected}*}
    </li>
{/iteration:navigation}
    <!-- ul.nav-main -->
{/option:navigation}