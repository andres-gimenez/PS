# Crea un usuario Calculadora que se ejecuta en modo kiosco con la calculadora.

$Usuario = "Calculadora"
$Password = ConvertTo-SecureString "Calculadora" -AsPlainText -Force

New-LocalUser -Name $Usuario -Password $Password -FullName "Calculadora Examen" -Description "Calculadora en modo quiosco." -PasswordNeverExpires -UserMayNotChangePassword
Add-LocalGroupMember -Member $Usuario -Group "Usuarios" 

Set-AssignedAccess -UserName $Usuario -AppUserModelId "Microsoft.WindowsCalculator_8wekyb3d8bbwe!App"
