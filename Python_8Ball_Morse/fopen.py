from random import randint 
fileLink=open("test01.txt","r")
variants=[]
for stroka in fileLink:
    variants.append(stroka)
fileLink.close()    
ask='1'
while ask=='1':
    print(variants[randint(0,len(variants)-1)])
    ask=input("Продолжить - 1 / Выйти - 0")
