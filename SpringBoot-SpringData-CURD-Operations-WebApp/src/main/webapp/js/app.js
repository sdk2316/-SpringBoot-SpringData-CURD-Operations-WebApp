function validateForm() {

	var bookName = document.getElementById("bname").value;

	if (bookName == null || bookName == "") {
		document.getElementById("bnameMsg").innerHTML = "Please Enter Book Name";
		return false;
	}else{
		document.getElementById("bnameMsg").innerHTML = "";
	}

	var isbn = document.getElementById("isbn").value;
	if (isbn == null || isbn == "") {
		document.getElementById("isbnMsg").innerHTML = "Please Enter Book ISBN";
		return false;
	}else{
		document.getElementById("isbnMsg").innerHTML = "";
	}
	var price = document.getElementById("price").value;
	if (price == null || price == "") {
		document.getElementById("priceMsg").innerHTML = "Please Enter Book Price";
		return false;
	}else{
		document.getElementById("priceMsg").innerHTML = "";
	}

	return true;

}