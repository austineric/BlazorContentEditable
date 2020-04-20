


Try {

    $ErrorActionPreference="Stop"

    $Version=[string]::Empty
    $Confirm=[string]::Empty

    Write-Host ""
    
    #retrieve existing nuget packages
    Write-Host "Listing existing packages..."
    Find-Package -ProviderName NuGet -Name BlazorContentEditable -AllVersions
    
    Write-Host ""

    #list semantic versioning
    Write-Host "Versioning is MAJOR.MINOR.PATCH"
    Write-Host "MAJOR version when you make incompatible API changes"
    Write-Host "MINOR version when you add functionality in a backwards compatible manner"
    Write-Host "PATCH version when you make backwards compatible bug fixes"

    Write-Host ""

    Do {
        $Version=(Read-Host "Enter version number")
        $Confirm=(Read-Host "Version entered is $Version. Continue? (y/n)")
    }
    Until ($Confirm -eq "y")

    Write-Host "Creating NuGet package..."
    dotnet pack --configuration Release /p:PackageVersion=$Version
    if ($LASTEXITCODE -ne 0)
    {
        Throw "dotnet pack did not return a success code of 0"
    }

    Write-Host "Publishing to NuGet.org..."
    nuget push ".\bin\Release\BlazorContentEditable.$($Version).nupkg" $Env:NuGetAPIKey -src https://api.nuget.org/v3/index.json -SkipDuplicate
    if ($LASTEXITCODE -ne 0)
    {
        Throw "nuget push did not return a success code of 0"
    }

    Write-Host "Opening NuGet page..."
    Start-Process "https://www.nuget.org/packages/BlazorContentEditable/"

    Write-Host "Success"

}
Catch {
    Throw $Error[0]
}
