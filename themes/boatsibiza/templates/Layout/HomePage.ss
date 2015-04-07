<!-- ======================================= content ======================================= -->
<section id="noSlider">
		<section id="noSliderWrapper">
			<div class="container">
				<div class="row">
					<div class="col-md-5">
						<h1>The real ibiza boating experience</h1>
						<p style="font-size:1.4em">Boats Ibiza is now essentially the number one resource in Ibiza and Formentera for Ibiza boat hire, and water-sports.</p>
							<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#quickenquiry">QUICK ENQUIRY</button>
							<button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#bestprice">BEST PRICE GUARANTEED</button>
						</div>
						<div class="col-md-7">
							
							<a data-toggle="modal" data-target="#videomodal" style="cursor:pointer" href="#"><img src="$Themedir/images/videoplayer.jpg" class="img-responsive" /></a>

							
						</div>
						
					</div>
					
				</div>
				
		</section>

		<!-- slider -->

		<section id="content">
			<% if CallToActionBlocks %>
			<section class="team mb30 mt30">
				<div class="container">
					<div class="row">
						
						<% loop CallToActionBlocks.Sort(SortOrder) %>
						<div class="col-xs-6 col-sm-3">
							<article style="margin-bottom:30px;">
								<div>
									<% if CTALink %>
										<a href="$CTALink"><% loop Image %><img src="$CroppedImage(263,263).URL" alt="" class="img-responsive"><% end_loop %></a>
									<% else %>
										<% loop Image %><img src="$CroppedImage(263,263).URL" alt="" class="img-responsive"><% end_loop %>
									<% end_if %>
								</div>
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
			<!-- services -->
			<section class="color1" id="services">
				<div class="title color2">
					<h1>The real boating experience in Ibiza</h1>
					<h2 class="subTitle">Boats Ibiza is the number one resource in Ibiza and Formentera for boat hire and water-sports.</h2>

				</div>
			</section>
			<!-- services -->


			


			<section>
				<div class="container">
					<div class="row pt30 pb15">
						<div class="col-xs-12 col-md-9">
							$Content
							<% if SpecialOfferSingle %>
							<hr />
							<% loop SpecialOfferSingle %>
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
							<% end_if %>		
							<% include AdditionalContent %>


						</div>
						<div class="col-xs-12 col-md-3">

							<div id="TA_certificateOfExcellence892" class="TA_certificateOfExcellence">
<ul id="KorLwkvLN" class="TA_links XRha7IiC3">
<li id="FFYftdc90b" class="0fMncAvXJ8d">
<a target="_blank" href="http://www.tripadvisor.co.uk/"><img src="http://www.tripadvisor.co.uk/img/cdsi/img2/awards/CoE2014_WidgetAsset-14348-2.png" alt="TripAdvisor" class="widCOEImg" id="CDSWIDCOELOGO"/></a>
</li>
</ul>
</div>
<script src="http://www.jscache.com/wejs?wtype=certificateOfExcellence&amp;uniq=892&amp;locationId=1455998&amp;lang=en_UK&amp;year=2014&amp;display_version=2"></script>

<hr>

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

						<hr />

						<a class="twitter-timeline" href="https://twitter.com/boatsibiza" data-widget-id="562195449130811392">Tweets by @boatsibiza</a>
<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>


						</div>
					</div>
				</section>

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
			<!-- end content -->
	</section>


	<div aria-hidden="true" aria-labelledby="videomodal" role="dialog" tabindex="-1" id="videomodal" class="modal fade" style="display: none;">
	    <div class="modal-dialog">
	      <div class="modal-content">
	         <div class="modal-header">
	            <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
	            <h4 id="myModalLabel" class="modal-title">BoatsIbiza.com</h4>
	          </div>
	           <div class="modal-body">
	           <div class="hidden-xs">
	        <style>.embed-container { position: relative; padding-bottom: 56.25%; height: 0; overflow: hidden; max-width: 100%; } .embed-container iframe, .embed-container object, .embed-container embed { position: absolute; top: 0; left: 0; width: 100%; height: 100%; }</style><div class='embed-container'><iframe src='http://player.vimeo.com/video/74966028' frameborder='0' webkitAllowFullScreen mozallowfullscreen allowFullScreen></iframe></div>
	        </div>
	        <div class="visible-xs">
	        	<iframe src='http://player.vimeo.com/video/74966028' frameborder='0' webkitAllowFullScreen mozallowfullscreen allowFullScreen></iframe></div>
	        </div>
	           </div>
	           <div class="modal-footer">
                        <button data-dismiss="modal" class="btn btn-default pull-left" type="button">
              Close</button>
                        <a href="/contact" class="btn btn-primary">Enquire Now</a>
          </div>
	      </div>
	    </div>
	  </div>

	  <div aria-hidden="true" aria-labelledby="bestprice" role="dialog" tabindex="-1" id="bestprice" class="modal fade" style="display: none;">
	    <div class="modal-dialog">
	      <div class="modal-content">
	         <div class="modal-header">
	            <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
	            <h4 id="myModalLabel" class="modal-title">Best Price Guaranteed</h4>
	          </div>
	           <div class="modal-body">
	         $BestPrice
	           </div>
	           <div class="modal-footer">
                        <button data-dismiss="modal" class="btn btn-default pull-left" type="button">
              Close</button>
                        <a href="/contact" class="btn btn-primary">Enquire Now</a>
          </div>
	      </div>
	    </div>
	  </div>


	<div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="quickenquiry" class="modal fade" style="display: none;">
    <div class="modal-dialog">
      <div class="modal-content">
         <div class="modal-header">
            <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
            <h4 id="myModalLabel" class="modal-title">Quick Enquiry</h4>
          </div>
                
          <form id="email-form" class="form" action="/home/enquire" method="post">
          <input type="text" name="captcha" value="" style="position: absolute;left: -999em;">
          <div class="modal-body">
            <fieldset>                  
              <div class="row">
                <div class="col-xs-12 col-sm-6">
                 <div class="form-group">
				    <label for="Name">Name</label>
				    <input type="text" class="form-control" id="Name" name="Name" placeholder="Enter">
				  </div>
                </div>
                <div class="col-xs-12 col-sm-6">
                 <div class="form-group">
				    <label for="EmailAddress">Email</label>
				    <input type="email" class="form-control" id="EmailAddress" name="EmailAddress" placeholder="Enter">
				  </div>
                </div>
              </div>

              <div class="row">
                <div class="col-xs-12 col-sm-6">
                  <div class="form-group">
				    <label for="Telephone">Telephone</label>
				    <input type="text" class="form-control" id="Telephone" name="Telephone" placeholder="Enter">
				  </div>
                </div>

                <div class="col-xs-12 col-sm-6">

                  <div class="form-group">
				    <label for="HireDate">Approx. Hire Date</label>
				    <input type="text" class="form-control" id="HireDate" name="HireDate" placeholder="Enter">
				  </div>
                </div>

              </div>

             

              <div class="row">   
                <div class="col-xs-12 col-sm-6">
                	<div class="form-group">
				    <label for="NoOfPassengers">No. of passengers</label>

                    <select name="NoOfPassengers" required="" class="form-control">
                      <option class="label-option" value="">
                        -- Please Select --</option>
                      <option value="2">2</option>
                      <option value="3">3</option>
                      <option value="4">4</option>
                      <option value="5">5</option>
                      <option value="6">6</option>
                      <option value="7">7</option>
                      <option value="8">8</option>
                      <option value="9">9</option>
                      <option value="10">10</option>
                      <option value="11">11</option>
                      <option value="12">12</option>
                      <option value="13-30">13-30</option>
                      <option value="30+">30+</option>
                    </select>

                    </div>

                </div>
               <div class="col-xs-12 col-sm-6">
               		<div class="form-group">
				    <label for="Budget">Budget</label>
                     <select name="Budget" class="form-control">
                      <option class="label-option" value="">-- Please Select --</option>
                      <option value="€500">€500</option>
                      <option value="€500 - €850">€500 - €850</option>
                      <option value="€850 - €1200">€850 - €1200</option>
                      <option value="€1200 - €1800">€1200 - €1800</option>
                      <option value="€1800 - €2500">€1800 - €2500</option>
                      <option value="€2500 - €4000">€2500 - €4000</option>
                      <option value="€4000 - €6000">€4000 - €6000</option>
                      <option value="€6000 - €8000">€6000 - €8000</option>
                      <option value="€8000 - €10000">€8000 - €10000</option>
                      <option value="€10000+">€10000+</option>
                    </select>
                    </div>

                </div>
              </div>  

              <div class="row">
                <section class="col-xs-12">

                  <div class="form-group">
				    <label for="exampleInputEmail1">Your message</label>
                    <textarea name="Comments" id="Comments" rows="3" placeholder="Message" class="form-control"></textarea>
                  </div>
                </section>
              </div>
              
            </fieldset>

          </div>

          <div class="modal-footer">
                        <button data-dismiss="modal" class="btn btn-default pull-left" type="button">
              Close</button>
                        <button id="send" type="submit" class="btn btn-primary">
              Send Enquiry</button>
          </div>
        </form>
            </div>
    </div>
  </div>