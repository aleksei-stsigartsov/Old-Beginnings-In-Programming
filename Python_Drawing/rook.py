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
    [95,90],
    [95,80],
    [105,80],
    [105,90],
    [120,90],
    [120,80],
    [130,80],
    [130,90],
    [145,90],
    [145,80],
    [155,80],
    [155,90],
    [155,100],
    [95,100],
    [95,90]
], outline="black", fill="black", width=2)
