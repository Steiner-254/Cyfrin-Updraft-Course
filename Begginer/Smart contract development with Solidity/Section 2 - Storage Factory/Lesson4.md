# Solidity imports

## Introduction
- In the previous lesson, we integrated the `SimpleStorage` code directly into the `StorageFactory` contract. This allowed StorageFactory to have full access to the SimpleStorage contract’s functionality. In this lesson, we will explore a more efficient way to arrange and organize the code by using the import statement.

## Importing code
- The `import` keyword enables a contract to utilize code from other files without needing to include the entire codebase directly within the contract. Here are two of the main advantages that the import keyword provides:
1. `No cluttering:` it prevents your current file from being cluttered with numerous lines of code, keeping it clean and organized.
2. Simplified maintenance: by keeping the code in separate files, it becomes easier to maintain and update individual components without affecting the entire codebase. For example, if we change some lines inside SimpleStorage, we would have also to constantly copy-paste the modified content into StorageFactory

- You can now remove the previously added SimpleStorage code and replace it with the import shorthand:

```
import "./SimpleStorage.sol";
```

- 🚧 WARNING
>> All the solidity contracts should be compiled together using the same compiler version. It's important to ensure consistency between compiler versions across files since each one will have its own pragma statement.

## Named Imports
- Let's assume for a moment that SimpleStorage would contain multiple contracts, e.g. SimpleStorage, SimpleStorage1, SimpleStorage2, which are quite extensive in size. If we import the whole file as we did before, the statement will replace the import directive with all the code contained in SimpleStorage.sol. This will result in an unnecessary expensive deployment of the StorageFactory contract.
- This can be prevented with named imports, which allow you to selectively import only the specific contracts you intend to use:

```
import { SimpleStorage } from "./SimpleStorage.sol";
```

- You can also use named imports to import multiple contracts:

```
import { SimpleStorage, SimpleStorage1 } from "./SimpleStorage.sol";
```

- 👀❗IMPORTANT
>> Try to always default to named imports instead of importing the entire file.

## Conclusion
- The `import` keyword allows a contract to use code from other files without including the entire codebase. However, it can introduce `compilation issues if different compiler versions are used in these files`.

## 🧑‍💻 Test yourself
1. 📕 What's a `named import` and what are the advantages of using it?
- Answer:

>> Named imports in Solidity allow you to import specific parts of another file or package, rather than everything.

- Advantages:

>> 1. `Code Efficiency:` Imports only what's necessary, reducing compilation time.
>> 2. `Readability:` Clearly shows which parts are used, improving code readability.
>> 3. `Avoids Conflicts:` Prevents name conflicts by importing specific components.
>> 4. `Lower Gas Costs:` Smaller deployed contracts can lead to lower costs.
>> 5. `Scoped Usage:` Reduces unintended side effects by limiting imported parts.

2. 📕 In which way the `pragma` keyword can cause issues while using the import statement? Make 2 examples.
- Answers:

>> 1. Version Mismatch

- You might encounter issues if the importing file and the imported file have different, non-overlapping pragma versions.
- `File: MainContract.sol`

```
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "./OldLibrary.sol";

contract MainContract {
    // Contract code here
}
```

- `File: OldLibrary.sol`

```
// SPDX-License-Identifier: MIT
pragma solidity ^0.7.0;

library OldLibrary {
    // Library code here
}
```

- N/B: 

>> `MainContract.sol` specifies pragma solidity ^0.8.18, which means it requires Solidity 0.8.18 or compatible versions.
>> `OldLibrary.sol` specifies pragma solidity ^0.7.0, which means it requires Solidity 0.7.0 or compatible versions.
>> - These versions are not compatible, causing a compilation error.



>> 2. Version Range Conflicts

- Conflicts can also occur if the pragma version ranges are not compatible or overlapping in a way that causes issues.
- `File: NewLibrary.sol`

```
// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

library NewLibrary {
    // Library code here
}
```

- `File: AnotherContract.sol`

```
// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.8.0;

import "./NewLibrary.sol";

contract AnotherContract {
    // Contract code here
}
```

- N/B:
>> `AnotherContract.sol` specifies pragma solidity >=0.7.0 <0.8.0, meaning it is compatible with Solidity 0.7.x versions.
>> `NewLibrary.sol` specifies pragma solidity >=0.8.0 <0.9.0, meaning it is compatible with Solidity 0.8.x versions.
>> - The pragma ranges do not overlap, resulting in a compilation error.
