package paproj.algorithms.Graphs.Algorithms.Dijkstra;

import java.util.ArrayList;
import java.util.LinkedList;
import paproj.algorithms.Graphs.Helpers.Edge;

/**
 * Created by Joywalker on 4/29/2017.
 */
public class Vertex implements Comparable<Vertex> {
    double distance = Double.POSITIVE_INFINITY;
    public ArrayList<Edge> neighboursList;
    LinkedList<Vertex> shortestPathList;
    private int vertexIndex;

    ArrayList<Edge> getNeighboursList() {
        return neighboursList;
    }

    void addVertexToPath(Vertex visitedVertex)
    {
        shortestPathList.add(visitedVertex);
    }

    public Vertex(int _index)
    {
        this.vertexIndex = _index;
        neighboursList = new ArrayList<Edge>();
        shortestPathList = new LinkedList<>();
    }

    public double getDistance() {return distance;}
    @Override
    public int compareTo(Vertex other) {
        if(other.distance > this.distance)
            return -1;
        if(this.distance > other.distance)
            return 1;
        return 0;
    }

    @Override
    public String toString()
    {
        return String.valueOf(vertexIndex);
    }
}
