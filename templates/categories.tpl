<!-- IMPORT partials/breadcrumbs.tpl -->
<div data-widget-area="header" class="mb-6">
    {{{ each widgets.header }}}
    {{widgets.header.html}}
    {{{ end }}}
</div>
<div class="flex flex-wrap">
    <div class="{{{ if widgets.sidebar.length }}}lg:w-3/4 w-full{{{ else }}}w-full{{{ end }}}">
        {{{ if pagination.pages.length }}}
        <div class="mb-4"><!-- IMPORT partials/category/selector-dropdown-left.tpl --></div>
        {{{ else }}}
        <h1 class="text-3xl font-bold mb-6">[[pages:categories]]</h1>
        {{{ end }}}
        <ul class="space-y-4" itemscope itemtype="http://www.schema.org/ItemList">
            {{{ each categories }}}
            <!-- IMPORT partials/categories/item.tpl -->
            {{{ end }}}
        </ul>
        <div class="mt-6">
            <!-- IMPORT partials/paginator.tpl -->
        </div>
    </div>
    <div data-widget-area="sidebar" class="lg:w-1/4 w-full mt-6 lg:mt-0 {{{ if !widgets.sidebar.length }}}hidden{{{ end }}}">
        {{{ each widgets.sidebar }}}
        {{widgets.sidebar.html}}
        {{{ end }}}
    </div>
</div>
<div data-widget-area="footer" class="mt-8">
    {{{ each widgets.footer }}}
    {{widgets.footer.html}}
    {{{ end }}}
</div>
