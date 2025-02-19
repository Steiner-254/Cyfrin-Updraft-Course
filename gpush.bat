:: Steps To Create The Simple Automation Workflow Below - Works Only For Windows VS Code Terminal:
:: 1. Create a file with extension `.bat` -> gpush.bat
:: 2. Copy the code below into the file/Add your own commands if you wish
:: 3. Open the Windows terminal on VS Code and run the command `.\gpush.bat` to execute the script - `gpush.bat` is our file name, feel free to customize
:: 4. Successfully Automated
:: -> Millionaire Vibes Inshallah! 🚀

@echo off
chcp 65001 >nul  :: Set UTF-8 encoding

echo Adding all files to Git...
git add .

echo Checking Git status...
git status

echo Committing changes...
git commit -m "Developing Project Automation"

echo Pushing to remote repository...
git push

:: Print emojis in PowerShell for correct display
powershell -Command "[console]::OutputEncoding = [System.Text.Encoding]::UTF8; echo '✅ Millionaire Vibes Inshallah! Happy Development 🚀'"

exit /b
