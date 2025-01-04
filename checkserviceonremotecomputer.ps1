# Check remote computer service
# Define the remote computer and the service name
# please change the service name before running to the service you want on the remote machine
$RemoteComputer = "omenserver"
$ServiceName = "spooler"
$Credential = Get-Credential  # Prompts for username and password

# Check the service status
Invoke-Command -ComputerName $RemoteComputer -Credential $Credential -ScriptBlock {
    Get-Service -Name $using:ServiceName
}
