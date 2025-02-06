int wide = 10;
int high = 24;
int sizeCell = 15;
Game game;

int x = wide / 2;
int y = 0;

void setup() {
  size(500, 500);
  background(0);
  game = new Game(wide, high);
}

void draw() {
  delay(1000);
  game.displayBoard();
  fill(204, 102, 0);
  rect(x * sizeCell, y * sizeCell, sizeCell, sizeCell);
  if(y < high - 1 && game.Board[x][y + 1] == 0)
    y++;
  else {
    game.Board[x][y] = 1;
    x = wide / 2;
    y = 0;
  }
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == LEFT) {
      if(x > 0)
        x--;
    } else if (keyCode == RIGHT) {
      if(x < wide - 1)
        x++;
    } 
  }
}
