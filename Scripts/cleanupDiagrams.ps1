Get-ChildItem -Path . -Recurse -Filter "*.svg" -File | Remove-Item -Force
Get-ChildItem -Path . -Recurse -Filter "*.png" -File | Remove-Item -Force