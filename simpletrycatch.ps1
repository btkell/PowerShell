try {
    # Prompt the user to enter a number
    $theinput = Read-Host "Please enter a number"
    
    # Convert the input to an integer
    $number = [int]$theinput

    # Check if the number is less than 10
    if ($number -lt 10) {
        Write-Output "The number is below 10."
    } else {
        Write-Output "The number is above or equal to 10."
    }
} catch {
    # Handle invalid input (e.g., non-numeric values)
    Write-Output "Invalid input. Please enter a valid number."
}
