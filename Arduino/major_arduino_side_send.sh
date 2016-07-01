sed -i '$ d' arduino_sensor_data.txt
sed 's/.$//' arduino_sensor_data.txt
a=`tail -1 arduino_sensor_data.txt`
#a=("${@}")
$a
curl --data "command_string=$a&position=1" https://api.thingspeak.com/talkbacks/"your channel id"/commands.json?api_key="your api key"

#updating the channel as well
curl --data "field1=$a" https://api.thingspeak.com/update?api_key=N185TJWSP1F4LC2J 
#truncate -s0 arduino_sensor_data.txt
#truncate -s0 arduino_input.txt
exit 0
