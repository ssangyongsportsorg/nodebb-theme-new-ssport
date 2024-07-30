<!-- IMPORT partials/breadcrumbs.tpl -->
<div data-widget-area="header">
	{{{ each widgets.header }}}
	{{widgets.header.html}}
	{{{ end }}}
</div>
<div class="flex flex-col lg:flex-row">
	<div class="category {{{if widgets.sidebar.length }}}lg:w-9/12 w-full{{{ else }}}w-full{{{ end }}}">
		<!-- IMPORT partials/category/subcategory.tpl -->

		{{{ if (topics.length || privileges.topics:create) }}}
		<div class="topic-list-header sticky top-0 flex justify-between py-2 mb-2">
			<div class="flex gap-1 items-center">
				{{{ if privileges.topics:create }}}
				<a href="{config.relative_path}/compose?cid={cid}" component="category/post" id="new_topic" class="btn btn-primary" data-ajaxify="false" role="button">[[category:new-topic-button]]</a>
				{{{ else }}}
					{{{ if !loggedIn }}}
					<a component="category/post/guest" href="{config.relative_path}/login" class="btn btn-primary">[[category:guest-login-post]]</a>
					{{{ end }}}
				{{{ end }}}

				<a href="{url}" class="inline-block">
					<div class="alert alert-warning h-full m-0 px-2 py-1 flex gap-1 items-center hidden" id="new-topics-alert"><i class="fa fa-fw fa-rotate-right"></i>[[recent:load-new-posts]]</div>
				</a>
			</div>
			<div component="category/controls" class="flex gap-1 items-center">
				<!-- IMPORT partials/category/watch.tpl -->
				<!-- IMPORT partials/category/sort.tpl -->
				<!-- IMPORT partials/category/tools.tpl -->
			</div>
		</div>
		{{{ end }}}

		{{{ if (!topics.length && privileges.topics:create)}}}
		<hr class="visible-xs" />
		<div class="alert alert-warning" id="category-no-topics">
			[[category:no-topics]]
		</div>
		{{{ end }}}

		<!-- IMPORT partials/topics_list.tpl -->

		{{{ if config.usePagination }}}
		<!-- IMPORT partials/paginator.tpl -->
		{{{ end }}}
	</div>
	<div data-widget-area="sidebar" class="lg:w-3/12 w-full {{{ if !widgets.sidebar.length }}}hidden{{{ end }}}">
		{{{ each widgets.sidebar }}}
		{{widgets.sidebar.html}}
		{{{ end }}}
	</div>
</div>
<div data-widget-area="footer">
	{{{each widgets.footer}}}
	{{widgets.footer.html}}
	{{{end}}}
</div>

<!-- IF !config.usePagination -->
<noscript>
	<!-- IMPORT partials/paginator.tpl -->
</noscript>
<!-- ENDIF !config.usePagination -->
