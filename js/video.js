var videos = ["https://youtube.com/embed/XFTR70j_8u0","https://youtube.com/embed/Eb_wyy_PaR0","https://youtube.com/embed/1C_n9RryuV0","https://youtube.com/embed/IsXmPVvXIjA","https://youtube.com/embed/eAoVwCSo_Qo","https://youtube.com/embed/KzuMTaiAr_0","https://youtube.com/embed/BZgtJcgfU4k"];
var vidSelector = 0;

$(document).ready(function(e) {
	$("#video-prev").click(function(event){
		vidSelector--;
		if (vidSelector < 0) {
			vidSelector = 0;
		}
		$("#video-player").attr('src',videos[vidSelector]);
		event.preventDefault();

	});
	$("#video-next").click(function(event){
		vidSelector++;
		if (vidSelector > 6) {
			vidSelector = 6;
		}
    	$("#video-player").attr('src',videos[vidSelector]);
    	event.preventDefault();
	});
});
