# Define paths
$jsonFilePath ="Scripts/settings.json"


# Set Properties from Settings File
if (Test-Path $jsonFilePath) {
    # Read the content of the file
    $jsonContent = Get-Content -Path $jsonFilePath -Raw
    
    # Convert JSON string to PowerShell object
    $jsonObject = $jsonContent | ConvertFrom-Json

    $plantUMLJar = $jsonobject.plantUMLJar
    $outFolder = $jsonobject.outFolder
    $pumlFolder = $jsonObject.pumlFolder
    $outFolderPath = Join-Path (Get-Location).Path "${outFolder}"
}

# Get all .puml files recursively
$pumlFiles = Get-ChildItem -Path $pumlFolder -Recurse -Filter "*.puml"

# Function to run PlantUML with options
function Convert-PUMLToSVG ($inputFile, $outputFolder) {
    Write-Host "Outputing SVG to: $outputFolder"
    & java -jar $plantUMLJar -o $outputFolder -tsvg $inputFile
}

# Process each .puml file
foreach ($file in $pumlFiles) {
    $pumlFilePath = $file.FullName


    # Extract relative path after $pumlFolder
    $relativePath = $pumlFilePath -split "\\$pumlFolder\\", 2
    if ($relativePath.Count -gt 1) {
        $relativePath = $relativePath[1]
    } else {
        $relativePath = ""
    }

    # Get output folder path
    $svgFolderPath = Join-Path $outFolderPath $relativePath | Split-Path -Parent
    New-Item -ItemType Directory -Force -Path $svgFolderPath | Out-Null

    Write-Host "Processing: $pumlFilePath -> $svgFolderPath"

    # Generate SVGs
    Convert-PUMLToSVG $pumlFilePath $svgFolderPath $false

}

Write-Host "Processing completed."