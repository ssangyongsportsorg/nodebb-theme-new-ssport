<li component="post" class="posts-list-item flex flex-col lg:flex-row <!-- IF ../deleted -->deleted<!-- ELSE --><!-- IF ../topic.deleted -->deleted<!-- ENDIF --><!-- ENDIF --> {{{ if ../topic.scheduled }}} scheduled{{{ end }}}" data-pid="{../pid}" data-uid="{../uid}">
    <div class="flex-1 post-body p-4">
        <a class="topic-title text-xl font-bold text-blue-600 hover:underline" href="{config.relative_path}/post/{../pid}">
            <!-- IF !../isMainPost -->RE: <!-- ENDIF -->{../topic.title}
        </a>

        <div component="post/content" class="content mt-2 text-gray-700">
            {../content}
        </div>

        <small class="topic-category mt-2 text-sm text-gray-500">
            <a href="{config.relative_path}/category/{../category.slug}" class="hover:underline">[[global:posted-in, {../category.name}]]</a>
        </small>

        {{{ if ../isMainPost }}}
        {{{ if ../topic.tags.length }}}
        <span class="tag-list mt-2 flex flex-wrap gap-1">
            {{{ each ../topic.tags }}}
            <a href="{config.relative_path}/tags/{topic.tags.valueEncoded}" class="bg-gray-200 text-gray-700 px-2 py-1 rounded-md text-sm hover:bg-gray-300">
                <span class="tag-item tag-class-{topic.tags.class}">{topic.tags.valueEscaped}</span>
            </a>
            {{{ end }}}
        </span>
        {{{ end }}}
        {{{ end }}}

        <div class="post-info mt-4 flex items-center">
            <a href="{config.relative_path}/user/{../user.userslug}">
                {buildAvatar(../user, "28px", true, "user-img not-responsive rounded-full")}
            </a>

            <div class="post-author ml-2">
                <a href="{config.relative_path}/user/{../user.userslug}" class="text-sm font-medium text-gray-900 hover:underline">{../user.displayname}</a><br />
                <span class="timeago text-xs text-gray-500" title="{../timestampISO}"></span>
            </div>
        </div>
    </div>
</li>
