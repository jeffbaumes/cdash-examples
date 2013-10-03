import foo
import unittest

class TestFoo(unittest.TestCase):

    def setUp(self):
        self.a = 1
        self.b = 2

    def test_add(self):
        result = foo.add(self.a, self.b)
        self.assertEqual(result, 3)

    def test_always_passes(self):
        self.assertTrue(True)

if __name__ == '__main__':
    unittest.main()
