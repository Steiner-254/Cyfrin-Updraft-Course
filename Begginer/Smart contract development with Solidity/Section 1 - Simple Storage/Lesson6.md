# Errors and warnings

## Interpreting the Color Coding
- When working with Solidity, if we negligently eliminate something crucial from our code – like semicolon – and then try to compile, we are met with a stream of red error messages. Whenever you see these red errors, it indicates that your code is not compiling. `In essence, Solidity isn't able to convert your written code into machine-readable form.`
- On another note, let's consider what happens when we delete the SPDX license identifier from the top of our code, then recompile. Instead of a sea of red, we get a yellow box alerting us to a warning, rather than an error.

>> > Warning: SPDX license identifier not provided in source file

- It's encouraging to note that, despite warnings, we can still compile and deploy our code. These warnings function as alerts; not as impediments. However, this should not be interpreted as carte blanche to ignore these alerts. They are warnings for a good reason. Often, they highlight poor or risky practices in your code, sometimes hinting at bugs. Thus, it's often wise to heed these warnings and modify your code accordingly.
- To recap:

>> If it's red, it's broken.

>> If it's yellow, you might want to double-check.

## Learning to Leverage Online Resources
- In situations when the errors or warnings remain cryptic, we can turn to online resources for assistance. Suppose you encounter an error message that leaves you bewildered. In such cases, copying the error message and performing a Google search, or using resources highlighted in this course – such as Chat GPT, GitHub Discussions, Ethereum Stack Exchange – can make the situation clearer. Each of these resources has its strengths and weaknesses, which we will discuss later in the course.

## Utilizing Phind – The AI Search Engine for Developers
- For instance, using [Phind](https://www.phind.com/search?home=true) can prove beneficial. Phind is an AI-powered search engine for developers. It operates by first conducting a Google search based on your query, then parsing the results to give you a contextual response.
- We can enter the compiler error under the drop-down selection, then execute the search. The result is a detailed insight into why the error occurred and how to fix it.
- After intensive AI analysis, Phind suggests that a simple addition of a semicolon where the new person is being pushed onto the dynamic 'people' array list, can resolve the issue.

##
