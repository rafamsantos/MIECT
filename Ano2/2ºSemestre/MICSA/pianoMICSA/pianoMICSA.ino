#include "tones.h"

const int buttonPin = USER_BTN;     // the number of the pushbutton pin
const int ledPin =  D13;      // the number of the LED pin
const int buzzPin = D12;
const int lightSensor1 = A5;
const int lightSensor2 = A4;
const int lightSensor3 = A3;

bool songMode = false;

void setup() {
  Serial.begin(9600);
  
  pinMode(ledPin, OUTPUT);
  pinMode(buttonPin, INPUT);
  pinMode(buzzPin, OUTPUT);
  pinMode(lightSensor1, INPUT);
  pinMode(lightSensor2, INPUT);
  pinMode(lightSensor3, INPUT);
  
  digitalWrite(buzzPin, HIGH);

}


void loop() {
  if (digitalRead(buttonPin) != HIGH){
    if(songMode == false){
      songMode = true;
      noTone(buzzPin);
      tone(buzzPin, NOTE_D4, 100);
      delay(100);
      noTone(buzzPin);
      tone(buzzPin, NOTE_E4, 100);
      delay(100);
      noTone(buzzPin);
      tone(buzzPin, NOTE_F4, 100);
      delay(100);
      noTone(buzzPin);
      tone(buzzPin, NOTE_G4, 100);
      delay(100);
      noTone(buzzPin);
    } else {
      noTone(buzzPin);
      tone(buzzPin, NOTE_G4, 100);
      delay(100);
      noTone(buzzPin);
      tone(buzzPin, NOTE_F4, 100);
      delay(100);
      noTone(buzzPin);
      tone(buzzPin, NOTE_E4, 100);
      delay(100);
      noTone(buzzPin);
      tone(buzzPin, NOTE_D4, 100);
      delay(100);
      noTone(buzzPin);
      songMode = false;
    }
  }

  if(analogRead(lightSensor1) > 800){

    if(songMode == true){
      playHarryPotterTheme();
    } else {
      tone(buzzPin, NOTE_D4, 1000);
      delay(200);
    }
    
  } else {
    noTone(buzzPin);
    digitalWrite(buzzPin, LOW);
  }

  if(analogRead(lightSensor2) > 800){

    if(songMode == true){
      playMarioTheme();
    } else {
      tone(buzzPin, NOTE_E4, 1000);
      delay(200);
    }
    
  } else {
    noTone(buzzPin);
    digitalWrite(buzzPin, LOW);
  }

  if(analogRead(lightSensor3) > 600){

    if(songMode == true){
      playCoffin();
    } else {
      tone(buzzPin, NOTE_F4, 1000);
      delay(200);
    }
    
  } else {
    noTone(buzzPin);
    digitalWrite(buzzPin, LOW);
  }
    
}


void playHarryPotterTheme(){
  
  // notes in the melody:
  int melody[] = { NOTE_D4, NOTE_G4, NOTE_AS4, NOTE_A4, 
                   NOTE_G4, NOTE_D5, NOTE_C5, NOTE_A4, 
                   NOTE_G4, NOTE_AS4, NOTE_A4, NOTE_F4, 
                   NOTE_GS4, NOTE_D4, NOTE_D4 };
  
  // note durations: 4 = quarter note, 8 = eighth note, etc.:
  int noteDurations[] = {4, -4, 8, 4,
                         2, 4, -2, -2, 
                         -4, 8, 4, 2, 
                         4, -1, 4 };

  // iterate over the notes of the melody:
  for (int thisNote = 0; thisNote < sizeof(melody) / sizeof(int); thisNote++) {

    // to calculate the note duration, take one second divided by the note type.
    //e.g. quarter note = 1000 / 4, eighth note = 1000/8, etc.
    double noteDuration = 0;
    if(noteDurations[thisNote] > 0){
      noteDuration = 1000 / noteDurations[thisNote];
    } else {
      noteDuration = 1000 / noteDurations[thisNote] * -1.5;
    }
    
    tone(buzzPin, melody[thisNote], noteDuration);

    // to distinguish the notes, set a minimum time between them.
    // the note's duration + 30% seems to work well:
    int pauseBetweenNotes = noteDuration * 1.30;

    delay(pauseBetweenNotes);

    // stop the tone playing:
    noTone(buzzPin);
    digitalWrite(buzzPin, LOW);
  }
}

void playMarioTheme(){
  
  // notes in the melody:
  int melody[] = {
    NOTE_E7, NOTE_E7, 0, NOTE_E7,
    0, NOTE_C7, NOTE_E7, 0,
    NOTE_G7, 0, 0,  0,
    NOTE_G6, 0, 0, 0,
   
    NOTE_C7, 0, 0, NOTE_G6,
    0, 0, NOTE_E6, 0,
    0, NOTE_A6, 0, NOTE_B6,
    0, NOTE_AS6, NOTE_A6, 0,
   
    NOTE_G6, NOTE_E7, NOTE_G7,
    NOTE_A7, 0, NOTE_F7, NOTE_G7,
    0, NOTE_E7, 0, NOTE_C7,
    NOTE_D7, NOTE_B6, 0, 0,
   
    NOTE_C7, 0, 0, NOTE_G6,
    0, 0, NOTE_E6, 0,
    0, NOTE_A6, 0, NOTE_B6,
    0, NOTE_AS6, NOTE_A6, 0,
   
    NOTE_G6, NOTE_E7, NOTE_G7,
    NOTE_A7, 0, NOTE_F7, NOTE_G7,
    0, NOTE_E7, 0, NOTE_C7,
    NOTE_D7, NOTE_B6, 0, 0
  };
  
  // note durations: 4 = quarter note, 8 = eighth note, etc.:
  int noteDurations[] = {
    12, 12, 12, 12,
    12, 12, 12, 12,
    12, 12, 12, 12,
    12, 12, 12, 12,
   
    12, 12, 12, 12,
    12, 12, 12, 12,
    12, 12, 12, 12,
    12, 12, 12, 12,
   
    9, 9, 9,
    12, 12, 12, 12,
    12, 12, 12, 12,
    12, 12, 12, 12,
   
    12, 12, 12, 12,
    12, 12, 12, 12,
    12, 12, 12, 12,
    12, 12, 12, 12,
   
    9, 9, 9,
    12, 12, 12, 12,
    12, 12, 12, 12,
    12, 12, 12, 12,
  };

  // iterate over the notes of the melody:
  for (int thisNote = 0; thisNote < sizeof(melody) / sizeof(int); thisNote++) {

    // to calculate the note duration, take one second divided by the note type.
    //e.g. quarter note = 1000 / 4, eighth note = 1000/8, etc.
    double noteDuration = 0;
    if(noteDurations[thisNote] > 0){
      noteDuration = 1000 / noteDurations[thisNote];
    } else {
      noteDuration = 1000 / noteDurations[thisNote] * -1.5;
    }
    
    tone(buzzPin, melody[thisNote], noteDuration);

    // to distinguish the notes, set a minimum time between them.
    // the note's duration + 30% seems to work well:
    int pauseBetweenNotes = noteDuration * 1.30;

    delay(pauseBetweenNotes);

    // stop the tone playing:
    noTone(buzzPin);
    digitalWrite(buzzPin, LOW);
  }
}

void playCoffin(){
  // notes in the melody:
  int melody[] = {
    
    NOTE_G5, NOTE_G5, NOTE_G5, NOTE_G5,
    NOTE_G5, NOTE_G5, NOTE_G5, NOTE_G5, 
    NOTE_G5, NOTE_G5, NOTE_G5, NOTE_G5, 
    NOTE_C5, NOTE_AS4, NOTE_A4, NOTE_F4,
    
    NOTE_G4, 0, NOTE_G4, NOTE_D5,
    NOTE_C5, 0, NOTE_AS4, 0,
    NOTE_A4, 0, NOTE_A4, NOTE_A4,
    NOTE_C5, 0, NOTE_AS4, NOTE_A4, 
    
    NOTE_G4,0, NOTE_G4, NOTE_AS5,
    NOTE_A5, NOTE_AS5, NOTE_A5, NOTE_AS5,
    NOTE_G4,0, NOTE_G4, NOTE_AS5,
    NOTE_A5, NOTE_AS5, NOTE_A5, NOTE_AS5,
    
    NOTE_G4, 0, NOTE_G4, NOTE_D5,
    NOTE_C5, 0, NOTE_AS4, 0,
    NOTE_A4, 0, NOTE_A4, NOTE_A4,
    NOTE_C5, 0, NOTE_AS4, NOTE_A4, 
    
    NOTE_G4,0, NOTE_G4, NOTE_AS5,
    NOTE_A5, NOTE_AS5, NOTE_A5, NOTE_AS5,
    NOTE_G4,0, NOTE_G4, NOTE_AS5,
    NOTE_A5, NOTE_AS5, NOTE_A5, NOTE_AS5
  };
  
  // note durations: 4 = quarter note, 8 = eighth note, etc.:
  int noteDurations[] = {
    8,8,8,8,
    8,8,8,8,
    8,8,8,8,
    8,8,8,8,
    
    8,8,8,8,
    8,8,8,8,
    8,8,8,8,
    8,8,8,8,

    8,8,8,8,
    8,8,8,8,
    8,8,8,8,
    8,8,8,8,

    8,8,8,8,
    8,8,8,8,
    8,8,8,8,
    8,8,8,8,

    8,8,8,8,
    8,8,8,8,
    8,8,8,8,
    8,8,8,8,
  };

  // iterate over the notes of the melody:
  for (int thisNote = 0; thisNote < sizeof(melody) / sizeof(int); thisNote++) {

    // to calculate the note duration, take one second divided by the note type.
    //e.g. quarter note = 1000 / 4, eighth note = 1000/8, etc.
    double noteDuration = 0;
    if(noteDurations[thisNote] > 0){
      noteDuration = 1000 / noteDurations[thisNote];
    } else {
      noteDuration = 1000 / noteDurations[thisNote] * -1.5;
    }
    
    tone(buzzPin, melody[thisNote], noteDuration);

    // to distinguish the notes, set a minimum time between them.
    // the note's duration + 30% seems to work well:
    int pauseBetweenNotes = noteDuration * 1.30;

    delay(pauseBetweenNotes);

    // stop the tone playing:
    noTone(buzzPin);
    digitalWrite(buzzPin, LOW);
  }
}
