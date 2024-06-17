# Arrays and structs

## Storing and Tracking Favorite Numbers in Our Contract
- Our smart contract, as is, does an excellent job. It primarily enables users to store their favorite numbers, update them, and view them later. Sounds brilliant, right? Yet, it has been specifically designed to store a single favorite number at a time. What if we wanted to maintain not just our favorite number, but others as well?
- In this lesson, we will explore how we can extend this functionality. We'll learn how to create a list of favorite numbers using `arrays`. Additionally, we will delve into using `structs` for creating new types in Solidity. Let's get started!

## An Array of Favorite Numbers
- The idea is to say goodbye to one uint256 favorite number and say hello to a list of uint256 numbers, or in our case, a list of favorite numbers. Here's the magic syntax:

```
uint256[] list_of_favorite_numbers;
```

- The bracket syntax identifies that we have a list of uint256, a list or array of numbers. An array of numbers would look something like this:

```
Array_Example_list_of_favorite_numbers = [0, 78, 90];
```

- Arrays are very dominant in computer science and programming, and an array in Solidity bears resemblance to an array in any other programming language. If you're new to arrays or lists, remember `arrays are zero indexed. The first element starts from index zero, the second from index one, and so on.`

## Creating a Struct for Person
- But an array of numbers is not enough - we wouldn't know whose favorite number is which! We need a way to tie favorite numbers to people. So let's evolve our code by defining a new type Person using the Struct keyword.

```
struct Person {uint256 favorite_number;string name;}
```

- Realize the beauty of this new type? Now each Person has a favorite number and a name! Remember we need to be particular about scope - don't let your internal variable names clash.

```
Renaming to avoid clashuint256 my_favorite_number;
```

- We can now create a variable of type Person the same way we did for uint256. Meet our friend Pat!

```
Person public my_friend = Person(7, 'Pat');
```

- So, we've now created our own type Person and defined Pat who has a favorite number of seven and a name of 'Pat'. We can retrieve these details using the generated getter function thanks to the public visibility.

## An Array of Person
- Creating individual variables for each friend might become a tedious task, especially when we'd like to add a large number of friends. What we can do instead is use the array syntax we've learned and create an array or list of Person.

```
Person[] public list_of_people;
```

- When using a dynamic array, we can add as many Person objects as we wish to our list, as the size of the array can now grow and shrink dynamically in Solidity. We can access each Person object in our array by its index.

## Adding Persons to the List
- Next, we need to create a function that will allow us to add people to our list.

```
function add_person(string memory _name, uint256 _favorite_number) public {
    list_of_people.push(Person(_favorite_number, _name));
}
```

- `add_person` is a function that takes two variables as input - the name and favorite number of the person. It creates a new Person object and adds it to our list_of_people array.

##

