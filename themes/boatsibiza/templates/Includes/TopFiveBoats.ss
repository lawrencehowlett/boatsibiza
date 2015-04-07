<% if getTopBoatList %>
<div class="boxFocus">
<h2>Top 5 Boats</h2><div class="table-responsive">
	<table class="table table-striped">
<% loop getTopBoatList %>
	
	<% loop getPage %>
		<tr>
		
			<td><a href="$Link"><% loop FeaturedImage %>
			<img alt="" src="$CroppedImage(100,100).URL" class="img-responsive imgBorder">
			<% end_loop %></a>
			</td>

			<td><a href="$Link" style="font-size:1.3em">$Title</a></td>

		</tr>
	<% end_loop %>

<% end_loop %></table>
	</div>
</div>
<% end_if %>