'''
Problem 4

A palindromic number reads the same both ways. 
The largest palindrome made from the product of two 2-digit numbers is 9009 = 91  99.

Find the largest palindrome made from the product of two 3-digit numbers.
'''

def is_palindrome(number):
    a = list(str(number))
    b = list(str(number))
    b.reverse()
    return a == b
 
print max([x * y for x in range(1000,100,-1) for y in range(1000,100,-1) if is_palindrome(x * y)])