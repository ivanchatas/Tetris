public class Point {
  public int x;
  public int y;
  public Point(int i, int j) {
      this.x = i;
      this.y = j;
  }
  
  public void print () {
    System.out.println("(" + x + "," + y + ")");
  }
  
  public void update(int newX, int newY) {
    System.out.println("Updating (" + x + "," + y + ") -> (" + newX + "," + newY + ")");
    this.x = newX;
    this.y = newY;
}
private boolean isValidMove(int[][] board, int newX, int newY) {
    int width = board.length;  // Assuming board is a square
    int height = board[0].length;
    
    return (newX >= 0 && newX < width && newY >= 0 && newY < height && board[newX][newY] == 0);
}
}
