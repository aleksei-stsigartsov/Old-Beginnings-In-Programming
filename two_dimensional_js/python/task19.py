import os
import readFrom
arr = readFrom.fromfileToArr('input.txt')
file = open('task19.txt', 'w', encoding='utf-8')
i=0
while i<len(arr):
    j=0
    while j<len(arr[i]):
        arr[i][j] = arr[i][j] - (arr[i][j] * 2)
        j+=1
    i+=1
file.write("Результат: " + str(arr))
file.close()
