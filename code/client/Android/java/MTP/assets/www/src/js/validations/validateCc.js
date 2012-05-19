// Luhn algorithm validator, by Avraham Plotnitzky. (aviplot at gmail)
String.prototype.luhnCheck = function()
{
	if(this.length < 12 || this.length>19)
		return false;
    var luhnArr = [[0,2,4,6,8,1,3,5,7,9],[0,1,2,3,4,5,6,7,8,9]], sum = 0;
    this.replace(/\D+/g,"").replace(/[\d]/g, function(c, p, o){
        sum += luhnArr[ (o.length-p)&1 ][ parseInt(c,10) ];
    });
    return (sum%10 === 0) && (sum > 0);
};
