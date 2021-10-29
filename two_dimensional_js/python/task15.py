import os
import readFrom
arr = readFrom.fromfileToArr('input.txt')
file = open('task15.txt', 'w', encoding='utf-8')
file.write("Было: " + str(arr) + "\n")
minNum = 1
maxNum = 1
minI = 0
minJ = 0
maxI = 0
maxJ = 0
i = 0
while i < len(arr):
    j = 0
    while j < len(arr[i]):
        if maxNum < arr[i][j]:
            maxNum = arr[i][j]
            maxI = i
            maxJ = j
        if minNum > arr[i][j]:
            minNum = arr[i][j]
            minI = i
            minJ = j
        j += 1
    i += 1
i = 0
while i < len(arr):
    j = 0
    while j < len(arr[i]):
        if i == minI and j == minJ:
            arr[i][j] = maxNum
        if i == maxI and j == maxJ:
            arr[i][j] = minNum
        j += 1
    i += 1
file.write("Стало: " + str(arr))
file.close()
