import os
import readFrom
arr = readFrom.fromfileToArr('input.txt')
file = open('task9.txt', 'w', encoding='utf-8')
i=0
while i<len(arr):
    posit=0
    negat=0
    j=0
    while j < len(arr[i]):
        if arr[i][j] > 0:
            posit+=1
        elif arr[i][j] < 0:
            negat+=1
        j += 1
    if posit>negat:
        file.write("В строке "+ str(i + 1) + " встречаются больше положительные числа" + "\n")
    elif negat > posit:
        file.write("В строке "+ str(i + 1) +" встречаются больше  отрицательные числа" + "\n")
    else:
        file.write("В строке "+ str(i + 1) + " положительные и отрицательные числа встречаются одинаково" + "\n")
    i+=1
file.close()
