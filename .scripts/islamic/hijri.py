from hijridate import Gregorian
import sys

print(Gregorian(int(sys.argv[3]), int(sys.argv[2]), int(sys.argv[1])).to_hijri())
