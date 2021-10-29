from tkinter import *
from tkinter import messagebox

def event1():
    sost.configure(text="Состояние света: Выключен")

def event2():
    sost.configure(text="Состояние света: Включен")

def event3():
    x = spin.get()
    try:
        if int(x) > 0 or int(x) < 0:
            nagr1.configure(text="Яркость: применено")
        elif int(x) == 0:
            nagr1.configure(text="Яркость: применено")
        else:
            nagr1.configure(text="Яркость: не применено")
        percent.configure(text=int(x))
    except:
        messagebox.showinfo('Ошибка', 'Диапазон процентов яркости освещения от 0 до 100 единиц')

def event4():
    autosmyv1.configure(text="Авторегулирование: Выкл")

def event5():
    autosmyv1.configure(text="Авторегулирование: Вкл")

def event6():
    autoosve1.configure(text="Режим: Выкл")

def event7():
    autoosve1.configure(text="Режим: Вкл")

window=Tk()
window.geometry('650x380')
window.title('Интерфейс 1')

window2=Tk()
window2.geometry('600x380')
window2.title('Интерфейс 2')

#---------------------------------

tmi=Label(window,text='Модуль "Умный свет"',font=('Arial Bold', 20))
tmi.pack()
tmi.place(x=100,y=0)

stul=Label(window,text='Яркость освещения', font=('Arial Bold', 15))
stul.pack()
stul.place(x=0,y=50)

opus=Button(window, text="Выключить", command=event1)
opus.pack()
opus.place(x=0,y=80)

podn=Button(window, text="Включить", command=event2)
podn.pack()
podn.place(x=70,y=80)

nagr=Button(window, text="Применить яркость", width=15, command=event3)
nagr.pack()
nagr.place(x=0,y=105)

urov=Label(window,text='Уровень яркости:')
urov.pack()
urov.place(x=0,y=130)

spin=Spinbox(window, from_=0, to=100)
spin.pack()
spin.place(x=0,y=150)

#-----------------------------------

smyv=Label(window,text='Автоматическое регулирование света', font=('Arial Bold', 15))
smyv.pack()
smyv.place(x=0,y=170)

autosmyv=Label(window,text='Авторегулирование')
autosmyv.pack()
autosmyv.place(x=0,y=200)

vyklsmyv=Button(window, text="Выключить", command=event4)
vyklsmyv.pack()
vyklsmyv.place(x=0,y=220)

vklsmyv=Button(window, text="Включить", command=event5)
vklsmyv.pack()
vklsmyv.place(x=70,y=220)

#-----------------------------------

osvezenie=Label(window,text='Night Shift', font=('Arial Bold', 15))
osvezenie.pack()
osvezenie.place(x=0,y=275)

autoosve=Label(window,text='Состояние режима:')
autoosve.pack()
autoosve.place(x=0,y=305)

vyklosve=Button(window, text="Выключить", command=event6)
vyklosve.pack()
vyklosve.place(x=0,y=325)

vklosve=Button(window, text="Включить", command=event7)
vklosve.pack()
vklosve.place(x=70,y=325)

#-----------------------------------
#-----------------------------------

tmi1=Label(window2,text='Модуль "Умный свет"',font=('Arial Bold', 20))
tmi1.pack()
tmi1.place(x=100,y=0)

stul2=Label(window2,text='Яркость освещения', font=('Arial Bold', 15))
stul2.pack()
stul2.place(x=0,y=50)

sost=Label(window2, text="Состояние света: Выключен")
sost.pack()
sost.place(x=0,y=80)

nagr1=Label(window2, text="Яркость:")
nagr1.pack()
nagr1.place(x=0,y=100)

urov1=Label(window2, text="Уровень яркости:")
urov1.pack()
urov1.place(x=0,y=120)

percent=Label(window2, text="0 %")
percent.pack()
percent.place(x=100,y=120)

#-----------------------------------

smyv1=Label(window2,text='Автоматическое регулирование света', font=('Arial Bold', 15))
smyv1.pack()
smyv1.place(x=0,y=140)

autosmyv1=Label(window2, text="Авторегулирование: Выкл")
autosmyv1.pack()
autosmyv1.place(x=0,y=170)

#-----------------------------------

osvezenie1=Label(window2,text='Night Shift', font=('Arial Bold', 15))
osvezenie1.pack()
osvezenie1.place(x=0,y=190)

autoosve1=Label(window2, text="Режим: Выкл")
autoosve1.pack()
autoosve1.place(x=0,y=220)

window.mainloop()
window2.mainloop()
