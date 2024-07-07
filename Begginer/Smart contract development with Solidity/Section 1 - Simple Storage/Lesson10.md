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

## 