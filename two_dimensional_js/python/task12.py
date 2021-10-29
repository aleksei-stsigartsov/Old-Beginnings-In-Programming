import os
import readFrom
arr = readFrom.fromfileToArr('input.txt')
file = open('task12.txt', 'w', encoding='utf-8')
count=0
i=0
while i<len(arr):
    j=0
    while j<len(arr[i]):
        if arr[i][j] % 7 == 0 and arr[i][j] != 0:
            count+= 1
        j+=1
    i+=1
file.write("Результат: " + str(count))
file.close()
