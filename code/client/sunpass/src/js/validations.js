gtp.validateEmail = function(emailID) {
 
   var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
   if(reg.test(emailID) == false) {
      return false;
   }
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
};

gtp.validateCcNumber = function(ccNumber) {
	return true;
};