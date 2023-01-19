// Day2 Challenges


// Write a function average_array that takes an array of integers and returns the average value of the elements in the array.
// average_array(array : [Int]) -> async Int. 

async function average_array(array) {
  let sum = 0;
  array.forEach(element => {
    sum += element;
  });
  return sum / array.length;
}


// Character count: Write a function that takes in a string and a character, and returns the number of occurrences of that character in the string.
// count_character(t : Text, c : Char) -> async Nat

async function count_character(t, c) {
  let count = 0;
  for (let i = 0; i < t.length; i++) {
    if (t[i] === c) {
      count++;
    }
  }
  return count;
}


// Write a function factorial that takes a natural number n and returns the factorial of n.
// factorial(n : Nat) ->  async Nat

async function factorial(n) {
  let result = 1;
  for (let i = 1; i <= n; i++) {
    result *= i;
  }
  return result;
}


// Write a function number_of_words that takes a sentence and returns the number of words in the sentence.
// number_of_words(t : Text) -> async Nat 

async function number_of_words(t) {
  let count = 0;
  t.split(' ').forEach(word => {
    if (word !== '') {
      count++;
    }
  });
  return count;
}


// Write a function find_duplicates that takes an array of natural numbers and returns a new array containing all duplicate numbers. The order of the elements in the returned array should be the same as the order of the first occurrence in the input array.
// find_duplicates(a : [Nat]) -> async [Nat]

async function find_duplicates(a) {
  let result = [];
  let seen = {};
  a.forEach(num => {
    if (seen[num]) {
      result.push(num);
    } else {
      seen[num] = true;
    }
  });
  return result;
}

// Write a function convert_to_binary that takes a natural number n and returns a string representing the binary representation of n.
// convert_to_binary(n : Nat) -> async Text

async function convert_to_binary(n) {
  let result = '';
  while (n > 0) {
    result = (n % 2) + result;
    n = Math.floor(n / 2);
  }
  return result;
}
