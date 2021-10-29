import os
import readFrom
arr= readFrom.fromfileToArr('input.txt')
file= open('task5.txt', 'w', encoding='utf-8')
file.write("Элементы: " + str(arr))
i= 0
while i<len(arr):
    j= 0
    while j<len(arr[i]):
        if (arr[i][j] % 2!=0 and (j + 1) % 2==0):
            print(arr[i][j])
            file.write(str(arr[i][j]) + "\n")
        j += 1
    i += 1
file.close()