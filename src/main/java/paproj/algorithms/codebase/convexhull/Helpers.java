package paproj.algorithms.codebase.convexhull;

import paproj.algorithms.codebase.helperclasses.Point;

/**
 * Created by Joywalker on 5/20/2017.
 */
public class Helpers
{
    public static double onWichSide(Point A, Point B, Point P)
    {
        double value = (P.X - A.X)*(B.Y - A.Y) - (P.Y - A.Y)*(B.X - A.X);
        if(value < 0)
            return -1;
        if(value == 0)
            return 0;
        return 1;

    }

    public static double distance(Point A, Point B, Point C)
    {
        double result = (B.X - A.X) * (A.Y - C.Y) - (B.Y - A.Y) * (A.X - C.X);
        return (result < 0) ? -result : result;
    }
}
