curl -XPOST 'https://api.wit.ai/speech' \
   -i -L \
   -H "Authorization: Bearer 34SMAJX5RGOVOUOBTNHM5L5PYLXUFEBM" \
   -H "Content-Type: audio/wav" \
   --data-binary "@sample.wav" | json -H > auto_input.txt
cat auto_input.txt


sox -d -b 16 -c 1 -r 16k sample.wav
