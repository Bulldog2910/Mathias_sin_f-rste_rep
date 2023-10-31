fun 
  draw-Scandinavian-flagg(f1,f2,f3) -> Image:

  TOP1 = underlay-xy(overlay-xy(overlay-xy(square(100,"solid", f1),
    100,0,
        rectangle(45, 100, "solid", f2)),
    190, 0,
      rectangle(45, 100, "solid", f2)),
  145, 0,
    rectangle(45, 145, "solid", f3))
  

TOP2 = (overlay-xy(TOP1, 
    200, 0,
      square(100,"solid", f1)))
  

TOP3 = (overlay-xy(TOP2, 
    300, 0,
      square(100,"solid", f1)))


Midt = underlay-xy(overlay-xy((overlay-xy(TOP3, 
      0, 140,
          rectangle(400, 40, "solid", f3))),
  0,100,
      rectangle(400, 45, "solid", f2)),
  0,175,
    rectangle(400, 45, "solid", f2))
  
  

BUNN = (underlay-xy(Midt, 
    0, 160,
    flip-vertical(TOP3)))
BUNN
end

Norge = draw-Scandinavian-flagg("red", "white", "blue") 
Sverige = draw-Scandinavian-flagg("blue", "blue", "yellow")
Danamrk = draw-Scandinavian-flagg("red", "red", "white")
Island = draw-Scandinavian-flagg("blue", "white", "red")
Finland = draw-Scandinavian-flagg("white", "white", "dark blue")
Faroyene = draw-Scandinavian-flagg("white", "blue", "red")

my-table = table: Land :: String
  row: "Norge"
  row: "Sverige"
  row: "Danmark"
  row: "Finland"
  row: "Faroyene"
  row: "Island"
end


my-table
"Skriv et av landene:"
