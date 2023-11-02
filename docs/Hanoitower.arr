include image
include color

C = "center"
w = circle(45, "solid", "transparent")
bl = overlay-align(C, C, circle(5, "solid", "Black"), w)
r = underlay-align(C,C, overlay-align(C, C, circle(15, "solid", "red"), w), bl)
blu = underlay-align(C,C, overlay-align(C, C, circle(35, "solid", "Blue"), w), bl)
gre =underlay-align(C, C, overlay-align(C, C, circle(25, "solid", "green"), w),bl)
oran = underlay-align(C, C, overlay-align(C, C, circle(45, "solid", "orange"), w), bl)

a = [array: 0, 0, 0, 0]

red-Ar = a.get-now(0)
green-Ar = a.get-now(1)
Blue-Ar = a.get-now(2)
Orange-Ar = a.get-now(3)

fun
  reset-Ar0() :
  array-set-now(a, 0, 0)
  
end
fun
  reset-Ar1() :
  array-set-now(a, 1, 0)

end
fun
  reset-Ar2() :
  array-set-now(a, 2, 0)

end
fun
  reset-Ar3() :
  array-set-now(a, 3, 0)

end

fun new-game() :
  nyttspill = overlay-xy(
    overlay-xy(
      underlay-xy(
        underlay-xy(
          underlay-xy(
            oran, 
            0, 
            0, 
            overlay-xy(
              w,
              0,
              0,
              blu)), 
          0, 
          0, 
        gre), 
        0,
        0, 
        r), 
      150,
      0, 
      bl), 
    300, 
    0, 
    bl)
  
nyttspill

end


fun rod(x) :
  x1 = red-Ar 
  y1 = x1 + (x * 150)
  array-set-now(a, 0, y1)
end


fun gronn(x) :
  x1 = green-Ar 
  y1 = x1 + (x * 150)
  array-set-now(a, 1, y1)
end



fun blaa(x) :
  x1 = Blue-Ar 
  y1 = x1 + (x * 150)
  array-set-now(a, 2, y1)
end

fun oransj(x) :
  
  x1 = Orange-Ar 
  y1 = x1 + (x * 150)
  array-set-now(a, 3, y1)
  
end


fun Play() :
  nyttspill = overlay-xy(
    overlay-xy(
      underlay-xy(
        underlay-xy(
          underlay-xy(
            oran, 
            a.get-now(2), 
            0, 
            overlay-xy(
              w,
              a.get-now(3),
              0,
              blu)), 
          a.get-now(1), 
          0, 
        gre), 
        a.get-now(0),
        0, 
        r), 
      150,
      0, 
      bl), 
    300, 
    0, 
    bl)
nyttspill
end

