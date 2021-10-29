import os
import readFrom
arr = readFrom.fromfileToArr('input.txt')
file = open('task10.txt', 'w', encoding='utf-8')
res = [[], []]
res[0] = ["Беспорядок", "Убывающее"]
res[1] = ["Возрастающее", "Одно число"]
i=0
while i < len(arr):
    j=1
    seqDown=1
    seqUp=1
    while j<len(arr[i]):
        if arr[i][j-1] > arr[i][j]:
            seqUp=0
        if arr[i][j-1] < arr[i][j]:
            seqDown=0
        j+=1
    file.write(str(res[seqUp][seqDown]) + "\n")
    i+=1
file.close()
