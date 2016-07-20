//Browser Support Code
function ajaxLoadAllPromotions() {
	//---------------------------------------------PRODOTTI-----------------------------------
	var ajaxRequest4; // The variable that makes Ajax possible!
	try {
		// Opera 8.0+, Firefox, Safari
		ajaxRequest4 = new XMLHttpRequest();
	}
	catch (e) {
		// Internet Explorer Browsers
		try {
			ajaxRequest4 = new ActiveXObject("Msxml2.XMLHTTP");
		}
		catch (e) {
			try {
				ajaxRequest4 = new ActiveXObject("Microsoft.XMLHTTP");
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
	ajaxRequest4.onreadystatechange = function () {
		if (ajaxRequest4.readyState == 4) {
			var ajaxDisplay = document.getElementById('prodotti');
			ajaxDisplay.innerHTML = ajaxRequest4.responseText;
		};
	};
	ajaxRequest4.open("GET", "http://hyp59.altervista.org/phpFiles/offerteProdottiFetching.php", true);
	ajaxRequest4.send(null);
}