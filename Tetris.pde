int wide = 10;
int high = 24;
int sizeCell = 15;
Game game;
IShape ishape;
int x = wide / 2;
int y = 0;
int movement = 1;

void setup() {
  size(500, 500);
  background(0);
  game = new Game(wide, high);
  ishape = new IShape(x,y);
}

void draw() {
  delay(1000);
  game.displayBoard();
  //fill(204, 102, 0);
  //rect(x * sizeCell, y * sizeCell, sizeCell, sizeCell);
  ishape.paint();
    ishape.print();
 // if(y < high - 1 && game.Board[x][y + 1] == 0) {
    if (ishape.validate(game.Board)) {
    y++;
    ishape.move (y);
  }
  else {
 //   game.Board[x][y] = 1;
    game.Board[ishape.a.x][ishape.a.y] = 1;
    game.Board[ishape.b.x][ishape.b.y] = 1;
    game.Board[ishape.c.x][ishape.c.y] = 1;
    game.Board[ishape.d.x][ishape.d.y] = 1;
    boolean isReady = game.isReady(y);
    if(isReady) {
      game.removeLine(y);
      System.out.println("Is ready to be removed");
      move(y - 1);
    }
    else    
      System.out.println("Is not ready yet");
    x = wide / 2;
    y = 0;
    ishape = new IShape(x,y);
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
    } else if (keyCode == UP) {
      if (movement == 1) {
        ishape.movement2();
      }
      else if (movement == 2) {
      ishape.movement3();
      }
      else if (movement == 3) {
      ishape.movement4();
      } else {
      ishape.movement1();
      movement = 0;
    }
    movement = movement + 1;
  }
}
}

void move(int y) {
  while (game.isOne(y)){
    game.removeLine(y);
    y--;
  }
}
