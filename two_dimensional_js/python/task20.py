import os
import readFrom
arr = readFrom.fromfileToArr('input.txt')
file = open('task20.txt', 'w', encoding='utf-8')
k=1
file.write("Элементы: " + "\n")
i=0
while i<len(arr):
    j=0
    while j<len(arr[i]):
        if j != 0 and arr[i][j] % j == k:
            file.write(str(arr[i][j]) + "\n")
        j+=1
    i+=1
file.close()
