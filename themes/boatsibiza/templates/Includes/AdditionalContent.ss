<% if GalleryImages && ClassName!=BoatPage && ClassName!=BoatCategory %>
	<div class="col-xs-12 col-lg-8">
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
	</div>
	<div class="clearfix"></div>
<% end_if %>

<% if ContentTabs %>

<div class="panel with-nav-tabs panel-primary">
	<div class="panel-heading">
		<ul class="nav nav-tabs" class="pageTabs"> 
			<% loop ContentTabs.Sort(SortOrder) %>
				<li <% if First %>class="active"<% end_if %>><a href="#tab{$Pos(0)}" data-toggle="tab">$Title</a></li> 
			<% end_loop %>
		</ul>  
	</div>
	<div class="panel-body">
		<div class="tab-content"> 
			<% loop ContentTabs.Sort(SortOrder) %>
				<div class="tab-pane <% if First %>active<% end_if %>" id="tab{$Pos(0)}">
				$Content
				</div> 
			<% end_loop %>
		</div> 
	</div> 
</div> 
<% end_if %> 

<% if Faqs %>
<h2>Frequently Asked Questions</h2>
<div class="panel-group" id="faqaccordion">
<% loop Faqs.Sort(SortOrder) %>
	<div class="panel panel-default">
	    <div class="panel-heading">
	      <h4 class="panel-title">
	        <a class="accordion-toggle" data-toggle="collapse" data-parent="#faqaccordion" href="#collapse{$Pos(0)}">
	          $Title <a id="linkpoint{$Pos(0)}">&nbsp;</a>
	        </a>
	      </h4>
	    </div>
	    <div id="collapse{$Pos(0)}" class="panel-collapse collapse out">
	      <div class="panel-body">
	        $Text
	      </div>
	    </div>
	  </div>
<% end_loop %>
</div>
<% end_if %>

<% if Reviews %>
<h2>Reviews and Testimonials</h2>

<% loop Reviews.Sort(SortOrder) %>
	<div class="well well-sm">
	&quot;{$Testimonial}&quot;
	<p><strong>$PersonName - $DateSent.Nice</strong>
	</div>
<% end_loop %>

<% end_if %>


