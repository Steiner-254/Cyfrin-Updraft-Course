# Mapping

- `Follow along with the course here.`
- Understanding the Problem with Arrays
- Imagine you have a contract that holds a list of individuals along with their favorite numbers:

```
[
    ("Pat", 7),
    ("John", 8), 
    ("Mariah", 10), 
    ("Chelsea", 232)
]
```

- Now, if you want to know Chelsea's favorite number, you will have to `run a loop through the array`. This might seem fine when managing data of a few individuals, but imagine scaling this up to 1,000 or more. Constantly iterating through large arrays to locate a specific element can be incredibly time-consuming and inefficient.
- Take the scenario:

>> Oh, what was Chelsea's favorite number?

```
    Array element at 0 - Pat.
    Array element at 1 - John.
    Array element at 2 - Mariah.
    Array element at 3 - Chelsea => favorite number: 232.
```

- Is there a better data structure that can improve this access process and make finding individual information a breeze?

>> `Meet mapping.`

## Mapping: A Simpler Way to Link Information
- Think of mapping in coding like a dictionary: each word in a dictionary has a unique meaning or a chunk of text associated with it. Similarly, a mapping in code is essentially a set of keys with each key returning a unique set of information. Thus, if you look up a word or a 'string' in coding terms, the corresponding output will be the text or 'number' associated only with that string.
- A typical way of defining a mapping starts with the keyword 'mapping', the key type, the datatype of data to be linked with each key and the visibility type. Let's create a mapping type:

```
mapping (string => uint256) public nameToFavoriteNumber;
```

- With this, we have constructed a mapping that maps every string to a uint256 number emulating a link between a person's name and their favorite number. Now, rather than iterating through an array, we can directly enter the name and get their favorite number.

##
