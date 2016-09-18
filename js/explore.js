// Take word and save it to a variable
// Split word into an array
// Reverse array, then join array
var word_reverse = function(word){
  var new_word = word.toLowerCase().split('').reverse().join('');
  if (word == new_word) {
    console.log("This is a palindrone!");
  }
  else {
    console.log("The reverse word is: " + new_word);
  }
};

word_reverse("racecar");
word_reverse("booom");
word_reverse("vroooom");
word_reverse("eye");
