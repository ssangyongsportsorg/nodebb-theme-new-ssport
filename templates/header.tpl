<!DOCTYPE html>
<html lang="{function.localeToHTML, userLang, defaultLang}" {{{if languageDirection}}}data-dir="{languageDirection}" style="direction: {languageDirection};"{{{end}}} class="h-full bg-gray-100">
<head>
    <title>{browserTitle}</title>
    {{{each metaTags}}}{function.buildMetaTag}{{{end}}}
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
    {{{each linkTags}}}{function.buildLinkTag}{{{end}}}

    <script>
        var config = JSON.parse('{{configJSON}}');
        var app = {
            user: JSON.parse('{{userJSON}}')
        };

        document.documentElement.style.setProperty('--panel-offset', `${localStorage.getItem('panelOffset') || 0}px`);
    </script>

    {{{if useCustomHTML}}}
    {{customHTML}}
    {{{end}}}
    {{{if useCustomCSS}}}
    <style>{{customCSS}}</style>
    {{{end}}}
</head>

<body class="h-full flex flex-col">
    <nav id="menu" class="hidden">
        <!-- IMPORT partials/slideout-menu.tpl -->
    </nav>
    <nav id="chats-menu" class="hidden">
        <!-- IMPORT partials/chats-menu.tpl -->
    </nav>

    <main class="flex-grow">
        <nav id="header-menu" component="navbar" class="bg-white shadow-sm">
            <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
                <div class="flex justify-between h-16">
                    <!-- IMPORT partials/menu.tpl -->
                </div>
            </div>
        </nav>
        <script>
            const rect = document.getElementById('header-menu').getBoundingClientRect();
            const offset = Math.max(0, rect.bottom);
            document.documentElement.style.setProperty('--panel-offset', offset + `px`);
        </script>
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-8" id="content">
            <!-- IMPORT partials/noscript/warning.tpl -->
            <!-- IMPORT partials/noscript/message.tpl -->
        </div>
    </main>
</body>
</html>
