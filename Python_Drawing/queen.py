from tkinter import *
root=Tk()
canvas= Canvas(root, width=800, height=800)
canvas.create_polygon([
    [110,110],
    [140,110],
    [155,200],
    [160,205],
    [160,225],
    [85,225],
    [85,205],
    [90,200],
], outline="black", fill="black", width=2)

canvas.pack()

canvas.create_oval(
    95,100,
    155,110,
    fill="black", width=0
    )
canvas.create_polygon([
    [110,110],
    [100,80],
    [150,80],
    [140,110]
], outline="black", fill="black", width=2)

canvas.create_oval(
    115,90,
    135,65,
    fill="black", width=0
    )
