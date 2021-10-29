import os
import readFrom
arr = readFrom.fromfileToArr('input.txt')
file = open('task14.txt', 'w', encoding='utf-8')
file.write("Elements:" + "\n")
i=0
while i<len(arr):
    j=0
    while j<len(arr[i]):
        if (arr[i][j] % 2 != 0 and j % 2 == 0):
            file.write(str(arr[i][j]) + "\n")
        j+=1
    i+=1
file.close()
