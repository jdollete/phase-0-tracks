/*
input: array
steps:
  1. Iterate through each item in the array
  2. Determine the length of the String
  3. Save the length into an array
  4. Call out the largest number index in relation to the array of words
  3. Print out the index with the largest word
output: str
*/

var longest_word = function(arr){
  var index = [];
  for (var i = 0; i < arr.length; i++){
    index[i] = arr[i].length;
  }
  console.log(index);
  var largest = index.indexOf(Math.max(...index));
  console.log(largest);
  console.log(arr[largest]);
};

longest_word(['howdy', 'hola', 'buenos dias', 'bonjour', 'ciao', 'namaste']);
