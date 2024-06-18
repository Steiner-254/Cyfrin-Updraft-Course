# Errors and warnings

## Interpreting the Color Coding
- When working with Solidity, if we negligently eliminate something crucial from our code – like semicolon – and then try to compile, we are met with a stream of red error messages. Whenever you see these red errors, it indicates that your code is not compiling. `In essence, Solidity isn't able to convert your written code into machine-readable form.`
- On another note, let's consider what happens when we delete the SPDX license identifier from the top of our code, then recompile. Instead of a sea of red, we get a yellow box alerting us to a warning, rather than an error.

>> > Warning: SPDX license identifier not provided in source file

- It's encouraging to note that, despite warnings, we can still compile and deploy our code. These warnings function as alerts; not as impediments. However, this should not be interpreted as carte blanche to ignore these alerts. They are warnings for a good reason. Often, they highlight poor or risky practices in your code, sometimes hinting at bugs. Thus, it's often wise to heed these warnings and modify your code accordingly.
- To recap:

>> If it's red, it's broken.

>> If it's yellow, you might want to double-check.

## 
