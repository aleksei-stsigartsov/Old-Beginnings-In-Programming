from datetime import datetime, date, time 
import calendar
stroka="Фрагмент текста"
month={ 
        '1':'январь',
        '2':'февраль',
        '3':'март',
        '4':'апрель',
        '5':'май',
        '6':'июнь',
        '7':'июль',
        '8':'август',
        '9':'сентябрь',
        '10':'октябрь',
        '11':'ноябрь',
        '12':'декабрь',
       }
print("Длина кода:", len(stroka))

def IK(someIK):
    if len(someIK) != 11:
        print('ошибка длины кода')
        return
    if not someIK.isdigit():
        return
        print('ошибка типа')

    Summ=1*int(someIK[0])+2*int(someIK[1])+3*int(someIK[2])+4*int(someIK[3])+5*int(someIK[4])+6*int(someIK[5])+7*int(someIK[6])+8*int(someIK[7])+9*int(someIK[8])+1*int(someIK[9])
    remaind=Summ%11
    print(Summ)
    print(remaind)
    if int(someIK[10])!=remaind:
        print('ошибка контрольной суммы')
        return
    currentDate=datetime.now()
    if int(someIK[5]) == 3 and int(someIK[6]) > 1:
        print('такого дня не существует')
    elif int(someIK[5]) == 0 and int(someIK[6]) <= 0:
        print('такого дня не существует')
        return
    if someIK[0] == '1' or someIK[0] == '3' or someIK[0] == '5':
        print('Пол: мужской')
    else:
        print ('Пол: женский')
    if someIK[0] == '1' or someIK[0] == '2':
        firstnum='18'
    elif someIK[0] == '3' or someIK[0] == '4':
        firstnum='19'
    else:
        firstnum='20'
        birthday = someIK[5:7] + " " + calendar.month_name[int(someIK[3:5])] + " " + firstnum + someIK[1:3]
    print('Дата рождения:', birthday)
    
    d1 = date(int(currentDate.year), int(currentDate.month), int(currentDate.day))
    d2 = date(int(firstnum + someIK[1:3]), int(someIK[3:5]), int(someIK[5:7]))
    delta = d1 - d2

    yearsAlive = int(delta.days / 365)
    months = int((delta.days - yearsAlive * 365) / 30)
    days = (delta.days - yearsAlive * 365) - months * 30

    print('Возраст: ' + str(yearsAlive) + ' years ' + str(months) + ' months ' + str(days) + ' days')
    print('Статус', end =": ")
    if yearsAlive >= 18:
        print('Взрослый')
    else:
        print('Подросток')
    
    print("Код пола:",someIK[0])
    print("Год рождения:",firstnum+someIK[1:3])
    print("Месяц рождения:",calendar.month_name[int(someIK[3:5])])
    print("День рождения:",someIK[5:7])
    print("Уникальное число:",someIK[7:10])
    print("Контрольная сумма:",someIK[10])
    
months={}
months.update(month)
    


IK('50304170219')
