// 1 - In your file called utils.mo: create a function called second_maximum that takes an array [Int] of integers and returns the second largest number in the array.
// second_maximum(array : [Int]) ->  Int;

async function second_maximum(array) {
  let max = Math.max(...array);
  let secondMax = Math.min(...array);

  for (let i = 0; i < array.length; i++) {
    if (array[i] < max && array[i] > secondMax) {
      secondMax = array[i];
    }
  }
  return secondMax;
}


// 2 - In your file called utils.mo: create a function called remove_even that takes an array [Nat] and returns a new array with only the odd numbers from the original array.
// remove_even(array : [Nat]) -> [Nat];

async function remove_even(array) {
  let result = [];
  array.forEach(num => {
    if (num % 2 !== 0) {
      result.push(num);
    }
  });
  return result;
}

//3 - In your file called utils.mo: write a function drop that takes 2 parameters: an array [T] and a Nat n. This function will drop the n first elements of the array and returns the remainder.
//⛔️ Do not use a loop.
//drop<T> : (xs : [T], n : Nat) -> [T]

async function drop<T>(xs, n) {
  return xs.slice(n);
}

//4 - In your file called book.mo create a custom type with at least 2 properties 
// (title of type Text, pages of type Nat), 
// import this type in your main.mo and create a variable that will store a book.

type Book = { title : Text, pages : Nat };
let BookShelf : Book;

// 5 - In your file called book.mo create a function called create_book that takes two parameters: a title of type Text, and a number of pages of type Nat and returns a book. 
// This function will create a new book based on the parameters passed.

type Book = { title : Text, pages : Nat };

async function create_book(title, pages) {
  let book = {
    title : title,
    pages : pages
  };
  return book;
}

// 6 - In main.mo import the type List from the Base Library and create a list that stores books.


import List from 'Base/List';

let bookList : List<Book>;

//7- In main.mo create a function called add_book that takes a book as parameter and returns nothing 
// this function should add this book to your list. 
// Then create a second function called get_books that takes no parameter 
// but returns an Array that contains all books stored in the list.

