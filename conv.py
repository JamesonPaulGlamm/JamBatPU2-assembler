from sys import argv
import os

input = open(argv[1], 'r')
inputc = input.read() # input content

output = open(argv[2], 'w')

result = ""
count = 0
for index in range(len(inputc)):
    if count == 16:
       result += '\n'
       count = 0
    result += inputc[index]
    count += 1
result += '\n'

output.write(result)

input.close()
output.close()
