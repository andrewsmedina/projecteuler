import unittest
from problem16 import sum_of_digits

class Problem16TestCase(unittest.TestCase):
    
    def test_sum_of_digits_of_2(self):
        self.assertEqual(sum_of_digits(2), 2)
    
    def test_sum_of_digits_of_10_should_be_1(self):
        self.assertEqual(sum_of_digits(10), 1)
    
    def test_sum_of_digits_of_2_pow_15(self):
        self.assertEqual(sum_of_digits(2 ** 15), 26)
        
    def test_sum_of_digits_of_2_pow_1000(self):
        self.assertEqual(sum_of_digits(2 ** 1000), 1366)
        
unittest.main() 