$gun = (Get-Date).AddDays(-5)
$pop = %MAILENABLE_PATH%\Logging\POP
$smtp = %MAILENABLE_PATH%\Logging\SMTP

# $pop log pathini verir ve belirtilen günün öncesinde oluşturulan log dosyalarını siler.
Get-ChildItem -Path $pop -Recurse -Force | Where-Object { !$_.PSIsContainer -and $_.CreationTime -lt $gun } | Remove-Item -Force
# $smtp log pathini verir ve belirtilen günün öncesinde oluşturulan log dosyalarını siler.
Get-ChildItem -Path $smtp -Recurse -Force | Where-Object { !$_.PSIsContainer -and $_.CreationTime -lt $gun } | Remove-Item -Force