<% if $Title || $Content %>
    <div class="col-md-12">
    <% if $Title && $ShowTitle %><h2 class="element__title">$Title</h2><% end_if %>
    <% if $Content %><div class="element__content">$Content</div><% end_if %>
    </div>
<% end_if %>

<% if $VideoFileMP4 %>
    <div class="col-md-12">
        <div class="embed-responsive embed-responsive-{$MediaAspectRatio}">
        <video controls playsinline<% if $Muted == On %> muted<% end_if %><% if $Autoplay == On %> autoplay<% end_if %><% if $Loop == On %> loop<% end_if %> preload="automatic"<% if $PosterImage %> poster="$PosterImage.URL"<% end_if %>>
                <source src="$VideoFileMP4.Link" type="video/mp4;">
                <% if $VideoFileWEBM %><source src="$VideoFileWEBM.Link" type="video/webm"><% end_if %>
                <% if $VideoFileOGV %><source src="$VideoFileOGV.Link" type="video/ogg"><% end_if %>
            </video>
        </div>
        <% if $MediaCredits %>
            <div class="typography small">$MediaCredits</div>
        <% end_if %>
    </div>
<% end_if %>
