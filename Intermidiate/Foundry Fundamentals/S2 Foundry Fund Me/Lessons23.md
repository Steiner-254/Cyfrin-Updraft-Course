# Pushing To Github
- ***This lesson guides you through the process of pushing your Solidity projects to GitHub. It covers best practices for using Git, managing sensitive information, and updating README files. The lesson is crucial for developers looking to showcase their work and collaborate in the crypto-community.***
- What a journey! Congratulations on reaching this far!
- One of the most important parts of development is sharing the stuff you work on for other people to see and contribute to. If you don't want to do that you still need a system for version control, a place where you save different stages of your project that can be accessed as simple as pressing 3 clicks. As you've guessed by now the thing we'll introduce now is GitHub.
- Before doing any other actions, please verify that your `.gitignore` contains at least the `.env` file, to avoid pushing our keys on the internet, and other things that you consider irrelevant for other people, for example, the information about your deployments.
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

- Following this point, we will assume that you have your own GitHub account. If not please read [this page](https://docs.github.com/en/get-started/start-your-journey/creating-an-account-on-github) to find out how to get one. Having a GitHub account opens up a ton of possibilities in terms of developing your project or contributing to existing open-source projects. You have the option of forking an existing project and building on top of it, enhancing or adding extra functionality. You can open up issues on existing projects and make contributions to the codebases of other people, there are a lot of stories about people who contributed to other people's code and formed a strong bond and found business partners and friends that way. Moreover, GitHub profiles are crucial when applying for jobs. Safe to say, that having a great GitHub profile that's interesting and stands out can open up a world of opportunities.
- If you want to get started or want a quick start, [GitHub](https://docs.github.com/en) docs provide numerous sets of documentation that you can refer to. In this lesson, we will learn how to do all these using our terminal and not the GitHub website interface.
- Before proceeding further, try running `git version` in your terminal.
```javascript
git version
```

- If you receive an output similar to this `git version 2.34.1` then you have correctly installed Git on your device. If not please follow the directions on how to install Git. You can find them [here](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git).
- Ok, let's add our project to GitHub. Use the [following page](https://docs.github.com/en/migrations/importing-source-code/using-the-command-line-to-import-source-code/adding-locally-hosted-code-to-github) as a support material.
- The first thing we need to do is to make sure we are in the **root directory of our project**. Then usually one calls `git init -b main` to init the Git repository. Foundry initiates a Git repository by default.
```javascript
git init -b main
```

- 