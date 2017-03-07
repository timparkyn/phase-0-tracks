// take a string
// break into characters
// write a loop for reversing
// add each character to new string
// output new string


// var str = "hello";


function reverseString(str) {
var newstr = "";

for (i = str.length; i >= 0; i -= 1 ) {
	newstr =  newstr + str.charAt(i)
}

console.log(newstr);
}


if ( 0 == 0 ) {
	reverseString('yosef');
}


