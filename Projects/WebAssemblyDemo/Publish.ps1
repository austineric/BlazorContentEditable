

####################################
# Author:       Eric Austin
# Description:  Publish site to GitHub Pages
####################################

Try {

    #common variables
    $CurrentDirectory=[string]::IsNullOrWhiteSpace($PSScriptRoot) ? (Get-Location).Path : $PSScriptRoot
    $ErrorActionPreference="Stop"

    #script variables
    $DistLocation=".\bin\Release\netstandard2.1\publish\WebAssemblyDemo\dist\*"
    $DocsLocation=(Join-Path -Path ((Get-Item -Path $CurrentDirectory).Parent).Parent -ChildPath "docs" )

    #run publish process
    dotnet publish --configuration Release

    #copy files to docs directory
    Write-Host "Copying files to docs directory..."
    Copy-Item -Path $DistLocation -Destination $DocsLocation -Exclude "index.html" -Recurse -Force

}

Catch {

    Throw $Error[0]
    Return 1
    
}