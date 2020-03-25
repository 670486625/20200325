/**
 * 
 */
function accordion(i) {
		var myul = document.getElementById("ul" + i);
		if (myul.style.display == 'block') {//block展开none不展开
			myul.style.display = "none";
		} else {
			myul.style.display = "block";
		}
		
	}

