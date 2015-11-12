function sendscrolllockname(){
	var scrolllockdata = $('#scrolllockname').val()
		$.ajax({
			type: "POST",
			url: "scripts/senddata.php?func=sendscrolllockname",
			data: "scrolllockdata="+scrolllockdata,
			success: function(html) {
				$("#configresult").empty();
				$("#configresult").append(html);
			}
		});
}

function sendcapslockname(){
	var capslockdata = $('#capslockname').val()
		$.ajax({
			type: "POST",
			url: "scripts/senddata.php?func=sendcapslockname",
			data: "capslockdata="+capslockdata,
			success: function(html) {
				$("#configresult").empty();
				$("#configresult").append(html);
			}
		});
}

function sendnumlockname(){
	var numlockdata = $('#numlockname').val()
		$.ajax({
			type: "POST",
			url: "scripts/senddata.php?func=sendnumlockname",
			data: "numlockdata="+numlockdata,
			success: function(html) {
				$("#configresult").empty();
				$("#configresult").append(html);
			}
		});
}
