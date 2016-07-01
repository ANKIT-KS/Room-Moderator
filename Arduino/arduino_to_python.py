from time import sleep
import serial
import os
import subprocess
ser = serial.Serial('/dev/ttyACM1', 9600) 
retval=ser.readline()
print str(retval)
a=str(retval)
f = open("arduino_sensor_data.txt", "w")
f.write( str(retval) + "\r\n"  )      # str() converts to string
f.close()
sleep(2)
p = subprocess.Popen(["sh", "major_arduino_side_send.sh"])
p.wait()
sleep(2)
arduino_input = subprocess.check_output(['tail', '-2', "arduino_input.txt"])
print arduino_input
ser.write(arduino_input)
