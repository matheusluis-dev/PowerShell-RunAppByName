function RunApp {
    param (
        [Parameter(Mandatory=$false)]
        [string]$Name
    )

    $apps = Get-StartApps | Where-Object { $_.Name -like "*$Name*" } | Sort-Object -Property Name

    if ($apps.Count -eq 0) {
        Write-Host "`nNo app found"
        return
    }

    $index = 0
    if ($apps.Count -gt 1) {
        Write-Host ""
        $maxLength = $apps.Count.ToString().Length

        $i = 0
        foreach ($app in $apps) {
            $i++

            $id = $i.ToString().PadLeft($maxLength, '0')
            Write-Host "$id. $($app.Name)"
        }

        do {
            $appToOpen = Read-Host "`nChoose the app"
        } while (-not [int]::TryParse($appToOpen, [ref]$index) -or $index -lt 1 -or $index -gt $apps.Count)
        
        $index--
    }

    $command = "explorer"
    $arguments = "shell:appsFolder\" + $apps[$index].AppID

    Start-Process -FilePath $command -ArgumentList $arguments
    Write-Host ""
}
