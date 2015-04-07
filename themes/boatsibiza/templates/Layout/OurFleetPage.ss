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
				<section class="col-xs-12 col-sm-9">
					<!-- intro -->
					<div class="row mb15">
						<div class="col-xs-12">
							$Content


							<div class="row">
								
								<% loop Children %>
								<div class="col-xs-12 col-sm-6 col-md-3">
									<article style="margin-bottom:30px;">
										<div>
											
										<a href="$Link"><% loop FeaturedImage %><img src="$CroppedImage(263,263).URL" alt="" class="img-responsive"><% end_loop %></a>
											
										<div class="boxContent color1 text-center">
											<h3>$Title</h3>
											<p>$Capacity</p>
											<p><a href="$Link" class="btn btn-primary btn-sm">More Info</a></p>
	
										</div>
									</article>
								</div>
								<% if MultipleOf(4) %>
								</div>
								<div class="row">

								<% end_if %>
								<% end_loop %>

							</div>


							<% include AdditionalContent %>
							
							$Form
							$PageComments
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