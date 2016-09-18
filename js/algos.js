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
  for (var i = 0; i < arr.length; i++){
    index[i] = arr[i].length;
  }
  console.log(index);
  // var largest = index.indexOf(Math.max(...index));
  var largest = index.indexOf(Math.max.apply(null, index));
  // console.log(largest);
  console.log(arr[largest]);
};

/*------------------------------------------------------------------------------
input: objects
steps:
  1. Take in two objects and pass it into the function
  2. Do an iteration through the objects and see if there are any matches
  3. If there is a match, return true, else return false
output: True/False
------------------------------------------------------------------------------*/
var value_match = function(obj1, obj2){

}


// Driver Code - Longest Word --------------------------------------------------
longest_word(['howdy', 'hola', 'buenos dias', 'bonjour', 'ciao', 'namaste']);

// Driver Code - Key-Value Match------------------------------------------------
var person1 = {
  name: "John",
  age: 54
};

var person2 = {
  name: "Casper",
  age: 54
};
