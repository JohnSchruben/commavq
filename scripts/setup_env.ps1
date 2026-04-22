$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
Set-Location "$ScriptDir\.."

Write-Host "Setting up the virtual environment..."
python -m venv venv

# run pip directly from the virtual environment
& .\venv\Scripts\pip.exe install -r requirements.txt

Write-Host "Registering Jupyter kernel..."
& .\venv\Scripts\python.exe -m ipykernel install --user --name="commavq"

Write-Host "Setup complete."