'''
Problem 20

n! means n  (n  1)  ...  3  2  1

Find the sum of the digits in the number 100!
'''

def factorial(n):
    if n == 0 or n == 1:
        return 1
    
    return n *factorial(n-1)

print sum([int(i) for i in list(str(factorial(100)))])