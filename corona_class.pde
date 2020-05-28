Drop[] drops=new Drop[5];
char letter;
String words = "Have You had close contat with or cared for someone diagnosed with COVID-19 Within last 14 days?";
String Errormsg="";
PImage img;

void setup() { 
  size(800, 500);
  for (int i=0; i<drops.length; i++) {
    drops[i]=new Drop();
  }
}

void draw() {
  background(0); // Set background to black

  // Draw the letter to the center of the screen
  textSize(14);
  text("Click on the program, then type to add to the String", 50, 50);
  text("Current key: " + letter, 50, 70);
  //text("The String is " + words.length() +  " characters long", 50, 90);
  text(Errormsg, 50, 90);
  textSize(18);
  text(words, 50, 120, 540, 300);
  for (int i=0; i<drops.length; i++) {
    drops[i].show();
    drops[i].fall();
  }
  
  //d.fall();
  //d.show();
}

void keyTyped() {
  // The variable "key" always contains the value 
  // of the most recent key pressed.
  if ((key >= 'A' && key <= 'z') || key == ' ') {
    letter = key;
    //words = words;
    // Write the letter to the console
    println(key);
  }

  if (words=="Have You had close contat with or cared for someone diagnosed with COVID-19 Within last 14 days?")
  {
    if (letter == 'Y')
    {
      letter=' ';
      words="";
      words="Have you experienced any cold or flu-like symptoms in the last 14 days (to include fever, cough,sore throat, respiratory illness, difficulty breathing)?";
    } else if (letter=='N') {
      letter=' ';
      words="";
      words="Please Diagnose the COVID-19 Test First\r\n Thank You!";
    } else
    {
      Errormsg="Invalid input";
    }
  }

  if (words=="Have you experienced any cold or flu-like symptoms in the last 14 days (to include fever, cough,sore throat, respiratory illness, difficulty breathing)?")
  {
    if (letter == 'Y')
    {
      letter=' ';
      words="";
      words="Please Go To Hospital";
    } else if (letter=='N') {
      letter=' ';
      words="";
      words="Your Health is Good..:)";
    } else
    {
      Errormsg="Invalid input";
    }
  }
}
