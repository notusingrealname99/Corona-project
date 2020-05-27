char letter;
String words = "DO you have any symptoms of COVID19?";
String Errormsg="";
void setup() {
  size(800, 500);
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

  if (words=="DO you have any symptoms of COVID19?")
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
