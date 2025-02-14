public class IShape {
  public Point a;
  public Point b;
  public Point c;
  public Point d;
  
  public IShape (int i, int j) {
  a = new Point (i,j);
  b = new Point (i, j + 1);
  c = new Point (i, j + 2);
  d = new Point (i, j + 3);
  }
  
  public void move(int y) {
    a.y=y;
    b.y=y + 1;
    c.y=y + 2;
    d.y=y + 3;
  }
  
  public void paint () {
    fill(204, 102, 0);
    rect(a.x * sizeCell, a.y * sizeCell, sizeCell, sizeCell);
    rect(b.x * sizeCell, b.y * sizeCell, sizeCell, sizeCell);
    rect(c.x * sizeCell, c.y * sizeCell, sizeCell, sizeCell);
    rect(d.x * sizeCell, d.y * sizeCell, sizeCell, sizeCell);
  }
  
  public void print () {
    a.print();
    b.print();
    c.print();
    d.print();
  }
  
  public boolean validate (int[][] board) {
    if((a.y < high - 1 && board[x][a.y + 1] == 0) &&
    (b.y < high - 1 && board[x][b.y + 1] == 0) &&
    (c.y < high - 1 && board[x][c.y + 1] == 0) &&
    (d.y < high - 1 && board[x][d.y + 1] == 0)) {
      return true;
    }
    return false;
  }
  
  public void movement1() {
//    a.update(a.x-1,a.y);
//    b.update(b.x,b.y-1);
//    c.update(c.x+1,c.y-2);
//    d.update(d.x+2,d.y-3);
  }
  
  public void movement2() {
    a.update(a.x-1,a.y);
    b.update(b.x,b.y-1);
    c.update(c.x+1,c.y-2);
    d.update(d.x+2,d.y-3);
  }
  
  public void movement3() {
    a.update(a.x+1,a.y+3);
    b.update(b.x, b.y+2);
    c.update(c.x-1, c.y+1);
    d.update(d.x-2, d.y);
  }
  
  public void movement4() {
    a.update(a.x+2,a.y-3);
    b.update(b.x+1,b.y-2);
    c.update(c.x,c.y-1);
    d.update(d.x-1,d.y);
  }
}
