//Browser Support Code
function ajaxFunction() {
	var ajaxRequest; // The variable that makes Ajax possible!
	try {
		// Opera 8.0+, Firefox, Safari
		ajaxRequest = new XMLHttpRequest();
	}
	catch (e) {
		// Internet Explorer Browsers
		try {
			ajaxRequest = new ActiveXObject("Msxml2.XMLHTTP");
		}
		catch (e) {
			try {
				ajaxRequest = new ActiveXObject("Microsoft.XMLHTTP");
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
	ajaxRequest.onreadystatechange = function () {
			if (ajaxRequest.readyState == 4) {
				var ajaxDisplay = document.getElementById('ajaxDiv');
				ajaxDisplay.innerHTML = ajaxRequest.responseText;
			}
		}
		// Now get the value from user and pass it to
		// server script.
	var vendor = "HUAWEI";
	//var wpm = document.getElementById('wpm').value;
	//var sex = document.getElementById('sex').value;
	var queryString = "&vendor=" + vendor;
	//queryString +=  "&wpm=" + wpm + "&sex=" + sex;
	ajaxRequest.open("GET", "../prova.php" + queryString, true);
	ajaxRequest.send(null);
}