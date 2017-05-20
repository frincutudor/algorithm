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
        double leftestX = Double.MIN_VALUE;
        double rightestX = Double.MAX_VALUE;

        for (int i = 0; i < listSize; i++) {
            double xCoord = points.get(i).X;
            if (xCoord > leftestX) {
                leftestX = xCoord;
                maxPointIndex = i;
            }

            if (xCoord < rightestX) {
                rightestX = xCoord;
                minPointIndex = i;
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

        hull(A,B,leftSide,convexHull);
        hull(B,A,rightSide,convexHull);

        return convexHull;
    }

    private static void hull(Point A, Point B, ArrayList<Point> pointsSet, ArrayList<Point> hull)
    {
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
        hull.add(insertPosition, P);
        pointsSet.remove(furthestPoint);

        // Determine who's to the left of AP
        ArrayList<Point> leftSetAP = new ArrayList<Point>();
        for (int i = 0; i < pointsSet.size(); i++)
        {
            Point M = pointsSet.get(i);
            if (onWichSide(A, P, M) == 1)
            {
                leftSetAP.add(M);
            }
        }
        // Points on the leftside of PB line
        ArrayList<Point> leftSetPB = new ArrayList<Point>();
        for (int i = 0; i < pointsSet.size(); i++)
        {
            Point M = pointsSet.get(i);
            if (onWichSide(P, B, M) == 1)
            {
                leftSetPB.add(M);
            }
        }
        hull(A, P, leftSetAP, hull);
        hull(P, B, leftSetPB, hull);
    }

}
