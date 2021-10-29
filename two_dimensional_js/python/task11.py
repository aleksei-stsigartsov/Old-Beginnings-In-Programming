import os
import readFrom
arr = readFrom.fromfileToArr('input.txt')
file = open('task11.txt', 'w', encoding='utf-8')
file.write("Элементы: "+str(arr))
nums=[]
runNums=2
for x in range(0, 6):
    nums.append(runNums)
    runNums*=2
i=0
while i<len(arr):
    j=1
    while j < len(arr[i]):
        for x in nums:
            if j==x:
                file.write(str(arr[i][j]) + "\n")
        j+=1
    i+=1
file.close()