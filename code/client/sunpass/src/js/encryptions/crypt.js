var Encryption={};

Encryption.keyword="tollpass";

Encryption.encrypt= function(plaintext){
	return Tea.encrypt(plaintext,this.keyword);
};

Encryption.decrypt= function(encodedtext) {
	return Tea.decrypt(encodedtext, this.keyword);
};
