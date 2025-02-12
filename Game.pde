public class Game {
 
  public int Wide;
  public int High;
  public int[][] Board;
  
  public Game(int wide, int high) {
      Board = new int[wide][high];
      this.Wide = wide;
      this.High = high;
      generateBoard();
  }
  
  public void generateBoard() {
    for(int i = 0; i < wide; i++)
      for(int j = 0; j < high; j++)
        Board[i][j] = 0;
  }
  
  public void displayBoard() {
    for(int i = 0; i < wide; i++) {
      for(int j = 0; j < high; j++) {
        if(game.Board[i][j] == 0)
          fill(250, 250, 250);
        else
          fill(204, 102, 0);
        rect(i * sizeCell, j * sizeCell, sizeCell, sizeCell);
      }
    }
  }
  
  public boolean isReady(int y) {
    // Insert here the code
    boolean result = true;
    for(int x = 0; x < Wide; x++) {
      if(Board[x][y] == 0) {
        result = false;
        break;
      }
    }
    return result;
  }
  
  public void removeLine(int y) {
    // Insert here the code
    for(int x = 0; x < Wide; x++) {
      Board[x][y] = Board[x][y-1]; 
    }
  }
  
  public boolean isOne(int y) {
    // Insert here the code
    boolean result = false;
    for(int x = 0; x < Wide; x++) {
      if(Board[x][y] == 1) {
        result = true;
        break;
      }
    }
    return result;
  }
}
