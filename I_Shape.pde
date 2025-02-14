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
}
