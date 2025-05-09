final int TOTAL_DIRT = 20;
final int CLEAN_SCORE = 15;
final int GAME_TIME = 30; // seconds

PVector bananaPos;
ArrayList<Dirt> dirtList;
int score = 0;
int startTime;
boolean gameOver = false;
boolean gameWon = false;

void setup() {
  size(800, 600);
  bananaPos = new PVector(width/2, height/2);
  startGame();
}

void draw() {
  background(200, 220, 255);

  if (!gameOver) {
    updateBanana();
    drawBanana();
    updateAndDrawDirt();
    displayScore();
    displayTimer();
    
    if (millis() - startTime > GAME_TIME * 1000) {
      gameOver = true;
      gameWon = score >= CLEAN_SCORE;
    }
  } else {
    showEndScreen();
  }
}

void updateBanana() {
  PVector mouse = new PVector(mouseX, mouseY);
  bananaPos.lerp(mouse, 0.1);
}

void drawBanana() {
  pushMatrix();
  translate(bananaPos.x, bananaPos.y);
  float angle = atan2(mouseY - bananaPos.y, mouseX - bananaPos.x);
  rotate(angle + PI/2);
  
  // Main banana body
  noStroke();
  fill(255, 230, 50); // rich banana yellow
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
  
  // Left tip (top of banana)
  fill(120, 80, 40); // brown stem
  ellipse(0, -60, 8, 8);
  
  // Right tip (bottom of banana)
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
}

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
