:: Steps To Create The Simple Automation Workflow Below - Works Only For Windows VS Code Terminal:
:: 1. Create a file with extension `.bat` -> gpush.bat
:: 2. Copy the code below into the file/Add your own commands if you wish
:: 3. Open the windows terminal on VS Code and run the command `.\gpush.bat` to execute the script - `gpush.bat` is our file name, feel free to cutomize
:: 4. Successfully Automated
:: -> Happy Development <3

@echo off
git add .
git commit -m "updates"
git push

:: Command To Used To Automate The Above Commands Below:
:: .\gpush.bat  
:: Updates