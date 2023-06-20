# RunApp Function
This PowerShell function allows you to open a Windows application using the name as a search parameter. If multiple matching applications are found, a numbered list will be displayed to allow selection of the desired application.

## Parameters
Name: [Optional] The name or part of the name of the application to be executed.

## Usage Example
```powershell
# Execution without parameter, list all apps
RunApp

# If your app name doesn't have spaces, you can type the name without quotes
RunApp Microsoft

# Passing parameter with quotes
RunApp "Microsoft Edge"

# Passing parameter with argument name
RunApp -Name "Microsoft Edge"
```

![ezgif-3-3adf4f0bde](https://github.com/matheusluis-dev/PowerShell-RunAppByName/assets/134457433/8df516b7-2139-4ea4-9464-77bebf905973)

## Requirements
This function requires Windows 10 or later to access the applications through the Get-StartApps and Start-Process cmdlets.

## Easy Installation

### If you don't have, create a PowerShell profile

- Open PowerShell and type:

  ```powershell
  New-Item -Path $profile -Type File -Force
  ```

- To use the profile you will need to make sure you have set the Execution Policy to Remote Signed. Otherwise, you won’t be able to run the script when PowerShell opens. Make sure you run PowerShell with elevated permissions (admin mode) to change the execution policy:

  ```powershell
  Get-ExecutionPolicy

  # Set the ExecutionPolicy to RemoteSigned:
  Set-ExecutionPolicy RemoteSigned
  ```

### Add RunApp function to profile

- Go to "Documents\WindowsPowerShell", it will have a file named "Microsoft.PowerShell_profile.ps1"
- Open with text editor and paste the function code there
  ![Screenshot_1](https://github.com/matheusluis-dev/PowerShell-RunAppByName/assets/134457433/77baf6c9-b8c7-4c10-8417-91e66abfeb28)
- Save and close the file
- You should be able to use it into your powershell
