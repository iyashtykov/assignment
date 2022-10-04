# FREEZE CODE BEGIN
import banana


class Monkey:
    # Bananas the monkey can eat.
    capacity = 10
# FREEZE CODE END
    def eat(self, n):
        """Make the monkey eat n bananas!"""
        self.capacity -= n * banana.size

    def feeding_frenzy(self):
        self.eat(9.25)
        return "Yum yum"

        

