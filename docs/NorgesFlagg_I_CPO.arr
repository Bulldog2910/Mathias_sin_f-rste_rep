TOP1 = (overlay-xy(square(100,"solid", "red"),
    130,0,
    rectangle(40, 140, "solid", "blue")))

TOP2 = (overlay-xy(TOP1, 
    200, 0,
    square(100,"solid", "red")))
  

TOP3 = (overlay-xy(TOP2, 
    300, 0,
    square(100,"solid", "red")))


Midt = (overlay-xy(TOP3, 
    0, 120,
    rectangle(400, 40, "solid", "blue")))

BUNN = (overlay-xy(Midt, 
    0, 140,
    flip-vertical(TOP3)))
BUNN

Altien = (overlay-xy((overlay-xy((overlay-xy((overlay-xy((overlay-xy(square(100,"solid", "red"),
    130,0,
    rectangle(40, 140, "solid", "blue"))), 
    200, 0,
    square(100,"solid", "red"))), 
    300, 0,
    square(100,"solid", "red"))), 
    0, 120,
    rectangle(400, 40, "solid", "blue"))), 
    0, 140,
    flip-vertical((overlay-xy((overlay-xy((overlay-xy(square(100,"solid", "red"),
    130,0,
    rectangle(40, 140, "solid", "blue"))), 
    200, 0,
    square(100,"solid", "red"))), 
    300, 0,
    square(100,"solid", "red"))))))
Altien
