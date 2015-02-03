function sendhost(){
	var hostdata = $('#streamhost').val()
		$.ajax({
			type: "POST",
			url: "scripts/sendhost.php",
			data: "hostdata="+hostdata,
			success: function(html) {
				$("#configresult").empty();
				$("#configresult").append(html);
			}
		});
}

function sendport(){
	var portdata = $('#streamport').val()
		$.ajax({
			type: "POST",
			url: "scripts/sendport.php",
			data: "portdata="+portdata,
			success: function(html) {
				$("#configresult").empty();
				$("#configresult").append(html);
			}
		});
}

function sendfps(){
	var fpsdata = $('#streamfps').val()
		$.ajax({
			type: "POST",
			url: "scripts/sendfps.php",
			data: "fpsdata="+fpsdata,
			success: function(html) {
				$("#configresult").empty();
				$("#configresult").append(html);
			}
		});
}

function sendtime(){
	var timedata = $('#streamtime').val()
		$.ajax({
			type: "POST",
			url: "scripts/sendtime.php",
			data: "timedata="+timedata,
			success: function(html) {
				$("#configresult").empty();
				$("#configresult").append(html);
			}
		});
}
