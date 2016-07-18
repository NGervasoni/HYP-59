//	function loadSelectedPhone(vendor, model) {
//		var vendor = $("#vendor").html();
//		var model = $("#model").html();
//		
//		
//		location.assign("prodottoLAYOUT.html");
//		document.getElementById('phoneboxPres');
//				ajaxDisplay.innerHTML
//		ajaxFunction();
//		
//		
//		
//			var ajaxRequest; // The variable that makes Ajax possible!
//	try {
//		// Opera 8.0+, Firefox, Safari
//		ajaxRequest = new XMLHttpRequest();
//	}
//	catch (e) {
//		// Internet Explorer Browsers
//		try {
//			ajaxRequest = new ActiveXObject("Msxml2.XMLHTTP");
//		}
//		catch (e) {
//			try {
//				ajaxRequest = new ActiveXObject("Microsoft.XMLHTTP");
//			}
//			catch (e) {
//				// Something went wrong
//				alert("Your browser broke!");
//				return false;
//			}
//		}
//	}
//	// Create a function that will receive data 
//	// sent from the server and will update
//	// div section in the same page.
//	//state==4  request finished and response ready
//	ajaxRequest.onreadystatechange = function () {
//			if (ajaxRequest.readyState == 4) {
//				var ajaxDisplay = document.getElementById('phoneboxPres');
//				ajaxDisplay.innerHTML = ajaxRequest.responseText;
//			}
//		}
//		// Now get the value from user and pass it to
//		// server script.
//	var vendor = "HUAWEI";
//	var model = "P9";
//	var queryString = "?vendor=" + vendor + "&model=" + model;
//	ajaxRequest.open("GET", "http://hyp59.altervista.org/phpFiles/getPhone.php" + queryString, true);
//	ajaxRequest.send(null);
//		
//	}