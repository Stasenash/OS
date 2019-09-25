WScript.Echo("Enter the first num");
var num1 = parseInt(WScript.StdIn.ReadLine());
WScript.Echo("Enter the second num");
var num2 = parseInt(WScript.StdIn.ReadLine());
WScript.Echo("Enter the operation");
var operation = WScript.StdIn.Read(1);
if (operation == '+')
	WScript.Echo("Your result is: "+(num1+num2));
if (operation == '-')
	WScript.Echo("Your result is: "+(num1-num2));
if (operation == '*')
	WScript.Echo("Your result is: "+(num1*num2));
if (operation == '/')
{
	if (num2!=0)
		WScript.Echo("Your result is: "+(num1/num2));
	else
		WScript.Echo("Cannot be divided by zero");
}