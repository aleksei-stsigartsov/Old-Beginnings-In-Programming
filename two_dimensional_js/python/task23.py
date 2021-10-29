import random
file = open('task23.txt', 'w', encoding='utf-8')
n = 10
students = []
badStudents = 0
groupAverageGrade = 0
i = 0
while i < n:
    grades = []
    j = 0
    while j < 4:
        grades.append(random.randint(2, 5))
        j += 1
    students.append(grades)
    i += 1
i = 0
while i < len(students):
    j = 0
    averageStudentGrade = 0
    while j < len(students[i]):
        averageStudentGrade = averageStudentGrade + students[i][j]
        j += 1
    averageStudentGrade = averageStudentGrade / 4
    if averageStudentGrade < 3:
        badStudents += 1
    groupAverageGrade += averageStudentGrade
    i += 1
file.write("Количество студентов в группе: " + str(n) + "\n")
file.write("Количество неуспевающих студентов: " + str(badStudents) + "\n")
file.write("Средняя оценка группы: " + str(groupAverageGrade / n))
