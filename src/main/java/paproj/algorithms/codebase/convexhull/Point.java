package paproj.algorithms.codebase.convexhull;

/**
 * Created by Joywalker on 5/19/2017.
 */
public class Point implements  Comparable<Point>
{
    private int X,Y;
    public Point(int _x,int _y)
    {
        this.X  = _x;
        this.Y  = _y;
    }

    @Override
    public int compareTo(Point other) {
        return Integer.compare(this.X,other.X);
    }
}
