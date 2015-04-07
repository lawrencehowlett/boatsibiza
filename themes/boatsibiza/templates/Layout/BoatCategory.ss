<section id="page">
	<header class="page-header">
		<div class="container">
			<div class="row">
				<div class="col-xs-2 col-sm-2 col-md-1">
					<a href="javascript:history.go(-1)" class="btn btn-sm btn-inverse"><i class="icon-left-open-mini"></i>back</a>
				</div>  
				<div class="col-xs-10 col-sm-5 col-md-6 projectTitle">
					<h1>$Title</h1>
				</div>
			</div>
		</div>
	</header>
	<section id="content" class="mt30 pb30">
		<section class="intro">
			<div class="container">
				<div class="row">

					<div class="col-xs-12 col-md-8">
						<div class="boxFocus color1 mb30">
							
							$Content
							<% include AdditionalContent %>



						</div>
						<% loop LinkedBoatPages %>
							<% loop getPage %>
							<!-- portfolio item -->
							<article class="portfolioItem row">

								<div class="col-md-4">
									<% loop FeaturedImage %>
										<img alt="" src="$CroppedImage(360,280).URL" class="img-responsive imgBorder">
									<% end_loop %>
								</div>

								<div class="col-md-8">

									<h2>$Title </h2>
									<p><strong>Capacity: $Capacity</strong></p>
									<p>$ShortDescription</p>
									<a href="$Link" class="btn btn-lg btn-primary" title="link">Find out more</a>

								</div>

							</article>
							<!-- portfolio item -->
							<hr/>
							<% end_loop %>
						<% end_loop %>
					</div>
					<div class="col-xs-12 col-md-4">

						<% if GalleryImages %>
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
								        <img src="<% loop Image %>$CroppedImage(80,65).URL<% end_loop %>" class="img-responsive" itemprop="photo" />
								      </li>
								<% end_loop %>
								</ul>
								<div class="clearfix"></div>
							<% end_if %>
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
			</div>	
		</section>
		<%-- <section class="pb30"> 
			<div class="container clearfix">
				<div class="row">
					<div class="col-md-12 imgHover">
						<% loop LinkedBoatPages %>
							<% loop getPage %>
							<!-- portfolio item -->
							<article class="portfolioItem row">

								<div class="col-md-4">
									<% loop FeaturedImage %>
										<img alt="" src="$CroppedImage(360,280).URL" class="img-responsive imgBorder">
									<% end_loop %>
								</div>

								<div class="col-md-8">

									<h2>$Title </h2>
									<p><strong>Capacity: $Capacity</strong></p>
									<p>$ShortDescription</p>
									<a href="$Link" class="btn btn-lg btn-primary" title="link">Find out more</a>

								</div>

							</article>
							<!-- portfolio item -->
							<hr/>
							<% end_loop %>
						<% end_loop %>
					</div>
				</div>
			</div>
		</section> --%>
	</section>
</section>