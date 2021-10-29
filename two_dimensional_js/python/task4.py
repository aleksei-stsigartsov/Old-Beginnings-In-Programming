import os
import readFrom
arr= readFrom.fromfileToArr('input.txt')
element= 0
file= open('task4.txt', 'w', encoding='utf-8')
i= 0
while i<len(arr):
    j= 0
    while j<len(arr[i]):
        if arr[i][j]< 0 and arr[i][j] >-9:
            element+= 1
        j+= 1
    i+= 1
file.write("Количество отрицательных элементов, больше -9: " + str(element))
file.close()
