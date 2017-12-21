import processing.serial.*;
import cc.arduino.*;

Arduino arduino;
//int ledPin = 13;

void setup(){
 
  arduino = new Arduino(this, Arduino.list()[3],57600);
  
  arduino.pinMode(13, Arduino.OUTPUT);
  arduino.pinMode(10,Arduino.OUTPUT);
}

void draw(){
  if(mousePressed == false){
  arduino.digitalWrite(13, Arduino.HIGH);
  arduino.digitalWrite(10, Arduino.LOW);
  }else{
    arduino.digitalWrite(13, Arduino.LOW);
    arduino.digitalWrite(10, Arduino.HIGH);
  }
  
}