<% if $Title || $Content %>
    <div class="col-md-12">
    <% if $Title && $ShowTitle %><h2 class="element__title">$Title</h2><% end_if %>
    <% if $Content %><div class="element__content">$Content</div><% end_if %>
    </div>
<% end_if %>

<% if $VideoFileMP4 %>
    <div class="col-md-12">
        <div class="embed-responsive embed-responsive-{$MediaAspectRatio}">
            <video controls muted preload="automatic"<% if $PosterImage %> poster="$PosterImage.URL"<% end_if %>>
                <source src="$VideoFileMP4.Link" type=\'video/mp4; codecs="avc1.42E01E, mp4a.40.2"\'>
                <% if $VideoFileWEBM %><source src="$VideoFileWEBM.Link" type=\'video/webm; codecs="vp8, vorbis"\'><% end_if %>
                <% if $VideoFileOGV %><source src="$VideoFileOGV.Link" type=\'video/ogg; codecs="theora, vorbis"\'><% end_if %>
            </video>
        </div>
        <% if $MediaCredits %>
            <div class="typography small">$MediaCredits</div>
        <% end_if %>
    </div>
<% end_if %>