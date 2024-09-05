oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\riccardoriva.omp.json" | Invoke-Expression
fastfetch
# # Import the Chocolatey Profile that contains the necessary code to enable
# # tab-completions to function for `choco`.
# # Be aware that if you are missing these lines from your profile, tab completion
# # for `choco` will not function.
# # See https://ch0.co/tab-completion for details.
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}

# This enviromental variable disable the script that print for every prompt the venv activated
$Env:VIRTUAL_ENV_DISABLE_PROMPT = 1
# works when in a folder with a python-venv
function activate { 
  & ".venv\Scripts\Activate.ps1"
}

function ll {
  Get-ChildItem
}

function python312 {
  & "C:\Users\RIVAR\AppData\Local\Programs\Python\Python312\python.exe" @args
}

function python311 {
  & "C:\Users\RIVAR\AppData\Local\Programs\Python\Python311\python.exe" @args
}

function python310 {
  & "C:\Users\RIVAR\AppData\Local\Programs\Python\Python310\python.exe" @args
}

function python39 {
  & "C:\Users\RIVAR\AppData\Local\Programs\Python\Python39\python.exe" @args
}

# function global:prompt {
#   $env_name = & conda info --envs | Select-String '^\*' | ForEach-Object { $_.Line -replace '\s', '' } -replace '^\*', ''
#   if ($env_name) {
#       "($env_name) PS $PWD> "
#   } else {
#       "PS $PWD> "
#   }
# }

function whereami {
  & $WHEREAMI = "rome"
}

function weather {
  & curl "wttr.in/?0"
}
