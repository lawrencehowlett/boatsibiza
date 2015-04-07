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
							<% if SelectedTag %>
		<h3><% _t('BlogHolder_ss.VIEWINGTAGGED', 'Viewing entries tagged with') %> '$SelectedTag'</h3>
	<% else_if SelectedDate %>
		<h3><% _t('BlogHolder_ss.VIEWINGPOSTEDIN', 'Viewing entries posted in') %> $SelectedNiceDate</h3>
	<% else_if SelectedAuthor %>
		<h3><% _t('BlogHolder_ss.VIEWINGPOSTEDBY', 'Viewing entries posted by') %> $SelectedAuthor</h3>
	<% end_if %>
	
	<% if BlogEntries %>
		<% loop BlogEntries %>
			<% include BlogSummary %>
		<% end_loop %>
	<% else %>
		<h2><% _t('BlogHolder_ss.NOENTRIES', 'There are no blog entries') %></h2>
	<% end_if %>
	
	<% include BlogPagination %>
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