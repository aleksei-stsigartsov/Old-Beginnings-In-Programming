import os
def readFile(path):                                
    f = open(path) 
    lines = f.readlines()
    lines.pop(0) 
    return lines
try:
    _names = readFile("names.txt")                  
    _quantity = readFile("quantity.txt")           
    _prices = readFile("prices.txt")                
except:
    print("Не все файлы существуют")
    exit()
if os.path.exists("raport.txt"):                    
    os.remove(os.path.join(os.path.abspath(         
        os.path.dirname(__file__)), 'raport.txt'))
    open('raport.txt', 'tw', encoding='utf-8')
i = 0
while i < len(_names):                          
    try:
        splited = _names[i].split()
        code = splited[0]
        name = splited[1]
    except:
        print("Ошибка чтения names.txt...")
        exit()
    j = 0
    while j < len(_quantity):                      
        try:
            splited1 = _quantity[j].split()
            code2 = splited1[0]
            quantity = splited1[1]
        except:
            print("Ошибка чтения quantity.txt...")
            exit()
        if code2 == code:                           
            k = 0
            while k < len(_prices):                
                try:
                    splited2 = _prices[k].split()
                    code3 = splited2[0]
                    price = splited2[1]
                except:
                    print("Ошибка чтения prices.txt...")
                    exit()
                if code3 == code:                   
                    f = open("raport.txt", 'a')
                    try:                        
                        f.write("Code: " + code + "\n" + "Name: " + name + "\n" + "Quantity: " + quantity + "\n" +
                                "Price: " + price + "\n" + "Total price: " + str(int(quantity) * float(price)) + "\n" + "\n")
                    except:
                        print("Неправильный формат записи данных")
                        exit()
                    f.close
                k = k + 1
        j = j + 1
    i = i + 1
f = open("raport.txt", 'a')
f.write("Code: " + splited[0])
print("Запись выполнена в файл raport.txt")
