#!/usr/bin/env python
import os, sys
import random

text = os.environ['CODIO_FREE_TEXT_ANSWER']
text = text.replace('*', '')
text = text.replace('$', '')
def main():
  print('**$free text auto output$**')
  if text == 'correct':
    exit(0)      
  else:
    exit(1)  

main()