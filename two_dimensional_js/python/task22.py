import readFrom
import random
arr = readFrom.fromfileToArr('input.txt')
file = open('task22.txt', 'w', encoding='utf-8')
students_info = []
students = random.randint(10, 30)
subjects_amount = random.randint(2, 6)
s = 0
while s < students:
    subjects = []
    sub = 0
    while sub < subjects_amount:
        randInt = random.randint(1, 5)
        subjects.append(randInt)
        sub += 1
    students_info.append(subjects)
    s += 1
students_without_gg = 0
i = 0
while i < len(students_info):
    j = 0
    gg = False
    while j < len(students_info[i]):
        if students_info[i][j] == 5:
            gg = True
        j += 1
    if not gg:
        students_without_gg += 1
    i += 1
file.write("Количество студентов: " + str(students) + "\n")
file.write("Количество предметов: " + str(subjects_amount) + "\n")
file.write("Количество студентов, не получивших ни одной 5: " +
           str(students_without_gg))
file.close()
