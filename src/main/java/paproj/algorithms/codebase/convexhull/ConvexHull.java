package paproj.algorithms.codebase.convexhull;

import paproj.algorithms.codebase.helperclasses.Point;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;

import static paproj.algorithms.codebase.convexhull.Helpers.onWichSide;

/**
 * Created by Joywalker on 5/15/2017.
 */
public class ConvexHull {
    public static ArrayList<Point> QuickHull(ArrayList<Point> points) {

        ArrayList<Point> convexHull = new ArrayList<>();
        int listSize = points.size();
        if (listSize < 3)
            return (ArrayList<Point>) points.clone();

        int minPointIndex = -1, maxPointIndex = -1;
        double leftestX = Double.MAX_VALUE;
        double rightestX = Double.MIN_VALUE;
        for (int i = 0; i < points.size(); i++) {
              if (points.get(i).X < leftestX) {
                  leftestX = points.get(i).X;
                  minPointIndex = i;
              }
              if (points.get(i).X > rightestX) {
                  rightestX = points.get(i).X;
                  maxPointIndex = i;
              }
        }
        Point A = points.get(minPointIndex);
        Point B = points.get(maxPointIndex);
        convexHull.add(A);
        convexHull.add(B);
        points.remove(A);
        points.remove(B);

        ArrayList<Point> leftSide = new ArrayList<>();
        ArrayList<Point> rightSide = new ArrayList<>();

        for (int i = 0; i < points.size(); i++)
        {
            Point check = points.get(i);
            if(Helpers.onWichSide(A,B,check) == -1)
                leftSide.add(check);
            else
                rightSide.add(check);
        }

        hull(A,B,rightSide,convexHull);
        hull(B,A,leftSide,convexHull);

        return convexHull;
    }

    private static void hull(Point A, Point B, ArrayList<Point> pointsSet, ArrayList<Point> hull)
    {
        //set position to insert new found point, between the 2 known points
        int insertPosition = hull.indexOf(B);
        if (pointsSet.size() == 0)
            return;
        if (pointsSet.size() == 1)
        {
            Point p = pointsSet.get(0);
            pointsSet.remove(p);
            hull.add(insertPosition, p);
            return;
        }

        // find furthest point from the line
        double dist = Double.MIN_VALUE;
        int furthestPoint = -1;
        for (int i = 0; i < pointsSet.size(); i++)
        {
            Point p = pointsSet.get(i);
            double distance = Helpers.distance(A, B, p);
            if (distance > dist)
            {
                dist = distance;
                furthestPoint = i;
            }
        }
        Point P = pointsSet.get(furthestPoint);
        pointsSet.remove(furthestPoint);
        hull.add(insertPosition, P);

        // Check points on the left side of A to P line
        ArrayList<Point> leftSetAP = new ArrayList<Point>();
        for (int i = 0; i < pointsSet.size(); i++)
        {
            Point M = pointsSet.get(i);
            if (onWichSide(A, P, M) == 1)
            {
                leftSetAP.add(M);
            }
        }
        // Check points on the left side of P to B line
        ArrayList<Point> leftSetPB = new ArrayList<Point>();
        for (int i = 0; i < pointsSet.size(); i++)
        {
            Point M = pointsSet.get(i);
            if (onWichSide(P, B, M) == 1)
            {
                leftSetPB.add(M);
            }
        }

        // recursively iterate and eliminate non needed points
        hull(A, P, leftSetAP, hull);
        hull(P, B, leftSetPB, hull);
    }

}
