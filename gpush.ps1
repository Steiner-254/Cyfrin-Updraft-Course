Write-Host "Adding all files to Git..."
git add .

Write-Host "Checking Git status..."
git status

Write-Host "Committing changes..."
git commit -m "Developing Project Automation"

Write-Host "Pushing to remote repository..."
git push

# Proper emoji display in PowerShell
Write-Host "✅ Millionaire Vibes Inshallah! Happy Development 🚀" -ForegroundColor Green

# Run with ./gpush.ps1
