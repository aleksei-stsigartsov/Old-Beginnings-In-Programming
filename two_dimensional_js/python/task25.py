import readFrom
arr = readFrom.fromfileToArr('input.txt')
file = open('task25.txt', 'w', encoding='utf-8')
summ = 0
for x in arr:
    summ += sum(x)
file.write("Сумма соответствующий элементов: " + str(summ) + "\n")
file.close()
