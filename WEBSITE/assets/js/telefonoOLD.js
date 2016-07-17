//Browser Support Code
function ajaxFunction() {
	var ajaxRequest; // The variable that makes Ajax possible!
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
	//				var ajaxDisplay = document.getElementById('carImg');
	//				ajaxDisplay.innerHTML = ajaxRequest.responseText;
	//			}
	//		}
	//		// Now get the value from user and pass it to
	//		// server script.
	//	var vendor = "HUAWEI";
	//	var model = "P9";
	//	//var wpm = document.getElementById('wpm').value;
	//	//var sex = document.getElementById('sex').value;
	//	//	var queryString = "&vendor=" + vendor + "&model=" + model;
	//	//queryString +=  "&wpm=" + wpm + "&sex=" + sex;
	//	ajaxRequest.open("GET", "http://hyp59.altervista.org/phpFiles/modelimages.php", true);
	//	ajaxRequest.send(null);
	//	var ajaxRequest2; // The variable that makes Ajax possible!
//		try {
//			// Opera 8.0+, Firefox, Safari
//			ajaxRequest2 = new XMLHttpRequest();
//		}
//		catch (e) {
//			// Internet Explorer Browsers
//			try {
//				ajaxRequest2 = new ActiveXObject("Msxml2.XMLHTTP");
//			}
//			catch (e) {
//				try {
//					ajaxRequest2 = new ActiveXObject("Microsoft.XMLHTTP");
//				}
//				catch (e) {
//					// Something went wrong
//					alert("Your browser broke!");
//					return false;
//				}
//			}
//		}
	//	// Create a function that will receive data 
	//	// sent from the server and will update
	//	// div section in the same page.
	//	//state==4  request finished and response ready
	//	ajaxRequest2.onreadystatechange = function () {
	//		if (ajaxRequest2.readyState == 4) {
	//			var ajaxDisplay = document.getElementById('specs');
	//			ajaxDisplay.innerHTML = ajaxRequest2.responseText;
	//		}
	//	}
	//	ajaxRequest2.open("GET", "http://hyp59.altervista.org/phpFiles/getModelShortSpecs.php", true);
	//	ajaxRequest2.send(null);
	var ajaxRequest3; // The variable that makes Ajax possible!
	try {
	// Opera 8.0+, Firefox, Safari
	ajaxRequest3 = new XMLHttpRequest();
}
catch (e) {
	// Internet Explorer Browsers
	try {
		ajaxRequest3 = new ActiveXObject("Msxml2.XMLHTTP");
	}
	catch (e) {
		try {
			ajaxRequest3 = new ActiveXObject("Microsoft.XMLHTTP");
		}
		catch (e) {
			// Something went wrong
			alert("Your browser broke!");
			return false;
		}
	}
}
	// Create a function that will receive data 
	// sent from the server and will update
	// div section in the same page.
	//state==4  request finished and response ready
	ajaxRequest3.onreadystatechange = function () {
		if (ajaxRequest3.readyState == 4) {
			var ajaxDisplay = document.getElementById('prezzo');
			ajaxDisplay.innerHTML = ajaxRequest3.responseText;
		}
	}
	ajaxRequest3.open("GET", "http://hyp59.altervista.org/phpFiles/getModelPrice.php", true);
	ajaxRequest3.send(null);
}