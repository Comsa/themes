{option:navigation}
    <nav>
        <ul class="list-unstyled nav-sub">
            {iteration:navigation}
                <li{option:navigation.selected} class="selected"{/option:navigation.selected}>
                    <a href="{$navigation.link}" title="{$navigation.navigation_title}"{option:navigation.nofollow} rel="nofollow"{/option:navigation.nofollow}>{$navigation.navigation_title}</a>
                    {*option:navigation.selected}{$navigation.children}{/option:navigation.selected*}
                    {$navigation.children}
                </li>
            {/iteration:navigation}
        </ul>
    </nav>
{/option:navigation}