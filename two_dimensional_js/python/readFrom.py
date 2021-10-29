import os
import sys
def fromfileToArr(filename):
    if not os.path.isfile(filename):
        print("{} не существует ".format(filename))
        sys.exit()
    with open(filename) as filehandle:
        lines = filehandle.readlines()
    with open(filename, 'w') as filehandle:
        lines = filter(lambda x: x.strip(), lines)
        filehandle.writelines(lines)
    strArr = []
    mainArr = []
    f = open(filename)
    line = f.readline()
    i = 0
    while line:
        intArr = []
        strArr = line.replace(" ", "").split(',')
        j = 0
        while j < len(strArr):
            intArr.append(int(strArr[j]))
            j += 1
        strArr = line.replace(" ", "").split(',')
        line = f.readline()
        mainArr.append(intArr)
        i += 1
    f.close()
    return mainArr