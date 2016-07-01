

import processing.serial.*;
PFont f;
Serial myPort;  // Create object from Serial class
int val;        // Data received from the serial port
int lvalue=0;
int lamp_val=255;
int lamp2_val=255;
int normal_val=255;
int normal2_val=255;
int disco_light=0;
boolean check=false;
int value;
PrintWriter output;
PrintWriter output1;
String wordst = "T T T T T T T T T T";
String[] listt = split(wordst, ' ');
String wordsz = "Z Z Z Z Z Z Z Z Z Z";
String[] listz = split(wordsz, ' ');
String wordsh = "H H H H H H H H H H";
String[] listh = split(wordsh, ' ');
String wordsl = "L L L L L L L L L L";
String[] listl = split(wordsl, ' ');
String wordsy = "Y Y Y Y Y Y Y Y Y Y";
String[] listy = split(wordsy, ' ');
String wordsn = "N N N N N N N N N N";
String[] listn = split(wordsn, ' ');
String wordsc = "C C C C C C C C C C";
String[] listc = split(wordsc, ' ');
String wordsd = "D D D D D D D D D D";
String[] listd = split(wordsd, ' ');
String wordsa = "A A A A A A A A A A";
String[] lista = split(wordsa, ' ');
String wordsb = "B B B B B B B B B B";
String[] listb = split(wordsb, ' ');

void setup()
{
  size(1360, 700);
  String portName = Serial.list()[0];
  //myPort = new Serial(this, portName, 9600);
  f = createFont("Arial",16,true);
   
}

void draw()
{
  textFont(f,16);
  text("A",360,350);
  //saveStrings("/home/ankit/nouns.txt", list);
  background(0);
  stroke(255);
  int cx = 150;
  int cy = 150;
  int r = 100; //radius of the circle
  float t = millis()/200.0f; //increase to slow down the movement
  strokeWeight(20);
  ellipse(cx, cy, 20, 20); //centre circle

  if (value==0)
  {        
    triangle(cx, cy, 75, 75, 150, 150);
    triangle(cx, cy, 95, 240, 150, 150);
    triangle(cx, cy, 260, 150, 150, 150);
  }



  if (value==1)
  {


    for (int i = 1; i <=3; i++) //to change no. of blades 
    {
      t = t + 8.5; //to change distance b\w fans blade

      int x = (int)(cx + r * cos(t));
      int y = (int)(cy + r * sin(t));
      triangle(cx, cy, x, y, 150, 150); //blades position
    }
  }


  ellipse(120, 450, 25, 25);
  ellipse(190, 450, 25, 25);
  ellipse(630, 450, 25, 25);
  ellipse(700, 450, 25, 25);
  ellipse(1140, 450, 25, 25);
  ellipse(1210, 450, 25, 25);
  fill(255);
  strokeWeight(0);
  fill(255, lamp_val, lamp2_val);
  quad(610, 80, 710, 80, 750, 130, 570, 130);
  fill(255);
  quad(610, 180, 710, 180, 685, 280, 635, 280);
  rect(635, 130, 50, 50);
  rect(1130, 110, 90, 170);
  rect(1070, 200, 50, 80);
  rect(1230, 200, 50, 80);
  strokeWeight(15);
  ellipse(410, 580, 50, 50);
  ellipse(950, 580, 50, 50);





  strokeWeight(0);


  fill(0); 
  triangle(113, 440, 113, 460, 133, 450);
  triangle(623, 440, 623, 460, 643, 450);
  triangle(1133, 440, 1133, 460, 1153, 450);
  triangle(397, 560, 397, 600, 432, 580);
  rect(180, 440, 20, 20);
  rect(690, 440, 20, 20);
  rect(1200, 440, 20, 20);
  rect(933, 563, 34, 34);
  ellipse(1175, 260, 28, 28);
  ellipse(1147, 260, 8, 8);
  ellipse(1203, 260, 8, 8);



  fill(0);
  strokeWeight(1);
  stroke(51);
  line(1130, 115, 1220, 115);
  line(1130, 120, 1220, 120);
  line(1130, 125, 1220, 125);
  line(1130, 130, 1220, 130);
  line(1130, 135, 1220, 135);
  line(1130, 140, 1220, 140);
  line(1130, 145, 1220, 145);
  line(1130, 150, 1220, 150);
  line(1130, 155, 1220, 155);
  line(1130, 160, 1220, 160);
  line(1130, 165, 1220, 165);
  line(1130, 170, 1220, 170);
  line(1130, 175, 1220, 175);
  line(1130, 180, 1220, 180);
  line(1130, 185, 1220, 185);
  line(1130, 190, 1220, 190);
  line(1130, 195, 1220, 195);
  line(1130, 200, 1220, 200);
  line(1130, 205, 1220, 205);
  line(1130, 210, 1220, 210);
  line(1130, 215, 1220, 215);
  line(1130, 220, 1220, 220);
  line(1130, 225, 1220, 225);
  line(1130, 230, 1220, 230);
  line(1130, 235, 1220, 235);
  line(1130, 240, 1220, 240);
  line(1070, 205, 1120, 205);
  line(1070, 210, 1120, 210);
  line(1070, 215, 1120, 215);
  line(1070, 220, 1120, 220);
  line(1070, 225, 1120, 225);
  line(1070, 230, 1120, 230);
  line(1070, 235, 1120, 235);
  line(1070, 240, 1120, 240);
  line(1070, 245, 1120, 245);
  line(1070, 250, 1120, 250);
  line(1070, 255, 1120, 255);
  line(1070, 260, 1120, 260);
  line(1070, 265, 1120, 265);
  line(1070, 270, 1120, 270);
  line(1070, 275, 1120, 275);
  line(1230, 205, 1280, 205);
  line(1230, 210, 1280, 210);
  line(1230, 215, 1280, 215);
  line(1230, 220, 1280, 220);
  line(1230, 225, 1280, 225);
  line(1230, 230, 1280, 230);
  line(1230, 235, 1280, 235);
  line(1230, 240, 1280, 240);
  line(1230, 245, 1280, 245);
  line(1230, 250, 1280, 250);
  line(1230, 255, 1280, 255);
  line(1230, 260, 1280, 260);
  line(1230, 265, 1280, 265);
  line(1230, 270, 1280, 270);
  line(1230, 275, 1280, 275);
  ellipse(1095, 240, 40, 40);
  ellipse(1255, 240, 40, 40);
  ellipse(1175, 160, 73, 73);
  fill(255);
  ellipse(1175, 160, 63, 63);
  ellipse(1095, 240, 28, 28);
  ellipse(1255, 240, 28, 28);
  fill(disco_light, 100, 30);
  ellipse(1175, 160, 53, 53);
  fill(255);
  ellipse(400, 80, 130, 130);
  
  ellipse(920, 80, 130, 130);
  fill(255, normal_val, normal2_val);
  ellipse(400, 80, 130, 130);


  fill(0);

  textSize(20);
  text("NORMAL", 357, 86); 
  text("AUTOMATIC", 860, 86);  
  fill(255);
  textSize(20);
  text("TEMPERATURE", 200, 350);
  text("HUMIDITY", 780, 350);
  rect(350, 332, 100, 20);
  rect(885, 332, 100, 20);
  ellipse(480, 340, 40, 40);
  ellipse(1015, 340, 40, 40);
  fill(0);
  ellipse(480, 340, 20, 20);
  ellipse(1015, 340, 20, 20);

  /*if(mousePressed){
   if (mouseX>270 && mouseX<530 &&mouseY>0 &&mouseY<210)
   {
   lamp_val=204;
   lamp2_val=0;
   ellipse(400,80,130,130);
   fill(0);
   textSize(20);
   text("NORMAL", 357, 86);*/




  /////////////////////////////////////////////////for fan///////////////////////

  if (mousePressed) {

    if (mouseX>95 && mouseX<145 &&mouseY>425 &&mouseY<475)
    {
      //myPort.write('H');              // send an H to indicate mouse is over square
      println('H');
      value = 1;
      saveStrings("noun.txt",listh);
    } else if (mouseX>165&& mouseX<215 &&mouseY>425 &&mouseY<475)
    {
      value=0;
      //myPort.write('L');              // send an L otherwise
      println('L');
      saveStrings("noun.txt",listl);
    }
    //////////////////////////////////////////////////////// for lamp //////////////////////////////
    else if (mouseX>605 && mouseX<655 &&mouseY>425 &&mouseY<475)
    {
      //myPort.write('Y');           
      println('Y');
      lamp_val=204;
      lamp2_val=0;
      saveStrings("noun.txt",listy);
    } else if (mouseX>675&& mouseX<725 &&mouseY>425 &&mouseY<475)
    {

      //myPort.write('N');              // send an L otherwise
      println('N');
      lamp_val=255;
      lamp2_val=255;
      saveStrings("noun.txt",listn);
    }
    ///////////////////////////////////////////////////// for speakers //////////////////////////////////////////////
    else if (mouseX>1115 && mouseX<1165 &&mouseY>425 &&mouseY<475)
    {
      for (int i=0; i<165; i++)
        disco_light++;
      //myPort.write('C');              
      println('C');
      saveStrings("noun.txt",listc);
    } else if (mouseX>1185 && mouseX<1235 &&mouseY>425 &&mouseY<475)
    {

      //myPort.write('D');       // send an L otherwise
      disco_light=0;
      println('D');
      saveStrings("noun.txt",listd);
    }
    /////////////////////////////////////////////////////// for main switch which control all device /////////////////////  
    else if (mouseX>360 && mouseX<460 &&mouseY>530 &&mouseY<630)
    {
      //myPort.write('A');              
      println('A');
      value = 1;
      lamp_val=204;
      lamp2_val=0;
      for (int i=0; i<165; i++)
        disco_light++;
        saveStrings("noun.txt",lista);
    } else if (mouseX>900 && mouseX<1000 &&mouseY>530 &&mouseY<630)
    {

     // myPort.write('B');              // send an L otherwise
      println('B');
      value =0; 
      lamp_val=255;
      lamp2_val=255;
      disco_light=0;
      saveStrings("noun.txt",listb);
    } else if (mouseX>440&& mouseX<520 &&mouseY>300 &&mouseY<380)
    {

      //output.println("T"); // Write the coordinate to the file
      //println('T');
      //prin();
      
      //println(list);
      
      saveStrings("noun.txt",listt);
      delay(100);
      mouseClicked();
      String lines[] = loadStrings("sensor_output.txt");
      //int display=lines[1];
      //String[] display=split(lines[], '\n');
      //text(lines[0], 360, 350);
      delay(1000);
      //println(lines[0]);
    } else if (mouseX>975&& mouseX<1055 &&mouseY>300 &&mouseY<380)
    {

      saveStrings("noun.txt",listz);
      //output1.println("Z"); // Write the coordinate to the file
      //println('Z');
    }
    else if (mouseX>270&& mouseX<400 &&mouseY>0 &&mouseY<210)
    {
     normal_val=15;
     normal2_val=0;
      
    }
    else if (mouseX>400&& mouseX<530 &&mouseY>0 &&mouseY<210)
    {

      normal_val=255;
      normal2_val=255;
    }
  }
}
void mouseClicked()
{
String lines[] = loadStrings("sensor_output.txt");
      //String[] display=split(lines[], '\n');
      int i=lines.length-1;
      text(lines[i], 360, 350);
      println(lines[i]);
      delay(100);
}
