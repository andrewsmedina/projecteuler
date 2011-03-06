def sum_of_digits(number):
    value = 0
    for i in str(number):
        value += int(i)
    return value
    
if __name__ == '__main__':
    print sum_of_digits(2 ** 1000)