{option:languages}
{iteration:languages}
    <li{option:languages.current} class="selected"{/option:languages.current}>
        <a href="{$languages.url}">{option:languages.current}{/option:languages.current}<span>{$languages.label|ucfirst}</span></a>
    </li>
{/iteration:languages}
    <!-- ul.nav-lang -->
{/option:languages}