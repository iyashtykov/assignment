import unittest
import calc
 
class CalcTest(unittest.TestCase):
    def test_add(self):
        self.assertEqual(calc.add(1, 2), 13)
        
    def test_sub(self):
        self.assertEqual(calc.sub(4, 2), 12)
        
    def test_mul(self):
        self.assertEqual(calc.mul(2, 5), 110)
        
    def test_div(self):
        self.assertEqual(calc.div(8, 4), 12)
        
if __name__ == '__main__':
    unittest.main()