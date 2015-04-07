<section id="portfolio">
	<header class="page-header">
		<div class="container">
			<div class="row">
				<div class="col-xs-2 col-sm-2 col-md-1">
					<a href="javascript:history.go(-1)" class="btn btn-sm btn-inverse"><i class="icon-left-open-mini"></i>back</a>
				</div>  
				<div class="col-xs-10 col-sm-5 col-md-6 projectTitle">
					<h1>$Title</h1>
					<p>Capacity: $Capacity</p>
				</div>
				<div class="col-sm-5 hidden-xs">
					<ul id="navTrail">
						<li><a href="/">Home</a></li>
						<% loop Parent %><li><a href="$Link">$Title</a></li><% end_loop %>
						<li id="navTrailLast">$Title</li>
					</ul>
				</div>
			</div>
		</div>
	</header>
	<section id="content" class="mt30">
		<div class="container">
			<div class="row">
				<div class="col-md-8">

					<div id="PropertyGallery" class="carousel slide" data-ride="carousel">
			          <!-- Indicators -->


			          <!-- Wrapper for slides -->
			          <div class="carousel-inner">
			            <% loop GalleryImages.Sort(SortOrder) %>
			                  <div class="item <% if First %>active<% end_if %>">
			                   <img src="<% loop Image %>$CroppedImage(750,437).URL<% end_loop %>" class="img-responsive" itemprop="photo" />
			                  </div>
			            <% end_loop %>
			            
			            
			          </div>

			          <!-- Controls -->
			          <a class="left carousel-control" href="#PropertyGallery" data-slide="prev">
			            <i class="fa fa-chevron-left"></i>
			          </a>
			          <a class="right carousel-control" href="#PropertyGallery" data-slide="next">
			            <i class="fa fa-chevron-right"></i>
			          </a>
			          <div class="clearfix"></div>

			          

			        </div>
			        <ul class="carousel-thumbs hidden-xs" style="padding-bottom:15px; min-height:80px">
			            
			            <% loop GalleryImages.Sort(SortOrder) %>   
			                  <li data-target="#PropertyGallery" data-slide-to="{$Pos(0)}" <% if First %>class="active"<% end_if %>>
			                    <img src="<% loop Image %>$CroppedImage(100,80).URL<% end_loop %>" class="img-responsive" itemprop="photo" />
			                  </li>
			            <% end_loop %>
			          </ul>
			          <div class="clearfix"></div>


					$Content

					<% include AdditionalContent %>

				</div>
				<div class="col-xs-12 col-md-4">


							<div class="boxFocus" style="margin-bottom:20px;">
								<h2>Enquire Now</h2>
								<% include EnquiryForm %>
							</div>


							<% include TopFiveBoats %>

							
							<hr />

								<div id="TA_selfserveprop484" class="TA_selfserveprop">
<ul id="TQR5eao5Tf" class="TA_links dxR9VbBnnM2">
<li id="TJ8mHWtNx" class="M4j9BqXnw">
<a target="_blank" href="http://www.tripadvisor.co.uk/"><img src="http://www.tripadvisor.co.uk/img/cdsi/img2/branding/150_logo-11900-2.png" alt="TripAdvisor"/></a>
</li>
</ul>
</div>
<script src="http://www.jscache.com/wejs?wtype=selfserveprop&amp;uniq=484&amp;locationId=1455998&amp;lang=en_UK&amp;rating=true&amp;nreviews=5&amp;writereviewlink=true&amp;popIdx=true&amp;iswide=false&amp;border=true&amp;display_version=2"></script>

						

				</div>
			</div>
			<hr>
		</div>


		




		<% loop Menu(1) %>
			<% if ClassName="HomePage" %>
				<section class="color1" id="services">
					<div class="title color2">
						<h1>The real boating experience in Ibiza</h1>
						<h2 class="subTitle">Boats Ibiza is the number one resource in Ibiza and Formentera for boat hire and water-sports.</h2>
					</div>
				</section>
				<% if CallToActionBlocks %>
				<section class="team mb30 mt30">
					<div class="container">
						<div class="row">
							
							<% loop CallToActionBlocks.Sort(SortOrder) %>
							<div class="col-sm-3">
								<article>
									<div><% loop Image %><img src="$CroppedImage(263,263).URL" alt="" class="img-responsive"><% end_loop %></div>
									<div class="boxContent color1 text-center">
										<h3>$Title</h3>
										<p>$Content</p>
										<% if CTALink %>
										<p><a href="$CTALink" class="btn btn-primary btn-sm">View Packages</a></p>
										<% end_if %>
									</div>
								</article>
							</div>
							<% end_loop %>

						</div>

					</div>
				</section>
				<% end_if %>
			<% end_if %>
		<% end_loop %>
		<!-- call to action -->
				<section>
					<div class="container">
						<div class="row">
							<div class="col-md-12">
								<div class="color1 ctaBox mb15">
										<div class="row">
											<div class="col-md-8">
												<h1 style="margin-left:20px;">
													<strong>Book your boat hire in ibiza</strong>  <br>with the number 1 ranked boat hire company, boatsibiza.com
												</h1>

											</div>
											<div class="col-md-4">
												<a class="btn btn-lg btn-inverse" style="margin-right:20px;" title="" href="/contact-us">
													<i class="icon-star"></i> Contact Us
												</a>
											</div>
										</div>
								</div>
							</div>
						</div>
					</div>

				</section>
				<!-- call to action -->


	</section>

	<!-- parallax quote --> 
				<section id="paralaxSlice1" data-stellar-background-ratio="0.5">
					<div class="maskParent">
						<div class="paralaxMask"></div>
						<div class="paralaxText">
							<i class="icon-star iconMedium"></i><i class="icon-star iconMedium"></i><i class="icon-star iconMedium"></i><i class="icon-star iconMedium"></i><i class="icon-star iconMedium"></i>
							<blockquote class="mt15">
								Ranked Number 1 on TripAdvisor with a Certificate of Excellence 2014</small>
							</blockquote>
						</div>
					</div>
				</section>
				<!-- parallax quote --> 

</section>
<!-- content -->