Write-Host("Enter the first num")
[int]$num1 =  Read-Host
Write-Host("Enter the second num")
[int]$num2 =  Read-Host
Write-Host("Enter the operation")
$operation = Read-Host

if ($operation -eq "+")
{
	Write-Host("Your result is: "+($num1+$num2))
}
if ($operation -eq "-")
{
	Write-Host("Your result is: "+($num1-$num2))
}
if ($operation -eq "*")
{
	Write-Host("Your result is: "+($num1*$num2))
}
if ($operation -eq "/")
{
	if (-not($num2 -eq 0))
    {
		Write-Host("Your result is: "+($num1/$num2))
    }
	else
    {
		Write-Host("Cannot be divided by zero")
    }
}