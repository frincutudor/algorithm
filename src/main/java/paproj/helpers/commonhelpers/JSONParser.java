package paproj.helpers.commonhelpers;

import com.google.gson.Gson;
import paproj.algorithms.graphs.algorithms.huffmanCoding.HuffmanNode;
import paproj.algorithms.graphs.algorithms.ramerDouglasPeucker.Point;
import paproj.algorithms.graphs.helpers.Edge;

import java.util.*;

/**
 * Created by Joywalker on 4/27/2017.
 */
public class JSONParser {


    public static String JsonFormat(PriorityQueue<HuffmanNode> binaryTree)
    {
        return new Gson().toJson(binaryTree);
    }

    public static String JsonFormat(List<Point> points)
    {
        return new Gson().toJson(points);
    }

    public static String JsonFormat(Set<Edge> kruskal)
    {
        return new Gson().toJson(kruskal);
    }

    public static String JsonFormat(Map<ArrayList<Integer>,Double> dijkstraMap) {return new Gson().toJson(dijkstraMap);}

}
