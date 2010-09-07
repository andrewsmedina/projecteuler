'''
Problem 3

The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?
'''


value = 600851475143
factor = 3

while factor < value:
    if value % factor == 0:
        value = value/factor
    else:
        factor += 2

print factor