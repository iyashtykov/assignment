#!/usr/bin/env python
import os
import random
import json
# import grade submit function
import sys
sys.path.append('/usr/share/codio/assessments')
from lib.grade import send_grade_v2, FORMAT_V2_MD, FORMAT_V2_HTML, FORMAT_V2_TXT
CODIO_UNIT_DATA = os.environ["CODIO_AUTOGRADE_ENV"]
def main():
  # Execute the test on the student's code
  grade = random.randint(0, 100)
  
  feedback = '## txt <br>' 
  # file_name = '/home/codio/workspace/read.txt'  
  # with open(file_name, 'r') as file:
  #   feedback = file.read()
  
  penalty = random.randint(0, 100)
  if(penalty < 10):
    penalty = -1
    
  # Send the grade back to Codio with the penatly factor applied
  res = send_grade_v2(int(round(grade)), feedback, FORMAT_V2_TXT, penalty=penalty)
  print(CODIO_UNIT_DATA)
  exit( 0 if res else 1)
  
main()