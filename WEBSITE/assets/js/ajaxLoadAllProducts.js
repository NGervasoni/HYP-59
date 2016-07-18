//Browser Support Code
function ajaxLoadAllProducts() {
	//---------------------------------------------SMARTPHONES-----------------------------------
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
			var ajaxDisplay = document.getElementById('smartphones');
			ajaxDisplay.innerHTML = ajaxRequest.responseText;
		};
	};
	ajaxRequest.open("GET", "http://hyp59.altervista.org/phpFiles/prodottiPhoneFetching.php", true);
	ajaxRequest.send(null);
	//---------------------------------------------TABLET-----------------------------------
	var ajaxRequest1; // The variable that makes Ajax possible!
	try {
		// Opera 8.0+, Firefox, Safari
		ajaxRequest1 = new XMLHttpRequest();
	}
	catch (e) {
		// Internet Explorer Browsers
		try {
			ajaxRequest1 = new ActiveXObject("Msxml2.XMLHTTP");
		}
		catch (e) {
			try {
				ajaxRequest1 = new ActiveXObject("Microsoft.XMLHTTP");
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
	ajaxRequest1.onreadystatechange = function () {
		if (ajaxRequest1.readyState == 4) {
			var ajaxDisplay = document.getElementById('tablet');
			ajaxDisplay.innerHTML = ajaxRequest1.responseText;
		};
	};
	ajaxRequest1.open("GET", "http://hyp59.altervista.org/phpFiles/prodottiTabletFetching.php", true);
	ajaxRequest1.send(null);
	//---------------------------------------------NETWORKING-----------------------------------
	var ajaxRequest2; // The variable that makes Ajax possible!
	try {
		// Opera 8.0+, Firefox, Safari
		ajaxRequest2 = new XMLHttpRequest();
	}
	catch (e) {
		// Internet Explorer Browsers
		try {
			ajaxRequest2 = new ActiveXObject("Msxml2.XMLHTTP");
		}
		catch (e) {
			try {
				ajaxRequest2 = new ActiveXObject("Microsoft.XMLHTTP");
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
	ajaxRequest2.onreadystatechange = function () {
		if (ajaxRequest2.readyState == 4) {
			var ajaxDisplay = document.getElementById('networking');
			ajaxDisplay.innerHTML = ajaxRequest2.responseText;
		};
	};
	ajaxRequest2.open("GET", "http://hyp59.altervista.org/phpFiles/prodottiNetworkingFetching.php", true);
	ajaxRequest2.send(null);
	//---------------------------------------------SMARTLIVING-----------------------------------
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
			var ajaxDisplay = document.getElementById('smartliving');
			ajaxDisplay.innerHTML = ajaxRequest3.responseText;
		};
	};
	ajaxRequest3.open("GET", "http://hyp59.altervista.org/phpFiles/prodottiSmartlivingFetching.php", true);
	ajaxRequest3.send(null);
	//---------------------------------------------OUTLET-----------------------------------
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
			var ajaxDisplay = document.getElementById('outlet');
			ajaxDisplay.innerHTML = ajaxRequest4.responseText;
		};
	};
	ajaxRequest4.open("GET", "http://hyp59.altervista.org/phpFiles/prodottiOutletFetching.php", true);
	ajaxRequest4.send(null);
}