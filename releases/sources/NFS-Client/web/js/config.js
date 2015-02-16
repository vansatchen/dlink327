function sendmountto(){
	var nfsserverdata = $('#nfsserver').val()
	var nfssharedata = $('#nfsshare').val()
	var mounttodata = $('#mountto').val()
		$.ajax({
			type: "POST",
			url: "scripts/mount.php?func=sendmountto",
			data: "nfsserverdata="+nfsserverdata+"&nfssharedata="+nfssharedata+"&mounttodata="+mounttodata,
			success: function(html) {
				$("#actionresult").empty();
				$("#actionresult").append(html);
			}
		});
}

function sendshowmount(){
        var showmountdata = $('#showmount').val()
                $.ajax({
                        type: "POST",
                        url: "scripts/mount.php?func=sendshowmount",
                        data: "showmountdata="+showmountdata,
                        success: function(html) {
                                $("#showmountresult").empty();
                                $("#showmountresult").append(html);
                        }
                });
}

function showcurrentmounts(){
	$.ajax({
		url: "scripts/mounts.php",
		cache: false,
		success: function(html){
			$("#currentmountsresult").html(html);
		}
	});
}
$(document).ready(function(){
	showcurrentmounts();
	setInterval('showcurrentmounts()',3000);
});
