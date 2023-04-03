var total_d_x1, x1, startagain : int
total_d_x1 := 10
x1 := 1

loop
    if total_d_x1 >= 300 and startagain = 0 then
	x1 := 0
	delay (2000)
	startagain := 1
    elsif total_d_x1 >= 640 and startagain = 1 then
	x1 := 0
	exit
    else
	randint (x1, 1, 20)
    end if

    total_d_x1 := total_d_x1 + x1
    delay (99)
    cls
    Pic.ScreenLoad ("car2.jpg", total_d_x1 - 200, -60, picCopy)
    Pic.ScreenLoad ("Stop Sign.jpg", 300, 200, picCopy)
end loop
