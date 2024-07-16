// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

// Define the Cows contract
contract Cows {
    // Public string variable to store the sound a cow makes
    string public sound;

    // Constructor to initialize the sound variable
    constructor() {
        sound = "Moo";
    }
}

// Define the Birds contract
contract Birds {
    // Public string variable to store the sound a bird makes
    string public sound;

    // Constructor to initialize the sound variable
    constructor() {
        sound = "Tweet";
    }
}

// Define the AnimalFactory contract
contract AnimalFactory {
    // Dynamic array to store instances of the Cows contract
    Cows[] public cows;
    // Dynamic array to store instances of the Birds contract
    Birds[] public birds;

    // Function to create new instances of Cows and Birds contracts
    function createAnimals() public {
        // Create a new instance of the Cows contract
        Cows cow = new Cows();
        // Create a new instance of the Birds contract
        Birds bird = new Birds();

        // Push the new Cows instance into the cows array
        cows.push(cow);
        // Push the new Birds instance into the birds array
        birds.push(bird);
    }
}
