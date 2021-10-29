import os
import random
file = open('task21.txt', 'w', encoding='utf-8')
grades = []
i = 0
while i < 10:
    randInt = random.randint(2, 5)
    grades.append(randInt)
    i
neudvolet = 0
udvolet = 0
horoshie = 0
otlichnye = 0
j = 0
while j < len(grades):
    if grades[j] == 2:
        neudvolet += 1
    elif grades[j] == 3:
        udvolet += 1
    elif grades[j] == 4:
        horoshie += 1
    elif grades[j] == 5:
        otlichnye += 1
    j += 1
file.write("Не удовлетворительных оценок: " + str(neudvolet) + "\n")
file.write("Удовлетворительных оценок: " + str(udvolet) + "\n")
file.write("Хороших оценок: " + str(horoshie) + "\n")
file.write("Отличных оценок: " + str(otlichnye) + "\n")
file.write("Средняя оценка: " + str(((neudvolet * 2) +
                                     (udvolet * 3) + (horoshie * 4) + (otlichnye * 5)) / 10))

file.close()
