import os
import readFrom
arr = readFrom.fromfileToArr('input.txt')
file = open('task18.txt', 'w', encoding='utf-8')
i=0
while i<len(arr):
    j=0
    lastElement = len(arr[i]) - 1
    while j<len(arr[i]):
        arr[i][0], arr[i][lastElement] = arr[i][lastElement], arr[i][0]
        j+=1
    i+=1
file.write("Результат: " + str(arr))
file.close()
