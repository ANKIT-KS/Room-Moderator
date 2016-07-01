a=`tail -1 /home/ankit/sketchbook/major_2_gui__/noun.txt`
$a
b='U'
f="Fan"
l="lights"
m="music"
n="on"
all="all"
if [ "$a" = "$b" ]; 
then 
sox -d -b 16 -c 1 -r 16k sample.wav trim 0 3
#sleep 4
curl -XPOST 'https://api.wit.ai/speech' \
   -i -L \
   -H "Authorization: Bearer 34SMAJX5RGOVOUOBTNHM5L5PYLXUFEBM" \
   -H "Content-Type: audio/wav" \
   --data-binary "@sample.wav" | json -H > auto_input.txt
c=`cat auto_input.txt | jq -r '.outcomes[].intent'`  #intent value-----Fan,lights,music,all
echo "$c"

d=`cat auto_input.txt | jq -r '.outcomes[].entities.on_off[].value'`  # entity---on/off
echo "$d"
if [ "$c" = "$f" ];then
if [ "$d" = "$n" ];then
a='H'
else
a='L'
fi
fi

if [ "$c" = "$l" ];then
if [ "$d" = "$n" ];then
a='Y'
else
a='N'
fi
fi 

if [ "$c" = "$m" ];then
if [ "$d" = "$n" ];then
a='C'
else
a='D'
fi
fi

if [ "$c" = "$all" ];then
if [ "$d" = "$n" ];then
a='A'
else
a='B'
fi
fi

fi

curl --data "command_string=$a&position=1" https://api.thingspeak.com/talkbacks/4580/commands.json?api_key=PJ3BES0HDVVULGSQ
truncate -s0 positionsT.txt
truncate -s0 /home/ankit/sketchbook/major_2_gui__/noun.txt
#truncate -s0 /home/ankit/sketchbook/major_2_gui__/sensor_output.txt

exit 0


