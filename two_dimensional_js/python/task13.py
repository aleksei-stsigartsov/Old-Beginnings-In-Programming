import os
import readFrom
from math import sqrt
arr = readFrom.fromfileToArr('input.txt')
file = open('task13.txt', 'w', encoding='utf-8')
file.write("Элементы: \n")
i=0
while i<len(arr):
    j=1
    while j<len(arr[i]):
        if arr[i][j] <= 0:
            continue
        num= sqrt(arr[i][j])
        if num== round(num):
            file.write(str(arr[i][j]))
        j+=1
    i+=1
file.close()
