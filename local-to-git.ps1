# Chemins
$SourceFile = ".\Game scrapy.db"
$Destination1 = ".\scrapy-test\Game scrapy.db"
$Destination2 = ".\scrapy-test\.gitignore\backup\Game scrapy$(Get-Date -Format "yyyy-MM-dd_HH-mm-ss").db"

# Dépôt Git
$GitRepo = ".\scrapy-test"

# Copier le fichier vers les deux destinations
Copy-Item -Path $SourceFile -Destination $Destination1 -Force
Copy-Item -Path $SourceFile -Destination $Destination2 -Force

Write-Host "Fichiers copiés."

# Aller dans le dépôt Git
Set-Location $GitRepo

# Ajouter, commiter et pousser
git add .

git commit -m "Mise à jour automatique du fichier"

git push origin main

Write-Host "Git push terminé."