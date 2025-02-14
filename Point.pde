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
  
  public void update(int i, int j) {
      this.x = i;
      this.y = j;
  }
}
