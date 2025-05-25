int TOTAL_DIRT = 20; // Dirt spots generated
int CLEAN_SCORE = 15; // Score required to win the game
int GAME_TIME = 30; //  game time in seconds

PVector bananaPos; // Player
PVector secondBananaPos; // observer that smiles after dirt is cliked
ArrayList<Dirt> dirtList; // list to store all dirt objects after they are clicked
int score = 0;
int startTime;
boolean gameOver = false;
boolean gameWon = false;

boolean secondBananaSmile = false; // determines if the second banana should be smiling or not
int smileTimer = 0; // timer to control duration of second banana’s smile

void setup() {
  size(800, 600);
  bananaPos = new PVector(width/2, height/2);
  secondBananaPos = new PVector(50, height-500);
  startGame();
}

void draw() {
  background(200, 220, 255);

  if (!gameOver) {
    updateBanana();
    drawBanana(bananaPos, true, false);
    updateAndDrawDirt();
    displayScore();
    displayTimer();

    // Creates the second banana
    boolean showSmile = secondBananaSmile && millis() - smileTimer < 800;
    drawBanana(secondBananaPos, false, showSmile);

    if (millis() - startTime > GAME_TIME * 1000) {
      gameOver = true;
      gameWon = score >= CLEAN_SCORE;
    }
  } else {
    drawBanana(bananaPos, true, gameWon);
    drawBanana(secondBananaPos, false, gameWon);
    showEndScreen();
  }
}

void updateBanana() {
  PVector mouse = new PVector(mouseX, mouseY);
  bananaPos.lerp(mouse, 0.1);
}

void drawBanana(PVector pos, boolean faceMouse, boolean smile) {
  pushMatrix();
  translate(pos.x, pos.y);

  float angle = faceMouse ? atan2(mouseY - pos.y, mouseX - pos.x) + PI/2 : 0;
  rotate(angle);

  // Body of the banana
  noStroke();
  fill(255, 230, 50);
  beginShape();
  curveVertex(-20, -50);
  curveVertex(-20, -50);
  curveVertex(-10, -55);
  curveVertex(0, -60);
  curveVertex(10, -55);
  curveVertex(15, -45);
  curveVertex(18, -25);
  curveVertex(15, 20);
  curveVertex(10, 40);
  curveVertex(0, 50);
  curveVertex(-10, 45);
  curveVertex(-15, 30);
  curveVertex(-18, 5);
  curveVertex(-18, -20);
  curveVertex(-20, -50);
  curveVertex(-20, -50);
  endShape(CLOSE);

  // top of the banana
  fill(120, 80, 40);
  ellipse(0, -60, 8, 8);
  ellipse(0, 50, 6, 6);

  // Highlight
  fill(255, 255, 120, 90);
  beginShape();
  curveVertex(-5, -40);
  curveVertex(-5, -40);
  curveVertex(-2, -35);
  curveVertex(2, -20);
  curveVertex(0, 10);
  curveVertex(-4, 30);
  curveVertex(-6, 35);
  curveVertex(-6, 35);
  endShape();

  // banana eyes
  fill(255);
  ellipse(-10, -20, 12, 12);
  ellipse(10, -20, 12, 12);
  fill(0);
  ellipse(-10, -20, 5, 5);
  ellipse(10, -20, 5, 5);

  // Smile
  if (smile) {
    stroke(0);
    strokeWeight(3);
    noFill();
    arc(0, -2, 30, 15, 0, PI);
  }

  popMatrix();
}

void updateAndDrawDirt() {
  for (Dirt d : dirtList) {
    d.move();
    d.show();
  }
}

void displayScore() {
  fill(0);
  textSize(18);
  text("Score: " + score, 10, 20);
}

void displayTimer() {
  fill(0);
  int remaining = max(0, GAME_TIME - (millis() - startTime) / 1000);
  text("Time: " + remaining, width - 100, 20);
}
//This shows the Succes, and Try Again screens at the end of the game.
void showEndScreen() {
  background(50);
  fill(255);
  textAlign(CENTER);
  textSize(32);
  if (gameWon) {
    text("Success! You cleaned the screen!", width/2, height/2);
  } else {
    text("Time's up! Try again!", width/2, height/2);
  }
  textSize(20);
  text("Press any key to restart.", width/2, height/2 + 40);
}

void mousePressed() {
  if (!gameOver) {
    for (int i = dirtList.size() - 1; i >= 0; i--) {
      if (dirtList.get(i).clicked(mouseX, mouseY)) {
        dirtList.remove(i);
        score++;
        secondBananaSmile = true;
        smileTimer = millis();
        break;
      }
    }
  }
}

void keyPressed() {
  if (gameOver) {
    startGame();
  }
}

void startGame() {
  score = 0;
  dirtList = new ArrayList<Dirt>();
  for (int i = 0; i < TOTAL_DIRT; i++) {
    dirtList.add(new Dirt());
  }
  startTime = millis();
  gameOver = false;
  gameWon = false;
  secondBananaSmile = false;
}
//Created the dirty spots on the screen
class Dirt {
  float x, y, r;
  float dx, dy;

  Dirt() {
    x = random(50, width - 50);
    y = random(100, height - 50);
    r = random(15, 30);
    dx = random(-0.5, 0.5);
    dy = random(-0.5, 0.5);
  }

  void move() {
    x += dx;
    y += dy;
    if (x < 0 || x > width) dx *= -1;
    if (y < 80 || y > height) dy *= -1;
  }

  void show() {
    fill(100, 50, 0);
    noStroke();
    ellipse(x, y, r, r);
  }

  boolean clicked(float mx, float my) {
    return dist(mx, my, x, y) < r / 2;
  }
}
