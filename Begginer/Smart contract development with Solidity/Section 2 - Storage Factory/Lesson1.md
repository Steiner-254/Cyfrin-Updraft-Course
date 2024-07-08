# Storage factory introduction
- Welcome back to our developer tutorial series! We've made our way to lesson three, where we'll dive deeper into the world of contracts, by discussing their deployment and interaction abilities. As always, all the resources for this session can be found in the [Github Repo](https://github.com/Cyfrin/foundry-full-course-cu#lesson-3-remix-storage-factory). For this lesson, we'll focus on the Remix Storage Factory.

## What To Expect in This Lesson
- In this session, we'll be working with three new contract files, namely:

1. `SimpleStorage.sol` - we'll be working with a slightly modified version of this Smart Contract,
2. `AddFiveStorage.sol` - a completely new one for this lesson,
3. `StorageFactory.sol` - our main character for this lesson.

- Our `StorageFactory.sol` will serve as a workshop, creating and deploying new Simple Storage contracts. It's crucial to note that other contracts can indeed deploy new contracts. Beyond deployment, our storage factory will also interact with these freshly minted contracts.

## 
