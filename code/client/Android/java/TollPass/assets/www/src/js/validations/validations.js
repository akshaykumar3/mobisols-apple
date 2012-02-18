gtp.validateEmail = function(emailID) {
 
   var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
   if(reg.test(emailID) == false) {
      return false;
   }
   return true;
};

gtp.validatePhoneNumber = function(phonenum) {
	// todo
	// logic to check whether phonenum format is correct.
	return true;
};

gtp.validateCar = function(car_reg, car_state) {
	if(car_state == 'Florida') {
		var reg1 = /[A-X]{1}\d{2}\s\d{1}[A-Z]{2}/;
		var reg2 = /\d{3}\s[H-Y]{1}[A-Z]{2}/;
		var reg3 = /[A-Y]{1}[A-Z]{2}\s[A-Z]{1}\d{2}/;
		if((reg1.test(car_reg) || reg2.test(car_reg) || reg3.test(car_reg))&& car_reg.length == 7)
			return true;
		else 
			return false;
	}
	else if(car_state == 'Texas') {
		return true;
	}
	else 
		return true;
};

gtp.validateCcNumber = function(ccNumber) {
	return true;
};

gtp.dateValidity = function(start, end) {
	if(end.getFullYear() > start.getFullYear())
		return true;
	else if(end.getFullYear() == start.getFullYear()) {
		if(end.getMonth() > start.getMonth())
			return true;
		else if(end.getMonth() == start.getMonth()) {
			if(end.getDate() >= start.getDate())
				return true;
			else
				return false;
		}
		else
			return false;
	}
	else
		return false;
		
};

gtp.expiryDateValidity = function(expMonth, expYear) {
	if(expYear > gtp.today().getFullYear())
		return true;
	else if(expYear == gtp.today().getFullYear()) {
		if(expMonth > gtp.today().getMonth()) 
			return true;
		else
			return false;
	}
	else
		return false;
};

gtp.validateZipCode = function(state, city, zipcode) {
	if(state == 'AK'){
		if(zipcode > 99499 && zicode < 100000)
			return true;
		else
			return false;
	}
	else if(state == 'AL') {
		if(zipcode > 35499 && zipcode < 37000)
			return true;
		else
			return false;
	}
	else if(state == 'AR') {
		if(zipcode > 71599 && zipcode < 73000)
			return true;
		else
			return false;
	}
	else if(state == 'AZ') {
		if(zipcode > 57999 && zipcode < 86600)
			return true;
		else
			return false;
	}
	else if(state == 'CA') {
		if(zipcode > 89999 && zipcode < 96200)
			return true;
		else
			return false;
	}
	else if(state == 'CO') {
		if(zipcode > 79999 && zipcode < 81700)
			return true;
		else
			return false;
	}
	else if(state == 'CT') {
		if(zipcode > 06799 && zipcode < 07000)
			return true;
		else
			return false;
	}
	else if(state == 'DC') {
		if(zipcode > 20000 && zipcode <= 20599)
			return true;
		else
			return false;
	}
	else if(state == 'DE') {
		if(zipcode >= 19700 && zipcode <= 19999)
			return true;
		else
			return false;
	}
	else if(state == 'FL') {
		if(zipcode >= 32100 && zipcode <= 34999)
			return true;
		else
			return false;
	}
	else if(state == 'GA') {
		if(zipcode >= 30000 && zipcode <= 31999)
			return true;
		else
			return false;
	}
	else if(state == 'HI') {
		if(zipcode >= 96700 && zipcode <= 96899)
			return true;
		else
			return false;
	}
	else if(state == 'IA') {
		if(zipcode >= 50000 && zipcode <= 52899)
			return true;
		else
			return false;
	}
	else if(state == 'ID') {
		if(zipcode >= 83200 && zipcode <= 83899)
			return true;
		else
			return false;
	}
	else if(state == 'IL') {
		if(zipcode >= 60000 && zipcode <=62999)
			return true;
		else
			return false;
	}
	else if(state == 'IO') {
		if(zipcode >= 83200 && zipcode <= 83899)
			return true;
		else
			return false;
	}
	else if(state == 'IN') {
		if(zipcode >= 46000 && zipcode <= 47999)
			return true;
		else
			return false;
	}
	else if(state == 'KS') {
		if(zipcode >= 66000 && zipcode <= 64799)
			return true;
		else
			return false;
	}
	else if(state == 'KY') {
		if(zipcode >= 40000 && zipcode <= 42799)
			return true;
		else
			return false;
	}
	else if(state == 'LA') {
		if(zipcode >= 70000 && zipcode <= 71499)
			return true;
		else
			return false;
	}
	else if(state == 'MA') {
		if(zipcode >= 01000 && zipcode <= 02799)
			return true;
		else
			return false;
	}
	else if(state == 'MD') {
		if(zipcode >= 20600 && zipcode <= 21999)
			return true;
		else
			return false;
	}
	else if(state == 'ME') {
		if(zipcode >= 03000 && zipcode <= 04999)
			return true;
		else
			return false;
	}
	else if(state == 'MI') {
		if(zipcode >= 48000 && zipcode <= 49799)
			return true;
		else
			return false;
	}
	else if(state == 'MN') {
		if(zipcode >= 55000 && zipcode <= 56799)
			return true;
		else
			return false;
	}
	else if(state == 'MO') {
		if(zipcode >= 63000 && zipcode <= 65899)
			return true;
		else
			return false;
	}
	else if(state == 'MS') {
		if(zipcode >= 38600 && zipcode <= 39599)
			return true;
		else
			return false;
	}
	else if(state == 'MT') {
		if(zipcode >= 59000 && zipcode <= 59999)
			return true;
		else
			return false;
	}
	else if(state == 'NC') {
		if(zipcode >= 27000 && zipcode <= 28999)
			return true;
		else
			return false;
	}
	else if(state == 'ND') {
		if(zipcode >= 58000 && zipcode <= 58899)
			return true;
		else
			return false;
	}
	else if(state == 'NE') {
		if(zipcode >= 68000 && zipcode <= 69399)
			return true;
		else
			return false;
	}
	else if(state == 'NH') {
		if(zipcode >= 03000 && zipcode <= 03899)
			return true;
		else
			return false;
	}
	else if(state == 'NJ') {
		if(zipcode >= 07000 && zipcode <= 08999)
			return true;
		else
			return false;
	}
	else if(state == 'NM') {
		if(zipcode >= 87000 && zipcode <= 88499)
			return true;
		else
			return false;
	}
	else if(state == 'NV') {
		if(zipcode >= 89000 && zipcode <= 89899)
			return true;
		else
			return false;
	}
	else if(state == 'NY') {
		if(zipcode >= 10000 && zipcode <= 14999)
			return true;
		else
			return false;
	}
	else if(state == 'OH') {
		if(zipcode >= 43000 && zipcode <= 45899)
			return true;
		else
			return false;
	}
	else if(state == 'OK') {
		if(zipcode >= 73000 && zipcode <= 74999)
			return true;
		else
			return false;
	}
	else if(state == 'OR') {
		if(zipcode >= 97000 && zipcode <= 97999)
			return true;
		else
			return false;
	}
	else if(state == 'PA') {
		if(zipcode >= 15000 && zipcode <= 16999)
			return true;
		else
			return false;
	}
	else if(state == 'PR') {
		if(zipcode >= 00600 && zipcode <= 00799)
			return true;
		else
			return false;
	}
	else if(state == 'RI') {
		if(zipcode >= 02800 && zipcode <= 02999)
			return true;
		else
			return false;
	}
	else if(state == 'SC') {
		if(zipcode >= 29000 && zipcode <= 29999)
			return true;
		else
			return false;
	}
	else if(state == 'SD') {
		if(zipcode >= 57000 && zipcode <= 57799)
			return true;
		else
			return false;
	}
	else if(state == 'TN') {
		if(zipcode >= 37000 && zipcode <= 35899)
			return true;
		else
			return false;
	}
	else if(state == 'TX') {
		if(zipcode >= 75000 && zipcode <= 79999)
			return true;
		else
			return false;
	}
	else if(state == 'UT') {
		if(zipcode >= 84000 && zipcode <= 84799)
			return true;
		else
			return false;
	}
};