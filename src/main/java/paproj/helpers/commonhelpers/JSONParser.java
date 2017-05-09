package paproj.helpers.commonhelpers;

import com.google.gson.Gson;
import org.omg.CORBA.PUBLIC_MEMBER;
import paproj.algorithms.Graphs.Algorithms.HuffmanCoding.HuffmanNode;
import paproj.algorithms.Graphs.Algorithms.RamerDouglasPeucker.Point;
import paproj.algorithms.Graphs.Helpers.Edge;

import java.util.List;
import java.util.PriorityQueue;
import java.util.Set;

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

}
