<form method="post" action="/home/enquire" id="contactfrm" role="form" novalidate="novalidate">
	<input type="text" name="captcha" value="" style="position: absolute;left: -999em;">
	<div class="form-group">
		<label for="Name">Name</label>
		<input type="text" class="form-control" name="Name" id="Name" placeholder="John Smith" title="Please enter your name (at least 2 characters)">
	</div>
	<div class="form-group">
		<label for="EmailAddress">Email</label>
		<input type="email" class="form-control" name="EmailAddress" id="EmailAddress" placeholder="john@smith.com" title="Please enter a valid email address">
	</div>
	<div class="form-group">
		<label for="Telephone">Phone</label>
		<input name="Telephone" class="form-control" type="text" id="Telephone" size="30" value="" placeholder="+44 01234 444 555" title="Please enter a valid phone number (at least 10 characters)">
	</div>
	<div class="form-group">
		<label for="NoOfPassengers">Group Size</label>
		<input type="text" class="form-control" name="NoOfPassengers" id="NoOfPassengers" placeholder="12 People" title="Please enter your group size">
	</div>

	<div class="form-group">
		<label for="HireDate">Approx Date Required</label>
		<input type="text" class="form-control" name="HireDate" id="HireDate" placeholder="E.g. July 10th" title="Hire Date">
	</div>

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

	<div class="form-group">
		<label for="Comments">Comments</label>
		<textarea name="Comments" class="form-control" id="Comments" cols="3" rows="5" placeholder="Enter your message…" title="Please enter your message (at least 10 characters)"></textarea>
	</div>
	
	<div class="result"></div>
	<button name="submit" type="submit" class="btn btn-primary" id="submit"> Submit Enquiry</button>
	<input type="hidden" name="pageTitle" value="$Title" />
</form>