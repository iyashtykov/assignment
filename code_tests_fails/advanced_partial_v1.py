#!/usr/bin/env python

import random
import sys
# import grade submit function
sys.path.append('/usr/share/codio/assessments')
from lib.grade import send_partial
def main():
  # Execute the test on the student's code
  grade = random.randint(10, 50) 
  # Send the grade back to Codio with the penalty factor applied
  res = send_partial(int(round(grade)))
  exit( 1 if res else 0)

main()