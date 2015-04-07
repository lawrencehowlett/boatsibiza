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
                <!-- end sidebar -->
                <!-- page content-->
                <section class="col-md-12">
                    <!-- intro -->
                    <div class="row mb15">
                        <div class="col-xs-12">
                            <% if $Query %>
                                <p class="searchQuery">You searched for &quot;{$Query}&quot;</p>
                            <% end_if %>
                            <% if $Results %>

                                <% loop $Results %>
                                <div class="boxFocus" style="margin-bottom:20px;">
                                    <h4>
                                        <a href="$Link">
                                            <% if $MenuTitle %>
                                            $MenuTitle
                                            <% else %>
                                            $Title
                                            <% end_if %>
                                        </a>
                                    </h4>
                                    <% if $Content %>
                                        <p>$Content.LimitWordCountXML</p>
                                    <% end_if %>
                                    <a class="readMoreLink" href="$Link" title="Read more about &quot;{$Title}&quot;">Read more about &quot;{$Title}&quot;...</a>
                                    </div>
                                <% end_loop %>

                            <% else %>
                            <p>Sorry, your search query did not return any results.</p>
                            <% end_if %>

                            <% if $Results.MoreThanOnePage %>
                            <div id="PageNumbers">
                                <div class="pagination">
                                    <% if $Results.NotFirstPage %>
                                    <a class="prev" href="$Results.PrevLink" title="View the previous page">&larr;</a>
                                    <% end_if %>
                                    <span>
                                        <% loop $Results.Pages %>
                                            <% if $CurrentBool %>
                                            $PageNum
                                            <% else %>
                                            <a href="$Link" title="View page number $PageNum" class="go-to-page">$PageNum</a>
                                            <% end_if %>
                                        <% end_loop %>
                                    </span>
                                    <% if $Results.NotLastPage %>
                                    <a class="next" href="$Results.NextLink" title="View the next page">&rarr;</a>
                                    <% end_if %>
                                </div>
                                <p>Page $Results.CurrentPage of $Results.TotalPages</p>
                            </div>
                            <% end_if %>
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