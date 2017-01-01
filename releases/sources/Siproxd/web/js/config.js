function sendport(){
	var portdata = $('#siproxdport').val()
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

function sendlog(){
	var logdata = $('#siproxdlog').val()
		$.ajax({
			type: "POST",
			url: "scripts/senddata.php?func=sendlog",
			data: "logdata="+logdata,
			success: function(html) {
				$("#configresult").empty();
				$("#configresult").append(html);
			}
		});
}

function sendrtp(){
	var rtpdata = $('#siproxdrtp').val()
		$.ajax({
			type: "POST",
			url: "scripts/senddata.php?func=sendrtp",
			data: "rtpdata="+rtpdata,
			success: function(html) {
				$("#configresult").empty();
				$("#configresult").append(html);
			}
		});
}

function sendportlow(){
	var portlowdata = $('#siproxdportlow').val()
		$.ajax({
			type: "POST",
			url: "scripts/senddata.php?func=sendportlow",
			data: "portlowdata="+portlowdata,
			success: function(html) {
				$("#configresult").empty();
				$("#configresult").append(html);
			}
		});
}

function sendporthigh(){
	var porthighdata = $('#siproxdporthigh').val()
		$.ajax({
			type: "POST",
			url: "scripts/senddata.php?func=sendporthigh",
			data: "porthighdata="+porthighdata,
			success: function(html) {
				$("#configresult").empty();
				$("#configresult").append(html);
			}
		});
}

function sendrtpto(){
	var rtptodata = $('#siproxdrtpto').val()
		$.ajax({
			type: "POST",
			url: "scripts/senddata.php?func=sendrtpto",
			data: "rtptodata="+rtptodata,
			success: function(html) {
				$("#configresult").empty();
				$("#configresult").append(html);
			}
		});
}

function sendexpires(){
	var expiresdata = $('#siproxdexpires').val()
		$.ajax({
			type: "POST",
			url: "scripts/senddata.php?func=sendexpires",
			data: "expiresdata="+expiresdata,
			success: function(html) {
				$("#configresult").empty();
				$("#configresult").append(html);
			}
		});
}

function sendoutbound(){
	var outbounddata = $('#siproxdoutbound').val()
		$.ajax({
			type: "POST",
			url: "scripts/senddata.php?func=sendoutbound",
			data: "outbounddata="+outbounddata,
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
