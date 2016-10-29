var videos = ["https://youtube.com/embed/XFTR70j_8u0","https://youtube.com/embed/Eb_wyy_PaR0","https://youtube.com/embed/1C_n9RryuV0","https://youtube.com/embed/IsXmPVvXIjA","https://youtube.com/embed/eAoVwCSo_Qo","https://youtube.com/embed/KzuMTaiAr_0","https://youtube.com/embed/BZgtJcgfU4k"];
var vidSelector = 0;

function loadIframe(iframeName, url) {
    var $iframe = $('#' + iframeName);
    if ( $iframe.length ) {
        $iframe.attr('src',url);   
        return false;
    }
    return true;
};

function choose_video(vidType) {
	if (vidType == "nextVid") {
		vidSelector++;
		if (vidSelector > 6) {
			vidSelector = 6;
		}
		return videos[vidSelector];
	} else {
		vidSelector--;
		if (vidSelector < 0) {
			vidSelector = 0;
		}
		return videos[vidSelector];
	}
}
$(document).ready(function() {
	$("#video-prev").click(function(){
		var $video = choose_video("prevVid");
		loadIframe("video-player", $video);
	})
	$("#video-next").click(function(){
		var $video = choose_video("nextVid");
    	loadIframe("video-player", $video);
	});
});