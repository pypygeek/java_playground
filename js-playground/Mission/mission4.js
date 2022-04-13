function from10To2(value) {
	const bin = Number(value).toString(2);
	return  from2To8(bin); 
}

function from2To8(bin) { 
	const decimal =  parseInt(bin,2); 
	const oct = decimal.toString(8);
	return from8To16(oct) ;
}

function from8To16(oct) {
	const decimal =  parseInt(oct,8);
	const hex = decimal.toString(16);
	return from16To10(hex);
}

function from16To10(hex) {
	const decimal = parseInt(hex,16);
	return  decimal;
}

function mission4_1() {
	const [input] = arguments;
	return console.log(from10To2(value));
}