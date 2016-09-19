/*------------------------------------------------------------------------------
input: array
steps:
  1. Iterate through each item in the array
  2. Determine the length of the String
  3. Save the length into an array
  4. Call out the largest number index in relation to the array of words
  3. Print out the index with the largest word
output: str
------------------------------------------------------------------------------*/

var longest_word = function(arr){
  var index = [];
  console.log(arr);
  for (var i = 0; i < arr.length; i++){
    index[i] = arr[i].length;
  }
  // console.log(index);
  // var largest = index.indexOf(Math.max(...index)); // Spread method does not work on some JS versions
  var largest = index.indexOf(Math.max.apply(null, index));
  // console.log(largest);
  console.log("The longest word is: " + arr[largest]);
};

/*------------------------------------------------------------------------------
input: objects
steps:
  1. Take in two objects and pass it into the function
  2. Do an iteration through the objects and see if there are any matches
  3. At the first instance there is a match, stop and return true
  4. If iteration does not come back with a match, return false
output: True/False

Personal Notes:
// Source MDN
// prop will give the key of the object
// obj[prop] will give the value of that key in the object
var obj = {a:1, b:2, c:3};
for (var prop in obj) {
  console.log("obj." + prop + " = " + obj[prop]);
}

// Output:
// "obj.a = 1"
// "obj.b = 2"
// "obj.c = 3"
------------------------------------------------------------------------------*/
var value_match = function(person1, person2){
  for (var key in person1) {
    if (person2[key] == person1[key]) {
      console.log("There's a match!");
      return true;
    }
  }
  console.log("No matches found!");
  return false;
};


/*------------------------------------------------------------------------------
input: integer
steps:
  1. User inputs an integer
  2. Create new array  with the amount inputted as the of interations
  3. Push in random letters ranging from 1-10 letters in another iteration
  4. Randomly pick letters from the alphabet to put in a random array
  5. Join the random array and push it into main array
output: Array

Personal Notes:
Return a random number between 1 and 10:
Math.floor((Math.random() * 10) + 1);
------------------------------------------------------------------------------*/
var random_test = function(int){
  var alpha = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'];
  var test_arr =[];
  for (var i = 0; i < int; i++){
    var str = [];
      for (var j = 0; j < Math.floor((Math.random() * 10) + 1); j++ ) {
        str[j] = alpha[Math.floor((Math.random() * 25) + 0)];
      }
    test_arr[i] = str.join('');
  }
  console.log(test_arr);
  longest_word(test_arr);
};



// Driver Code - Longest Word --------------------------------------------------
longest_word(['howdy', 'hola', 'buenos dias', 'bonjour', 'ciao', 'namaste']);

// Driver Code - Key-Value Match------------------------------------------------
var person1 = {
  name: "John",
  age: 50,
  height: 5
};

var person2 = {
  name: "Casper",
  age: 54,
  height: 5
};

value_match(person1, person2);

// Driver Code - Random Test Data ----------------------------------------------
random_test(5);
