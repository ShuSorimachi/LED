import processing.serial.*;
import cc.arduino.*;

Arduino arduino;
int ledPin = 13;

void setup(){
 
  arduino = new Arduino(this, Arduino.list()[3],57600);
  
  arduino.pinMode(ledPin, Arduino.OUTPUT);
}

void draw(){
  if(mousePressed == false){
  arduino.digitalWrite(ledPin, Arduino.HIGH);
  }else{
    arduino.digitalWrite(ledPin, Arduino.LOW);
  }
  
}