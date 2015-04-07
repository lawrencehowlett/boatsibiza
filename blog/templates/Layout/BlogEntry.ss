<section id="page">
	<header class="page-header mb30">
		<div class="container">
			<div class="row">
				<div class="col-xs-12">
					<h1>$Title</h1>
				</div>
			</div>
		</div>
	</header>
	<section id="content" class="mt30 pb30">
		<div class="container">
			<div class="row">
				<!-- sidebar -->
				<% include SideBar %>

				<!-- end sidebar -->
				<!-- page content-->
				<section class="col-md-9">
					<!-- intro -->
					<div class="row mb15">
						<div class="col-xs-12">


							<div class="blogEntry">
		<h2 class="postTitle">$Title</h2>
		<p class="authorDate"><% _t('BlogEntry_ss.POSTEDBY', 'Posted by') %> $Author.XML <% _t('BlogEntry_ss.POSTEDON', 'on') %> $Date.Long</p>
		<% if TagsCollection %>
			<p class="tags">
				 <% _t('BlogEntry_ss.TAGS', 'Tags:') %> 
				<% loop TagsCollection %>
					<a href="$Link" title="<% _t('BlogEntry_ss.VIEWALLPOSTTAGGED', 'View all posts tagged') %> '$Tag'" rel="tag">$Tag</a><% if not Last %>,<% end_if %>
				<% end_loop %>
			</p>
		<% end_if %>		
		$Content		
	</div>
	
	<% if IsOwner %><p class="edit-post"><a href="$EditURL" id="editpost" title="<% _t('BlogEntry_ss.EDITTHIS', 'Edit this post') %>"><% _t('BlogEntry_ss.EDITTHIS', 'Edit this post') %></a> | <a href="$Link(unpublishPost)" id="unpublishpost"><% _t('BlogEntry_ss.UNPUBLISHTHIS', 'Unpublish this post') %></a></p><% end_if %>
	
						</div>
						
					</div>
					<!-- intro -->
					<hr />
					

				</section>
				<!-- end page content-->

			</div>
			<!-- end row -->
		</div>
		<!-- end container -->
	</section>
	<!--end page content-->
</section>