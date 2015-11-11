function senddirout(){
	var diroutdata = $('#streamdirout').val()
		$.ajax({
			type: "POST",
			url: "scripts/senddata.php?func=senddirout",
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
			url: "scripts/senddata.php?func=sendhost",
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
			url: "scripts/senddata.php?func=sendport",
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
			url: "scripts/senddata.php?func=sendfps",
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
			url: "scripts/senddata.php?func=sendtime",
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
			url: "scripts/senddata.php?func=sendfilter",
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
			url: "scripts/senddata.php?func=sendstore",
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

function showcurrentconfig(){
	$.ajax({
		url: "scripts/currentconfig.php",
		cache: false,
		success: function(html){
			$("#currentconfigresult").html(html);
		}
	});
}
$(document).ready(function(){
	showcurrentconfig();
	setInterval('showcurrentconfig()',3000);
});
