import math

f = open ("sin_values.inc", 'w')

for i in range(360):
    f.write(f"dd {math.sin(math.radians(i))}\n" )