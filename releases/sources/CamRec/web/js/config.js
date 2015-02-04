function senddirout(){
	var diroutdata = $('#streamdirout').val()
		$.ajax({
			type: "POST",
			url: "scripts/senddirout.php",
			data: "diroutdata="+diroutdata,
			success: function(html) {
				$("#configresult").empty();
				$("#configresult").append(html);
			}
		});
}

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

function sendfilter(){
	var filterdata = $('#streamfilter').val()
		$.ajax({
			type: "POST",
			url: "scripts/sendfilter.php",
			data: "filterdata="+filterdata,
			success: function(html) {
				$("#configresult").empty();
				$("#configresult").append(html);
			}
		});
}

function sendstore(){
	var storedata = $('#streamstore').val()
		$.ajax({
			type: "POST",
			url: "scripts/sendstore.php",
			data: "storedata="+storedata,
			success: function(html) {
				$("#configresult").empty();
				$("#configresult").append(html);
			}
		});
}

$(document).ready(function(){
	$('#But_STOP').click(function() {
		$.ajax({
			url: "scripts/stop.php",
			cache: false,
			type: 'Get',
			data:{book:1},
			success: function(count) {
				$('#countinfo').html(count+"");
			}
		});
	});
});

$(document).ready(function(){
	$('#But_STOP').click(function() {
		$.ajax({
			url: "scripts/start.php",
			cache: false,
			type: 'Get',
			data:{book:1},
			success: function(count) {
				$('#countinfo').html(count+"");
			}
		});
	});
});
