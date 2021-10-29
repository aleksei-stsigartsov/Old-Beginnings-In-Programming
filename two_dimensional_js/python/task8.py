import os
import readFrom
arr = readFrom.fromfileToArr('input.txt')
file = open('task8.txt', 'w', encoding='utf-8')
summa= 0
elements= 0
i=0
while i<len(arr):
    j=0
    while j<len(arr[i]):
        elements+= 1
        summa+= arr[i][j]
        j+= 1
    i+=1
file.write("Результат: " + str(summa / elements))
file.close()
