import random
import string
from time import sleep
from colorama import init
from threading import Thread
from Generator import Generator

def generate_random_string(length: int) -> str:
    return ''.join(random.choice(string.ascii_letters + string.digits) for _ in range(length))

if __name__ == "__main__":
    init()
    
    userid = input("Enter User ID (Part 1): ")
    
    second_part = input("Enter Part 2 of Token (or press Enter to generate automatically): ")
    
    generator = Generator(userid=userid)

    def generate_token_with_custom_part(self) -> str:
        part2 = second_part if second_part else generate_random_string(6)
        return self._userid + '.' + part2 + "." + ''.join(random.choice(string.ascii_letters + string.digits + '-_') for _ in range(27))

    Generator.generate_token = generate_token_with_custom_part

    threads = 5

    [(Thread(target=generator.start, daemon=True).start(), sleep(0.3)) for _ in range(threads - 1)]

    generator.start()
