<div class="topic-main-buttons flex justify-end space-x-2">
	<span class="loading-indicator btn hidden" done="0">
		<span class="hidden sm:inline">[[topic:loading-more-posts]]</span>
		<i class="fa fa-refresh fa-spin"></i>
	</span>

	<!-- IF loggedIn -->
	<button component="topic/mark-unread" class="btn btn-sm border border-gray-300 text-gray-700 hover:bg-gray-100" title="[[topic:mark-unread]]">
		<i class="fa fa-fw fa-inbox"></i><span class="hidden sm:inline"></span>
	</button>
	<!-- ENDIF loggedIn -->

	<!-- IMPORT partials/topic/watch.tpl -->

	<!-- IMPORT partials/topic/sort.tpl -->

	<div class="inline-block">
		<!-- IMPORT partials/topic/tools.tpl -->
	</div>
	<!-- IMPORT partials/topic/reply-button.tpl -->
</div>
