<section id="portfolio">
	<header class="page-header">
		<div class="container">
			<div class="row">
				<div class="col-xs-2 col-sm-2 col-md-1">
					<a href="javascript:history.go(-1)" class="btn btn-sm btn-inverse"><i class="icon-left-open-mini"></i>back</a>
				</div>  
				<div class="col-xs-10 col-sm-5 col-md-6 projectTitle">
					<h1>$Title</h1>
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

		<section class="intro">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="boxFocus color1 mb30">
							$Content

						</div>
					</div>
				</div>
			</div>	
		</section>

		<div class="container">
			<div class="row">
				<div class="col-md-8">


					


					<% loop SpecialOffers %>
						<div class="well">
						<article class="row">
							<div class="col-md-4">
								<% loop Image %>
								<img alt="" src="$CroppedImage(360,280).URL" class="img-responsive imgBorder">
								<% end_loop %>
								<A href="/contact" class="btn btn-primary btn-md" style="margin-top: 10px;">Enquire Now</A>

							</div>
							<div class="col-md-8">
								<h2>$Title </h2>
								<p>$Content</p>
								<hr />
								<h2>Hurry - Offer Ends In...</h2>
								<div class="countdowntimer" data-countdown="$ExpiryDate"></div>
							</div>

						</article>
						</div>
						<!-- portfolio item -->
						<hr/>
					<% end_loop %>


					<% include AdditionalContent %>


				</div>
				<div class="col-xs-12 col-md-4">


							<div class="boxFocus" style="margin-bottom:20px;">
								<h2>Enquire Now</h2>
								<% include EnquiryForm %>
							</div>


							<% include TopFiveBoats %>

						

				</div>
			</div>
			<hr>
		</div>


		




		
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
												<a class="btn btn-lg btn-inverse" style="margin-right:20px;" title="" href="/contact-us" >
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