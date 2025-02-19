public class IShape {
    public Point a;
    public Point b;
    public Point c;
    public Point d;
    
    public IShape(int i, int j) {
        a = new Point(i, j);
        b = new Point(i, j + 1);
        c = new Point(i, j + 2);
        d = new Point(i, j + 3);
    }
    
    public void moveY() {

          a.y = a.y + 1;
          b.y = b.y + 1;
          c.y = c.y + 1;
          d.y = d.y + 1;
    }
    public void moveRightX() {
          a.x = a.x + 1;
          b.x = b.x + 1;
          c.x = c.x + 1;
          d.x = d.x + 1;
    }
    
    public void moveLeftX() {
          a.x = a.x - 1;
          b.x = b.x - 1;
          c.x = c.x - 1;
          d.x = d.x - 1;
    }
        
    public void paint() {
        fill(204, 102, 0);
        rect(a.x * sizeCell, a.y * sizeCell, sizeCell, sizeCell);
        rect(b.x * sizeCell, b.y * sizeCell, sizeCell, sizeCell);
        rect(c.x * sizeCell, c.y * sizeCell, sizeCell, sizeCell);
        rect(d.x * sizeCell, d.y * sizeCell, sizeCell, sizeCell);
    }
    
    public void print() {
        a.print();
        b.print();
        c.print();
        d.print();
    }
    
    public boolean validate(int[][] board) {
        int x = a.x; // Assuming x is constant for validation
        if ((a.y < high - 1 && board[x][a.y + 1] == 0) &&
            (b.y < high - 1 && board[x][b.y + 1] == 0) &&
            (c.y < high - 1 && board[x][c.y + 1] == 0) &&
            (d.y < high - 1 && board[x][d.y + 1] == 0)) {
            return true;
        }
        return false;
    }
    public boolean validateX() {
        if ((a.x < wide - 1 && a.x > 0) &&
            (b.x < wide - 1 && b.x > 0) &&
            (c.x < wide - 1 && c.x > 0) &&
            (d.x < wide - 1 && d.x > 0)) {
            return true;
        }
        return false;
    }
    
    public void movement1() { // Vertical position
    if(a.x == 0){
    b.update(b.x + 1, a.y);
    c.update(c.x + 2, a.y);
    d.update(d.x + 3, a.y);
    } else if(d.x == wide - 1) {
    c.update(c.x - 1, d.y);
    b.update(b.x - 2, d.y);
    a.update(a.x - 3, d.y);
    }else {
    a.update(a.x - 1, a.y);
    b.update(b.x, b.y - 1);
    c.update(c.x + 1, c.y - 2);
    d.update(d.x + 2, d.y - 3);
    }
}

public void movement2() { // Horizontal position
    a.update(a.x + 1, a.y);
    b.update(b.x, b.y + 1);
    c.update(c.x - 1, c.y + 2);
    d.update(d.x - 2, d.y + 3);
}

public void movement3() { // Vertical flipped
 movement1();
}

public void movement4() { // Flipped horizontal position
 movement2();
}
}
