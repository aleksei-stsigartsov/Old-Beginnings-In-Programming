import os
import readFrom
arr= readFrom.fromfileToArr('input.txt')
summa= 0
proiz= 1
file= open('task2.txt', 'w', encoding='utf-8')
i= 0
while i<len(arr):
    j= 0
    while j<len(arr[i]):
        if arr[i][j] % 2==0:
            summa+= arr[i][j]
            proiz*= arr[i][j]
        j+= 1
    i+= 1
file.write("Сумма: " + str(summa) + "\n")
file.write("Произведение: " + str(proiz))
file.close()
