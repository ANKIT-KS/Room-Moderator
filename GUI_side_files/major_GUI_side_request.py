#!/usr/bin/env python
import os
import subprocess
import time
flag=0
while flag<1:
    if (os.stat("/home/ankit/sketchbook/major_2_gui__/noun.txt").st_size == 0):
        continue
    else:
        #p=subprocess.Popen(["sh", "clean.sh"])
        #p.wait()
        #position = subprocess.check_output(['tail', '-2', "/home/ankit/sketchbook/major_2_gui__/noun.txt"])
        #print position
        #if (position == "T"):
            #print "yes"
        p = subprocess.Popen(["sh", "major_GUI_side_request.sh"])
        p.wait()
        p = subprocess.Popen(["sh", "major_GUI_side_accept.sh"])
        p.wait()
        #else:
           # p = subprocess.Popen(["sh", "major_GUI_side_request.sh"])
    #flag=1
         
