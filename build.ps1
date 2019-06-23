param(
  $outputPath = './artifacts'
)

New-Item -Path $outputPath -ItemType Directory -Force -ErrorAction SilentlyContinue

Write-Host 'Zipping website files'
Compress-Archive -Path ./source/* -DestinationPath $outputPath/website.zip

Write-Host 'Done'