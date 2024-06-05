from hijridate import Gregorian, Hijri
import sys

if sys.argv[1] == "dayname":
    if sys.argv[2] == "greg":
        print(Gregorian(int(sys.argv[5]),int(sys.argv[4]),int(sys.argv[3])).to_hijri().day_name())
    elif sys.argv[2] == "hijri":
        print(Hijri(int(sys.argv[5]), int(sys.argv[4]), int(sys.argv[3])).day_name())
else:
    print(Gregorian(int(sys.argv[3]), int(sys.argv[2]), int(sys.argv[1])).to_hijri())
