# Pushing To Github
- ***This lesson guides you through the process of pushing your Solidity projects to GitHub. It covers best practices for using Git, managing sensitive information, and updating README files. The lesson is crucial for developers looking to showcase their work and collaborate in the crypto-community.***
- What a journey! Congratulations on reaching this far!
- One of the most important parts of development is sharing the stuff you work on for other people to see and contribute to. If you don't want to do that you still need a system for version control, a place where you save different stages of your project that can be accessed as simple as pressing 3 clicks. As you've guessed by now the thing we'll introduce now is GitHub.
- Before doing any other actions, please verify that your .gitignore contains at least the `.env` file, to avoid pushing our keys on the internet, and other things that you consider irrelevant for other people, for example, the information about your deployments.
- Here is a `.gitignore` example:
```javascript
# Compiler files
cache/
out/

# Ignores development broadcast logs
!/broadcast
/broadcast/*/31337/
/broadcast/**/dry-run/
/broadcast/

# Docs
docs/

# Dotenv file
.env

/lib


.keystore
```

- 