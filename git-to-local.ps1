# Chemins
$SourceFile = "C:\Source\monfichier.txt"
$Destination1 = "C:\Projet1\monfichier.txt"
$Destination2 = "D:\Backup\monfichier.txt"

# Dépôt Git
$GitRepo = "C:\MonDepotGit"

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