<#
    .Synopsis
    Sum of the numbers from 0 to $n which are divisible by $d
      
    .Description
    Sum of all the natural numbers starting zero to $n which are divisible by $d
#>
function Get-Sum($n,$d)
{
    $m = [math]::floor(($n - 1) / $d)
    return ($m * ($m + 1)) / 2 * $d
}
 
#Replace the following value with the natural number needed for calculation
$n = 1000
 
#Replace the following number to find the sum of all the numbers (up to $n) which are divisible by $x
$x = 3
 
#Replace the following number to find the sum of all the numbers (up to $n) which are divisible by $y
$y = 5
 
$sum = (Get-Sum $n $x) + (Get-Sum $n $y) - (Get-Sum $n ($x*$y))
 
#Find the sum of all the natural numbers up to $n which are divisible by $x or $y
Write-Host "The sum of natural numbers below $($n) which are divisible by $($x) or $($y): $($sum)" 

#Output: The sum of natural numbers below 1000 which are divisible by 3 or 5: 233168
 
