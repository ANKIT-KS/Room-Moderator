curl -i -H "Accept: application/json" -H "Content-Type: application/json" GET https://api.thingspeak.com/talkbacks/4578/commands/execute.json?api_key=R7333DX3WOMRQMF7 | json command_string > new_sensor_output.txt

sed '1,18d' new_sensor_output.txt >> /home/ankit/sketchbook/major_2_gui__/sensor_output.txt
#sleep 3
#truncate -s0 /home/ankit/sketchbook/major_2_gui__/sensor_output.txt
exit 0
