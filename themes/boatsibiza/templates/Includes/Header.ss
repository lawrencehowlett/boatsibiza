<header class="navbar-fixed-top">
	<!-- pre header -->
	<div id="preHeader" class="hidden-xs">
		<div class="container">
			<div class="row">
				<div class="col-xs-2 col-lg-6">
					<ul class="quickMenu">
						<li><a href="mailto:info@boatsibiza.com">info@boatsibiza.com</a></li>
						<li>
									
							 <form id="SearchForm_SearchForm" action="/home/SearchForm" method="get" enctype="application/x-www-form-urlencoded" _lpchecked="1" class="form-inline visible-lg">
							 	<div class="form-group">
							 	<input type="text" class="form-control" id="SearchForm_SearchForm_Search" name="Search" placeholder="Eg. Rinker Sports" style="height: 25px;padding: 0px 5px;">
							 	</div>

								<button id="SearchForm_SearchForm_action_results" type="submit" name="action_results" class="btn btn-xs btn-primary">Search</button>
							</form>


						</li>
					</ul>


				</div>
				<div class="col-xs-10 col-lg-6">
					<div id="contactBloc">
						<!-- social icons -->
						<ul class="socialNetwork">
							<li>
								<a href="https://www.facebook.com/boats.ibiza" class="tips" title="follow us on Facebook" target="_blank">
									<i class="icon-facebook-1 iconRounded"></i>
								</a>
							</li>
							<li>
								<a href="https://twitter.com/boatsibiza" class="tips" title="follow us on Twitter" target="_blank">
									<i class="icon-twitter-bird iconRounded"></i>
								</a>
							</li>
							<li class="hidden-lg">
								<a data-toggle="modal" data-target="#searchModal" style="cursor:pointer">
									<i class="icon-search iconRounded"></i>
								</a>
							</li>
							<!-- social icons -->
						</ul>
						<!-- phone -->
						
						<span class="contactPhone"><i class="icon-phone"></i>+34 971 804 267</span>
						<span class="contactPhone"><i class="icon-mobile"></i>+34 663 745 520</span>
						<span class="contactPhone"><i class="icon-mobile"></i>+44 7557 406 750</span>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- pre header -->
	<!-- header -->
	<div id="mainHeader" role="banner">
		<div class="container">
			<nav class="navbar navbar-default" role="navigation">
				<div class="navbar-header">
					<!-- responsive navigation -->
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<!-- Logo -->
					<a class="navbar-brand" href="/"><img src="$Themedir/images/main-logo.png" alt="FAT CATZ website template"/></a>
				</div>
				<div class="collapse navbar-collapse" id="mainMenu">


					<!-- Main navigation -->
					<ul class="nav navbar-nav pull-right">
						<% loop $Menu(1) %>
		                      <% if Children %>
			                      <li <% if not Last %>class="primary"<% else %><% end_if %>><a href="$Link" class="firstLevel hasSubMenu <% if Last %>last<% end_if %>">$MenuTitle.XML</a>
			                        <ul class="subMenu">
			                            <li><a href="$Link">$MenuTitle.XML</a></li>
			                            <% loop Children %>
			                              <li><a href="$Link">$MenuTitle.XML</a></li>
			                            <% end_loop %>
			                        </ul>
			                      </li>
		                      <% else %>
		                      	<li <% if not Last %>class="primary"<% else %>id="lastMenu" class="last"<% end_if %>><a href="$Link" class="firstLevel <% if Last %>last<% end_if %>"  title="Go to the $Title.XML page">$MenuTitle.XML</a></li>
		                      <% end_if %>
		                      <li class="sep"></li>
		                <% end_loop %>
					</ul>
					<!-- End main navigation -->

					<div class="visible-xs">
					<form id="SearchForm_SearchForm" action="/home/SearchForm" method="get" enctype="application/x-www-form-urlencoded" _lpchecked="1" class="form-inline">
							 	<div class="form-group">
							 	<input type="text" class="form-control" id="SearchForm_SearchForm_Search" name="Search" placeholder="Eg. Rinker Sports" style="height: 25px;padding: 0px 5px;">
							 	</div>

								<button id="SearchForm_SearchForm_action_results" type="submit" name="action_results" class="btn btn-sm btn-primary" style="margin-bottom:20px;">Search</button>
							</form>
					</div>
					
				</div>
			</nav>
		</div>
	</div>
</header>
<!-- header -->