
  // Wiring/Arduino code:
 // Read data from the serial and turn ON or OFF a light depending on the value
 
 char val; // Data received from the serial port
 int ledPin = 13; // Set the pin to digital I/O 13
 int ledPin1 = 12; // Set the pin to digital I/O 12
 int ledPin2 = 11; // Set the pin to digital I/O 11
 void setup() 
 {
 pinMode(ledPin, OUTPUT); // Set pin as OUTPUT
 pinMode(ledPin1, OUTPUT); // Set pin as OUTPUT
 pinMode(ledPin2, OUTPUT); // Set pin as OUTPUT
 
 Serial.begin(9600); // Start serial communication at 9600 bps
 }
 
 void loop() {
  int sensorValue = analogRead(A0);
  Serial.println(sensorValue);
  delay(100);
 if (Serial.available()) { // If data is available to read,
 val = Serial.read(); // read it and store it in val
 Serial.println(val);
 /////////////////////////////////////////////////for fan///////////////////////
 if (val == 'H') 
 { // If H was received
 digitalWrite(ledPin, HIGH); // turn the LED on
 }
 else if (val == 'L')
 {
 digitalWrite(ledPin, LOW); // Otherwise turn it OFF
 }
 //////////////////////////////////////////////////////// for lamp //////////////////////////////
 else if (val == 'Y')
 {
 digitalWrite(ledPin1, HIGH); // turn the LED on
 }
 else if (val == 'N')
 {
 digitalWrite(ledPin1, LOW); // Otherwise turn it OFF
 }
 //////////////////////////////////////////////////////// for speakers //////////////////////////////
 else if (val == 'C')
 {
 digitalWrite(ledPin2, HIGH); // turn the LED on
 }
 else if (val == 'D')
 {
 digitalWrite(ledPin2, LOW); // Otherwise turn it OFF
 }
  /////////////////////////////////////////////////////// for main switch which control all device /////////////////////  
 else if (val == 'A')
 {
   digitalWrite(ledPin, HIGH);
   digitalWrite(ledPin1, HIGH);
   digitalWrite(ledPin2, HIGH);
 }
 else if (val == 'B')
 {
 digitalWrite(ledPin, LOW);
 digitalWrite(ledPin1, LOW);
 digitalWrite(ledPin2, LOW);
 }
 }
 
 /*delay(100);*/ // Wait 100 milliseconds for next reading
 }
 
