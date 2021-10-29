import os
import readFrom
arr = readFrom.fromfileToArr('input.txt')
file = open('task24.txt', 'w', encoding='utf-8')
fibonacci = []
numOne = 0
numTwo = 1
i = 0
while i < 10:
    fibonacci.append(numOne + numTwo)
    new_number = numOne + numTwo
    numOne = numTwo
    numTwo = new_number
    i += 1
summ = 0
i = 0
while i < len(arr):
    j = 0
    while j < len(arr[i]):
        for x in fibonacci:
            if x == j:
                summ += arr[i][j]
        j += 1
    i += 1
file.write("Сумма чисел: " + str(summ))
file.close()
